//
//  RankingViewController.h
//  AppRankingParserDemo
//
//  Created by SOMTD on 2013/09/09.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RankingApi.h"

@interface RankingViewController : UITableViewController

@property (nonatomic, copy) NSString *category;
@property (nonatomic, copy) NSString *feedType;

//Audiobooks
@property (nonatomic) ARAudiobooks audiobooksType;
//iOS Apps
@property (nonatomic) ARiOSApps iOSAppsType;
//Movies
@property (nonatomic) ARMovies moviesType;
//Music
@property (nonatomic) ARMusic musicType;
//Mac Apps
@property (nonatomic) ARMacApps macAppsType;
//Podcasts
@property (nonatomic) ARPodcasts podcastsType;
//Books
@property (nonatomic) ARBooks booksType;
//iTunesU
@property (nonatomic) ARiTunesU iTunesUType;
//TV Shows
@property (nonatomic) ARTVShows TVShowsType;
//Music Videos
@property (nonatomic) ARMusicVideos musicVideosType;

@end
