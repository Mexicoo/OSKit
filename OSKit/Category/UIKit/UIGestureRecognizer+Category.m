//
//  UIGestureRecognizer+Category.m
//  OSKit
//
//  Created by 张春生 on 2017/3/31.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import "UIGestureRecognizer+Category.h"
#import <objc/runtime.h>

@interface _OSUIGestureRecognizerTarget : NSObject

@property (nonatomic, copy) void (^action)(id sender);

- (instancetype)initWithAction:(void (^)(id))action;
- (void)invoke:(id)sender;

@end

@implementation _OSUIGestureRecognizerTarget

- (instancetype)initWithAction:(void (^)(id))action {
    if (self = [super init]) {
        self.action = action;
    }
    return self;
}

- (void)invoke:(id)sender {
    if (_action) _action(sender);
}

@end

@interface UIGestureRecognizer (_OSUIGestureRecognizerTargets_)

@property (nonatomic, strong, readonly)NSMutableArray<_OSUIGestureRecognizerTarget *> *_allOSUIGestureRecognizerTargets_;

@end

@implementation UIGestureRecognizer (_OSUIGestureRecognizerTargets_)

- (NSMutableArray<_OSUIGestureRecognizerTarget *> *)_allOSUIGestureRecognizerTargets_ {
    NSMutableArray<_OSUIGestureRecognizerTarget *> *targets = objc_getAssociatedObject(self, _cmd);
    if (!targets) {
        targets = [NSMutableArray array];
        objc_setAssociatedObject(self, _cmd, targets, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return targets;
}

@end

@implementation UIGestureRecognizer (Category)

@end

@implementation UIGestureRecognizer (_Blocks)

- (instancetype)initWithAction:(void (^)(id _Nonnull))action {
    _OSUIGestureRecognizerTarget *target = [[_OSUIGestureRecognizerTarget alloc] initWithAction:action];
    [self._allOSUIGestureRecognizerTargets_ addObject:target];
    return [self initWithTarget:target action:@selector(invoke:)];
}

- (void)addAction:(void (^)(id _Nonnull))action {
    _OSUIGestureRecognizerTarget *target = [[_OSUIGestureRecognizerTarget alloc] initWithAction:action];
    [self._allOSUIGestureRecognizerTargets_ addObject:target];
    [self addTarget:target action:@selector(invoke:)];
}

- (void)removeAllActions {
    [self._allOSUIGestureRecognizerTargets_ enumerateObjectsUsingBlock:^(_OSUIGestureRecognizerTarget * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self removeTarget:obj action:@selector(invoke:)];
    }];
    [self._allOSUIGestureRecognizerTargets_ removeAllObjects];
}

@end
