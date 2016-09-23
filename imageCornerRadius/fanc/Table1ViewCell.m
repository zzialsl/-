//
//  Table1ViewCell.m
//  fanc
//
//  Created by user on 16/9/23.
//  Copyright © 2016年 Li. All rights reserved.
//

#import "Table1ViewCell.h"
#import "UIImage+category.h"
@implementation Table1ViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.imageView1];
        [self addSubview:self.imageView2];
    }
    return self;
}

- (UIImageView *)imageView1{
    if (!_imageView1) {
        _imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 60, 60)];
        _imageView1.image = [UIImage circleImage:@"1.jpg"];
    }
    return _imageView1;
}
- (UIImageView *)imageView2{
    if (!_imageView2) {
        _imageView2 = [[UIImageView alloc]initWithFrame:CGRectMake(80, 10, 60, 60)];
        _imageView2.image = [UIImage circleImage:@"1.jpg"];
    }
    return _imageView2;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
