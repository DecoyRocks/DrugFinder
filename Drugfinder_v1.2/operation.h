//
//  operation.h
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 08/11/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import <sqlite3.h>

@interface operation : NSObject
{
    AppDelegate *appd;
    sqlite3 *database;
}
@property (strong,nonatomic)NSString *path;

-(BOOL)Operation:(NSString *)query;


@end
