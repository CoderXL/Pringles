//
//  CircleInfo.m
//  Pringles
//
//  Created by hao li on 12-4-4.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CircleInfo.h"

@implementation CircleInfo
@synthesize imageUrlFirst = _imageUrlFirst;
@synthesize imageUrlSecond = _imageUrlSecond;
@synthesize index = _index;
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
    [_imageUrlFirst release];
    _imageUrlFirst = nil;
    [_imageUrlSecond release];
    _imageUrlSecond = nil;
    [super dealloc];
}

@end
