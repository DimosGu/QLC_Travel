//
//  WeatherTools.h
//  QLC_Travel
//
//  Created by 斌斌斌 on 15/10/15.
//  Copyright (c) 2015年 QLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherTools : NSObject

-(void)requestCityListWith: (NSString*)httpUrl withHttpArg: (NSString*)HttpArg;
-(void)requestWeather7DaysWith: (NSString*)httpUrl withHttpArg: (NSString*)HttpArg;
-(void)requestCityInfoWith: (NSString*)httpUrl withHttpArg: (NSString*)HttpArg;
@end
