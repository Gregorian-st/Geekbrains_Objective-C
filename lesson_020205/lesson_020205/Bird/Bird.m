//
//  Bird.m
//  lesson_020205
//
//  Created by Grigory Stolyarov on 14.04.2021.
//

#import "Bird.h"

@implementation Bird

- (instancetype)initWithSpecies:(NSString *)speciesName {
    self = [super init];
    if (self) {
        [speciesName retain];
        [speciesName release];
        _speciesName = speciesName;
        NSLog(@"Create bird with Species Name: %@", _speciesName);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc a bird with Species Name: %@", _speciesName);
    [_speciesName release];
    [super dealloc];
}

@end
