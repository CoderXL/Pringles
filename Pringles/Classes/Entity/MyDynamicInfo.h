//
//  MyDynamicInfo.h
//  Pringles
//
//  Created by  on 12-4-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"
@interface MyDynamicInfo : BaseEntity{
    NSString *_photo;
    NSString *_content;
    int _cellHeight;
}
@property (nonatomic,retain) NSString *photo;
@property (nonatomic,retain) NSString *content;
@property (assign) int cellHeight;
@end