//
//  NewsInfo.h
//  Pringles
//
//  Created by  on 12-3-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
#import "BaseEntity.h"

@interface NewsInfo : BaseEntity {
    NSString *_string;
    NSString *_photo;
    NSString *_content;
    NSString *_timer;
    int _cellHeight;
}
@property (nonatomic,retain) NSString *string;
@property (nonatomic,retain) NSString *timer;
@property (nonatomic,retain) NSString *photo;
@property (nonatomic,retain) NSString *content;
@property (assign) int cellHeight;
@end
