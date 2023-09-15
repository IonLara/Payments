//
//  StripePaymentService.m
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
-(void)processPaymentAmount:(NSInteger) amount
{
    NSLog(@"Payed $%ld through Stripe",(long)amount);
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
