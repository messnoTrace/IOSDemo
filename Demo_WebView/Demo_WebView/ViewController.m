//
//  ViewController.m
//  Demo_WebView
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
    // Do any additional setup after loading the view, typically from a nib.
    
    webview=[[UIWebView alloc] initWithFrame:CGRectMake(0, 50, 460 , 600)];
    NSURLRequest *request=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    [self.view addSubview:webview];
    [webview loadRequest:request];
    [webview setDelegate:self];
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"webViewDidStartLoad");
    
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0.0F, 50, 460 ,600)];
    [view setTag:108];
    [view setBackgroundColor:[UIColor blackColor]];
    [view setAlpha:0.5];
    [self.view addSubview:view];
    
    
    activityIndicator=[[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0.0F, 0.0f, 32.0f, 32.0f)];
    [activityIndicator setCenter:view.center];
    [activityIndicator setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];
    [view addSubview:activityIndicator];
    [activityIndicator startAnimating];

}
- (void) webViewDidFinishLoad:(UIWebView *)webView
{
    
    [activityIndicator stopAnimating];
    UIView *view=(UIView*)[self.view viewWithTag:108];
    [view removeFromSuperview];
    NSLog(@"webViewDidFinishLoad");
}
- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"didFailLoadWithError:%@", error);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
