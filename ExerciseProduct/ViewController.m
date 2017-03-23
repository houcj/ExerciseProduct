//
//  ViewController.m
//  ExerciseProduct
//
//  Created by user on 2017/3/23.
//  Copyright © 2017年 Annie. All rights reserved.
//

#import "ViewController.h"
#import "CJTopScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CJTopScrollView *topScrollView = [[CJTopScrollView alloc] initWithFrame:CGRectMake(0, 0, k_ScreenWidth, 100)];
    [self.view addSubview:topScrollView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
