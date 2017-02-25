//
//  drugsinfo1ViewController.h
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 20/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface drugsinfo1ViewController : UIViewController
{
    NSDictionary *data;
}
@property (strong,nonatomic)NSDictionary *transfer;
@property (strong, nonatomic) IBOutlet UILabel *drugname;
- (IBAction)segment:(id)sender;


@property (strong, nonatomic) IBOutlet UISegmentedControl *segments;
@property (strong, nonatomic) IBOutlet UITextView *textview;
@end
