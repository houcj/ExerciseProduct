//
//  FirstVCView.h
//  ExerciseProduct
//
//  Created by user on 2017/3/23.
//  Copyright © 2017年 Annie. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol FirstVCView <NSObject>

- (void)clickedDelegate;

@end
@interface FirstVCView : UIView

@property (nonatomic, weak) id<FirstVCView> delegate;

@end
