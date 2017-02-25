//
//  signupViewController.h
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 08/11/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface signupViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *fname;
@property (strong, nonatomic) IBOutlet UITextField *lname;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) IBOutlet UITextField *city;
- (IBAction)signup:(id)sender;
@property(strong,nonatomic)NSString *str;
@end
