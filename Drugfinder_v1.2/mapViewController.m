//
//  mapViewController.m
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 21/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import "mapViewController.h"

@interface mapViewController ()

@end

@implementation mapViewController
@synthesize mapview;

- (void)viewDidLoad {
    [super viewDidLoad];
    [mapview setDelegate:self];
    CLLocationManager *loc = [[CLLocationManager alloc]init];
    [loc setDelegate:self];
    [loc startUpdatingLocation];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated
{
    [self location];
}
-(void)location
{
    double langi = 22.3039;
    double longi =70.8022;
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.coordinate = CLLocationCoordinate2DMake(langi, longi);
    point.title =@"Rajkot";
    [mapview addAnnotation:point];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
