//
//  StoresListInfo.m
//  Pringles
//
//  Created by  on 12-4-4.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "StoresListInfo.h"

@implementation StoresListInfo
@synthesize storename;
-(id) init{
	self = [super init];
	if (self) {
        self.storename = [[[NSString alloc] init] autorelease];
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
