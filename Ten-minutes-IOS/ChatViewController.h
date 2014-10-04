//
//  ChatViewController.h
//  Ten-minutes-IOS
//
//  Created by yoghourt on 10/3/14.
//  Copyright (c) 2014 genio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

- (IBAction)back:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *messageTableView;
@end
