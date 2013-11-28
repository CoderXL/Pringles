//
//  UserInfo.m
//  LiveByTouch
//
//  Created by hao.li on 11-7-21.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UserInfo.h"
#import "Global.h"
#import "JSON.h"
#import "LoginResult.h"

@implementation UserInfo
@synthesize user,point,zmoney,isFollowed,uid;

static UserInfo *sharedSingleton;
+(UserInfo*) GetInstance
{
	@synchronized(self)
	{
		if (!sharedSingleton)
		{
			sharedSingleton = [[UserInfo alloc] init];
		}
		return sharedSingleton;
	}
}

+(void) ClearnUserInfo
{
	[LoginResult GetInstance].isLogin = NO;
	[sharedSingleton release];
	sharedSingleton = nil;
}

-(id) init{
	self = [super init];
	if (self) {
		self.user= [[[Webuser alloc] init] autorelease];
	}
	return self;
}

-(id) initWithJSONStr:(NSString*)str{
	if ((self = [self init])) {
		[self toEntity:str];
//		NSDictionary *dic = [str JSONValue];
//		NSString *userStr = [[dic objectForKey:@"user"] JSONRepresentation];
//		self.user = [[Webuser alloc] initWithJSONStr:userStr];
//		self.point = [[dic objectForKey:@"point"] longValue];
//		self.zmoney = [[dic objectForKey:@"zmoney"] longValue];
//		self.isFollowed = [[dic objectForKey:@"isFollowed"] boolValue];	
	}
	return self;
}

/**
 获取用户的信息
 */
-(void) GetUserInfo:(NSString*)dataStr{
	if (dataStr==nil) {
		return;
	}
	UserInfo *userInfo = [[UserInfo alloc] initWithJSONStr:dataStr];
	sharedSingleton = [userInfo retain];
	[userInfo release];
	
	if (sharedSingleton.user.portraitUrlSmall2) {
//		NSURL *nurl =[[NSURL alloc] initWithString:sharedSingleton.user.portraitUrlSmall2];
//		NSData *dt = [[NSData alloc] initWithContentsOfURL:nurl];
//		[nurl release];
//		UIImage *img = [[UIImage alloc] initWithData:dt];
//		[dt release];
//		[[Global GetInstance] savingImage:HEADERNAME Image:img];
//		[img release];
	}
	[LoginResult GetInstance].webname = sharedSingleton.user.webname;
}

-(void) ModifyUserInfo:(id<GlobalDelegate>)taget
{
	//(String imgData,String imgExt,final String nickname,Boolean isMale)
	NSData *imageData=nil;
	imageData = [[Global GetInstance] getDiskNSData:[UserInfo GetInstance].user.portraitUrlSmall2 Type:DocumentsUser];
	
	NSString *nsSex = @"";
	nsSex = [nsSex stringByAppendingFormat:@"%d",[UserInfo GetInstance].user.sex];
	
	NSArray *arr = [[NSArray alloc] initWithObjects:
					[NSDictionary dictionaryWithObjectsAndKeys:[UserInfo GetInstance].user.nickname,@"value",@"nickname",@"key",nil],
					[NSDictionary dictionaryWithObjectsAndKeys:nsSex,@"value",@"isMale",@"key",nil],
					[NSDictionary dictionaryWithObjectsAndKeys:@"jpg",@"value",@"imgExt",@"key",nil],
					nil
					];
	
	[[Global GetInstance] PostDataHeler:taget :MODIFYUSERINFOURL :arr :imageData :ProcessDefault];
	[arr release];
}

- (id) initWithCoder: (NSCoder *)coder
{
	self = [[UserInfo alloc] init];
	if (self != nil)
    {
		self.user = [coder decodeObjectForKey:@"user"];
		self.point = [coder decodeInt64ForKey:@"point"];
		self.zmoney = [coder decodeInt64ForKey:@"zmoney"];
		self.isFollowed = [coder decodeBoolForKey:@"isFollowed"];
    }   
	return self;
}


- (void) encodeWithCoder: (NSCoder *)coder
{
	[coder encodeObject:user forKey:@"user"];
	[coder encodeInt64:point forKey:@"point"];
	[coder encodeInt64:zmoney forKey:@"zmoney"];
	[coder encodeBool:isFollowed forKey:@"isFollowed"];
}

- (void)dealloc {
	user = nil;
    [super dealloc];
}
@end
