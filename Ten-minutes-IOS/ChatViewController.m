//
//  ChatViewController.m
//  Ten-minutes-IOS
//
//  Created by yoghourt on 10/3/14.
//  Copyright (c) 2014 genio. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@property (nonatomic,strong) NSMutableArray *cellData;

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.messageTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.messageTableView.allowsSelection = NO;
    
}

- (void)initWithData {
    self.cellData = [NSMutableArray array];
    NSString *path=[[NSBundle mainBundle] pathForResource:@"messages" ofType:@"plist"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cellData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (IBAction)back:(id)sender {
    [self dismissModalViewControllerAnimated:true];
}
@end
