//
//  WeiboInfo.h
//  Pringles
//
//  Created by  on 12-4-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseEntity.h"

@interface WeiboInfo : BaseEntity{

    NSString    *weiboontent;//微博内容
    NSString    *date;//发布日期
    NSString    *source;//来源
    int         commentcount;//评论数
    int         forwardingcount;//转发数
    int         cellHeight;//tablecell高度

}
@property (nonatomic ,retain)NSString *weiboontent;
@property (nonatomic ,retain)NSString *date;
@property (nonatomic ,retain)NSString *source;
@property (assign)int commentcount;
@property (assign)int forwardingcount;
@property (assign) int cellHeight;
@end
