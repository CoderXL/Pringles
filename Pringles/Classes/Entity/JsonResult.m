//
//  JsonResult.m
//  LiveByTouch
//
//  Created by hao.li on 11-9-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "JsonResult.h"
#import "DynamicInfo.h"

@implementation JsonResult
@synthesize result,msg,uid,data;

-(id) init{
	self = [super init];
	if (self) {
		//pg = [[[Paging alloc] init] autorelease];
	}
	return self;
}

-(id) initWithJSONStr:(NSString*)str{
	self = [self init];
	if (self) {
		[self toEntity:str];
        NSDictionary *dic = [str JSONValue];
        if ([dic objectForKey:@"weibo_list"] != nil) {
            data = [[[dic objectForKey:@"weibo_list"] JSONRepresentation] copy];
        }
        else if([dic objectForKey:@"comment_list"]!=nil){
            data = [[[dic objectForKey:@"comment_list"] JSONRepresentation] copy];
        }
	}
	return self;
}


-(void) dealloc{
	[msg release];
	msg = nil;
    [data release];
    data = nil;
	[super dealloc];
}
@end
