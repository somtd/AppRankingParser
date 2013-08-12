//
//  ViewController.h
//  GameWiki
//
//  Created by SOMTD on 2013/08/08.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYIntroductionView.h"

@interface ViewController : UIViewController
<MYIntroductionDelegate,
UITableViewDelegate,
UITableViewDataSource,
NSURLConnectionDataDelegate>

@property (weak, nonatomic) IBOutlet UITableView *RankingView;

@end
