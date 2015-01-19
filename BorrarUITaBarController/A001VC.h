//
//  A001VC.h
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/29/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "A002VC.h"
#import "A003VC.h"

#import <AudioToolbox/AudioToolbox.h>

@interface A001VC : UIViewController

- (IBAction)btnCalcular:(id)sender;

- (IBAction)btnActiarTier:(id)sender;

@property (nonatomic, strong) NSTimer *t;
@property (nonatomic, strong) NSTimer *timerVibrador;
-(void)onTick;
    
@end
