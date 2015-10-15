//
//  TravelRouteTools.m
//  QLC_Travel
//
//  Created by 斌斌斌 on 15/10/15.
//  Copyright (c) 2015年 QLC. All rights reserved.
//

#import "TravelRouteTools.h"

@implementation TravelRouteTools

//NSString * a = @"平顶山";
//NSString *httpUrl = @"http://apis.baidu.com/apistore/travel/line";
//NSString *httpArg = [NSString stringWithFormat: @"location=%@&day=3&output=json&coord_type=bd09ll&out_coord_type=bd09ll",[a stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] ];
//[[[TravelRouteTools alloc]init] request:httpUrl withHttpArg:httpArg];


-(void)request: (NSString*)httpUrl withHttpArg: (NSString*)HttpArg  {
        NSString *urlStr = [[NSString alloc]initWithFormat: @"%@?%@", httpUrl, HttpArg];
        NSURL *url = [NSURL URLWithString: urlStr];
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL: url cachePolicy: NSURLRequestUseProtocolCachePolicy timeoutInterval: 10];
        [request setHTTPMethod: @"GET"];
        [request addValue:BAIDU_APPKEY forHTTPHeaderField: @"apikey"];
        [NSURLConnection sendAsynchronousRequest: request
                                           queue: [NSOperationQueue mainQueue]
                               completionHandler: ^(NSURLResponse *response, NSData *data, NSError *error){
                                   if (error) {
                                       NSLog(@"Httperror: %@%ld", error.localizedDescription, error.code);
                                   } else {
                                       NSInteger responseCode = [(NSHTTPURLResponse *)response statusCode];
                                       NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                                       NSLog(@"HttpResponseCode:%ld", responseCode);
                                       NSLog(@"HttpResponseBody %@",responseString);
                                   }
                               }];
}

@end
