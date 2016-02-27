//
//  ViewController.m
//  HTTPLiveStreaming
//
//  Created by Jumpei Katayama on 3/16/15.
//  Copyright (c) 2015 Jumpei Katayama. All rights reserved.
//


/// Play local mp4 file
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupVieiws];

}

-(void)viewWillAppear:(BOOL)animated {
    [self.mc play];
}

-(void)viewWillDisappear:(BOOL)animated {
    [self.mc stop];
}
-(void)setupVieiws{
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"Zeitgeist" ofType:@"mp4"];
    NSURL* url = [NSURL fileURLWithPath:path];
    MPMoviePlayerController *controller = [[MPMoviePlayerController alloc]
                                           initWithContentURL:url];
    self.mc = controller; //Super important
    controller.view.frame = self.view.bounds; //Set the size
    [self.view addSubview:controller.view]; //Show the view
    [mpc.view setFrame:self.view.bounds];
    [controller play]; //Start playing
    
}


@end
