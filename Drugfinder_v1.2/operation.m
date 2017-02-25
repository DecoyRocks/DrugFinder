//
//  operation.m
//  Drugfinder_v1.2
//
//  Created by Darsh Dixit on 08/11/16.
//  Copyright © 2016 Darsh Dixit. All rights reserved.
//

#import "operation.h"

@implementation operation
@synthesize path;
-(id)init
{
    if (self=[super init])
    {
        appd=(AppDelegate *)[[UIApplication sharedApplication] delegate];
        path=appd.apath;
    }
    return self;
    
}

//For SignUp page

-(BOOL)Operation:(NSString *)query
{
    BOOL status=FALSE;
    
    if(sqlite3_open([path UTF8String],&database)==SQLITE_OK)
    {
        sqlite3_stmt *statement;
        
        if (sqlite3_prepare_v2(database,[query UTF8String],-1,&statement,nil)==SQLITE_OK)
        {
            
            sqlite3_step(statement);
            status=TRUE;
        }
        sqlite3_finalize(statement);
    }
    sqlite3_close(database);
    return status;
}


@end
