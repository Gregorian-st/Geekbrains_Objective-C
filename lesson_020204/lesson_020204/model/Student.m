//
//  Student.m
//  lesson_020204
//
//  Created by Grigory Stolyarov on 10.04.2021.
//

#import "Student.h"

@implementation Student

- (void)setAge:(NSUInteger)age {
    _age = age;
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Student: %@, %uyo", self.fullName, (unsigned)self.age];
}

@end
