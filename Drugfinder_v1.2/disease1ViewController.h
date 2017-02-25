//
//  disease1ViewController.h
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 20/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface disease1ViewController : UIViewController
{
    NSDictionary *data;
}
@property (strong, nonatomic) IBOutlet UILabel *lbl1;
@property (strong,nonatomic) NSDictionary *transfer;
- (IBAction)segment:(id)sender;

@property (strong, nonatomic) IBOutlet UITextView *textview;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmaent;
@end
