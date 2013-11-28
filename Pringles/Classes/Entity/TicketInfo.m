//
//  TicketInfo.m
//  Pringles
//
//  Created by  on 12-3-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TicketInfo.h"

@implementation TicketInfo
@synthesize photo = _photo;
@synthesize content = _content;
@synthesize cellHeight = _cellHeight;
@synthesize valid = _valid;
@synthesize discounting = _discounting;

-(id) init{
	self = [super init];
	if (self) {
        self.photo = [[[NSString alloc] init] autorelease];
        self.content = [[[NSString alloc] init] autorelease];
        self.valid = [[[NSString alloc]init] autorelease];
        self.discounting = [[[NSString alloc]init] autorelease];
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
