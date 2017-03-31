//
//  UIControl+Category.m
//  OSKit
//
//  Created by 张春生 on 2017/3/30.
//  Copyright © 2017年 Peter. All rights reserved.
//

#import "UIControl+Category.h"
#import <objc/runtime.h>

@interface _OSUIControlTarget : NSObject

@property (nonatomic, copy) void (^action)(id sender);
@property (nonatomic) UIControlEvents events;

- (instancetype)initWithAction:(void (^)(id))action events:(UIControlEvents)events;
- (void)invoke:(id)sender;

@end

@implementation _OSUIControlTarget

- (instancetype)initWithAction:(void (^)(id))action events:(UIControlEvents)events {
    if (self = [super init]) {
        self.action = action;
        self.events = events;
    }
    return self;
}

- (void)invoke:(id)sender {
    if (_action) _action(sender);
}

@end

@interface UIControl (_OSUIControlTargets_)

@property (nonatomic, strong, readonly) NSMutableArray<_OSUIControlTarget *> *_allOSUIControlTargets_;

@end

@implementation UIControl (_OSUIControlTargets_)

- (NSMutableArray<_OSUIControlTarget *> *)_allOSUIControlTargets_ {
    NSMutableArray<_OSUIControlTarget *> *targets = objc_getAssociatedObject(self, _cmd);
    if (!targets) {
        targets = [NSMutableArray array];
        objc_setAssociatedObject(self, _cmd, targets, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return targets;
}

@end

@implementation UIControl (Category)

- (void)setTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents {
    if (!target || !action || !controlEvents) return;
    [self.allTargets enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSArray<NSString *> *actions = [self actionsForTarget:obj forControlEvent:controlEvents];
        [actions enumerateObjectsUsingBlock:^(NSString * _Nonnull _obj, NSUInteger _idx, BOOL * _Nonnull _stop) {
            [self removeTarget:obj action:NSSelectorFromString(_obj) forControlEvents:controlEvents];
        }];
    }];
    [self addTarget:target action:action forControlEvents:controlEvents];
}

- (void)removeAllTargets {
    [self.allTargets enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        [self removeTarget:obj action:NULL forControlEvents:UIControlEventAllEvents];
    }];
    [self._allOSUIControlTargets_ removeAllObjects];
}

@end

@implementation UIControl (_Blocks)

- (void)addBlockForControlEvents:(UIControlEvents)controlEvents action:(void (^)(id _Nonnull))action {
    if (!controlEvents) return;
    _OSUIControlTarget *target = [[_OSUIControlTarget alloc] initWithAction:action events:controlEvents];
    [self addTarget:target action:@selector(invoke:) forControlEvents:controlEvents];
    [self._allOSUIControlTargets_ addObject:target];
}

- (void)setBlockForControlEvents:(UIControlEvents)controlEvents action:(void (^)(id _Nonnull))action {
    if (!controlEvents) return;
    [self removeAllBlocksForControlEvents:UIControlEventAllEvents];
    [self addBlockForControlEvents:controlEvents action:action];
}

- (void)removeAllBlocksForControlEvents:(UIControlEvents)controlEvents {
    if (!controlEvents) return;
    NSMutableIndexSet *removeIndexs = [NSMutableIndexSet indexSet];
    [self._allOSUIControlTargets_ enumerateObjectsUsingBlock:^(_OSUIControlTarget * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.events & controlEvents) {
            UIControlEvents newEvents = obj.events & (~controlEvents);
            if (newEvents) {
                [self removeTarget:obj action:@selector(invoke:) forControlEvents:obj.events];
                [obj setEvents:newEvents];
                [self addTarget:obj action:@selector(invoke:) forControlEvents:obj.events];
            } else {
                [self removeTarget:obj action:@selector(invoke:) forControlEvents:obj.events];
                [removeIndexs addIndex:idx];
            }
        }
    }];
    [self._allOSUIControlTargets_ removeObjectsAtIndexes:removeIndexs];
}

@end
