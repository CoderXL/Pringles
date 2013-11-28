//
//  TicketInfo.h
//  Pringles
//
//  Created by  on 12-3-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "BaseEntity.h"
#import "BaseEntity.h"
@interface TicketInfo : BaseEntity {
    NSString *_photo;
    NSString *_content;
    NSString *_valid;
    NSString *_discounting;
    int _cellHeight;
}
@property (nonatomic,retain) NSString *discounting;
@property (nonatomic,retain) NSString *valid;
@property (nonatomic,retain) NSString *photo;
@property (nonatomic,retain) NSString *content;
@property (assign) int cellHeight;
@end
