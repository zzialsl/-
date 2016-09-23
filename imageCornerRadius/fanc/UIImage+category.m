//
//  UIImage+category.m
//  fanc
//
//  Created by user on 16/9/23.
//  Copyright © 2016年 Li. All rights reserved.
//

#import "UIImage+category.h"

@implementation UIImage (category)

- (instancetype)circleImage
{
    UIGraphicsBeginImageContext(self.size);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    CGContextClip(ctx);
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
+ (instancetype)circleImage:(NSString *)image
{
    return [[self imageNamed:image] circleImage];
}
@end
