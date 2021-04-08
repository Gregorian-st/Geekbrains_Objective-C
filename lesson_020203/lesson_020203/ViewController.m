//
//  ViewController.m
//  lesson_020203
//
//  Created by Grigory Stolyarov on 29.03.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

enum Gender {
    male,
    female
};

typedef enum Gender Gender;

struct Human {
    NSString *name;
    NSInteger age;
    Gender gender;
};

typedef struct Human Human;

enum Operation {
    operationSum,
    operationSub,
    operationMul,
    operationDiv,
    operationRem
};

typedef enum Operation Operation;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: Задание 1
    printf("\n== Array Output ==");
    NSArray *stringArray = @[@"String #1", @"String #2", @"String #3", @"String #4"];
    NSInteger cntItems = stringArray.count;
    
    printf("\n== For Loops ==\n");
    for (NSString *str in stringArray) {
        NSLog(@"%@\n", str);
    }
    
    for (int i = 0; i < cntItems; i++) {
        NSLog(@"%@\n", stringArray[i]);
    }
    
    printf("\n== While Loop ==\n");
    int i = 0;
    while (i < cntItems) {
        NSLog(@"%@\n", stringArray[i]);
        i++;
    }
    
    printf("\n== Do-While Loop ==\n");
    i = 0;
    if (cntItems > 0) {
        do {
            NSLog(@"%@\n", stringArray[i]);
            i++;
        } while (i < cntItems);
    }
    
    // MARK: Задание 2
    printf("\n== Calculator ==\n");
    NSInteger first = 54;
    NSInteger second = 55;
    NSLog(@"%ld + %ld = %f", first, second,
          [self calculateWithOperation:operationSum firstValue:first secondValue:second]);
    NSLog(@"%ld - %ld = %f", first, second,
          [self calculateWithOperation:operationSub firstValue:first secondValue:second]);
    NSLog(@"%ld * %ld = %f", first, second,
          [self calculateWithOperation:operationMul firstValue:first secondValue:second]);
    NSLog(@"%ld / %ld = %f", first, second,
          [self calculateWithOperation:operationDiv firstValue:first secondValue:second]);
    NSLog(@"%ld %% %ld = %f", first, second,
          [self calculateWithOperation:operationRem firstValue:first secondValue:second]);
    
    // MARK: Задание 3
    printf("\n== Human Structure ==\n");
    Human human1;
    human1.name = @"Chandler";
    human1.age = 23;
    human1.gender = male;
    Human human2;
    human2.name = @"Ross";
    human2.age = 24;
    human2.gender = male;
    Human human3;
    human3.name = @"Rachel";
    human3.age = 22;
    human3.gender = female;
    NSLog(@"Human1 is %@, %ld yo, %@", human1.name, (long)human1.age, human1.gender == male ? @"male" : @"female");
    NSLog(@"Human2 is %@, %ld yo, %@", human2.name, (long)human2.age, human2.gender == male ? @"male" : @"female");
    NSLog(@"Human3 is %@, %ld yo, %@", human3.name, (long)human3.age, human3.gender == male ? @"male" : @"female");
}

- (CGFloat) calculateWithOperation:(Operation)operation firstValue:(NSInteger)value1 secondValue:(NSInteger)value2 {
    switch (operation) {
        case operationSum:
            return value1 + value2;
        case operationSub:
            return value1 - value2;
        case operationMul:
            return value1 * value2;
        case operationDiv:
            return (float)value1 / value2;
        case operationRem:
            return value1 % value2;
    }
}

@end
