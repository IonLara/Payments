//
//  main.m
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSInteger cost = arc4random_uniform(901) + 100;
        NSInteger choice = [InputCollector getIntFrom:[NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon",cost]];
        PaymentGateway *gateway = [PaymentGateway new];
        switch (choice) {
            case 1:
                //Paypal
                gateway.paymentDelegate = [PaypalPaymentService new];
                break;
            case 2:
                //Stripe
                gateway.paymentDelegate = [StripePaymentService new];
            case 3:
                //Amazon
                gateway.paymentDelegate = [AmazonPaymentService new];
            default:
                break;
        }
        
        [gateway processPaymentAmount:cost];
    }
    return 0;
}
