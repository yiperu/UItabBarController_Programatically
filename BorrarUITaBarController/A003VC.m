//
//  A003VC.m
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/29/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "A003VC.h"

@interface A003VC ()

@end

@implementation A003VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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

- (IBAction)btnSiguiente:(id)sender {
    

//    UIApplication * application = [UIApplication sharedApplication];
//    UIWindow *backWindow = application.windows[0];
    
//    UIStoryboard *myStoryboard = backWindow.rootViewController.storyboard;
//    MiTabBarController * tabTemp = (MiTabBarController *)backWindow.rootViewController.tabBarController;
    

    
    SubTerceroVC * ff = [self.navigationController.viewControllers objectAtIndex:1];

    
    [self.navigationController pushViewController:ff animated:YES];
    
    
    
}
@end
