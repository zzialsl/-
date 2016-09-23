//
//  image.m
//  fanc
//
//  Created by user on 16/9/22.
//  Copyright © 2016年 Li. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.


- (UIImage *)imag{
    if (!_imag) {
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(100, 100), NO, 0.0);
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        CGRect rect = CGRectMake(0, 0, 50   , 50);
        CGContextAddEllipseInRect(ctx, rect);
        CGContextClip(ctx);
        [self.imag drawInRect:rect];
        _imag = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    
     return _imag;

}
@end
