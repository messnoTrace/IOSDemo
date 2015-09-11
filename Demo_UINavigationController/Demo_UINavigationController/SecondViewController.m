//
//  SecondViewController.m
//  Demo_UINavigationController
//
//  Created by 王宁 on 15/9/10.
//  Copyright (c) 2015年 notrace. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(200, 200, 100, 50);
               [btn setTitle:@"回退" forState:UIControlStateNormal];
               btn.backgroundColor=[UIColor orangeColor];
    btn.backgroundColor=[UIColor redColor];
    
    [btn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    [button setTitle: @"自定义title" forState: UIControlStateNormal];
    [button sizeToFit];
    self.navigationItem.titleView = button;
    
    [self.navigationController setToolbarHidden:YES animated:YES];
    
    UIBarButtonItem *addItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self  action:@selector(gotoThridView:)];
    toorBar=[[UIToolbar alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height-toorBar.frame.size.height -44.0, self.view.frame.size.width,44.0)];
    
    [toorBar setBarStyle:UIBarStyleDefault];
    toorBar.autoresizingMask=UIViewAutoresizingFlexibleTopMargin;
    [toorBar setItems:[NSArray arrayWithObject:addItem]];
    [self.view addSubview:toorBar];

}

-(void)back:(UIButton *)button
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)gotoThridView:(id)sender{

    ThirdViewController *control=[[ThirdViewController alloc] init];
    [self.navigationController pushViewController:control animated:YES];
    control.title=@"THRIRD VIEW";
    
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
