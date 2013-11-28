//
//  DynamicInfo.m
//  Pringles
//
//  Created by hao li on 12-3-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DynamicInfo.h"
#import "LableView.h"

@implementation DynamicInfo
@synthesize cellHeight = _cellHeight;
@synthesize mid,uid,u_type,mtype,mpics,mcontent,inserttime,mtid,mtcontent,transmidnum,commentnum,mstatus,isdelete;

-(id) init{
	self = [super init];
	if (self) {

        
	}
	return self;
}

-(id) initWithJSONStr:(NSString *)str{
	self = [self init];
	if (self) {
		[self toEntity:str];
	}
	return self;
}

-(int) getCellHeight{
    LableView *lv = [[LableView alloc] init];
    lv.frame = CGRectMake(0, 0, 230, [lv getHeigth]);
    [lv setContent:mcontent];
    _cellHeight=[lv getHeigth]+70;
    [lv release];
    if (self.mpics!=nil && _cellHeight < 120) {
        return 120;
    }
    return _cellHeight;
}   

-(void) dealloc{
    [mpics release];
    mpics = nil;
    [mcontent release];
    mcontent = nil;
    [inserttime release];
    inserttime = nil;
    [mtcontent release];
    mtcontent = nil;
    [super dealloc];
}

@end
