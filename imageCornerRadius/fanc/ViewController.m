//
//  ViewController.m
//  fanc
//
//  Created by user on 16/9/22.
//  Copyright © 2016年 Li. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+category.h"
#import "DetailController.h"
#import "Detail1Controller.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(100, 100, 100, 100);
    button1.tag = 1;
    button1.backgroundColor = [UIColor redColor];
    [button1 setTitle:@"第一种" forState:UIControlStateNormal];
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(100, 300, 100, 100);
    button2.tag = 2;
    button2.backgroundColor = [UIColor greenColor];
    [button2 setTitle:@"第二种" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    [button2 addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    
   /*
    UIImage *img = [UIImage imageNamed:@"1.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    imageView.backgroundColor = [UIColor redColor];
    imageView.center = self.view.center;
   // imageView.image = [UIImage circleImage:@"1.jpg"];
   // imageView.image = [UIImage imageNamed:@"1.jpg"];
    UIGraphicsBeginImageContextWithOptions( imageView.bounds.size, NO, 0);
         //1.获取bitmap上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
         //2.绘图(画一个圆)
    
    CGContextAddEllipseInRect(ctx, imageView.bounds);
  
    //[[UIBezierPath bezierPathWithRoundedRect:imageView.bounds cornerRadius:50] addClip];
       //3.渲染
       // CGContextStrokePath(ctx);
       CGContextClip(ctx);
       [img drawInRect:imageView.bounds];
         //4.获取生成的图片
         UIImage *image=UIGraphicsGetImageFromCurrentImageContext();
         //5.显示生成的图片到imageview
    imageView.image = image;
    UIGraphicsEndImageContext();
    [self.view addSubview:imageView];
    */
    
    
}
- (void)action:(UIButton *)button{
    if (button.tag == 1) {
        
        DetailController *VC = [[DetailController alloc]init];
        [self.navigationController pushViewController:VC animated:YES];
    }else{
        Detail1Controller *vc = [[Detail1Controller alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
