//
//  UIButton+Category.h
//  OSKit
//
//  Created by 张春生 on 2017/3/23.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import <UIKit/UIKit.h>

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
@property (nonatomic, strong) NSString *normalTitle;

/// Shortcut for title for 'UIControlStateHighlighted'.
@property (nonatomic, strong) NSString *highlightedTitle;

/// Shortcut for title for 'UIControlStateDisabled'.
@property (nonatomic, strong) NSString *disabledTitle;

/// Shortcut for title for 'UIControlStateSelected'.
@property (nonatomic, strong) NSString *selectedTitle;

/// Shortcut for title for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nonatomic, strong) NSString *selectedHighlightedTitle;

/// Shortcut for title for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nonatomic, strong) NSString *selectedDisabledTitle;


/// Shortcut for title color for 'UIControlStateNormal'.
@property (nonatomic, strong) UIColor *normalTitleColor;

/// Shortcut for title color for 'UIControlStateHighlighted'.
@property (nonatomic, strong) UIColor *highlightedTitleColor;

/// Shortcut for title color for 'UIControlStateDisabled'.
@property (nonatomic, strong) UIColor *disabledTitleColor;

/// Shortcut for title color for 'UIControlStateSelected'.
@property (nonatomic, strong) UIColor *selectedTitleColor;

/// Shortcut for title color for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nonatomic, strong) UIColor *selectedHighlightedTitleColor;

/// Shortcut for title color for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nonatomic, strong) UIColor *selectedDisabledTitleColor;


/// Shortcut for title shadow color for 'UIControlStateNormal'.
@property (nonatomic, strong) UIColor *normalTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateHighlighted'.
@property (nonatomic, strong) UIColor *highlightedTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateDisabled'.
@property (nonatomic, strong) UIColor *disabledTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateSelected'.
@property (nonatomic, strong) UIColor *selectedTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nonatomic, strong) UIColor *selectedHighlightedTitleShadowColor;

/// Shortcut for title shadow color for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nonatomic, strong) UIColor *selectedDisabledTitleShadowColor;


/// Shortcut for image for 'UIControlStateNormal'.
@property (nonatomic, strong) UIImage *normalImage;

/// Shortcut for image for 'UIControlStateHighlighted'.
@property (nonatomic, strong) UIImage *highlightedImage;

/// Shortcut for image for 'UIControlStateDisabled'.
@property (nonatomic, strong) UIImage *disabledImage;

/// Shortcut for image for 'UIControlStateSelected'.
@property (nonatomic, strong) UIImage *selectedImage;

/// Shortcut for image for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nonatomic, strong) UIImage *selectedHighlightedImage;

/// Shortcut for image for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nonatomic, strong) UIImage *selectedDisabledImage;


/// Shortcut for background image for 'UIControlStateNormal'.
@property (nonatomic, strong) UIImage *normalBackgroundImage;

/// Shortcut for background image for 'UIControlStateHighlighted'.
@property (nonatomic, strong) UIImage *highlightedBackgroundImage;

/// Shortcut for background image for 'UIControlStateDisabled'.
@property (nonatomic, strong) UIImage *disabledBackgroundImage;

/// Shortcut for background image for 'UIControlStateSelected'.
@property (nonatomic, strong) UIImage *selectedBackgroundImage;

/// Shortcut for background image for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nonatomic, strong) UIImage *selectedHighlightedBackgroundImage;

/// Shortcut for background image for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nonatomic, strong) UIImage *selectedDisabledBackgroundImage;


/// Shortcut for attributed title for 'UIControlStateNormal'.
@property (nonatomic, strong) NSAttributedString *normalAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateHighlighted'.
@property (nonatomic, strong) NSAttributedString *highlightedAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateDisabled'.
@property (nonatomic, strong) NSAttributedString *disabledAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateSelected'.
@property (nonatomic, strong) NSAttributedString *selectedAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateSelected|UIControlStateHighlighted'.
@property (nonatomic, strong) NSAttributedString *selectedHighlightedAttributedTitle;

/// Shortcut for attributed title for 'UIControlStateSelected|UIControlStateDisabled'.
@property (nonatomic, strong) NSAttributedString *selectedDisabledAttributedTitle;

@end
