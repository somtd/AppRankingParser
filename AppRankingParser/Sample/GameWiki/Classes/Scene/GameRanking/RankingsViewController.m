//
//  RankingsViewController.m
//  GameWiki
//
//  Created by SOMTD on 2013/08/09.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "RankingsViewController.h"
#import "RankingApiClient.h"
#import "AFNetworking.h"
#import "App.h"

@interface RankingsViewController ()

@end

@implementation RankingsViewController

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

    [self getJSON];
    // Uncomment the following line to preserve selection between presentations.
    
    //self.results = [NSArray array];
    
    [[RankingApiClient sharedInstance] getPath:@"jp/rss/topgrossingapplications/limit=10/genre=6014/json"
                                    parameters:nil
                                       success:^(AFHTTPRequestOperation *operation, id response) {
                                           
                                           NSDictionary *jsonDictionary = [NSJSONSerialization
                                                                           JSONObjectWithData:operation.responseData
                                                                           options:0
                                                                           error:nil];
                                           
                                           NSArray *entries = jsonDictionary[@"feed"][@"entry"];
                                           NSLog(@"Response: %@ count: %d", entries,[entries count]);
                                           NSMutableArray *results = [NSMutableArray array];;
                                           
                                           for (NSDictionary *appDictionary in entries) {
                                               App *app = [[App alloc] initWithDictionary:appDictionary];
                                               [results addObject:app];
                                           }
                                           _results = [NSArray arrayWithArray:results];
                                           [self.tableView reloadData];
                                       }
                                       failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                           NSLog(@"Error fetching ranking");
                                           NSLog(@"%@", error);
                                           
                                       }];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)getJSON
{
    NSURL *url = [NSURL URLWithString:@"https://itunes.apple.com/jp/rss/topgrossingapplications/limit=20/genre=6014/json"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        
        NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        // アプリデータの配列をプロパティに保持
        self.results = [[jsonDictionary objectForKey:@"feed"] objectForKey:@"entry"];
        
        [self.tableView reloadData];
        
//        NSArray *entries = [[jsonDictionary objectForKey:@"feed"] objectForKey:@"entry"];
//        NSLog(@"Response: %@ count: %d", entries,[entries count]);
//        
//        NSMutableArray *results = [NSMutableArray array];
//        for (NSDictionary *appDictionary in entries) {
//            App *app = [[App alloc] initWithDictionary:appDictionary];
//            [results addObject:app];
//        }
//        _results = [NSArray arrayWithArray:results];
//        
//        [self.tableView reloadData];
    }];
    
//    NSURL *url = [NSURL URLWithString:@"https://itunes.apple.com/jp/rss/topgrossingapplications/limit=20/genre=6014/json"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
//        
//        
//        NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//        
//        // アプリデータの配列をプロパティに保持
//        NSArray *entries = [[jsonDictionary objectForKey:@"feed"] objectForKey:@"entry"];
//        NSLog(@"Response: %@ count: %d", entries,[entries count]);
//        
//        NSMutableArray *results = [NSMutableArray array];
//        for (NSDictionary *appDictionary in entries) {
//            App *app = [[App alloc] initWithDictionary:appDictionary];
//            [results addObject:app];
//        }
//        _results = [NSArray arrayWithArray:results];
//        
//        [self.tableView reloadData];
//    }];    
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
    // Return the number of rows in the section.
    return [_results count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    NSDictionary *item = [_results objectAtIndex:indexPath.row];
    // アプリ名を設定
    cell.textLabel.text = [[item objectForKey:@"im:name"] objectForKey:@"label"];
    
//    static NSString *CellIdentifier = @"RankingCell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
//    App *app = [self.results objectAtIndex:indexPath.row];
//    cell.textLabel.text = app.name;
//    cell.detailTextLabel.text = app.name;

//    NSDictionary *item = [_results objectAtIndex:indexPath.row];
//    // アプリ名を設定
//    cell.textLabel.text = [[[item objectForKey:@"im:name"] objectForKey:@"label"] copy];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
