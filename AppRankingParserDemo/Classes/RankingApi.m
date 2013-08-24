//
//  RankingApi.m
//  AppRankingParserDemo
//
//  Created by SOMTD on 2013/08/16.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "RankingApi.h"
#import "RankingApiClient.h"
#import "AFNetworking.h"

@implementation RankingApi

+ (void)getAudiobooksRankingWithCountry:(ARCountry)country
                               feedType:(ARAudiobooks)feedType
                                  genre:(ARAudiobooksGenre)genre
                                  limit:(int)limit
                                handler:(void (^)(id response, NSError *error))handler
{
    NSString *feedTypeParam;
    switch (feedType) {
        case ARAudiobooksTypeTop:
            feedTypeParam = @"topaudiobooks";
            break;
        default:
            break;
    }
    NSString *countryParam = [self _country:country];
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getiOSAppsRankingWithCountry:(ARCountry)country
                            feedType:(ARiOSApps)feedType
                               genre:(ARiOSAppsGenre)genre
                               limit:(int)limit
                             handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARiOSAppsTypeTopFree:
            feedTypeParam = @"topfreeapplications";
            break;
        case ARiOSAppsTypeTopPaid:
            feedTypeParam = @"toppaidapplications";
            break;
        case ARiOSAppsTypeTopGross:
            feedTypeParam = @"topgrossingapplications";
            break;
        case ARiOSAppsTypeTopFreeiPad:
            feedTypeParam = @"topfreeipadapplications";
            break;
        case ARiOSAppsTypeTopPaidiPad:
            feedTypeParam = @"toppaidipadapplications";
            break;
        case ARiOSAppsTypeTopGrossiPad:
            feedTypeParam = @"topgrossingipadapplications";
            break;
        case ARiOSAppsTypeNew:
            feedTypeParam = @"newapplications";
            break;
        case ARiOSAppsTypeNewFree:
            feedTypeParam = @"newfreeapplications";
            break;
        case ARiOSAppsTypeNewPaid:
            feedTypeParam = @"newpaidapplications";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getMoviesRankingWithCountry:(ARCountry)country
                           feedType:(ARMovies)feedType
                              genre:(ARMoviesGenre)genre
                              limit:(int)limit
                            handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARMoviesTypeTop:
            feedTypeParam = @"topmovies";
            break;
        case ARMoviesTypeTopRentals:
            feedTypeParam = @"topvideorentals";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getMusicRankingWithCountry:(ARCountry)country
                          feedType:(ARMusic)feedType
                             genre:(ARMusicGenre)genre
                             limit:(int)limit
                           handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARMusicTypeTopAlbums:
            feedTypeParam = @"topalbums";
            break;
        case ARMusicTypeTopiMixes:
            feedTypeParam = @"topimixes";
            break;
        case ARMusicTypeTopSongs:
            feedTypeParam = @"topsongs";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getMacAppsRankingWithCountry:(ARCountry)country
                            feedType:(ARMacApps)feedType
                               genre:(ARMacAppsGenre)genre
                               limit:(int)limit
                           handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARMacAppsTypeTop:
            feedTypeParam = @"topmacapps";
            break;
        case ARMacAppsTypeTopFree:
            feedTypeParam = @"topfreemacapps";
            break;
        case ARMacAppsTypeTopGross:
            feedTypeParam = @"topgrossingmacapps";
            break;
        case ARMacAppsTypeTopPaid:
            feedTypeParam = @"toppaidmacapps";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getPodcastsRankingWithCountry:(ARCountry)country
                             feedType:(ARPodcasts)feedType
                                genre:(ARPodcastsGenre)genre
                                limit:(int)limit
                              handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARPodcastsTypeTop:
            feedTypeParam = @"toppodcasts";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getBooksRankingWithCountry:(ARCountry)country
                          feedType:(ARBooks)feedType
                             genre:(ARBooksGenre)genre
                             limit:(int)limit
                           handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARBooksTypeTopPaid:
            feedTypeParam = @"toppaidebooks";
            break;
        case ARBooksTypeTopFree:
            feedTypeParam = @"topfreeebooks";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getiTunesURankingWithCountry:(ARCountry)country
                            feedType:(ARiTunesU)feedType
                               genre:(ARiTunesUGenre)genre
                               limit:(int)limit
                             handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARiTunesUTypeTopCollections:
            feedTypeParam = @"topitunesucollections";
            break;
        case ARiTunesUTypeTopCourses:
            feedTypeParam = @"topitunesucourses";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getTVShowsRankingWithCountry:(ARCountry)country
                            feedType:(ARTVShows)feedType
                               genre:(ARTVShowsGenre)genre
                               limit:(int)limit
                             handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARTVShowsTypeTopTVEpisodes:
            feedTypeParam = @"toptvepisodes";
            break;
        case ARiTunesUTypeTopCourses:
            feedTypeParam = @"toptvseasons";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (void)getMusicVideosRankingWithCountry:(ARCountry)country
                                feedType:(ARMusicVideos)feedType
                                   genre:(ARMusicVideosGenre)genre
                                   limit:(int)limit
                                 handler:(void (^)(id response, NSError *error))handler
{
    NSString *countryParam = [self _country:country];
    NSString *feedTypeParam;
    switch (feedType) {
        case ARMusicVideosTypeTopVideos:
            feedTypeParam = @"topmusicvideos";
            break;
        default:
            break;
    }
    NSString *path = [NSString stringWithFormat:@"%@/rss/%@/limit=%d/genre=%d/json",countryParam,feedTypeParam,limit,genre];
    [[RankingApiClient sharedInstance] getPath:path
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           AFJSONRequestOperation *JSONRequest = (AFJSONRequestOperation *)operation;
                                           NSDictionary *responseDictionary = JSONRequest.responseJSON;
                                           NSArray *entries = responseDictionary[@"feed"][@"entry"];
                                           handler(entries,nil);
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           handler(nil,error);
                                       }];
}

+ (NSString *)_country:(ARCountry)country {
    switch (country) {
        case Japan:
            return @"ja";
            break;
        case UnitedStates:
            return @"us";
            break;
        default:
            break;
    }
}

@end
