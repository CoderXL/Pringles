//
//  StoresListInfo.h
//  Pringles
//
//  Created by  on 12-4-4.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseEntity.h"
@interface StoresListInfo : BaseEntity{

    NSString *storename;
    
}
@property(nonatomic,retain)  NSString *storename;
@end
