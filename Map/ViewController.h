//
//  ViewController.h
//  Map
//
//  Created by Student-001 on 06/09/16.
//  Copyright © 2016 Student-001. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property(nonatomic,retain)MKMapView *map;

@end

