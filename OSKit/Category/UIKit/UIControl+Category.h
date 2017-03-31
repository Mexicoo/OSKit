//
//  UIControl+Category.h
//  OSKit
//
//  Created by 张春生 on 2017/3/30.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIControl (Category)

/// Add or replace a target/action for particular event. The action cannot be NULL. Note that the target is not retained.
- (void)setTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

/// Remove all actions for all targets.
- (void)removeAllTargets;

@end

@interface UIControl (_Blocks)

/// Add a block for particular event. you can call this multiple times and you can specify multiple blocks for a particular event.
- (void)addBlockForControlEvents:(UIControlEvents)controlEvents action:(nullable void (^)(id sender))action;

/// Add or replace a block for particular event.
- (void)setBlockForControlEvents:(UIControlEvents)controlEvents action:(nullable void (^)(id sender))action;

/// Remove all blocks for particular event.
- (void)removeAllBlocksForControlEvents:(UIControlEvents)controlEvents;

@end

NS_ASSUME_NONNULL_END
