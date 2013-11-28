//
//  ScoreInfo.m
//  Pringles
//
//  Created by  on 12-3-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ScoreInfo.h"

@implementation ScoreInfo
@synthesize photoname=_photoname;
@synthesize scoretitle=_scoretitle;
@synthesize needscore=_needscore;
@synthesize lastDate=_lastDate;

-(id) init{
	self = [super init];
	if (self) {
        self.photoname = [[[NSString alloc] init] autorelease];
        self.lastDate = [[[NSString alloc] init] autorelease];
        self.scoretitle = [[[NSString alloc] init] autorelease];
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
