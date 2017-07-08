//
//  HomeViewController.m
//  YiHe
//
//  Created by Admin on 2017/7/4.
//  Copyright © 2017年 YiHe. All rights reserved.
//

#import "HomeViewController.h"

#import "Self_Btn.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Home";
    
    [self creatUI];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)creatUI{
    
    Self_Btn *button = [[Self_Btn alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"test" forState:0];
    [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void)clickBtn:(Self_Btn *)btn{
//    [btn.view_top mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self);
//        make.right.equalTo(self);
//        make.top.equalTo(self);
//        make.bottom.equalTo(self);
//    }];
    
    
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
