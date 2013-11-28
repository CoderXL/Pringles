//
//  LoginResult.m
//  LiveByTouch
//
//  Created by hao.li on 11-9-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LoginResult.h"


@implementation LoginResult
@synthesize success,status,message,webname,userid,token,nickname,isLogin,zfb;
static LoginResult *sharedSingleton;


+(LoginResult*) GetInstance
{
	@synchronized(self)
	{
		if (!sharedSingleton)
		{
			sharedSingleton = [[LoginResult alloc] init];
		}
		return sharedSingleton;
	}
}
-(id) init
{
	self = [super init];
	if (self) 
    {
	}
	return self;
}
-(id) initWithJSONStr:(NSString*)str{
	self = [self init];
	if (self) {
		[self toEntity:str];
//		NSDictionary *dic = [str JSONValue];
//		self.success = [[dic objectForKey:@"success"] boolValue];
//		self.status = [[dic objectForKey:@"status"] intValue];
//		
//		self.message = [[dic objectForKey:@"message"] copy];
//		self.webname = [[dic objectForKey:@"webname"] copy];
//		self.userid = [[dic objectForKey:@"userid"] longValue];
//		self.token = [[dic objectForKey:@"token"] copy];
	}
	return self;
}


+(BaseEntity*) initwithFMResultSet:(FMResultSet*)set{
	return nil;
}


/**
 获取登录信息
 */
-(void) LoadingInfo:(id<GlobalDelegate>)taget UserName:(NSString*)name Password:(NSString*)password
{
	NSArray *arr = [[NSArray alloc] initWithObjects:
					[NSDictionary dictionaryWithObjectsAndKeys:name,@"value",@"login_webname",@"key",nil],//jamy.zhang@livebytouch.com
					[NSDictionary dictionaryWithObjectsAndKeys:password,@"value",@"login_pwd",@"key",nil],//111111
					nil
					];
	NSDictionary *dir = [[Global GetInstance] PostPaserHelper:taget :LOGINGINFOURL :arr :ProcessDefault];
	[arr release];
	//NSLog(@"-----%@",[dir JSONRepresentation]);
	sharedSingleton.success = [[dir objectForKey:@"success"] intValue];
	
	NSString *dataStr = [dir objectForKey:@"data"];
	NSDictionary *data = [dataStr JSONValue];
	
	sharedSingleton.status = [[data objectForKey:@"status"] intValue];
	sharedSingleton.message = [[data objectForKey:@"message"] copy];
	sharedSingleton.webname = [[data objectForKey:@"webname"] copy];
	sharedSingleton.userid = [[data objectForKey:@"userid"] intValue];
	sharedSingleton.token = [[data objectForKey:@"token"] copy];
	sharedSingleton.nickname = [[data objectForKey:@"nickname"] copy];
	if (sharedSingleton.status == 0 && sharedSingleton.success == YES) {
		sharedSingleton.isLogin = YES;
	}
}

-(void) getZfb:(id<GlobalDelegate>)taget{
	NSDictionary *dir = [[Global GetInstance] PostPaserHelper:taget :GETZFB :nil :ProcessSimple];
	NSString *dataStr = [dir objectForKey:@"data"];
	NSDictionary *data = [dataStr JSONValue];
	sharedSingleton.zfb = [[data objectForKey:@"sf_balance"] floatValue];
}

- (id) initWithCoder: (NSCoder *)coder
{
	self = [[LoginResult alloc] init];
	if (self != nil)
    {
		self.success = [coder decodeBoolForKey:@"success"];
		self.status = [coder decodeIntForKey:@"status"];
		self.message = [coder decodeObjectForKey:@"message"];
		self.webname = [coder decodeObjectForKey:@"webname"];
		self.userid = [coder decodeIntForKey:@"userid"];
		self.token = [coder decodeObjectForKey:@"token"];
		self.nickname = [coder decodeObjectForKey:@"nickname"];
		self.isLogin = [coder decodeBoolForKey:@"isLogin"];
		self.zfb = [coder decodeFloatForKey:@"zfb"];
    }   
	return self;
}


- (void) encodeWithCoder: (NSCoder *)coder
{	
	[coder encodeBool:success forKey:@"success"];
	[coder encodeInt:status forKey:@"status"];
	[coder encodeObject:message forKey:@"message"];
	[coder encodeObject:webname forKey:@"webname"];
	[coder encodeInt64:userid forKey:@"userid"];
	[coder encodeObject:token forKey:@"token"];
	[coder encodeObject:nickname forKey:@"nickname"];
	[coder encodeBool:isLogin forKey:@"isLogin"];
	[coder encodeFloat:zfb forKey:@"zfb"];
}


-(void) dealloc{
	[message release];
	message = nil;
	[webname release];
	webname = nil;
	[token release];
	token = nil;
	[nickname release];
	nickname = nil;
	[super dealloc];
}
@end
