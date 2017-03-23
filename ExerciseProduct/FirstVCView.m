//
//  FirstVCView.m
//  ExerciseProduct
//
//  Created by user on 2017/3/23.
//  Copyright © 2017年 Annie. All rights reserved.
//

#import "FirstVCView.h"

@implementation FirstVCView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor grayColor];
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
        btn.backgroundColor = [UIColor redColor];
        btn.frame = CGRectMake(10, 10, 100, 50);
        [self addSubview:btn];
    }
    return self;
}

- (void)btnClicked{
    if ([self respondsToSelector:@selector(btnClicked)]) {
        [self.delegate clickedDelegate];
    }
}

@end
