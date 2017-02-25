//
//  symptomViewController.h
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 20/12/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface symptomViewController : UIViewController<UITableViewDataSource,UITableViewDataSource>
{
    NSMutableArray *jsonarr;
    NSDictionary *dic;
    NSMutableArray *tablearray;
    BOOL searchenabled;
}
@property (weak, nonatomic) IBOutlet UISearchBar *searchbar;
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (strong, nonatomic) NSArray *searchResult;
@end
