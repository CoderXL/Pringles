//
//  BaseEntity.m
//  LiveByTouch
//
//  Created by hao.li on 11-9-1.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BaseEntity.h"
#import "JSON.h"

@implementation BaseEntity

-(id) initWithJSONStr:(NSString*)str{
	self = [self init];
	if (self) {
		[self toEntity:str];
	}
	return self;
}

-(id) init{
	self = [super init];
	if (self) {
		
	}
	return self;
}

+(BaseEntity*) initwithFMResultSet:(FMResultSet*)set{
	return nil;
}

- (NSString*) toJson{
	NSString *jsonString = [[self properties_aps] JSONRepresentation];
	return jsonString;
}

- (NSDictionary *)properties_aps {   
    NSMutableDictionary *props = [NSMutableDictionary dictionary];   
    unsigned int outCount, i;   
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);   
    for (i = 0; i < outCount; i++) {   
        objc_property_t property = properties[i];
        //NSString *propertyName = [[[NSString alloc] initWithCString:property_getName(property)] autorelease];  
        NSString *propertyName = [NSString stringWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
		//NSString *attr = [[[NSString alloc] initWithCString:property_getAttributes(property)] autorelease];
        id propertyValue = [self valueForKey:(NSString *)propertyName];   
		//NSLog(@"名称:%@--值:%@---属性:%@",propertyName,propertyValue,attr);
		if ([propertyValue isKindOfClass:[BaseEntity class]]) {
			BaseEntity *subClass = (BaseEntity*)propertyValue;
			propertyValue = [[subClass toJson] JSONValue];
		}
        if (propertyValue) [props setObject:propertyValue forKey:propertyName];   
    }
    free(properties);   
    return props;   
}   

-(void) toEntity:(NSString*)str
{
   // NSLog(@"111111111111=%@",str);
    
	if (str == nil || str == @"") 
    {
		return;
	}
	NSDictionary *dic = [str JSONValue];
	unsigned int outCount, i;   
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);   
    for (i = 0; i < outCount; i++) 
    {   
        objc_property_t property = properties[i];
        //NSString *propertyName = [[[NSString alloc] initWithCString:property_getName(property)] autorelease];
         NSString *propertyName = [NSString stringWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        
       // NSLog(@"propertyname=%@",propertyName);
        
        id propertyValue = [self valueForKey:(NSString *)propertyName];   

		if ([propertyValue isKindOfClass:[BaseEntity class]]) {
			BaseEntity *subClass = (BaseEntity*)propertyValue;
			NSString *subStr = [[dic objectForKey:propertyName] JSONRepresentation];
			[subClass toEntity:subStr];
			[self setValue:subClass forKey:propertyName];
		}
		else {
			id virableStr = [dic objectForKey:propertyName];
            //NSLog(@"值＝%@",virableStr);
            if (virableStr == [NSNull null]) {
                // Do something for a null
                //NSLog(@"haha=%@",virableStr);
            }
			else if(virableStr!=nil&&virableStr!=@"") {
				[self setValue:virableStr forKey:propertyName];
			}
		}
    }
    free(properties); 
}

@end
