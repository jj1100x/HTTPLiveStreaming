//
//  HTMLVideoViewController.m
//  HTTPLiveStreaming
//
//  Created by Jumpei Katayama on 3/17/15.
//  Copyright (c) 2015 Jumpei Katayama. All rights reserved.
//

#import "HTMLVideoViewController.h"

// Sho
@implementation HTMLVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:false];
    webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    webView.delegate = self;
    
    NSString *urlStr = @"http://localhost:3000";
    NSURL *url = [NSURL URLWithString:urlStr];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [webView setScalesPageToFit:YES];
    [webView loadRequest:req];
    [self.view addSubview:webView];
    
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    NSLog(@"loading...");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"loaded!");
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"error: %@", error);
}



@end
