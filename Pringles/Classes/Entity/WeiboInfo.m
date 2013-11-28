//
//  WeiboInfo.m
//  Pringles
//
//  Created by  on 12-4-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WeiboInfo.h"

@implementation WeiboInfo
@synthesize weiboontent,date,source,commentcount,forwardingcount,cellHeight;

-(id) init{
	self = [super init];
	if (self) {
        self.weiboontent = [[[NSString alloc] init] autorelease];
        self.date = [[[NSString alloc] init] autorelease];
        self.source = [[[NSString alloc] init] autorelease];
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
