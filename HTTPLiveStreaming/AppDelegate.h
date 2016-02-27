//
//  AppDelegate.h
//  HTTPLiveStreaming
//
//  Created by Jumpei Katayama on 3/16/15.
//  Copyright (c) 2015 Jumpei Katayama. All rights reserved.

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "HTMLVideoViewController.h"
#import "HLSViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UITabBarController *tbc;
    ViewController *vc;
    HTMLVideoViewController *vc2;
    HLSViewController *vc3;
}

@property (strong, nonatomic) UIWindow *window;


@end

