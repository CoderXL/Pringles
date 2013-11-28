//
//  Commentary.h
//  Pringles
//
//  Created by  on 12-4-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"

@interface CommentaryInfo : BaseEntity{
    NSString *_name;
    NSString *_timer;
    NSString *_content;
    int _cellHeight;
}
@property (nonatomic,retain) NSString *timer;
@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) NSString *content;
@property (assign) int cellHeight;
@end