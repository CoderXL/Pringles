//
//  DynamicInfo.h
//  Pringles
//
//  Created by hao li on 12-3-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseEntity.h"

@interface DynamicInfo : BaseEntity{
//    NSString *_photo;
//    NSString *_content;
    int _cellHeight;
    
    int mid;
    int uid;
    int u_type;
    int mtype;
    NSString *mpics;
    NSString *mcontent;
    NSString *inserttime;
    int mtid;
    NSString *mtcontent;
    int transmidnum;
    int commentnum;
    int mstatus;
    int isdelete;
    
}
//@property (nonatomic,retain) NSString *photo;
//@property (nonatomic,retain) NSString *content;
@property (assign) int cellHeight;

@property(nonatomic,assign)int mid;
@property(nonatomic,assign)int uid;
@property(nonatomic,assign)int u_type;
@property(nonatomic,assign)int mtype;
@property(nonatomic,retain)NSString *mpics;
@property(nonatomic,retain)NSString *mcontent;
@property(nonatomic,retain)NSString *inserttime;
@property(nonatomic,assign)int mtid;
@property(nonatomic,retain)NSString *mtcontent;
@property(nonatomic,assign)int transmidnum;
@property(nonatomic,assign)int commentnum;
@property(nonatomic,assign)int mstatus;
@property(nonatomic,assign)int isdelete;

-(int) getCellHeight;

@end