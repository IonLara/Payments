//
//  ApplePaymentService.m
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
-(void)processPaymentAmount:(NSInteger) amount
{
    NSLog(@"Payed $%ld through Apple",(long)amount);
}
-(BOOL)canProcessPayment
{
    NSInteger random = arc4random_uniform(2);
    if(random == 1)
    {
        return YES;
    } else
    {
        return NO;
    }
}
@end
