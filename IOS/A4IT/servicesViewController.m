//
//  servicesViewController.m
//  A4IT
//
//  Created by user906979 on 10/14/17.
//  Copyright © 2017 ecrubit. All rights reserved.
//

#import "servicesViewController.h"

@interface servicesViewController ()

@end

@implementation servicesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *stringURL = @"https://a4it.uk/#clients";
    NSURL *URL = [NSURL URLWithString:stringURL];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:URL];
    
    [self.webview loadRequest:requestURL];
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

@end
