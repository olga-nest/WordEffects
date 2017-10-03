//
//  main.m
//  WordEffects
//
//  Created by Olga on 10/2/17.
//  Copyright © 2017 Olga. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char option = '\0';
        char operation;
        
     while(1) {
            
            printf("Let's start? (y/n): ");
            fgets(&option, 255, stdin);
            
            if (option == 'y') {
 
     
        char inputChars[255];
        
        printf("Input a string: ");
        
        fgets(inputChars, 255, stdin);
        
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSString *newString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                
        printf("What do you want to do with your string?\n\n");
        printf("\t1. Uppercase. \n");
        printf("\t2. Lowercase. \n");
        printf("\t3. Numberize. \n");
        printf("\t4. Canadianize. \n");
        printf("\t5. Respond. \n");
        printf("\t6. De-Space-It. \n");
                
        fgets(&operation, 10, stdin);
                
            switch (operation) {
                    case '1': NSLog(@"%@", [newString uppercaseString]); break;
                    case '2': NSLog(@"%@", [newString lowercaseString]); break;
                    case '3': NSLog(@"%ld", (long)[newString integerValue]); break;
                    //TODO: check if the conversion was successful or not
                    case '4': NSLog(@"%@", [newString stringByAppendingString:@", eh?"]);
                    case '5': {
                        NSString *lastChar = [newString substringFromIndex: [inputString length] - 2];
                    
                        if ([lastChar isEqual: @"?"]) {
                            NSLog(@"I don\'t know");
                        } else if ([lastChar isEqual: @"!"]) {
                        NSLog(@"Whoa, calm down!");
                        } else {
                        break;
                           }
                }
                    case '6': NSLog(@"%@", [newString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    
                    default:
                        break;
                }
      
        
          } else {
                break; }
        
        }
    }
    return 0;
}
