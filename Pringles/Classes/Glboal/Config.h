//
//  Config.h
//  LiveByTouch
//
//  Created by hao.li on 11-9-7.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"
@class LoginResult;
@class UserInfo;

@interface Config : BaseEntity {
	NSString *firstTime;
	NSString *lastTime;
	NSString *version;
	UserInfo *userInfo;
	LoginResult *loginResult;
	BOOL isFirstTime;
}
@property(nonatomic) BOOL isFirstTime;
@property(nonatomic,retain) NSString *firstTime;
@property(nonatomic,retain) NSString *lastTime;
@property(nonatomic,retain) NSString *version;
@property(nonatomic,retain) UserInfo *userInfo;
@property(nonatomic,retain) LoginResult *loginResult;

+(Config*) GetInstance;

- (id) initWithCoder: (NSCoder *)coder;
- (void) encodeWithCoder: (NSCoder *)coder;
@end
