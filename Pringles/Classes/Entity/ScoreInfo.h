//
//  ScoreInfo.h
//  Pringles
//
//  Created by  on 12-3-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseEntity.h"
@interface ScoreInfo : BaseEntity{
    NSString *_photoname;//积分图片
    NSString *_scoretitle;//积分名称
    int _needscore;//所需积分
    NSString *_lastDate;//截止日期

    
}
@property(nonatomic,retain) NSString *photoname;
@property(nonatomic,retain) NSString *scoretitle;
@property (assign) int needscore;
@property(nonatomic,retain) NSString *lastDate;

@end
