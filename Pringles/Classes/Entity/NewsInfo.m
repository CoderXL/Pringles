//
//  NewsInfo.m
//  Pringles
//
//  Created by  on 12-3-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NewsInfo.h"

@implementation NewsInfo
@synthesize photo = _photo;
@synthesize content = _content;
@synthesize cellHeight = _cellHeight;
@synthesize timer = _timer;
@synthesize string = _string;
-(id) init{
	self = [super init];
	if (self) {
        self.photo = [[[NSString alloc] init] autorelease];
        self.content = [[[NSString alloc] init] autorelease];
        self.timer = [[[NSString alloc] init] autorelease];
        self.string = [[[NSString alloc]init] autorelease];
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
