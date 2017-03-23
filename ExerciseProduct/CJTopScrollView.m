//
//  CJTopScrollView.m
//  ExerciseProduct
//
//  Created by user on 2017/3/23.
//  Copyright © 2017年 Annie. All rights reserved.
//

#import "CJTopScrollView.h"

@interface CJTopScrollView ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView  *topScrollView;
@property (nonatomic, strong) UIPageControl *page;
@property (nonatomic, assign) CGPoint        firstPoint;
@property (nonatomic, assign) CGPoint        lastPoint;

@end

@implementation CJTopScrollView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self createScrollView];
    }
    return self;
}

- (void)createScrollView{
    self.topScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, k_ScreenWidth, 100)];
    self.topScrollView.showsHorizontalScrollIndicator = NO;
    self.topScrollView.contentSize = CGSizeMake(k_ScreenWidth*3, 0);
    self.topScrollView.pagingEnabled = YES;
    
    UIImageView *firstIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.jpg"]];
    firstIV.frame = CGRectMake(0, 0, k_ScreenWidth, 100);
    [self.topScrollView addSubview:firstIV];
    
    UIImageView *secondIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"5.jpg"]];
    secondIV.frame = CGRectMake(k_ScreenWidth, 0, k_ScreenWidth, 100);
    [self.topScrollView addSubview:secondIV];
    
    UIImageView *thirdIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"10.jpg"]];
    thirdIV.frame = CGRectMake(k_ScreenWidth*2, 0, k_ScreenWidth, 100);
    [self.topScrollView addSubview:thirdIV];
    
    self.topScrollView.delegate = self;
    [self addSubview:self.topScrollView];
    
    UIPageControl *page = [[UIPageControl alloc] initWithFrame:CGRectMake((k_ScreenWidth - 100)/2, 75, 100, 20)];
    page.numberOfPages = 3;
    page.currentPageIndicatorTintColor = [UIColor greenColor];
    self.page = page;
    [self addSubview:self.page];
    
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
}

- (void)timerAction:(NSTimer *)timer{
    
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    self.firstPoint = scrollView.contentOffset;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    self.lastPoint = scrollView.contentOffset;
    if (self.lastPoint.x == k_ScreenWidth) {
        self.page.currentPage = 1;
    }
    if (self.lastPoint.x == k_ScreenWidth*2) {
        self.page.currentPage = 2;
    }
    if (self.lastPoint.x == 0) {
        self.page.currentPage = 0;
    }
}

@end
