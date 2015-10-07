//
//  NSString+LGCalculateFileSize.h
//  百思不得姐（项目）
//
//  Created by MacBookPro on 15/8/20.
//  Copyright (c) 2015年 sky5156. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LGCalculateFileSize)
/** 获得没有格式化的字符串*/
- (NSInteger)fileSize;

/** 获得文件的大小,返回字符串形式的文件大小,格式化输出*/
- (NSString *)fileSizeString;

@end
