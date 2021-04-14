//
//  Bird.h
//  lesson_020205
//
//  Created by Grigory Stolyarov on 14.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property (nonatomic, strong) NSString *speciesName;

- (instancetype)initWithSpecies:(NSString *)speciesName;

@end

NS_ASSUME_NONNULL_END
