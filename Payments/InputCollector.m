//
//  InputCollector.m
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import "InputCollector.h"

@implementation InputCollector
+(NSString*)inputForPrompt:(NSString *)promptString
{
    NSLog(promptString);
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChar];
    NSCharacterSet *newlineCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *parsedString = [inputString stringByTrimmingCharactersInSet:newlineCharacterSet];
    
    return parsedString;
}
+(NSInteger)getIntFrom:(NSString *)promptString
{
    NSLog(promptString);
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChar];
    NSCharacterSet *newlineCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *parsedString = [inputString stringByTrimmingCharactersInSet:newlineCharacterSet];
    NSInteger result = [parsedString integerValue];
    
    return result;
}
@end
