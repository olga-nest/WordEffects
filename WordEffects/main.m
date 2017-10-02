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
        char operation = '\0';
        
      while(1) {
            
            printf("Lets start? (y/n): ");
            scanf(" %c", &option);
            
            if (option == 'y') {
 
            
        char inputChars[255];
        
        printf("Input a string: ");
        
        fgets(inputChars, 255, stdin);
        
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
                
        printf("What do you want to do with your string?\n\n");
        printf("A. Uppercase. \n");
        printf("B. Lowercase. \n");
        printf("C. Numberize. \n");
        printf("D. Canadianize. \n");
        printf("E. Respond. \n");
        printf("F. De-Space-It. \n");
                
        scanf(" %c", &operation);
                
                switch (operation) {
                    case 'A': NSLog(@"%@", [inputString uppercaseString]); break;
                    case 'B': NSLog(@"%@", [inputString lowercaseString]); break;
                        
                    default:
                        break;
                }
        
        
          } else {
                break; }
        
        }
    }
    return 0;
}
