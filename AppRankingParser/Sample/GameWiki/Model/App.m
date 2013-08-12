//
//  App.m
//  GameWiki
//
//  Created by SOMTD on 2013/08/08.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "App.h"

@implementation App

- (id)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {        
        self.name       = dictionary[@"im:name"][@"label"];
        self.artist     = dictionary[@"im:artist"][@"label"];
        self.title      = dictionary[@"title"][@"label"];
        self.summary    = dictionary[@"summary"][@"label"];
        self.rights     = dictionary[@"rights"][@"label"];
        self.linkURL    = [NSURL URLWithString:dictionary[@"id"][@"label"]];
        //self.imageURL   = [[NSURL URLWithString:dictionary[@"im:image"]]lastObject][@"label"];
    }
    return self;
}

@end
