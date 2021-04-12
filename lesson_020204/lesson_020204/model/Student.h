//
//  Student.h
//  lesson_020204
//
//  Created by Grigory Stolyarov on 10.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, readonly) NSUInteger age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong, readonly) NSString *fullName;

- (void)setAge:(NSUInteger)age;

@end

NS_ASSUME_NONNULL_END
