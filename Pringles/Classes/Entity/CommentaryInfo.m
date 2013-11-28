//
//  Commentary.m
//  Pringles
//
//  Created by  on 12-4-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CommentaryInfo.h"

@implementation CommentaryInfo
@synthesize content = _content;
@synthesize cellHeight = _cellHeight;
@synthesize name = _name;
@synthesize timer = _timer;

-(id) init{
	self = [super init];
	if (self) {
        self.name = [[[NSString alloc] init] autorelease];
        self.content = [[[NSString alloc] init] autorelease];
        self.timer = [[[NSString alloc]init] autorelease];
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
