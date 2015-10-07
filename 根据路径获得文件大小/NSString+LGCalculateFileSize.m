
//
//  NSString+LGCalculateFileSize.m
//  百思不得姐（项目）
//
//  Created by MacBookPro on 15/8/20.
//  Copyright (c) 2015年 sky5156. All rights reserved.
// 

#import "NSString+LGCalculateFileSize.h"

@implementation NSString (LGCalculateFileSize)

- (NSInteger)fileSize
{
    //创建文件管理者
    NSFileManager *manager = [NSFileManager defaultManager];
    //1.判断文件是否存在
    BOOL isDirectory = NO;
    BOOL isExist = [manager fileExistsAtPath:self isDirectory:&isDirectory];
    if (isExist == NO) return 0;
    //2.判断文件类型
    if (isDirectory) {//文件夹
        NSInteger size = 0 ;
        
        NSDirectoryEnumerator *enumerator = [manager enumeratorAtPath:self];
        
        for (NSString *subpath in enumerator) {
            //获得文件全路径
            NSString *fullSupath = [self stringByAppendingPathComponent:subpath];
            //获得属性
            NSDictionary *attrs = [manager attributesOfItemAtPath:fullSupath error:nil];
            
            if ([attrs[NSFileType] isEqualToString:NSFileTypeDirectory]) continue;
            size += [attrs[NSFileSize] integerValue];
        }
        return size;
    }
    //3.文件
    return [[manager attributesOfItemAtPath:self error:nil][NSFileSize]integerValue];
}


- (NSString *)fileSizeString
{
    NSInteger fileSize = self.fileSize;
    CGFloat unit = 1000.0;
    if (fileSize >=unit *unit *unit) {
        return [NSString stringWithFormat:@"%.1fGB",fileSize/(1000.0 *1000.0 *1000.0)];
    }else if(fileSize>=unit *unit){
        return [NSString stringWithFormat:@"%.1fMB",fileSize/(1000.0 * 1000.0)];
    }
    else if (fileSize >=unit){
        return [NSString stringWithFormat:@"%.1fKB",fileSize/1000.0];
    }else{
        return [NSString stringWithFormat:@"%zdB",fileSize];
    }  
}
@end
