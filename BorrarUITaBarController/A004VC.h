//
//  A004VC.h
//  BorrarUITaBarController
//
//  Created by Henry AT on 12/30/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>

#import <CoreLocation/CoreLocation.h>
@class MKMapView;

#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)

@interface A004VC : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>


@property (nonatomic, strong) CLLocationManager * mapaManager;



@property (nonatomic, strong) IBOutlet MKMapView *mapita;


@end
