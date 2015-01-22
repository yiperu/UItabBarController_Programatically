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

#define METERS_PER_MILE 1609.344


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /*
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
//    _mapita.mapType = MKMapTypeHybrid;
    _mapita.mapType = MKMapTypeStandard;
    
    _mapita.zoomEnabled = YES;
    _mapita.scrollEnabled = YES;
    _mapita.showsUserLocation = YES;
    */
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 39.281516;
    zoomLocation.longitude= -76.580806;
    
    
    // 2
    //    #define METERS_PER_MILE 1609.344
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    // 3
    MKCoordinateRegion adjustedRegion = [_mapita regionThatFits:viewRegion];
    // 4
    [_mapita setRegion:adjustedRegion animated:YES];
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
/*
    CLLocation * l = [locations lastObject];
    NSLog(@"latitud: %f, longitud: %f",l.coordinate.latitude,l.coordinate.longitude);
    
    _miUbi.latitude  = l.coordinate.latitude;
    _miUbi.longitude = l.coordinate.longitude;
    
//// - - - - - - - - -- - - - - - - -
//    MKCoordinateRegion region;
//    region.center.latitude = l.coordinate.latitude;
//    region.center.longitude = l.coordinate.longitude;
//    region.span.latitudeDelta  = 0.01;
//    region.span.longitudeDelta = 0.01;
//
//    [_mapita setRegion:region animated:YES];
//// - - - - - - - - -- - - - - - - -
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = l.coordinate.latitude;
    zoomLocation.longitude= l.coordinate.longitude;
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 2*METERS_PER_MILE, 2*METERS_PER_MILE);
    // 3
    [_mapita setRegion:viewRegion animated:YES];
 */

}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"Error: %@",error.description);
}


- (IBAction)refreshTapped:(id)sender {
    
        [self plotCrimePositions:@"Nada"];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}




// Add new method above refreshTapped
- (void)plotCrimePositions:(NSString *)responseString {
    
    for (id<MKAnnotation> annotation in _mapita.annotations) {
        [_mapita removeAnnotation:annotation];
    }
    
    NSNumber * latitude = @(39.281516);
    NSNumber * longitude = @(-76.580806);
    NSString * crimeDescription = @"Esto fue un Robo";
    NSString * address = @"General Prado 1088 int 2";
    
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = latitude.doubleValue;
    coordinate.longitude = longitude.doubleValue;
    
    MiLocalizacion *annotation = [[MiLocalizacion alloc] initWithName:crimeDescription address:address coordinate:coordinate];
    [_mapita addAnnotation:annotation];
    
    CLLocationCoordinate2D coordinate1;
    coordinate1.latitude = 39.280000;
    coordinate1.longitude = -76.580000;
    MiLocalizacion *annotation1 = [[MiLocalizacion alloc] initWithName:@"Uno" address:@"Dos" coordinate:coordinate1];
    [_mapita addAnnotation:annotation1];
    
}





#pragma mark -
#pragma mark - View lifecycle

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
    
    static NSString *identifier = @"MyLocation";
    if ([annotation isKindOfClass:[MiLocalizacion class]]) {
        
        MKPinAnnotationView *annotationView = (MKPinAnnotationView *) [_mapita dequeueReusableAnnotationViewWithIdentifier:identifier];
        if (annotationView == nil) {
            annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        } else {
            annotationView.annotation = annotation;
        }
        
        annotationView.enabled = YES;
        annotationView.canShowCallout = YES;
        annotationView.image=[UIImage imageNamed:@"arrest.png"];//here we use a nice image instead of the default pins
        // --- -
        annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        
        return annotationView;
    }
    
    return nil;
}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control{

    MiLocalizacion *location = (MiLocalizacion*)view.annotation;
    
    NSDictionary *launchOptions = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
    [location.mapItem openInMapsWithLaunchOptions:launchOptions];
}


@end
