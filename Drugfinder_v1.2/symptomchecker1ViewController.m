//
//  symptomchecker1ViewController.m
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 20/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import "symptomchecker1ViewController.h"

@interface symptomchecker1ViewController ()

@end

@implementation symptomchecker1ViewController
@synthesize textview,transfer,label1;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str1 =[transfer objectForKey:@"name"];
    label1.text = str1;
    NSString *str2 = [transfer objectForKey:@"info"];
    textview.text =str2;
    
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

@end
