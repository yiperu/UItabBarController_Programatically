//
//  MiTabBarController.h
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/29/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "A001VC.h"
#import "A002VC.h"
#import "A003VC.h"

#import "A003VC.h"

#import "SubTerceroVC.h"
#import "SubTerceroVC.h"
#import "Sub2TerceroVC.h"



@interface MiTabBarController : UITabBarController <UINavigationControllerDelegate>


@property (nonatomic, retain) NSArray *viewControllers;
@property (nonatomic, retain) UIViewController *selectedViewController;

@property (strong, nonatomic) IBOutlet UITabBar *tabBar;

@property (strong, nonatomic) IBOutlet UITabBarItem *meTab;
@property (strong, nonatomic) IBOutlet UITabBarItem *badgesTab;
@property (strong, nonatomic) IBOutlet UITabBarItem *fotosTab;
@property (strong, nonatomic) IBOutlet UITabBarItem *friendsTab;



@end
