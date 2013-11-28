//
//  StoresActivityInfo.m
//  Pringles
//
//  Created by  on 12-4-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "StoresActivityInfo.h"

@implementation StoresActivityInfo
@synthesize activityDescription,activityName;
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

-(void) dealloc{
    [activityDescription release];
    activityDescription = nil;
    [activityName release];
    activityName = nil;
    [super dealloc];
}

@end
