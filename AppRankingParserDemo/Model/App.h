//
//  App.h
//  GameWiki
//
//  Created by SOMTD on 2013/08/08.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import <Foundation/Foundation.h>

//{
//    category =         {
//        attributes =             {
//            "im:id" = 6014;
//            label = "\U30b2\U30fc\U30e0";
//            scheme = "https://itunes.apple.com/.....";
//            term = Games;
//        };
//    };
//    id =         {
//        attributes =             {
//            "im:bundleId" = "jp.gungho.pad";
//            "im:id" = 493470467;
//        };
//        label = "https://itunes.apple.com/.....";
//    };
//    "im:artist" =         {
//        attributes =             {
//            href = "https://itunes.apple.com/.....";
//        };
//        label = "GungHo Online Entertainment, Inc.";
//    };
//    "im:contentType" =         {
//        attributes =             {
//            label = "\U30a2\U30d7\U30ea\U30b1\U30fc\U30b7\U30e7\U30f3";
//            term = Application;
//        };
//    };
//    "im:image" =         (
//                          {
//                              attributes =                 {
//                                  height = 53;
//                              };
//                              label = "http://a1958.phobos.apple.com/..../mzl.sngjaooy.53x53-50.png";
//                          },
//                          {
//                              attributes =                 {
//                                  height = 75;
//                              };
//                              label = "http://a474.phobos.apple.com/...../mzl.sngjaooy.75x75-65.png";
//                          },
//                          {
//                              attributes =                 {
//                                  height = 100;
//                              };
//                              label = "http://a1511.phobos.apple.com/....../mzl.sngjaooy.100x100-75.png";
//                          }
//                          );
//    "im:name" =         {
//        label = "\U30d1\U30ba\U30eb\Uff06\U30c9\U30e9\U30b4\U30f3\U30ba";
//    };
//    "im:price" =         {
//        attributes =             {
//            amount = "0.00000";
//            currency = JPY;
//        };
//        label = "\U7121\U6599";
//    };
//    "im:releaseDate" =         {
//        attributes =             {
//            label = "2012\U5e742\U670819\U65e5";
//        };
//        label = "2012-02-19T22:31:52-07:00";
//    };
//    link =         (
//                    {
//                        attributes =                 {
//                            href = "https://itunes.apple.com/......";
//                            rel = alternate;
//                            type = "text/html";
//                        };
//                    },
//                    {
//                        attributes =                 {
//                            href = "http://a4.mzstatic.com/...../mzl.ccwkpwwm.1024x1024-65.jpg";
//                            "im:assetType" = preview;
//                            rel = enclosure;
//                            title = "\U30d7\U30ec\U30d3\U30e5\U30fc";
//                            type = "image/jpeg";
//                        };
//                        "im:duration" =                 {
//                            label = 0;
//                        };
//                    }
//                    );
//    rights =         {
//        label = "\U00a9 (C)2012 GungHo Online Entertainment, Inc. All Rights Reserved.";
//    };
//    summary =         {
//        label = "\U30c8\U2192http://www.gungho.jp/pad/";
//    };
//    title =         {
//        label = "\U30d1\U30ba\U30eb\Uff06\U30c9\U30e9\U30b4\U30f3\U30ba - GungHo Online Entertainment, Inc.";
//    };
//}

@interface App : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *artist;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *rights;
@property (nonatomic, copy) NSURL    *linkURL;
@property (nonatomic, copy) NSURL    *imageURL;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
