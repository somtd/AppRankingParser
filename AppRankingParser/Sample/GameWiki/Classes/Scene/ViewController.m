//
//  ViewController.m
//  GameWiki
//
//  Created by SOMTD on 2013/08/08.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "ViewController.h"
#import "RankingsViewController.h"
#import "App.h"

@interface ViewController () {
//    NSMutableData   *webData;
//    NSURLConnection *connection;
//    NSMutableArray  *array;
}
@property (nonatomic, copy) NSMutableData *webData;
@property (nonatomic, copy) NSURLConnection *connection;
@property (nonatomic, copy) NSMutableArray  *array;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.RankingView.delegate   = self;
    self.RankingView.dataSource = self;
    _array = [[NSMutableArray alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    //STEP 1 Construct Panels
    MYIntroductionPanel *panel = [[MYIntroductionPanel alloc] initWithimage:[UIImage imageNamed:@"SampleImage1"] title:@"Sample title" description:@"Welcome to MYIntroductionView, your 100 percent customizable interface for introductions and tutorials! Simply add a few classes to your project, and you are ready to go!" ];
    
    //You may also add in a title for each panel
    MYIntroductionPanel *panel2 = [[MYIntroductionPanel alloc] initWithimage:[UIImage imageNamed:@"SampleImage2"] title:@"Your Ticket!" description:@"MYIntroductionView is your ticket to a great tutorial or introduction!"];
    
    MYIntroductionPanel *panel3 = [[MYIntroductionPanel alloc] initWithimage:[UIImage imageNamed:@"SampleImage1"] title:@"Sample title" description:@"Welcome to MYIntroductionView, your 100 percent customizable interface for introductions and tutorials! Simply add a few classes to your project, and you are ready to go!" ];

    MYIntroductionPanel *panel4 = [[MYIntroductionPanel alloc] initWithimage:[UIImage imageNamed:@"SampleImage2"] title:@"Your Ticket!" description:@"MYIntroductionView is your ticket to a great tutorial or introduction!"];
    
    //STEP 2 Create IntroductionView
    /*A standard version*/
    //MYIntroductionView *introductionView = [[MYIntroductionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) headerImage:[UIImage imageNamed:@"SampleHeaderImage.png"] panels:@[panel, panel2]];
    
    /*A version with no header (ala "Path")*/
    // MYIntroductionView *introductionView = [[MYIntroductionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) panels:@[panel, panel2]];
    
    /*A more customized version*/
    MYIntroductionView *introductionView = [[MYIntroductionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) headerText:@"MYIntroductionView" panels:@[panel, panel2, panel3, panel4] languageDirection:MYLanguageDirectionLeftToRight];
    [introductionView setBackgroundImage:[UIImage imageNamed:@"SampleBackground"]];
    
    /*
     MYIntroductionView *introductionView = [[MYIntroductionView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) headerText:@"MYIntroductionView" panels:@[panel, panel2] languageDirection:MYLanguageDirectionLeftToRight];
     
     [introductionView setBackgroundColor:[UIColor colorWithRed:37.0/255 green:104.0/255 blue:154.0/255 alpha:1.0]];  */
    
    [introductionView.BackgroundImageView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
    [introductionView.HeaderImageView setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    [introductionView.HeaderLabel setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    [introductionView.HeaderView setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    [introductionView.PageControl setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    [introductionView.SkipButton setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    
    //Set delegate to self for callbacks (optional)
    introductionView.delegate = self;
    
    //STEP 3: Show introduction view
    [introductionView showInView:self.view animateDuration:0.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Sample Delegate Methods

-(void)introductionDidFinishWithType:(MYFinishType)finishType{
    if (finishType == MYFinishTypeSkipButton) {
        NSLog(@"Did Finish Introduction By Skipping It");
    }
    else if (finishType == MYFinishTypeSwipeOut){
        [self getRanking];
        NSLog(@"Did Finish Introduction By Swiping Out");
    }
    
    //One might consider making the introductionview a class variable and releasing it here.
    // I didn't do this to keep things simple for the sake of example.
}

-(void)introductionDidChangeToPanel:(MYIntroductionPanel *)panel withIndex:(NSInteger)panelIndex{
    NSLog(@"%@ \nPanelIndex: %d", panel.Description, panelIndex);
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [_webData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [_webData setData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"fail");
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    NSDictionary *allDataDictionary = [NSJSONSerialization JSONObjectWithData:_webData options:0 error:nil];
    NSArray *entries = allDataDictionary[@"feed"][@"entry"];
    
    for (NSDictionary *appDictionary in entries) {
//        NSString *title = appDictionary[@"title"][@"label"];
        App *app = [[App alloc] initWithDictionary:appDictionary];
//        [array addObject:title];
        [_array addObject:app];
    }
    [self.RankingView reloadData];
    
}
- (void)getRanking {
    
    NSURL *url = [NSURL URLWithString:@"https://itunes.apple.com/jp/rss/topgrossingapplications/limit=20/genre=6014/json"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    _connection = [NSURLConnection connectionWithRequest:request delegate:self];
    
    if (_connection) {
        _webData = [[NSMutableData alloc]init];
    }
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
    return [_array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
//    NSString *title = [array objectAtIndex:indexPath.row];
    App *app = [_array objectAtIndex:indexPath.row];
    cell.textLabel.text = app.name;
    cell.detailTextLabel.text = app.artist;

//    cell.textLabel.text = title;

//    NSDictionary *item = [array objectAtIndex:indexPath.row];
//    // アプリ名を設定
//    cell.textLabel.text = [[item objectForKey:@"im:name"] objectForKey:@"label"];
    
    //    static NSString *CellIdentifier = @"RankingCell";
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //    if (cell == nil) {
    //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    //    }
    
    //    NSDictionary *item = [_results objectAtIndex:indexPath.row];
    //    // アプリ名を設定
    //    cell.textLabel.text = [[[item objectForKey:@"im:name"] objectForKey:@"label"] copy];
    
    return cell;
}

@end
