//
//  UnReadMessageViewController.m
//  Ten-minutes-IOS
//
//  Created by yoghourt on 10/3/14.
//  Copyright (c) 2014 genio. All rights reserved.
//

#import "UnReadMessageViewController.h"
#import "ChatViewController.h"
#import "MainViewController.h"

@interface UnReadMessageViewController ()

@end

@implementation UnReadMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 初始化tableView的数据
    self.dataList = [NSArray arrayWithObjects:@"xiaowanzi's iPhone",@"xiedou's iPhone",@"xiedao's iPhone",@"yoghourt's iPhone", nil];
    
    self.unReadTableView.dataSource = self;
    self.unReadTableView.delegate = self;
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataList count];
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellWithIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellWithIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellWithIdentifier];
    }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [self.dataList objectAtIndex:row];
//    cell.imageView.image = [UIImage imageNamed:@"green.png"];
    cell.detailTextLabel.text = @"5";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    ChatViewController *chatViewController = (ChatViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"ChatViewController"];
    UIViewController *chatViewController = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil] instantiateViewControllerWithIdentifier:@"hello"];
    [self presentModalViewController:chatViewController animated:true];
    
}

- (IBAction)back:(id)sender {
    [self dismissModalViewControllerAnimated:true];
}
@end
