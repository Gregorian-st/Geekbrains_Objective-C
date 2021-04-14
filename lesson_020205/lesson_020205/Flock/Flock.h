//
//  Flock.h
//  lesson_020205
//
//  Created by Grigory Stolyarov on 14.04.2021.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

@property (nonatomic, strong) NSArray *birds;

- (void)configWithBirds:(NSArray *)birds;

@end

NS_ASSUME_NONNULL_END
