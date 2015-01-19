//
//  A001VC.m
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/29/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "A001VC.h"

@interface A001VC ()

@end

@implementation A001VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Custom initialization - - - - - - -


    
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

- (IBAction)btnCalcular:(id)sender {
/*
    NSString * valor1 = @"10";
    NSString * valor2 = @"2";
    NSString * valor3 = @"NA";
    
    float num1 = [valor1 floatValue];
    float num2 = [valor2 floatValue];
    float num3 = [valor3 floatValue];
    
    float resultado1 = num1 * num2;
    NSLog(@"%.2f",resultado1);
*/
    

    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
    _timerVibrador = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(activarVibrador) userInfo:nil repeats:YES];
    
}

- (IBAction)btnActiarTier:(id)sender {
    
// - - - - - - - -
//    [self performSelector:@selector(onTick) withObject:nil afterDelay:2.0];
// - - - - - - - -
    [_timerVibrador invalidate];
    _timerVibrador = nil;
    
    
    
}


-(void)onTick{
    NSLog(@"Disparando el Timer");
    [_t invalidate];
    _t = nil;

}

-(void)activarVibrador{
//    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}

@end
