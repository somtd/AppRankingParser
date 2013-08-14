//
//  RankingApiClient.m
//  GameWiki
//
//  Created by SOMTD on 2013/08/08.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "RankingApiClient.h"
#import "AFNetworking.h"

#define RankingAPIURLString @"https://itunes.apple.com/"

@implementation RankingApiClient

//THANKS TO:https://github.com/AFNetworking/AFNetworking/issues/794

+ (id)sharedInstance {
    
    static RankingApiClient *__sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __sharedInstance = [[RankingApiClient alloc] initWithBaseURL:[NSURL URLWithString:RankingAPIURLString]];
    });
    
    return __sharedInstance;
}

- (id)initWithBaseURL:(NSURL *)url {
    
    self = [super initWithBaseURL:url];
    if (self) {
        //custom settings
        [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
        [self setDefaultHeader:@"Accept" value:@"application/json,text/html"];
    }
    
    return self;
}

@end
