//
//  ThirdViewController.m
//  Demo_UINavigationController
//
//  Created by 王宁 on 15/9/11.
//  Copyright (c) 2015年 notrace. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *lable=[[UILabel alloc] initWithFrame:CGRectMake(50, 50, 100, 50)];
    lable.text=@"第三个界面";
    lable.backgroundColor=[UIColor redColor];
    [self.view addSubview:lable];
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
