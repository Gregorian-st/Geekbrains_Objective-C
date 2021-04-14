//
//  Calculator.m
//  lesson_020205
//
//  Created by Grigory Stolyarov on 14.04.2021.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create Calculator Object");
    }
    return self;
}

- (CGFloat) calculateWithOperation:(Operation)operation firstValue:(NSInteger)value1 secondValue:(NSInteger)value2 {
    switch (operation) {
        case operationSum:
            return value1 + value2;
        case operationSub:
            return value1 - value2;
        case operationMul:
            return value1 * value2;
        case operationDiv:
            return (float)value1 / value2;
        case operationRem:
            return value1 % value2;
    }
}

- (void)dealloc {
    NSLog(@"Dealloc Calculator Object");
    [super dealloc];
}

@end
