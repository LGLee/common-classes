//
//  UIView+LGExtension.h
//  Created by linglee on 15/8/15.
//  Copyright (c) 2015年 sky5156. All rights reserved.
// 直接拿到当前控件的frame等值

#import <UIKit/UIKit.h>

@interface UIView (LGExtension)
/* width*/
@property (nonatomic, assign) CGFloat width;

/* height*/
@property (nonatomic, assign) CGFloat height;

/* x*/
@property (nonatomic, assign) CGFloat x;

/* y*/
@property (nonatomic, assign) CGFloat y;

/* centerX*/
@property (nonatomic, assign) CGFloat centerX;

/* centerY*/
@property (nonatomic, assign) CGFloat centerY;



@end
