//
//  FreindsInfo.m
//  Pringles
//
//  Created by  on 12-3-30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FreindsInfo.h"

@implementation FreindsInfo
@synthesize friendheadimage = _friendheadimage;
@synthesize friendnickname = _friendnickname;
@synthesize lastmessage = _lastmessage;

-(id) init{
	self = [super init];
	if (self) {
        self.friendheadimage = [[[NSString alloc] init] autorelease];
        self.friendnickname = [[[NSString alloc] init] autorelease];
        self.lastmessage = [[[NSString alloc] init] autorelease];
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

@end
