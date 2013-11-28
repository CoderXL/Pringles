//
//  MyDynamicInfo.m
//  Pringles
//
//  Created by  on 12-4-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MyDynamicInfo.h"

@implementation MyDynamicInfo
@synthesize content = _content;
@synthesize cellHeight = _cellHeight;
@synthesize photo = _photo;

-(id) init{
	self = [super init];
	if (self) {
        self.photo = [[[NSString alloc] init] autorelease];
        self.content = [[[NSString alloc] init] autorelease];
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
