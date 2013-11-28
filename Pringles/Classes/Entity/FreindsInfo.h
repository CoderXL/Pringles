//
//  FreindsInfo.h
//  Pringles
//
//  Created by  on 12-3-30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseEntity.h"
@interface FreindsInfo : BaseEntity{

    NSString    *_friendheadimage;//好友头像
    NSString    *_friendnickname;//好友昵称
    NSString    *_lastmessage;//最新一条微博信息
    
}
@property (nonatomic ,retain) NSString *friendheadimage;
@property (nonatomic ,retain) NSString *friendnickname;
@property (nonatomic ,retain) NSString *lastmessage;

@end
