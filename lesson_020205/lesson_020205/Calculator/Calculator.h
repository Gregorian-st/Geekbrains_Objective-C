//
//  Calculator.h
//  lesson_020205
//
//  Created by Grigory Stolyarov on 14.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, Operation) {
    operationSum,
    operationSub,
    operationMul,
    operationDiv,
    operationRem
};

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

- (CGFloat) calculateWithOperation:(Operation)operation firstValue:(NSInteger)value1 secondValue:(NSInteger)value2;

@end

NS_ASSUME_NONNULL_END
