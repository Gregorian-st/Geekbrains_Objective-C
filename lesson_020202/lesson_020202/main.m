//
//  main.m
//  lesson_020202
//
//  Created by Grigory Stolyarov on 24.03.2021.
//

#import <Foundation/Foundation.h>

#define PLUS_SIGN 43
#define MINUS_SIGN 45
#define MULTIPLY_SIGN 42
#define DIV_SIGN 47

BOOL isEnglish(NSString *symbolChar) {
    int charCode = (int)[[symbolChar uppercaseString] characterAtIndex:0];
    return (charCode > 64 && charCode < 91);
}

int sumValues(int value1, int value2) {
    return value1 + value2;
}

int subValues(int value1, int value2) {
    return value1 - value2;
}

int mulValues(int value1, int value2) {
    return value1 * value2;
}

float divValues(int value1, int value2) {
    return (float)value1 / (float)value2;
}

int remValues(int value1, int value2) {
    return value1 % value2;
}

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        // MARK: Задание 1
        printf("\n== English Symbol Identification==\n");
        char symbol[255] = "";
        printf("Please enter one character: ");
        scanf("%s", symbol);
        NSString *symbolStr = [NSString stringWithCString:symbol encoding:NSUTF8StringEncoding];
        NSString *symbolChar = [symbolStr substringToIndex:1];
        
        if (isEnglish(symbolChar))
            NSLog(@"The symbol '%@' belongs to the English alphabet", symbolChar);
        else
            NSLog(@"The symbol '%@' does not belong to the English alphabet", symbolChar);
        
        // MARK: Задание 2
        printf("\n== Calculator ==\n");
        
        int first = 0;
        printf("Please enter 1st integer number: ");
        scanf("%d", &first);
        
        int second = 0;
        printf("Please enter 2nd integer number: ");
        scanf("%d", &second);
        
        NSString *operationStr = @"";
        char operation[255] = "";
        while (![operationStr isEqualToString: @"+"] &&
               ![operationStr isEqualToString: @"-"] &&
               ![operationStr isEqualToString: @"*"] &&
               ![operationStr isEqualToString: @"/"] &&
               ![operationStr isEqualToString: @"%"]) {
            printf("Please enter operation sign (+, -, *, /, %%): ");
            scanf("%s", operation);
            operationStr = [NSString stringWithCString:operation encoding:NSUTF8StringEncoding];
        }
        
        switch ((int)[operationStr characterAtIndex:0]) {
            case PLUS_SIGN:
                NSLog(@"%d %@ %d = %d", first, operationStr, second, sumValues(first, second));
                break;
            case MINUS_SIGN:
                NSLog(@"%d %@ %d = %d", first, operationStr, second, subValues(first, second));
                break;
            case MULTIPLY_SIGN:
                NSLog(@"%d %@ %d = %d", first, operationStr, second, mulValues(first, second));
                break;
            case DIV_SIGN:
                NSLog(@"%d %@ %d = %.3f", first, operationStr, second, divValues(first, second));
                break;
            default:
                NSLog(@"%d %@ %d = %d", first, operationStr, second, remValues(first, second));
                break;
        }
        
    }
    
    return 0;
    
}
