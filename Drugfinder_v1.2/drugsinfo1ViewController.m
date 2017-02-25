//
//  drugsinfo1ViewController.m
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 20/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import "drugsinfo1ViewController.h"

@interface drugsinfo1ViewController ()

@end

@implementation drugsinfo1ViewController
@synthesize transfer,drugname,segments,textview;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *name =[transfer objectForKey:@"drugname"];
    NSString *info = [transfer objectForKey:@"information"];
    drugname.text =name;
    textview.text =info;

    data =transfer;
    
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

- (IBAction)segment:(id)sender {
     if(segments.selectedSegmentIndex==0)
     {
         //label2.text = @"Information";
         NSString *str2 = [data objectForKey:@"information"];
         textview.text =str2;
     }
     else if(segments.selectedSegmentIndex == 1)
     {
         //label2.text = @"Side-Effect";
         NSString *str3 = [data objectForKey:@"sideeffect"];
         textview.text =str3;
     }
     else if(segments.selectedSegmentIndex ==2)
     {
         //label2.text = @"Storage";
         NSString *str4 = [data objectForKey:@"storage"];
         textview.text =str4;
     }
     else{
         //label2.text = @"Dosage";
         NSString *str5 = [data objectForKey:@"dosing"];
         textview.text =str5;
     }
}
@end
