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




// Analizar !!!!!hat
//
//- (BOOL)tabBarController:(UITabBarController *)theTabBarController shouldSelectViewController:(UIViewController *)viewController
//{
//    return (theTabBarController.selectedViewController != viewController);
//}




-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{

/*
    NSLog(@"-iTem %@", tabBar.selectedItem.title);
    NSLog(@"-iTem %i", item.tag);
    NSLog(@"-Descripcion %@", item.description);
*/ 

    if ([tabBar.selectedItem.title isEqualToString:@"11111"]) {
        NSLog(@"1.- Primer Tab");
    }
    if ([tabBar.selectedItem.title isEqualToString:@"22222"]) {
        NSLog(@"2.- Segundo Tab");
    }
    if ([tabBar.selectedItem.title isEqualToString:@"33333"]) {
        NSLog(@"3.- Tercer Tab");
        
        
        // - -
        
//        UINavigationController *nav = (UINavigationController *)self.selectedViewController;
        
        
        UINavigationController *nav = (UINavigationController *)[self.viewControllers objectAtIndex:2];
        if (nav != nil) {
            [nav popToRootViewControllerAnimated:NO];
            NSLog(@"Entro @@@@");
        }
        // - - -
        
    }
    if ([tabBar.selectedItem.title isEqualToString:@"44444"]) {
        NSLog(@"4.- Cuarto Tab");
    }
    if ([tabBar.selectedItem.title isEqualToString:@"55555"]) {
        NSLog(@"Otro...");
    }
    
/*
    if (self.selectedViewController == [self.viewControllers objectAtIndex:0]) {
        NSLog(@"1.- Primer Tab");
    }
    if (self.selectedViewController == [self.viewControllers objectAtIndex:1]) {
        NSLog(@"2.- Segundo Tab");
    }
    if (self.selectedViewController == [self.viewControllers objectAtIndex:2]) {
        NSLog(@"3.- Tercer Tab");
    }
    if (self.selectedViewController == [self.viewControllers objectAtIndex:3]) {
        NSLog(@"4.- Cuarto Tab");
    }
    if (self.selectedViewController == [self.viewControllers objectAtIndex:4]) {
        NSLog(@"Otro...");
    }
*/
    
/*
    switch (self.selectedIndex) {
        case 0:
        NSLog(@"1.- Primer Tab");
            break;
        case 1:
        NSLog(@"2.- Segundo Tab");
            break;
        case 2:
        NSLog(@"3.- Tercer Tab");
            break;
        case 3:
        NSLog(@"4.- Cuarto Tab");
            break;
        default:
        NSLog(@"Otro...");
            break;
 }
 */

    
    
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    /*
    //1
    A003VC *a003VC111 = [[A003VC alloc] init];
    //2
    SubTerceroVC *a003VC222 = [[SubTerceroVC alloc] init];
    //3
    Sub2TerceroVC *a003VC333 = [[Sub2TerceroVC alloc] init];
    
    //    setViewControllers:animated:
    UINavigationController * nav = (UINavigationController *)[self.viewControllers objectAtIndex:2];
    NSArray * tempArreglo = @[a003VC333,a003VC111,a003VC222];
    [nav setViewControllers:tempArreglo animated:YES];
    */
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    /*
//    if ([tabBar.selectedItem.title isEqualToString:@"33"]) {
    
        UINavigationController * nav = (UINavigationController *)[self.viewControllers objectAtIndex:2];
//     SubTerceroVC * segundaVista = (SubTerceroVC *)([nav viewControllers][1]);
     SubTerceroVC * segundaVista = [[SubTerceroVC alloc] init];
    */
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//        [nav popToRootViewControllerAnimated:YES];

    
//        [nav popToViewController:segundaVista animated:YES];
//    }
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    /*
    nav.navigationBar.barStyle = UIBarStyleBlack;
    [nav setTitle:@"Navegador"];
    [nav.navigationBar setTintColor:[UIColor greenColor]];
    
    UIViewController * v1 = [[UIViewController alloc] init];
    nav.viewControllers = [NSArray arrayWithObjects:v1,segundaVista, nil];
//navController = [[UINavigationController alloc] initWithRootViewController:self.frstVwCntlr];
    NSLog(@"Vistas del Nav %@", nav.viewControllers);
    self.selectedIndex = 0;
     */
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
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
