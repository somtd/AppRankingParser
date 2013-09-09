//
//  ViewController.m
//  AppRankingParser
//
//  Created by SOMTD on 2013/08/09.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "ViewController.h"
#import "FeedTypeViewController.h"
#import "RankingApi.h"
#import "App.h"

@interface ViewController ()
@property (nonatomic, copy) NSArray  *categories;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Category";
    
    _categories = @[@"Audiobooks",
                   @"iOS Apps",
                   @"Movies",
                   @"Music",
                   @"Mac Apps",
                   @"Podcasts",
                   @"Books",
                   @"iTunesU",
                   @"TV Shows",
                   @"Music Videos",
                   ];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
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
    return _categories.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = _categories[indexPath.row];
    return cell;
}

#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    FeedTypeViewController *feedType = [[FeedTypeViewController alloc]initWithStyle:UITableViewStylePlain];
    feedType.category = _categories[indexPath.row];
    [self.navigationController pushViewController:feedType animated:YES];    
}


@end
