//
//  TravelRouteTools.h
//  QLC_Travel
//
//  Created by 斌斌斌 on 15/10/15.
//  Copyright (c) 2015年 QLC. All rights reserved.
//

#import <Foundation/Foundation.h>
//旅游路线类
@interface TravelRouteTools : NSObject

//根据网址和参数请求数据
-(void)request: (NSString*)httpUrl withHttpArg: (NSString*)HttpArg;

@end
