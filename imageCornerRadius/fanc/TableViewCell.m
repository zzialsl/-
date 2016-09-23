//
//  TableViewCell.m
//  fanc
//
//  Created by user on 16/9/23.
//  Copyright © 2016年 Li. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.imageView1];
        [self addSubview:self.imageView2];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (UIImageView *)imageView1{
    if (!_imageView1) {
        self.imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 60, 60)];
        _imageView1.layer.cornerRadius = 30;
        _imageView1.layer.masksToBounds = YES;
        _imageView1.image = [UIImage imageNamed:@"1.jpg"];
        _imageView1.backgroundColor = [UIColor redColor];
    }
    return _imageView1;
}
- (UIImageView *)imageView2{
    if (!_imageView2) {
        self.imageView2 = [[UIImageView alloc]initWithFrame:CGRectMake(80, 10, 60, 60)];
        _imageView2.layer.cornerRadius = 30;
        _imageView2.layer.masksToBounds = YES;
        _imageView2.image = [UIImage imageNamed:@"1.jpg"];
        _imageView2.backgroundColor = [UIColor redColor];
    }
    return _imageView2;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
