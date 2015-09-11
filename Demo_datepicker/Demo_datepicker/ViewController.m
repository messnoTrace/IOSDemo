//
//  ViewController.m
//  Demo_datepicker
//
//  Created by 王宁 on 15/9/11.
//  Copyright (c) 2015年 notrace. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     _datepicker=[[UIDatePicker alloc] initWithFrame:CGRectMake(30, 30, 200, 200)];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(30, 300, 100, 40)];
    [btn setTitle:@"选取" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor redColor];
    [btn addTarget:self action:@selector(choose:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [self.view addSubview:_datepicker];
    
    
}

-(void)choose:(id)sender{

    NSDate *select=[_datepicker date];
    NSDateFormatter *formate=[[NSDateFormatter alloc] init];
    [formate setDateFormat:@"yyyy-MM-dd HH:mm"];
    NSString *dateAndTime=[formate stringFromDate:select];
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"时间提示" message:dateAndTime delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
