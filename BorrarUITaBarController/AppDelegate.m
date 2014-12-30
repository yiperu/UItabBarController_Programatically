//
//  AppDelegate.m
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/29/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // - - - - - - - - - - - - - - - - - - - -
    MiTabBarController *tabBars = [[MiTabBarController alloc] init];
    NSMutableArray *localViewControllersArray = [[NSMutableArray alloc] initWithCapacity:3];
    
    // Obtenemos el Storyboard
//    UIApplication * application = [UIApplication sharedApplication];
    UIWindow *backWindow = application.windows[0];
    UIStoryboard *myStoryboard = backWindow.rootViewController.storyboard;
    
    static NSString * codStoryboard1 = @"idSB01";
    A001VC * a001VC = [myStoryboard instantiateViewControllerWithIdentifier:codStoryboard1];
    a001VC.tabBarItem.title=@"Green";
    
    static NSString * codStoryboard2 = @"idSB02";
    A002VC *a002VC = [myStoryboard instantiateViewControllerWithIdentifier:codStoryboard2];
    a002VC.tabBarItem.title=@"Blue";
    
    static NSString * codStoryboard3 = @"idSB03";
    A003VC *a003VC = [myStoryboard instantiateViewControllerWithIdentifier:codStoryboard3];
    a003VC.tabBarItem.title=@"Red";
    
    [localViewControllersArray addObject:a001VC];
    [localViewControllersArray addObject:a002VC];
    [localViewControllersArray addObject:a003VC];
    
    tabBars.viewControllers = localViewControllersArray;
    tabBars.view.autoresizingMask=(UIViewAutoresizingFlexibleHeight);
    self.window.rootViewController = tabBars;
    // - - - - - - - - - - - - - - - - - - - -

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
