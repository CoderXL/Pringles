//
//  JsonResult.h
//  LiveByTouch
//
//  Created by hao.li on 11-9-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"
#import "Paging.h"

@interface JsonResult : BaseEntity {
	int result;
    int uid;
    NSString* msg;
	NSString* data;
    //Paging *pg;
}
@property(nonatomic) int result;
@property(nonatomic,retain) NSString* msg;
@property(nonatomic,assign) int uid;
@property(nonatomic,retain) NSString *data;
//@property(nonatomic,retain) Paging *pg; 
@end
