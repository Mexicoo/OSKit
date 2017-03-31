//
//  UIGestureRecognizer+Category.h
//  OSKit
//
//  Created by 张春生 on 2017/3/31.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIGestureRecognizer (Category)

@end

@interface UIGestureRecognizer (_Blocks)

/// Initialize with a specified action block.
- (instancetype)initWithAction:(nullable void (^)(id sender))action;

/// Add a action block. you can call this multiple times to specify multiple action blocks.
- (void)addAction:(nullable void (^)(id sender))action;

/// Remove all action blocks.
- (void)removeAllActions;

@end

NS_ASSUME_NONNULL_END
