//
//  StoresActivityInfo.h
//  Pringles
//
//  Created by  on 12-4-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseEntity.h"
@interface StoresActivityInfo : BaseEntity{
    NSString    *activityName;
    NSString    *activityDescription;
}
@property(nonatomic,retain) NSString *activityName;
@property(nonatomic,retain) NSString *activityDescription;
@end
