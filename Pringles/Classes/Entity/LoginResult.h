//
//  LoginResult.h
//  LiveByTouch
//
//  Created by hao.li on 11-9-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"

@interface LoginResult : BaseEntity {
	BOOL success;
    /**
     * 成功0，其他的推荐601,602等
     */
	int status;
    NSString *message;
    NSString *webname;
    long userid;
    NSString *token;
	
    /**
     * nickname是允许用户修改的，所以用户修改nickname后需要更新客户端保存的LoginResult对象。
     */
    NSString* nickname;
	
	BOOL isLogin;//是否登录了
	
	float zfb;
}
@property(nonatomic) BOOL success;
@property(nonatomic) int status;
@property(nonatomic,retain) NSString* message;
@property(nonatomic,retain) NSString* webname;
@property(nonatomic) long userid;
@property(nonatomic,retain) NSString* token;
@property(nonatomic,retain) NSString* nickname;
@property(nonatomic) BOOL	isLogin;
@property(nonatomic) float zfb;
+(LoginResult*) GetInstance;

-(void) LoadingInfo:(id<GlobalDelegate>)taget UserName:(NSString*)name Password:(NSString*)password;
-(void) getZfb:(id<GlobalDelegate>)taget;
@end
