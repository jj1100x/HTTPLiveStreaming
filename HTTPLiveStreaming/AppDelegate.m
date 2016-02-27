//
//  AppDelegate.m
//  HTTPLiveStreaming
//
//  Created by Jumpei Katayama on 3/16/15.
//  Copyright (c) 2015 Jumpei Katayama. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // setup uiwindow
    CGRect fullscreen = [UIScreen mainScreen].bounds;
    self.window = [[UIWindow alloc] initWithFrame:fullscreen];
    self.window.backgroundColor = [UIColor whiteColor];
    // setup tabbaecontroller
    tbc = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
    
    //setup for the first tab
    vc = [[ViewController alloc] initWithNibName:nil bundle:nil];
    vc.title = @"tabbar1";
    UITabBarItem *tb1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
    vc.tabBarItem = tb1;
    
    vc2 = [[HTMLVideoViewController alloc] initWithNibName:nil bundle:nil];
    vc2.title = @"tabbar2";
    UITabBarItem *tb2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:2];
    vc2.tabBarItem = tb2;
    
    vc3 = [[HLSViewController alloc] initWithNibName:nil bundle:nil];
    vc3.title = @"tabbar3";
    UITabBarItem *tb3 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:3];
    vc3.tabBarItem = tb3;


    tbc.viewControllers = @[vc, vc2, vc3];
    self.window.rootViewController = tbc;
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
