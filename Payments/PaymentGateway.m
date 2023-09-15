//
//  PaymentGateway.m
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void)processPaymentAmount:(NSInteger) amount
{
    if([_paymentDelegate canProcessPayment])
    {
        [_paymentDelegate processPaymentAmount:amount];
    } else
    {
        NSLog(@"Payment cannot be processed right now...");
    }
    
}
@end
