//
//  PYSubViewController.m
//  PYToolsDemo
//
//  Created by mac on 2017/10/5.
//  Copyright © 2017年 于浦洋. All rights reserved.
//

#import "PYSubViewController.h"
#import <PYTools/PYToolsHeader.h>

@interface PYSubViewController ()

@end

@implementation PYSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *sub = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
    sub.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:sub];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self py_dismiss];
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
