//
//  VBViewController.m
//  VBAlertController
//
//  Created by Ezequiel Thomazetto on 03/15/2016.
//  Copyright (c) 2016 Ezequiel Thomazetto. All rights reserved.
//

#import "VBViewController.h"
#import "VBAlertController.h"

@interface VBViewController ()

@property (nonatomic, strong)VBAlertController *alert;

@end

@implementation VBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:NSLocalizedString(@"Cancel", @"Cancel action")
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action)
                                   {
                                       NSLog(@"Cancel action");
                                   }];
    
    UIAlertAction *okAction = [UIAlertAction
                               actionWithTitle:NSLocalizedString(@"OK", @"OK action")
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action)
                               {
                                   NSLog(@"OK action");
                               }];
    
    self.alert= [VBAlertController alertControllerWithTitle:@"Alert" message:@"Alert message" preferredStyle:UIAlertControllerStyleAlert];
    
    [self.alert addAction:cancelAction];
    [self.alert addAction:okAction];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    
    [self.alert setVibration:NO];
    
    [self presentViewController:self.alert animated:YES completion:nil];
    
}

- (IBAction)showAlertWithVibration:(id)sender {
    
    [self.alert setVibration:YES];
    
    [self.alert setMessage:@"Alert message with vibration"];
    
    [self presentViewController:self.alert animated:YES completion:nil];
    
}

@end
