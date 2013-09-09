//
//  FeedTypeViewController.m
//  AppRankingParserDemo
//
//  Created by SOMTD on 2013/09/08.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "FeedTypeViewController.h"
#import "RankingViewController.h"

@interface FeedTypeViewController ()
@property (nonatomic, copy) NSArray  *feedTypes;
@end

@implementation FeedTypeViewController

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
    self.navigationItem.title = @"Feed type";
    
    //Audiobooks
    if([_category isEqualToString:@"Audiobooks"]) {
        _feedTypes = @[@"Top"];
        return;
    }
    //iOS Apps
    else if ([_category isEqualToString:@"iOS Apps"]) {
        _feedTypes = @[@"Top free",
                       @"Top paid",
                       @"Top gross",
                       @"Top free iPad",
                       @"Top paid iPad",
                       @"Top gross iPad",
                       @"New",
                       @"New free",
                       @"New paid"];
        return;
    }
    //Movies
    else if ([_category isEqualToString:@"Movies"]) {
        _feedTypes = @[@"Top",
                       @"Top rentals"];
        return;
    }
    //Music
    else if ([_category isEqualToString:@"Music"]) {
        _feedTypes = @[@"Top albums",
                       @"Top iMixes",
                       @"Top songs"];
        return;
    }
    //Mac Apps
    else if ([_category isEqualToString:@"Mac Apps"]) {
        _feedTypes = @[@"Top",
                       @"Top free",
                       @"Top gross",
                       @"Top paid"];
        return;
    }
    //Podcasts
    else if ([_category isEqualToString:@"Podcasts"]) {
        _feedTypes = @[@"Top"];
        return;
    }
    //Books
    else if ([_category isEqualToString:@"Books"]) {
        _feedTypes = @[@"Top paid",
                       @"Top free"];
        return;
    }
    //iTunesU
    else if ([_category isEqualToString:@"iTunesU"]) {
        _feedTypes = @[@"Top collections",
                       @"Top courses"];
        return;
    }
    //TV Shows
    else if ([_category isEqualToString:@"TV Shows"]) {
        _feedTypes = @[@"Top TV episodes",
                       @"Top TV seasons"];
        return;
    }
    //Music Videos
    else if ([_category isEqualToString:@"Music Videos"]) {
        _feedTypes = @[@"Top Music videos"];
        return;
    }

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
    return _feedTypes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = _feedTypes[indexPath.row];
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    RankingViewController *ranking = [[RankingViewController alloc]initWithStyle:UITableViewStylePlain];
    ranking.category = _category;
    ranking.feedType = _feedTypes[indexPath.row];
    
    //Audiobooks
    if([_category isEqualToString:@"Audiobooks"]) {
        ranking.audiobooksType = (NSInteger)indexPath.row;
    }
    //iOS Apps
    else if ([_category isEqualToString:@"iOS Apps"]) {
        ranking.iOSAppsType = (NSInteger)indexPath.row;
    }
    //Movies
    else if ([_category isEqualToString:@"Movies"]) {
        ranking.moviesType = (NSInteger)indexPath.row;
    }
    //Music
    else if ([_category isEqualToString:@"Music"]) {
        ranking.musicType = (NSInteger)indexPath.row;
    }
    //Mac Apps
    else if ([_category isEqualToString:@"Mac Apps"]) {
        ranking.macAppsType = (NSInteger)indexPath.row;
    }
    //Podcasts
    else if ([_category isEqualToString:@"Podcasts"]) {
        ranking.podcastsType = (NSInteger)indexPath.row;
    }
    //Books
    else if ([_category isEqualToString:@"Books"]) {
        ranking.booksType = (NSInteger)indexPath.row;
    }
    //iTunesU
    else if ([_category isEqualToString:@"iTunesU"]) {
        ranking.iTunesUType = (NSInteger)indexPath.row;
    }
    //TV Shows
    else if ([_category isEqualToString:@"TV Shows"]) {
        ranking.TVShowsType = (NSInteger)indexPath.row;
    }
    //Music Videos
    else if ([_category isEqualToString:@"Music Videos"]) {
        ranking.musicVideosType = (NSInteger)indexPath.row;
    }
    [self.navigationController pushViewController:ranking animated:YES];
}

@end
