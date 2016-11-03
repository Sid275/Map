//
//  ViewController.m
//  Map
//
//  Created by Student-001 on 06/09/16.
//  Copyright © 2016 Student-001. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _map=[[MKMapView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _map.mapType=MKMapTypeSatellite;
    [self.view addSubview:_map];
    _map.delegate=self;
    
    MKPointAnnotation *point1=[[MKPointAnnotation alloc]init];
    
    
    point1.title=@"Koregaon Park";
    point1.subtitle=@"Pune";
    
    // MKPinAnnotationColor *point1=MKPinAnnotationColorRed;
   
    
    CLLocationCoordinate2D location;
    
    location.latitude=18.5362;
    location.longitude=73.8940;
    point1.coordinate=location;
    
    [_map addAnnotation:point1];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView * pin =[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"nil"];
    pin.pinTintColor=[UIColor greenColor];
    pin.canShowCallout=YES;//this is used to print the title and subtitle
    
    pin.rightCalloutAccessoryView=[UIButton buttonWithType:UIButtonTypeContactAdd];
    
    return pin;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
