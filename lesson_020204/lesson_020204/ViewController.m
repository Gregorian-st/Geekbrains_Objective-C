//
//  ViewController.m
//  lesson_020204
//
//  Created by Grigory Stolyarov on 10.04.2021.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *studentArray = [NSMutableArray array];
    
    Student *student1 = [Student new];
    student1.name = @"Chandler";
    student1.surname = @"Bing";
    [student1 setAge:18];
    [studentArray addObject:student1];
    
    Student *student2 = [Student new];
    student2.name = @"Ross";
    student2.surname = @"Geller";
    [student2 setAge:19];
    [studentArray addObject:student2];
    
    Student *student3 = [Student new];
    student3.name = @"Rachel";
    student3.surname = @"Green";
    [student3 setAge:20];
    [studentArray addObject:student3];
    
    Student *student4 = [Student new];
    student4.name = @"Monica";
    student4.surname = @"Geller";
    [student4 setAge:21];
    [studentArray addObject:student4];
    
    for (Student *person in studentArray)
        NSLog(@"%@", person);
    
    [studentArray removeAllObjects];
    student1 = nil;
    student2 = nil;
    student3 = nil;
    student4 = nil;
}

@end
