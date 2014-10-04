//
//  GridMapViewController.m
//  Ten-minutes-IOS
//
//  Created by yoghourt on 10/3/14.
//  Copyright (c) 2014 genio. All rights reserved.
//

#import "GridMapViewController.h"

@interface GridMapViewController ()

@end

@implementation GridMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)back:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
