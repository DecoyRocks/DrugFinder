//
//  signupViewController.m
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 08/11/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import "signupViewController.h"
#import "operation.h"

@interface signupViewController ()

@end

@implementation signupViewController
@synthesize fname,lname,email,password,phone,city;

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)signup:(id)sender {
    operation *data=[[operation alloc]init];
    
    NSString *query;
    
    query=[[NSString alloc]initWithFormat:@"insert into user(fname,lname,email,password,mobno,city) values('%@','%@','%@','%@','%@','%@')",fname.text,lname.text,email.text,password.text,phone.text,city.text];
    
    BOOL status=[data Operation:query];
    
    if (status==TRUE)
    {
        
        if(![fname.text isEqual:@""] || ![lname.text isEqual:@""] || ![email.text isEqual:@""] || ![password.text isEqual:@""] || ![phone.text isEqual:@""] || ![city.text isEqual:@""])
        {
            NSLog(@"Record Inserted");
            
        }
    }
    else
    {
        NSLog(@"Something Wrong");
    }
}


@end
