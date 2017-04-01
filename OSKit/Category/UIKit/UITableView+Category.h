//
//  UITableView+Category.h
//  OSKit
//
//  Created by 张春生 on 2017/3/31.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (Category)

/// Allow multiple insert/delete of rows and sections to be animated simultaneously.
- (void)updateWithBlock:(nullable void (^)(UITableView *tableView))block;

/// Scroll to row in the specified section animated or not.
- (void)scrollToRow:(NSUInteger)row inSection:(NSUInteger)section atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;

/// Insert a single row in the specified section with row animation.
- (void)insertRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;

/// Reload a single row in the specified section with row animation.
- (void)reloadRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;

/// Delete a single row in the specified section with row animation.
- (void)deleteRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;

/// Insert a single row at the specified indexPath with row animation.
- (void)insertRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation;

/// Reload a single row at the specified indexPath with row animation.
- (void)reloadRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation;

/// Delete a single row at the specified indexPath with row animation.
- (void)deleteRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation;

/// Insert a single section with row animation.
- (void)insertSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;

/// Reload a single section with row animation.
- (void)reloadSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;

/// Delete a single section with row animation.
- (void)deleteSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;

/// Clears Selection animated or not.
- (void)clearSelectedRowsAnimated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
