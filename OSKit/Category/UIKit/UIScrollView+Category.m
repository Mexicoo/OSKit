//
//  UIScrollView+Category.m
//  OSKit
//
//  Created by 张春生 on 2017/3/31.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import "UIScrollView+Category.h"

@implementation UIScrollView (Category)

- (void)scrollToTop {
    [self scrollToTopAnimated:YES];
}

- (void)scrollToBottom {
    [self scrollToBottomAnimated:YES];
}

- (void)scrollToLeft {
    [self scrollToLeftAnimated:YES];
}

- (void)scrollToRight {
    [self scrollToRightAnimated:YES];
}

- (void)scrollToTopAnimated:(BOOL)animated {
    [self setContentOffset:CGPointMake(self.contentOffset.x, -self.contentInset.top) animated:animated];
}

- (void)scrollToBottomAnimated:(BOOL)animated {
    [self setContentOffset:CGPointMake(self.contentOffset.x, self.contentSize.height - self.bounds.size.height + self.contentInset.bottom) animated:animated];
}

- (void)scrollToLeftAnimated:(BOOL)animated {
    [self setContentOffset:CGPointMake(-self.contentInset.left, self.contentOffset.y) animated:animated];
}

- (void)scrollToRightAnimated:(BOOL)animated {
    [self setContentOffset:CGPointMake(self.contentSize.width - self.bounds.size.width + self.contentInset.right, self.contentOffset.y) animated:animated];
}

@end
