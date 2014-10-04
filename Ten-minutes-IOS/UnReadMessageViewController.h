//
//  UnReadMessageViewController.h
//  Ten-minutes-IOS
//
//  Created by yoghourt on 10/3/14.
//  Copyright (c) 2014 genio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnReadMessageViewController : UIViewController<UITabBarControllerDelegate, UITableViewDataSource>

@property (nonatomic, retain) NSArray *dataList;
@property (weak, nonatomic) IBOutlet UITableView *unReadTableView;

- (IBAction)back:(id)sender;

@end
