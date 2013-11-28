//
//  Webuser.h
//  LiveByTouch
//
//  Created by hao.li on 11-9-15.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"

@interface Webuser : BaseEntity {
	long userid;
	
	NSString* webname;//登陆名
	
	int sex;//'0'=男，'1'=女
	
	NSString* province;//省
	NSString* city;
	NSString* area;
	
	//NSString* portraitUrl;//头像url
	
	NSString* portraitUrlSmall;
	NSString* portraitUrlSmall2;
	
	NSString* nickname;//昵称nickname
	
	//NSString* token;
	
	int rating_good;//好评率个数
	int rating_bad;//好评率个数
	int grade;//等级，消费次数，表现形式是星钻冠
	
	int reviewNum;//点评数
	int fanNum;//粉丝数
	int followNum;//关注数
}
@property(nonatomic) long userid;
@property(nonatomic,retain) NSString* webname;//登陆名
@property(nonatomic) int sex;//'0'=男，'1'=女
@property(nonatomic,retain) NSString* province;//省
@property(nonatomic,retain) NSString* city;
@property(nonatomic,retain) NSString* area;
//@property(nonatomic,retain) NSString* portraitUrl;//头像url
@property(nonatomic,retain) NSString* portraitUrlSmall;
@property(nonatomic,retain) NSString* portraitUrlSmall2;
@property(nonatomic,retain) NSString* nickname;//昵称nickname
//@property(nonatomic,retain) NSString* token;
@property(nonatomic) int rating_good;//好评率个数
@property(nonatomic) int rating_bad;//好评率个数
@property(nonatomic) int grade;//等级，消费次数，表现形式是星钻冠
@property(nonatomic) int reviewNum;//点评数
@property(nonatomic) int fanNum;//粉丝数
@property(nonatomic) int followNum;//关注数
@end
