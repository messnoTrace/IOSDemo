//
//  MainViewController.m
//  Demo_UINavigationController
//
//  Created by 王宁 on 15/9/10.
//  Copyright (c) 2015年 notrace. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"跳转页面" forState:UIControlStateNormal];

    btn.frame=CGRectMake(200, 200, 100, 50);
    btn.backgroundColor=[UIColor orangeColor];
    
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    
    NSArray *array=[NSArray arrayWithObjects:@"鸡翅",@"排骨",nil];
    UISegmentedControl *segmentedController=[[UISegmentedControl alloc] initWithItems:array];
    segmentedController.segmentedControlStyle=UISegmentedControlNoSegment;
    
    [segmentedController addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    
    self.navigationItem.titleView=segmentedController;
    
    
    UIBarButtonItem *backButton =[[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.backBarButtonItem=backButton;
    
//    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectLeftAction:)];
//    self.navigationItem.leftBarButtonItem = leftButton;
//    
//    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action:@selector(selectRightAction:)];
//    self.navigationItem.rightBarButtonItem = rightButton;
    [self.navigationController setToolbarHidden:NO animated:YES];
    
    UIBarButtonItem *one=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    UIBarButtonItem *two=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
    UIBarButtonItem *three=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:nil action:nil];
    UIBarButtonItem *four=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
    UIBarButtonItem *flexItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    [self setToolbarItems:[NSArray arrayWithObjects:flexItem,flexItem,one,flexItem,two,flexItem,three,flexItem,four, nil]];

    
}

-(void)click:(id)sender{

    
    SecondViewController *control=[[SecondViewController alloc] init];
    [self.navigationController pushViewController:control animated:YES];
    control.title=@"第二个页面";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)segmentAction:(id)sender
{

    switch ([sender selectedSegmentIndex]) {
        case 0:
            
            break;
            
            case 1:
            break;
        default:
            break;
    }
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
