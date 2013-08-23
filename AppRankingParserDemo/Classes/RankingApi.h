//
//  RankingApi.h
//  AppRankingParserDemo
//
//  Created by SOMTD on 2013/08/16.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import <Foundation/Foundation.h>

//Country
typedef enum ARCountry : NSUInteger {
    UnitedStates,
    Japan,
} ARCountry;

//Audiobooks
typedef enum ARAudiobooks : NSUInteger {
    ARAudiobooksTypeTop,
} ARAudiobooks;

//iOS Apps
typedef enum ARiOSApps : NSUInteger {
    ARiOSAppsTypeTopFree,
    ARiOSAppsTypeTopPaid,
    ARiOSAppsTypeTopGross,
    ARiOSAppsTypeTopFreeiPad,
    ARiOSAppsTypeTopPaidiPad,
    ARiOSAppsTypeTopGrossiPad,
    ARiOSAppsTypeNew,
    ARiOSAppsTypeNewFree,
    ARiOSAppsTypeNewPaid,
} ARiOSApps;

//Movies
typedef enum ARMovies : NSUInteger {
    ARMoviesTypeTop,
    ARMoviesTypeTopRentals,
} ARMovies;

//Music
typedef enum ARMusic : NSUInteger {
    ARMusicTypeTopAlbums,
    ARMusicTypeTopiMixes,
    ARMusicTypeTopSongs,
    //ARMusicTypeNewRelease, //Not json object
    //ARMusicTypeJustAdded,  //Not json object
    //ARMusicTypeFeaturedAlbums, //Not json object
} ARMusic;

//Mac Apps
typedef enum ARMacApps : NSUInteger {
    ARMacAppsTypeTop,
    ARMacAppsTypeTopFree,
    ARMacAppsTypeTopGross,
    ARMacAppsTypeTopPaid,
} ARMacApps;

//Podcasts
typedef enum ARPodcasts : NSUInteger {
    ARPodcastsTypeTop,
} ARPodcasts;

//Books
typedef enum ARBooks : NSUInteger {
    ARBooksTypeTopPaid,
    ARBooksTypeTopFree,
} ARBooks;

//iTunesU
typedef enum ARiTunesU : NSUInteger {
    ARiTunesUTypeTopCollections,
    ARiTunesUTypeTopCourses,
} ARiTunesU;

//TV Shows
typedef enum ARTVShows : NSUInteger {
    ARTVShowsTypeTopTVEpisodes,
    ARTVShowsTypeTopTVSeasons,
} ARTVShows;

//Music Videos
typedef enum ARMusicVideos : NSUInteger {
    ARMusicVideosTypeTopVideos,
} ARMusicVideos;

//Genre
typedef enum ARGenre : NSUInteger {
    ARGenreTypeAll,
} ARGenre;

@interface RankingApi : NSObject



@end
