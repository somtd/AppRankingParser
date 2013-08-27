//
//  ViewController.m
//  AppRankingParser
//
//  Created by SOMTD on 2013/08/09.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "ViewController.h"
#import "RankingApi.h"
#import "App.h"

@interface ViewController ()
@property (nonatomic, copy) NSMutableArray  *array;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.rankingView.delegate   = self;
//    self.rankingView.dataSource = self;
    _array = [[NSMutableArray alloc]init];
        
//    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
//    [refreshControl setTintColor:[UIColor orangeColor]];
//    [refreshControl addTarget:self action:@selector(needRefresh:) forControlEvents:UIControlEventValueChanged];
//    [self.rankingView addSubview:refreshControl];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [RankingApi getiOSAppsRankingWithCountry:Japan
                                    feedType:ARiOSAppsTypeTopGross
                                       genre:iOSAppsGames
                                       limit:20
                                     handler:^(id response, NSError *error) {
                                         _array = [NSMutableArray arrayWithCapacity:0];
                                         NSLog(@"response:%@",response);
                                         for (NSDictionary *appDictionary in (NSArray *)response) {
                                             App *app = [[App alloc] initWithDictionary:appDictionary];
                                             [_array addObject:app];
                                         }
                                         [self.rankingView reloadData];
                                     }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


@end
