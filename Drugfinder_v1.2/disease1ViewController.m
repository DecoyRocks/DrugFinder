//
//  disease1ViewController.m
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 20/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import "disease1ViewController.h"

@interface disease1ViewController ()

@end

@implementation disease1ViewController
@synthesize lbl1,segmaent,textview,transfer;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *name =[transfer objectForKey:@"name"];
    lbl1.text =name;
    NSString *info = [transfer objectForKey:@"info"];
     textview.text =info;
    //lbl2.text = @"Information";
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
    if(segmaent.selectedSegmentIndex==0)
    {
        //lbl2.text = @"Information";
        NSString *str2 = [data objectForKey:@"info"];
        textview.text =str2;
    }
    else if(segmaent.selectedSegmentIndex == 1)
    {
        //lbl2.text = @"Symptom";
        NSString *str3 = [data objectForKey:@"symptom"];
        textview.text =str3;
    }
    else{
        //lbl2.text = @"Causes";
        NSString *str4 = [data objectForKey:@"causes"];
        textview.text =str4;
    }

}
@end
