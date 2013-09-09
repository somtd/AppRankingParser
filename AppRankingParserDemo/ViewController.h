//
//  ViewController.h
//  AppRankingParser
//
//  Created by SOMTD on 2013/08/09.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *categoryView;

@end
