//
//  UIView+Category.h
//  OSKit
//
//  Created by 张春生 on 2017/3/23.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Category)

/// Be brought to superview's front.
- (void)bringToFront;

/// Be sent to superview's back.
- (void)sendToBack;

/// Remove all subviews.
- (void)removeAllSubviews;

/// To set layer's contents with UIImage or CGImage.
- (void)updateLayerContents:(nullable id)contents;

/// The receiver's view controller.
- (nullable UIViewController *)viewController;

/// The visible alpha on screen.
- (CGFloat)visibleAlpha;

@end

@interface UIView (_Blocks)

/// Add an unique tap gesture recognizer with action block.
- (void)bindTapAction:(nullable void (^)())action;

/// Add an unique long press gesture recognizer with action block.
- (void)bindLongPressAction:(nullable void (^)())action;

@end

@interface UIView (_CoordinateSpace)

/// Convert a point from the receiver's coordinate system to the specified view or window.
- (CGPoint)convertPoint:(CGPoint)point toViewOrWindow:(nullable UIView *)view;

/// Convert a point from the coordinate system of the given view or window to the receiver.
- (CGPoint)convertPoint:(CGPoint)point fromViewOrWindow:(nullable UIView *)view;

/// Convert a rectangle from the receiver's coordinate system to the specified view or window.
- (CGRect)convertRect:(CGRect)rect toViewOrWindow:(nullable UIView *)view;

// Convert a rectangle from the coordinate system of the given view or window to the receiver.
- (CGRect)convertRect:(CGRect)rect fromViewOrWindow:(nullable UIView *)view;

@end

@interface UIView (_Snapshotting)

/// Snapshot image of the view hierarchy.
- (nullable UIImage *)snapshotImage;

/// Snapshot image of the view hierarchy afterUpdates or not.
- (nullable UIImage *)snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;

/// Snapshot PDF of the view hierarchy.
- (nullable NSData *)snapshotPDF;

@end

@interface UIView (_Geometry)

/// The min X of the receiver.
@property (nonatomic) CGFloat left;

/// The min Y of the receiver.
@property (nonatomic) CGFloat top;

/// The max X of the receiver.
@property (nonatomic) CGFloat right;

/// The max Y of the receiver.
@property (nonatomic) CGFloat bottom;

/// The width of the receiver.
@property (nonatomic) CGFloat width;

/// The height of the receiver.
@property (nonatomic) CGFloat height;

/// The horizontal center of the receiver.
@property (nonatomic) CGFloat centerX;

/// The vertical center of the receiver.
@property (nonatomic) CGFloat centerY;

/// The origin of the receiver.
@property (nonatomic) CGPoint origin;

/// The size of the receiver.
@property (nonatomic) CGSize size;

@end

NS_ASSUME_NONNULL_END
