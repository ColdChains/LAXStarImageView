//
//  LAXStarView.m
//  OpenWorkr
//
//  Created by 冰凉的枷锁 on 2017/3/17.
//  Copyright © 2017年 Eden. All rights reserved.
//

#import "LAXStarView.h"

@implementation LAXStarView

- (void)setRate:(CGFloat)rate {
    _rate = rate;
    [self addStarView];
}

- (instancetype)initWithRate:(CGFloat)rate {
    self = [super init];
    if (self) {
        array = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}

- (void)addStarView {
    for (UIImageView *imageView in array) {
        [imageView removeFromSuperview];
    }
    for (NSInteger i = 0; i < 5; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i * 10, 0, 10, 10)];
        [self addSubview:imageView];
        [array addObject:imageView];
        if (_rate > 1) {
            imageView.image = [UIImage imageNamed:@"ic_star_orange"];
        }
        else if (_rate > 0) {
            imageView.image = [UIImage imageNamed:@"ic_star_half"];
        } else {
            imageView.image = [UIImage imageNamed:@"ic_star_light_grey"];
        }
        _rate --;
    }
}

@end
