//
//  UIScrollView+Category.h
//  OSKit
//
//  Created by 张春生 on 2017/3/31.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (Category)

/// Scroll to top animated.
- (void)scrollToTop;

/// Scroll to bottom animated.
- (void)scrollToBottom;

/// Scroll to left animated.
- (void)scrollToLeft;

/// Scroll to right animated.
- (void)scrollToRight;

/// Scroll to top animated or not.
- (void)scrollToTopAnimated:(BOOL)animated;

/// Scroll to bottom animated or not.
- (void)scrollToBottomAnimated:(BOOL)animated;

/// Scroll to left animated or not.
- (void)scrollToLeftAnimated:(BOOL)animated;

/// Scroll to right animated or not.
- (void)scrollToRightAnimated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
