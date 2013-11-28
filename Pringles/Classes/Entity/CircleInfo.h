//
//  CircleInfo.h
//  Pringles
//
//  Created by hao li on 12-4-4.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"
@interface CircleInfo : BaseEntity
{
    int _index;
    NSString *_imageUrlFirst;
    NSString *_imageUrlSecond;
}
@property (nonatomic,assign) int index;
@property (nonatomic,retain) NSString *imageUrlFirst;
@property (nonatomic,retain) NSString *imageUrlSecond;
@end
