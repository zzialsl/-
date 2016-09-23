//
//  DetailController.m
//  fanc
//
//  Created by user on 16/9/23.
//  Copyright © 2016年 Li. All rights reserved.
//

#import "DetailController.h"
#import "TableViewCell.h"
@interface DetailController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *table;
@property (nonatomic, strong) UIImageView *imageView1;
@end

@implementation DetailController

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
- (void)viewDidLoad {
    [super viewDidLoad];
    _table = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _table.delegate = self;
    _table.dataSource = self;
    [self.view addSubview:_table];
    [_table registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 50;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier: @"cell"];
    }
    

    return cell;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
