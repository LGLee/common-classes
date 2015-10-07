//
//  UIImage+Image.m
//
//
//  Created by 李林果 on 15/9/17.
//  Copyright (c) 2015年 xcodeFinder All rights reserved.
// 根据颜色生成一张1*1 的相同颜色的图片,生日中调整导航栏的透明度


#import <UIKit/UIKit.h>

@interface UIImage (Image)


// 根据颜色生成一张尺寸为1*1的相同颜色图片
+ (UIImage *)imageWithColor:(UIColor *)color;


@end
