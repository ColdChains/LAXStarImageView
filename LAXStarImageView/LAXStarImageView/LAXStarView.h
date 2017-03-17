//
//  LAXStarView.h
//  OpenWorkr
//
//  Created by 冰凉的枷锁 on 2017/3/17.
//  Copyright © 2017年 Eden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LAXStarView : UIView
{
    NSMutableArray *array;
}

@property (nonatomic, assign) CGFloat rate;

- (instancetype)initWithRate:(CGFloat)rate;

@end
