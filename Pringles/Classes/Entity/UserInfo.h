//
//  UserInfo.h
//  LiveByTouch
//
//  Created by hao.li on 11-7-21.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Global.h"
#import "BaseEntity.h"
#import "Webuser.h"

@interface UserInfo : BaseEntity {
	
    int uid;
    
	Webuser *user;
	long point;//积分
	long zmoney;//点评收益,指付币
	
	BOOL isFollowed;
}
@property(nonatomic,assign) int uid;
@property(nonatomic,retain) Webuser *user;
@property(nonatomic) long point;
@property(nonatomic) long zmoney;
@property(nonatomic) BOOL isFollowed;

+(UserInfo*) GetInstance;
+(void) ClearnUserInfo;


//获取用户信息
-(void) GetUserInfo:(NSString*)dataStr;

//修改用户信息
-(void) ModifyUserInfo:(id<GlobalDelegate>)taget;

@end
