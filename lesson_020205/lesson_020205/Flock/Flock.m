//
//  Flock.m
//  lesson_020205
//
//  Created by Grigory Stolyarov on 14.04.2021.
//

#import "Flock.h"

@implementation Flock

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"Create a flock");
    }
    return self;
}

- (void)configWithBirds:(NSArray *)birds {
    [birds retain];
    [birds release];
    _birds = birds;
    for (Bird *bird in birds) {
        NSLog(@"Add a bird %@ in the flock", bird.speciesName);
    }
}

- (void)remove {
    NSLog(@"Remove birds flom the flock");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}

- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc the flock");
    [super dealloc];
}

@end
