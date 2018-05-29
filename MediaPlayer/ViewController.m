//
//  ViewController.m
//  MediaPlayer
//
//  Created by Shubham on 10/05/18.
//  Copyright © 2018 Shubham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    AVAudioPlayer *player;
}

@end

@implementation ViewController
{
    bool isPlay;
    bool isStop;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"audio" ofType:@"mp3"];
    NSURL *nsURL = [NSURL URLWithString:path];
    player = [[AVAudioPlayer alloc]initWithContentsOfURL:nsURL error:NULL];
   // isPlay = false;
   // isStop = false;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playButn:(id)sender {
    if (isPlay == false)
    {
        [player play];
        isPlay=true;
    }
    else if (isPlay==true && isStop==true)
    {
        NSLog(@"Restart");
    }
    
}

- (IBAction)stopBtn:(id)sender {
    [player stop];
    isStop = true;
}

- (IBAction)pauseBtn:(id)sender {
    [player pause];
    isPlay = false;
}


@end
