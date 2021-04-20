//
//  Operation.h
//  lesson_020206
//
//  Created by Grigory Stolyarov on 19.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Operation : NSOperation

- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)isReady;

@end

NS_ASSUME_NONNULL_END
