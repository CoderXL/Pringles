//
//  Webuser.m
//  LiveByTouch
//
//  Created by hao.li on 11-9-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Webuser.h"


@implementation Webuser
@synthesize userid,webname,sex,province,city,area,portraitUrlSmall,portraitUrlSmall2,nickname,rating_good,rating_bad,grade,reviewNum,fanNum,followNum;//关注数
-(id) init{
	self = [super init];
	if (self) {
		
	}
	return self;
}
-(void) toEntity:(NSString *)str{
	[super toEntity:str];
	self.sex = self.sex==0?1:0;
}
-(id) initWithJSONStr:(NSString*)str{
	self = [self init];
	if (self) {
		[self toEntity:str];
		self.sex = self.sex==0?1:0;
	}
	return self;
}
+(BaseEntity*) initwithFMResultSet:(FMResultSet*)set{
	Webuser *user = [[[Webuser alloc] init] autorelease];
	return user;
}

- (id) initWithCoder: (NSCoder *)coder
{
	self = [[Webuser alloc] init];
	if (self != nil)
    {
		self.userid = [coder decodeInt64ForKey:@"userid"];
		self.webname = [coder decodeObjectForKey:@"webname"];
		self.sex = [coder decodeInt32ForKey:@"sex"];
		self.province = [coder decodeObjectForKey:@"province"];
		self.city = [coder decodeObjectForKey:@"city"];
		self.area = [coder decodeObjectForKey:@"area"];
		self.portraitUrlSmall = [coder decodeObjectForKey:@"portraitUrlSmall"];
		self.portraitUrlSmall2 = [coder decodeObjectForKey:@"portraitUrlSmall2"];
		self.nickname = [coder decodeObjectForKey:@"nickname"];
		self.rating_good = [coder decodeInt32ForKey:@"rating_good"];
		self.rating_bad = [coder decodeInt32ForKey:@"rating_bad"];
		self.grade = [coder decodeInt32ForKey:@"grade"];
		self.reviewNum = [coder decodeInt32ForKey:@"reviewNum"];
		self.fanNum = [coder decodeInt32ForKey:@"fanNum"];
		self.followNum = [coder decodeInt32ForKey:@"followNum"];
    }   
	return self;
}


- (void) encodeWithCoder: (NSCoder *)coder
{
	
	[coder encodeInt32:userid forKey:@"userid"];
	[coder encodeObject:webname forKey:@"webname"];
	[coder encodeInt32:sex forKey:@"sex"];
	[coder encodeObject:province forKey:@"province"];
	
	[coder encodeObject:city forKey:@"city"];
	[coder encodeObject:area forKey:@"area"];
	[coder encodeObject:portraitUrlSmall forKey:@"portraitUrlSmall"];
	[coder encodeObject:portraitUrlSmall2 forKey:@"portraitUrlSmall2"];
	[coder encodeObject:nickname forKey:@"nickname"];
	
	[coder encodeInt32:rating_good forKey:@"rating_good"];
	[coder encodeInt32:rating_bad forKey:@"rating_bad"];
	[coder encodeInt32:grade forKey:@"grade"];
	[coder encodeInt32:reviewNum forKey:@"reviewNum"];
	[coder encodeInt32:fanNum forKey:@"fanNum"];
	[coder encodeInt32:followNum forKey:@"followNum"];
	
}


-(void) dealloc{
	[webname release];
	webname = nil;
	[province release];
	province = nil;
	[city release];
	city = nil;
	[area release];
	area = nil;
	[portraitUrlSmall release];
	portraitUrlSmall = nil;
	[portraitUrlSmall2 release];
	portraitUrlSmall = nil;
	[nickname release];
	nickname = nil;
//	[token release];
//	token = nil;
	[super dealloc];
}
@end
