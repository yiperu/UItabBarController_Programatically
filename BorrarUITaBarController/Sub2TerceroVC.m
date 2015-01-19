//
//  Sub2TerceroVC.m
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/30/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "Sub2TerceroVC.h"

@interface Sub2TerceroVC ()

@end

@implementation Sub2TerceroVC

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

- (IBAction)btnSalir:(id)sender {
    
//    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)btnInicio:(id)sender {
    NSLog(@"btn Inicio");

//    [self.navigationController popToRootViewControllerAnimated:YES];
    
    
//    [self.navigationController popoverPresentationController];
//    [self.navigationController popToRootViewControllerAnimated:YES];
//    [self.navigationController popToViewController:nil animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
    
}
@end
