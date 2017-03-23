//
//  CJFirstViewController.m
//  ExerciseProduct
//
//  Created by user on 2017/3/23.
//  Copyright © 2017年 Annie. All rights reserved.
//

#import "CJFirstViewController.h"
#import "FirstVCView.h"
@interface CJFirstViewController ()<FirstVCView>

@end

@implementation CJFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FirstVCView *firstView = [[FirstVCView alloc] initWithFrame:CGRectMake(0, 10, 320, 160)];
    firstView.delegate = self;
    [self.view addSubview:firstView];
}

- (void)clickedDelegate{
    self.view.backgroundColor = [UIColor redColor];
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
