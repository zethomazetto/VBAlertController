//
//  VBAlertController.m
//  Pods
//
//  Created by Ezequiel Thomazetto on 16/03/16.
//
//

#import "VBAlertController.h"
#import <AudioToolbox/AudioToolbox.h>

#define DEVICE_NAME @"iPhone"

@interface VBAlertController ()

@end

@implementation VBAlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    if (self.vibration) {
        [self vibrate];
    }
}

-(void)vibrate{
    
    //only iPhone contains the vibration feature
    if([[UIDevice currentDevice].model isEqualToString:DEVICE_NAME])
    {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    }
}


@end
