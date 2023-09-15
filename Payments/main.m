//
//  main.m
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSInteger cost = arc4random_uniform(901) + 100;
        NSInteger choice = [InputCollector getIntFrom:[NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon",cost]];
        switch (choice) {
            case 1:
                //Paypal
                NSLog(@"Paying with Paypal");
                break;
            case 2:
                //Stripe
                NSLog(@"Paying with Stripe");
            case 3:
                //Amazon
                NSLog(@"Paying with Amazon");
            default:
                break;
        }
    }
    return 0;
}
