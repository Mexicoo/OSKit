//
//  UIButton+Category.h
//  OSKit
//
//  Created by 张春生 on 2017/3/23.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, OSButtonImagePosition) {
    OSButtonImagePositionLeft,
    OSButtonImagePositionTop,
    OSButtonImagePositionRight,
    OSButtonImagePositionBottom
};

@interface UIButton (Category)

/**
 * To adjust position for internal image view and title tabel.
 *
 * @param position The type for image and title position.
 * @param spacing To add between image view and title label.
 * 
 * @return The minimum size button occupied.
 */
- (CGSize)adjustsImageWithPosition:(OSButtonImagePosition)position spacing:(CGFloat)spacing;

@end

@interface UIButton (_Shortcut)

/// Shortcut for title for 'UIControlStateNormal'.
@property (nullable, nonatomic, strong) NSString *normalTitle;

/// Shortcut for title for 'UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) NSString *highlightedTitle;

/// Shortcut for title for 'UIControlStateDisabled'.
@property (nullable, nonatomic, strong) NSString *disabledTitle;

/// Shortcut for title for 'UIControlStateSelected'.
@property (nullable, nonatomic, strong) NSString *selectedTitle;

/// Shortcut for title for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) NSString *selectedHighlightedTitle;

/// Shortcut for title for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nullable, nonatomic, strong) NSString *selectedDisabledTitle;


/// Shortcut for title color for 'UIControlStateNormal'.
@property (nullable, nonatomic, strong) UIColor *normalTitleColor;

/// Shortcut for title color for 'UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) UIColor *highlightedTitleColor;

/// Shortcut for title color for 'UIControlStateDisabled'.
@property (nullable, nonatomic, strong) UIColor *disabledTitleColor;

/// Shortcut for title color for 'UIControlStateSelected'.
@property (nullable, nonatomic, strong) UIColor *selectedTitleColor;

/// Shortcut for title color for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) UIColor *selectedHighlightedTitleColor;

/// Shortcut for title color for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nullable, nonatomic, strong) UIColor *selectedDisabledTitleColor;


/// Shortcut for title shadow color for 'UIControlStateNormal'.
@property (nullable, nonatomic, strong) UIColor *normalTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) UIColor *highlightedTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateDisabled'.
@property (nullable, nonatomic, strong) UIColor *disabledTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateSelected'.
@property (nullable, nonatomic, strong) UIColor *selectedTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) UIColor *selectedHighlightedTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nullable, nonatomic, strong) UIColor *selectedDisabledTitleShadowColor;


/// Shortcut for image for 'UIControlStateNormal'.
@property (nullable, nonatomic, strong) UIImage *normalImage;

/// Shortcut for image for 'UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) UIImage *highlightedImage;

/// Shortcut for image for 'UIControlStateDisabled'.
@property (nullable, nonatomic, strong) UIImage *disabledImage;

/// Shortcut for image for 'UIControlStateSelected'.
@property (nullable, nonatomic, strong) UIImage *selectedImage;

/// Shortcut for image for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) UIImage *selectedHighlightedImage;

/// Shortcut for image for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nullable, nonatomic, strong) UIImage *selectedDisabledImage;


/// Shortcut for background image for 'UIControlStateNormal'.
@property (nullable, nonatomic, strong) UIImage *normalBackgroundImage;

/// Shortcut for background image for 'UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) UIImage *highlightedBackgroundImage;

/// Shortcut for background image for 'UIControlStateDisabled'.
@property (nullable, nonatomic, strong) UIImage *disabledBackgroundImage;

/// Shortcut for background image for 'UIControlStateSelected'.
@property (nullable, nonatomic, strong) UIImage *selectedBackgroundImage;

/// Shortcut for background image for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) UIImage *selectedHighlightedBackgroundImage;

/// Shortcut for background image for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nullable, nonatomic, strong) UIImage *selectedDisabledBackgroundImage;


/// Shortcut for attributed title for 'UIControlStateNormal'.
@property (nullable, nonatomic, strong) NSAttributedString *normalAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) NSAttributedString *highlightedAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateDisabled'.
@property (nullable, nonatomic, strong) NSAttributedString *disabledAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateSelected'.
@property (nullable, nonatomic, strong) NSAttributedString *selectedAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nullable, nonatomic, strong) NSAttributedString *selectedHighlightedAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nullable, nonatomic, strong) NSAttributedString *selectedDisabledAttributedTitle;

@end

NS_ASSUME_NONNULL_END
