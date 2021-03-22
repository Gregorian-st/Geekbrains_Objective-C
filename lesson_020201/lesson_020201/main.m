//
//  main.m
//  lesson_020201
//
//  Created by Grigory Stolyarov on 22.03.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int first = 0;
        printf("Please enter 1st integer number: ");
        scanf("%d", &first);
        
        int second = 0;
        printf("Please enter 2nd integer number: ");
        scanf("%d", &second);
        
        NSString *operationStr;
        char operation[255] = "";
        while (![operationStr isEqualToString: @"+"] &&
               ![operationStr isEqualToString: @"-"] &&
               ![operationStr isEqualToString: @"*"] &&
               ![operationStr isEqualToString: @"/"] &&
               ![operationStr isEqualToString: @"%"]) {
            printf("Please enter operation sign (+, -, *, /, %%): ");
            scanf("%s", operation);
            operationStr = [NSString stringWithCString:operation encoding:1];
        }
        
        if ([operationStr isEqualToString: @"-"])
            NSLog(@"%d %@ %d = %d", first, operationStr, second, (first - second));
        else if ([operationStr isEqualToString: @"*"])
            NSLog(@"%d %@ %d = %d", first, operationStr, second, (first * second));
        else if ([operationStr isEqualToString: @"/"])
            NSLog(@"%d %@ %d = %.3f", first, operationStr, second, ((float)first / (float)second));
        else if ([operationStr isEqualToString: @"%"])
            NSLog(@"%d %@ %d = %d", first, operationStr, second, (first % second));
        else NSLog(@"%d %@ %d = %d", first, operationStr, second, (first + second));
        
        printf("\n== Mean calculation ==\n");
        printf("Please enter 1st integer number: ");
        scanf("%d", &first);
        
        printf("Please enter 2nd integer number: ");
        scanf("%d", &second);
        
        int third = 0;
        printf("Please enter 3rd integer number: ");
        scanf("%d", &third);
        
        NSLog(@"Mean of %d, %d, %d is %.3f", first, second, third, ((float)first + (float)second + (float)third) / 3);
        
    }
    
    return 0;
}
