//
//  ViewController.m
//  lesson_020206
//
//  Created by Grigory Stolyarov on 19.04.2021.
//

#import "ViewController.h"
#import "Operation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int repeatCnt = 3;
    
    // MARK: 1. Попрактиковаться с применением блоков и создать любую программу с ними (минимум 6 блоков).
    
    // sleep function is used for slow down blocks and threads testing
    void (^block1)(void) = ^{
        NSLog(@"This is Block01 running");
        for (int i = 1; i <= repeatCnt; i++) {
            printf("B01_%02d ", i);
            sleep(1);
        }
        printf("\n");
    };
    void (^block2)(void) = ^{
        NSLog(@"This is Block02 running");
        for (int i = 1; i <= repeatCnt; i++) {
            printf("B02_%02d ", i);
            sleep(1);
        }
        printf("\n");
    };
    void (^block3)(void) = ^{
        NSLog(@"This is Block03 running");
        for (int i = 1; i <= repeatCnt; i++) {
            printf("B03_%02d ", i);
            sleep(1);
        }
        printf("\n");
    };
    void (^block4)(void) = ^{
        NSLog(@"This is Block04 running");
        for (int i = 1; i <= repeatCnt; i++) {
            printf("B04_%02d ", i);
            sleep(1);
        }
        printf("\n");
    };
    void (^block5)(void) = ^{
        NSLog(@"This is Block05 running");
        for (int i = 1; i <= repeatCnt; i++) {
            printf("B05_%02d ", i);
            sleep(1);
        }
        printf("\n");
    };
    void (^block6)(void) = ^{
        NSLog(@"This is Block06 running");
        for (int i = 1; i <= repeatCnt; i++) {
            printf("B06_%02d ", i);
            sleep(1);
        }
        printf("\n");
    };
    
    block1();
    block2();
    block3();
    block4();
    block5();
    block6();
    
    // MARK: 2. Добавить выполнение блоков в различные очереди: как с применением GCD, так и с помощью NSOperationQueue.
    
    printf("\n");
    NSLog(@" == GCD Async Operation ==");
    dispatch_queue_t queueAsync = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
    dispatch_async(queueAsync, block1);
    dispatch_async(queueAsync, block2);
    dispatch_async(queueAsync, block3);
    dispatch_async(queueAsync, block4);
    dispatch_async(queueAsync, block5);
    dispatch_async(queueAsync, block6);
    
    // to wait for Async Operation finishing
    sleep(repeatCnt + 1);
    
    printf("\n");
    NSLog(@" == GCD Sync Operation ==");
    dispatch_queue_t queueSync = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
    dispatch_sync(queueSync, block1);
    dispatch_sync(queueSync, block2);
    dispatch_sync(queueSync, block3);
    dispatch_sync(queueSync, block4);
    dispatch_sync(queueSync, block5);
    dispatch_sync(queueSync, block6);
    
    printf("\n");
    NSLog(@" == NSOperation ==");
    NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
    Operation *operation = [Operation new];
    [operation setCompletionBlock: ^{
        NSLog(@"Completion Block after OPERATION execution");
    }];
    
    [mainQueue addOperationWithBlock:block1];
    [mainQueue addOperationWithBlock:block2];
    [mainQueue addOperationWithBlock:block3];
    [mainQueue addOperation:operation];
    [mainQueue addOperationWithBlock:block4];
    [mainQueue addOperationWithBlock:block5];
    [mainQueue addOperationWithBlock:block6];
    
}


@end
