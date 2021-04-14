//
//  ViewController.m
//  lesson_020205
//
//  Created by Grigory Stolyarov on 14.04.2021.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: 1. Изменить созданный калькулятор из предыдущих уроков на ручное управление памятью.
    printf("\n== Calculator ==\n");
    
    Calculator *calc = [[Calculator alloc] init];
    
    NSInteger value1 = 54;
    NSInteger value2 = 55;
    NSLog(@"%ld + %ld = %f", value1, value2,
          [calc calculateWithOperation:operationSum firstValue:value1 secondValue:value2]);
    NSLog(@"%ld - %ld = %f", value1, value2,
          [calc calculateWithOperation:operationSub firstValue:value1 secondValue:value2]);
    NSLog(@"%ld * %ld = %f", value1, value2,
          [calc calculateWithOperation:operationMul firstValue:value1 secondValue:value2]);
    NSLog(@"%ld / %ld = %f", value1, value2,
          [calc calculateWithOperation:operationDiv firstValue:value1 secondValue:value2]);
    NSLog(@"%ld %% %ld = %f", value1, value2,
          [calc calculateWithOperation:operationRem firstValue:value1 secondValue:value2]);
    
    [calc release];
    
    // MARK: 2. Смоделировать и разработать программу для стаи птиц (на основе практического задания) с применением ручного управления памятью.
    printf("\n== Flock ==\n");
    
    Flock *flock = [[Flock alloc] init];
    
    Bird *bird1 = [[Bird alloc] initWithSpecies:@"Swift"];
    Bird *bird2 = [[Bird alloc] initWithSpecies:@"Swift"];
    Bird *bird3 = [[Bird alloc] initWithSpecies:@"Crow"];
    Bird *bird4 = [[Bird alloc] initWithSpecies:@"Crow"];
    Bird *bird5 = [[Bird alloc] initWithSpecies:@"Pigeon"];
    
    NSArray *birds = [[NSArray alloc] initWithObjects:bird1, bird2, bird3, bird4, bird5, nil];
    
    [flock configWithBirds:birds];
    
    [flock release];
    
}


@end
