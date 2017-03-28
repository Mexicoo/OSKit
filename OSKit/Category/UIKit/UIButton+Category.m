//
//  UIButton+Category.m
//  OSKit
//
//  Created by 张春生 on 2017/3/23.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)

- (CGSize)adjustsImageWithPosition:(OSButtonImagePosition)position spacing:(CGFloat)spacing {
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    switch (position) {
        case OSButtonImagePositionLeft:{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            return CGSizeMake(ceil(imageSize.width + titleSize.width + spacing), ceil(MAX(imageSize.height, titleSize.height)));
        }
        case OSButtonImagePositionTop:{
            self.imageEdgeInsets = UIEdgeInsetsMake(-titleSize.height - spacing, 0, 0, -titleSize.width);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width, -imageSize.height - spacing, 0);
            return CGSizeMake(ceil(MAX(imageSize.width, titleSize.width)), ceil(imageSize.height + titleSize.height + spacing));
        }
        case OSButtonImagePositionRight:{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleSize.width + spacing/2, 0, -titleSize.width - spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width - spacing/2, 0, imageSize.width + spacing/2);
            return CGSizeMake(ceil(imageSize.width + titleSize.width + spacing), ceil(MAX(imageSize.height, titleSize.height)));
        }
        case OSButtonImagePositionBottom:{
            self.imageEdgeInsets = UIEdgeInsetsMake(titleSize.height + spacing, 0, 0, -titleSize.width);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width, imageSize.height + spacing, 0);
            return CGSizeMake(ceil(MAX(imageSize.width, titleSize.width)), ceil(imageSize.height + titleSize.height + spacing));
        }
    }
}

@end

@implementation UIButton (_Shortcut)

#pragma mark - Setters
#pragma mark - Title

- (void)setNormalTitle:(NSString *)normalTitle {
    [self setTitle:normalTitle forState:UIControlStateNormal];
}

- (void)setHighlightedTitle:(NSString *)highlightedTitle {
    [self setTitle:highlightedTitle forState:UIControlStateHighlighted];
}

- (void)setDisabledTitle:(NSString *)disabledTitle {
    [self setTitle:disabledTitle forState:UIControlStateDisabled];
}

- (void)setSelectedTitle:(NSString *)selectedTitle {
    [self setTitle:selectedTitle forState:UIControlStateSelected];
}

- (void)setSelectedHighlightedTitle:(NSString *)selectedHighlightedTitle {
    [self setTitle:selectedHighlightedTitle forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (void)setSelectedDisabledTitle:(NSString *)selectedDisabledTitle {
    [self setTitle:selectedDisabledTitle forState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Title Color

- (void)setNormalTitleColor:(UIColor *)normalTitleColor {
    [self setTitleColor:normalTitleColor forState:UIControlStateNormal];
}

- (void)setHighlightedTitleColor:(UIColor *)highlightedTitleColor {
    [self setTitleColor:highlightedTitleColor forState:UIControlStateHighlighted];
}

- (void)setDisabledTitleColor:(UIColor *)disabledTitleColor {
    [self setTitleColor:disabledTitleColor forState:UIControlStateDisabled];
}

- (void)setSelectedTitleColor:(UIColor *)selectedTitleColor {
    [self setTitleColor:selectedTitleColor forState:UIControlStateSelected];
}

- (void)setSelectedHighlightedTitleColor:(UIColor *)selectedHighlightedTitleColor {
    [self setTitleColor:selectedHighlightedTitleColor forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (void)setSelectedDisabledTitleColor:(UIColor *)selectedDisabledTitleColor {
    [self setTitleColor:selectedDisabledTitleColor forState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Title Shadow Color

- (void)setNormalTitleShadowColor:(UIColor *)normalTitleShadowColor {
    [self setTitleShadowColor:normalTitleShadowColor forState:UIControlStateNormal];
}

- (void)setHighlightedTitleShadowColor:(UIColor *)highlightedTitleShadowColor {
    [self setTitleShadowColor:highlightedTitleShadowColor forState:UIControlStateHighlighted];
}

- (void)setDisabledTitleShadowColor:(UIColor *)disabledTitleShadowColor {
    [self setTitleShadowColor:disabledTitleShadowColor forState:UIControlStateDisabled];
}

- (void)setSelectedTitleShadowColor:(UIColor *)selectedTitleShadowColor {
    [self setTitleShadowColor:selectedTitleShadowColor forState:UIControlStateSelected];
}

- (void)setSelectedHighlightedTitleShadowColor:(UIColor *)selectedHighlightedTitleShadowColor {
    [self setTitleShadowColor:selectedHighlightedTitleShadowColor forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (void)setSelectedDisabledTitleShadowColor:(UIColor *)selectedDisabledTitleShadowColor {
    [self setTitleShadowColor:selectedDisabledTitleShadowColor forState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Image

- (void)setNormalImage:(UIImage *)normalImage {
    [self setImage:normalImage forState:UIControlStateNormal];
}

- (void)setHighlightedImage:(UIImage *)highlightedImage {
    [self setImage:highlightedImage forState:UIControlStateHighlighted];
}

- (void)setDisabledImage:(UIImage *)disabledImage {
    [self setImage:disabledImage forState:UIControlStateDisabled];
}

- (void)setSelectedImage:(UIImage *)selectedImage {
    [self setImage:selectedImage forState:UIControlStateSelected];
}

- (void)setSelectedHighlightedImage:(UIImage *)selectedHighlightedImage {
    [self setImage:selectedHighlightedImage forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (void)setSelectedDisabledImage:(UIImage *)selectedDisabledImage {
    [self setImage:selectedDisabledImage forState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Background Image

- (void)setNormalBackgroundImage:(UIImage *)normalBackgroundImage {
    [self setBackgroundImage:normalBackgroundImage forState:UIControlStateNormal];
}

- (void)setHighlightedBackgroundImage:(UIImage *)highlightedBackgroundImage {
    [self setBackgroundImage:highlightedBackgroundImage forState:UIControlStateHighlighted];
}

- (void)setDisabledBackgroundImage:(UIImage *)disabledBackgroundImage {
    [self setBackgroundImage:disabledBackgroundImage forState:UIControlStateDisabled];
}

- (void)setSelectedBackgroundImage:(UIImage *)selectedBackgroundImage {
    [self setBackgroundImage:selectedBackgroundImage forState:UIControlStateSelected];
}

- (void)setSelectedHighlightedBackgroundImage:(UIImage *)selectedHighlightedBackgroundImage {
    [self setBackgroundImage:selectedHighlightedBackgroundImage forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (void)setSelectedDisabledBackgroundImage:(UIImage *)selectedDisabledBackgroundImage {
    [self setBackgroundImage:selectedDisabledBackgroundImage forState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Attributed Title

- (void)setNormalAttributedTitle:(NSAttributedString *)normalAttributedTitle {
    [self setAttributedTitle:normalAttributedTitle forState:UIControlStateNormal];
}

- (void)setHighlightedAttributedTitle:(NSAttributedString *)highlightedAttributedTitle {
    [self setAttributedTitle:highlightedAttributedTitle forState:UIControlStateHighlighted];
}

- (void)setDisabledAttributedTitle:(NSAttributedString *)disabledAttributedTitle {
    [self setAttributedTitle:disabledAttributedTitle forState:UIControlStateDisabled];
}

- (void)setSelectedAttributedTitle:(NSAttributedString *)selectedAttributedTitle {
    [self setAttributedTitle:selectedAttributedTitle forState:UIControlStateSelected];
}

- (void)setSelectedHighlightedAttributedTitle:(NSAttributedString *)selectedHighlightedAttributedTitle {
    [self setAttributedTitle:selectedHighlightedAttributedTitle forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (void)setSelectedDisabledAttributedTitle:(NSAttributedString *)selectedDisabledAttributedTitle {
    [self setAttributedTitle:selectedDisabledAttributedTitle forState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Getters
#pragma mark - Title

- (NSString *)normalTitle {
    return [self titleForState:UIControlStateNormal];
}

- (NSString *)highlightedTitle {
    return [self titleForState:UIControlStateHighlighted];
}

- (NSString *)disabledTitle {
    return [self titleForState:UIControlStateDisabled];
}

- (NSString *)selectedTitle {
    return [self titleForState:UIControlStateSelected];
}

- (NSString *)selectedHighlightedTitle {
    return [self titleForState:UIControlStateSelected|UIControlStateHighlighted];
}

- (NSString *)selectedDisabledTitle {
    return [self titleForState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Title Color

- (UIColor *)normalTitleColor {
    return [self titleColorForState:UIControlStateNormal];
}

- (UIColor *)highlightedTitleColor {
    return [self titleColorForState:UIControlStateHighlighted];
}

- (UIColor *)disabledTitleColor {
    return [self titleColorForState:UIControlStateDisabled];
}

- (UIColor *)selectedTitleColor {
    return [self titleColorForState:UIControlStateSelected];
}

- (UIColor *)selectedHighlightedTitleColor {
    return [self titleColorForState:UIControlStateSelected|UIControlStateHighlighted];
}

- (UIColor *)selectedDisabledTitleColor {
    return [self titleColorForState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Title Shadow Color

- (UIColor *)normalTitleShadowColor {
    return [self titleShadowColorForState:UIControlStateNormal];
}

- (UIColor *)highlightedTitleShadowColor {
    return [self titleShadowColorForState:UIControlStateHighlighted];
}

- (UIColor *)disabledTitleShadowColor {
    return [self titleShadowColorForState:UIControlStateDisabled];
}

- (UIColor *)selectedTitleShadowColor {
    return [self titleShadowColorForState:UIControlStateSelected];
}

- (UIColor *)selectedHighlightedTitleShadowColor {
    return [self titleShadowColorForState:UIControlStateSelected|UIControlStateHighlighted];
}

- (UIColor *)selectedDisabledTitleShadowColor {
    return [self titleShadowColorForState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Image

- (UIImage *)normalImage {
    return [self imageForState:UIControlStateNormal];
}

- (UIImage *)highlightedImage {
    return [self imageForState:UIControlStateHighlighted];
}

- (UIImage *)disabledImage {
    return [self imageForState:UIControlStateDisabled];
}

- (UIImage *)selectedImage {
    return [self imageForState:UIControlStateSelected];
}

- (UIImage *)selectedHighlightedImage {
    return [self imageForState:UIControlStateSelected|UIControlStateHighlighted];
}

- (UIImage *)selectedDisabledImage {
    return [self imageForState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Background Image

- (UIImage *)normalBackgroundImage {
    return [self backgroundImageForState:UIControlStateNormal];
}

- (UIImage *)highlightedBackgroundImage {
    return [self backgroundImageForState:UIControlStateHighlighted];
}

- (UIImage *)disabledBackgroundImage {
    return [self backgroundImageForState:UIControlStateDisabled];
}

- (UIImage *)selectedBackgroundImage {
    return [self backgroundImageForState:UIControlStateSelected];
}

- (UIImage *)selectedHighlightedBackgroundImage {
    return [self backgroundImageForState:UIControlStateSelected|UIControlStateHighlighted];
}

- (UIImage *)selectedDisabledBackgroundImage {
    return [self backgroundImageForState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - Attributed Title

- (NSAttributedString *)normalAttributedTitle {
    return [self attributedTitleForState:UIControlStateNormal];
}

- (NSAttributedString *)highlightedAttributedTitle {
    return [self attributedTitleForState:UIControlStateHighlighted];
}

- (NSAttributedString *)disabledAttributedTitle {
    return [self attributedTitleForState:UIControlStateDisabled];
}

- (NSAttributedString *)selectedAttributedTitle {
    return [self attributedTitleForState:UIControlStateSelected];
}

- (NSAttributedString *)selectedHighlightedAttributedTitle {
    return [self attributedTitleForState:UIControlStateSelected|UIControlStateHighlighted];
}

- (NSAttributedString *)selectedDisabledAttributedTitle {
    return [self attributedTitleForState:UIControlStateSelected|UIControlStateDisabled];
}

@end
