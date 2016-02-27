//
//  ViewController.h
//  HTTPLiveStreaming
//
//  Created by Jumpei Katayama on 3/16/15.
//  Copyright (c) 2015 Jumpei Katayama. All rights reserved.

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController : UIViewController
{
    MPMoviePlayerController *mpc;
}

@property(nonatomic, strong) MPMoviePlayerController *mc;
@end
