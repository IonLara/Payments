//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService
-(void)processPaymentAmount:(NSInteger) amount
{
    NSLog(@"Payed $%ld through Paypal",(long)amount);
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
