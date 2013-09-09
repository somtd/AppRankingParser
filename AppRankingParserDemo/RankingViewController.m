//
//  RankingViewController.m
//  AppRankingParserDemo
//
//  Created by SOMTD on 2013/09/09.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "RankingViewController.h"
#import "App.h"

@interface RankingViewController ()
@property (nonatomic, copy) NSMutableArray *array;
@end

@implementation RankingViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = _feedType;
    
    //Audiobooks
    if([_category isEqualToString:@"Audiobooks"]) {
        [RankingApi getAudiobooksRankingWithCountry:Japan
                                           feedType:_audiobooksType
                                              genre:0
                                              limit:20
                                            handler:^(id response, NSError *error) {
                                                _array = [NSMutableArray arrayWithCapacity:0];
                                                NSLog(@"response:%@",response);
                                                for (NSDictionary *appDictionary in (NSArray *)response) {
                                                    App *app = [[App alloc] initWithDictionary:appDictionary];
                                                    [_array addObject:app];
                                                }
                                                [self.tableView reloadData];
                                            }];
        return;
    }
    //iOS Apps
    else if ([_category isEqualToString:@"iOS Apps"]) {
        [RankingApi getiOSAppsRankingWithCountry:Japan
                                        feedType:_iOSAppsType
                                           genre:0
                                           limit:20
                                         handler:^(id response, NSError *error) {
                                             _array = [NSMutableArray arrayWithCapacity:0];
                                             NSLog(@"response:%@",response);
                                             for (NSDictionary *appDictionary in (NSArray *)response) {
                                                 App *app = [[App alloc] initWithDictionary:appDictionary];
                                                 [_array addObject:app];
                                             }
                                             [self.tableView reloadData];
                                         }];
        return;
    }
    //Movies
    else if ([_category isEqualToString:@"Movies"]) {
        [RankingApi getMoviesRankingWithCountry:Japan
                                       feedType:_moviesType
                                          genre:0
                                          limit:20
                                        handler:^(id response, NSError *error) {
                                            _array = [NSMutableArray arrayWithCapacity:0];
                                            NSLog(@"response:%@",response);
                                            for (NSDictionary *appDictionary in (NSArray *)response) {
                                                App *app = [[App alloc] initWithDictionary:appDictionary];
                                                [_array addObject:app];
                                            }
                                            [self.tableView reloadData];
                                        }];
        
        return;
    }
    //Music
    else if ([_category isEqualToString:@"Music"]) {
        [RankingApi getMusicRankingWithCountry:Japan
                                      feedType:_musicType
                                         genre:0
                                         limit:20
                                       handler:^(id response, NSError *error) {
                                           _array = [NSMutableArray arrayWithCapacity:0];
                                           NSLog(@"response:%@",response);
                                           for (NSDictionary *appDictionary in (NSArray *)response) {
                                               App *app = [[App alloc] initWithDictionary:appDictionary];
                                               [_array addObject:app];
                                           }
                                           [self.tableView reloadData];
                                       }];
        return;
    }
    //Mac Apps
    else if ([_category isEqualToString:@"Mac Apps"]) {
        [RankingApi getMacAppsRankingWithCountry:Japan
                                        feedType:_macAppsType
                                           genre:0
                                           limit:20
                                         handler:^(id response, NSError *error) {
                                             _array = [NSMutableArray arrayWithCapacity:0];
                                             NSLog(@"response:%@",response);
                                             for (NSDictionary *appDictionary in (NSArray *)response) {
                                                 App *app = [[App alloc] initWithDictionary:appDictionary];
                                                 [_array addObject:app];
                                             }
                                             [self.tableView reloadData];
                                         }];
        return;
    }
    //Podcasts
    else if ([_category isEqualToString:@"Podcasts"]) {
        [RankingApi getPodcastsRankingWithCountry:Japan
                                         feedType:_podcastsType
                                            genre:0
                                            limit:20
                                          handler:^(id response, NSError *error) {
                                              _array = [NSMutableArray arrayWithCapacity:0];
                                              NSLog(@"response:%@",response);
                                              for (NSDictionary *appDictionary in (NSArray *)response) {
                                                  App *app = [[App alloc] initWithDictionary:appDictionary];
                                                  [_array addObject:app];
                                              }
                                              [self.tableView reloadData];
                                          }];
        return;
    }
    //Books
    else if ([_category isEqualToString:@"Books"]) {
        [RankingApi getBooksRankingWithCountry:Japan
                                      feedType:_booksType
                                         genre:0
                                         limit:20
                                       handler:^(id response, NSError *error) {
                                           _array = [NSMutableArray arrayWithCapacity:0];
                                           NSLog(@"response:%@",response);
                                           for (NSDictionary *appDictionary in (NSArray *)response) {
                                               App *app = [[App alloc] initWithDictionary:appDictionary];
                                               [_array addObject:app];
                                           }
                                           [self.tableView reloadData];
                                       }];
        return;
    }
    //iTunesU
    else if ([_category isEqualToString:@"iTunesU"]) {
        [RankingApi getiTunesURankingWithCountry:Japan
                                        feedType:_iTunesUType
                                           genre:0
                                           limit:20
                                         handler:^(id response, NSError *error) {
                                             _array = [NSMutableArray arrayWithCapacity:0];
                                             NSLog(@"response:%@",response);
                                             for (NSDictionary *appDictionary in (NSArray *)response) {
                                                 App *app = [[App alloc] initWithDictionary:appDictionary];
                                                 [_array addObject:app];
                                             }
                                             [self.tableView reloadData];
                                         }];
        return;
    }
    //TV Shows
    else if ([_category isEqualToString:@"TV Shows"]) {
        [RankingApi getTVShowsRankingWithCountry:Japan
                                        feedType:_TVShowsType
                                           genre:0
                                           limit:20
                                         handler:^(id response, NSError *error) {
                                             _array = [NSMutableArray arrayWithCapacity:0];
                                             NSLog(@"response:%@",response);
                                             for (NSDictionary *appDictionary in (NSArray *)response) {
                                                 App *app = [[App alloc] initWithDictionary:appDictionary];
                                                 [_array addObject:app];
                                             }
                                             [self.tableView reloadData];
                                         }];
        return;
    }
    //Music Videos
    else if ([_category isEqualToString:@"Music Videos"]) {
        [RankingApi getMusicVideosRankingWithCountry:Japan
                                            feedType:_musicVideosType
                                               genre:0
                                               limit:20
                                             handler:^(id response, NSError *error) {
                                                 _array = [NSMutableArray arrayWithCapacity:0];
                                                 NSLog(@"response:%@",response);
                                                 for (NSDictionary *appDictionary in (NSArray *)response) {
                                                     App *app = [[App alloc] initWithDictionary:appDictionary];
                                                     [_array addObject:app];
                                                 }
                                                 [self.tableView reloadData];
                                             }];
        return;
    }
}

+ (void)responseHandeler:(NSDictionary *)response
{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    App *app = [_array objectAtIndex:indexPath.row];
    cell.textLabel.text = app.name;
    cell.detailTextLabel.text = app.artist;
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
