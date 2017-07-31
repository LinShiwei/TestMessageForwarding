//
//  ViewA.m
//  TestMessageForwarding
//
//  Created by Lin,Shiwei on 2017/7/27.
//  Copyright © 2017年 Lin,Shiwei. All rights reserved.
//

#import "ViewA.h"
@interface ViewA ()
@property (weak,nonatomic) id target;
@end

@implementation ViewA

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (void)initialize{

    ClassMethodCallLog(@"initialize");
}

+ (void)load{
    ClassMethodCallLog(@"load");
    
}

- (instancetype)initWithForwardingTarget:(id)target{
    
    self = [super init];
    if (self) {
        _target = target;
    }
    return self;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    return [_target methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    [anInvocation invokeWithTarget:_target];
}


- (BOOL)respondsToSelector:(SEL)aSelector{
    if (_target&&[_target respondsToSelector:aSelector]) {
        return true;
    }
    return [super respondsToSelector:aSelector];
}
@end
