//
//  Operation.m
//  lesson_020206
//
//  Created by Grigory Stolyarov on 19.04.2021.
//

#import "Operation.h"

@implementation Operation

int repeatCnt = 3;

- (void)start {
    NSLog(@"OPERATION START");
    [self main];
}

- (void)main {
    NSLog(@"This is OPERATION running");
    for (int i = 1; i <= repeatCnt; i++) {
        printf("OP_%02d ", i);
        sleep(1);
    }
    printf("\n");
}

- (BOOL)isCancelled {
    NSLog(@"OPERATION isCancelled");
    return [super isCancelled];
}

- (BOOL)isFinished {
    NSLog(@"OPERATION isFinished");
    return YES;
}

- (BOOL)isReady {
    NSLog(@"OPERATION isReady");
    return [super isReady];
}

@end
