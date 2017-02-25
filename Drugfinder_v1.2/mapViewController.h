//
//  mapViewController.h
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 21/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>

@interface mapViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>
{
    
}
@property (strong, nonatomic) IBOutlet MKMapView *mapview;

@end
