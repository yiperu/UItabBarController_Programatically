//
//  MiTabBarController.m
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/29/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "MiTabBarController.h"

@interface MiTabBarController ()

@end

@implementation MiTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    UIApplication * application = [UIApplication sharedApplication];
//    UIWindow *backWindow = application.windows[0];
//    UIStoryboard *myStoryboard = backWindow.rootViewController.storyboard;
//    
//    static NSString * codStoryboard2 = @"idSB02";
//    A002VC *a002VC = [myStoryboard instantiateViewControllerWithIdentifier:codStoryboard2];
//    a002VC.tabBarItem.title=@"Blue";
//    
//    static NSString * codStoryboard3 = @"idSB03";
//    A003VC *a003VC = [myStoryboard instantiateViewControllerWithIdentifier:codStoryboard3];
//    a003VC.tabBarItem.title=@"Red";
//    
//    NSArray *array = [[NSArray alloc] initWithObjects:a002VC, a003VC, nil];
//    self.viewControllers = array;
//    
//    [self.view addSubview:a002VC.view];
//    self.selectedViewController = a002VC;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{

        NSLog(@"-didSelectItem %i", item.tag);
        NSLog(@"-didSelectItem %@", item.description);
    

//    UIViewController *newViewController;
//    self.navigationItem.rightBarButtonItem = nil;
//    if (item == meTab_) {
//        newViewController = [viewControllers_ objectAtIndex:0];
//        
//        self.navigationItem.rightBarButtonItem = [self editButtonItem];
//    }else if (item == fotosTab_) {
//        newViewController = [viewControllers_ objectAtIndex:1];
//    } else if (item == badgesTab_) {
//        newViewController = [viewControllers_ objectAtIndex:2];
//    }else if (item == friendsTab_) {
//        newViewController = [viewControllers_ objectAtIndex:3];
//    }
//    
//    [self.selectedViewController.view removeFromSuperview];
//    [self.view addSubview:newViewController.view];
//    
//    self.selectedViewController = newViewController;

}





@end
