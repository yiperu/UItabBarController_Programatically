//
//  A002VC.m
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/29/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "A002VC.h"

@interface A002VC ()

@end

@implementation A002VC

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

- (IBAction)btnPopup1:(id)sender {
    
    
    UIApplication * application = [UIApplication sharedApplication];
    UIWindow *backWindow = application.windows[0];
    UIStoryboard *myStoryboard = backWindow.rootViewController.storyboard;
    static NSString * codStoryboard4 = @"idSB04";
    A004VC * a004VC = [myStoryboard instantiateViewControllerWithIdentifier:codStoryboard4];

    
//    ContentViewController *contentViewController = [[ContentViewController alloc] initWithNibName:@"ContentViewController" bundle:nil];
    
    // create icon images shown in statusbar
//    NSImage *image = [NSImage imageNamed:@"cloud"];
//    NSImage *alternateImage = [NSImage imageNamed:@"cloudgrey"];
//    
//    AXStatusItemPopup *statusItemPopup = [[AXStatusItemPopup alloc] initWithViewController:a004VC image:image alternateImage:alternateImage];
    

    
    
}


- (IBAction)btnPopup2:(id)sender {
}

- (IBAction)btnPopup3:(id)sender {
}
@end
