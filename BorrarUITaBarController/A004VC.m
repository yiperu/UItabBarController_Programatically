//
//  A004VC.m
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/30/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "A004VC.h"

@interface A004VC ()

@end

@implementation A004VC

@synthesize mapaManager;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    mapaManager = [[CLLocationManager alloc] init];
    mapaManager.delegate = self;
    mapaManager.desiredAccuracy = kCLLocationAccuracyBest;
//    mapaManager.distanceFilter = 500;

    


    
    if(IS_OS_8_OR_LATER) {
        NSLog(@"==>>> Ingreso a la Localizacion");
        [mapaManager requestWhenInUseAuthorization];  // Utilizar solo cuando use la aplicacion
        [mapaManager requestAlwaysAuthorization];     // Usar localiacion, aun cuando no utilize la aplicacion.
    }
    [mapaManager startUpdatingLocation];

    
    
    // = = = =
    // Mapa
//    _mapita = [[MKMapView alloc] init];
//    _mapita.mapType = MKMapTypeHybrid;
    _mapita.mapType = MKMapTypeStandard;
    
    _mapita.zoomEnabled = YES;
    _mapita.scrollEnabled = YES;
    _mapita.showsUserLocation = YES;
    
    
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



-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{

    CLLocation * l = [locations lastObject];
    
    NSLog(@"latitud: %f, longitud: %f",l.coordinate.latitude,l.coordinate.longitude);
    // = = = = = = = = = = = = =
    MKCoordinateRegion region;
    region.center.latitude = l.coordinate.latitude;
    region.center.longitude = l.coordinate.longitude;
    region.span.latitudeDelta  = 0.1;
    region.span.longitudeDelta = 0.1;

    [_mapita setRegion:region animated:YES];
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"Error: %@",error.description);
}

@end
