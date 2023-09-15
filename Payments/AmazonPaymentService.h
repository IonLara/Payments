//
//  AmazonPaymentService.h
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService<PaymentDelegate> : NSObject
-(void)processPaymentAmount:(NSInteger) amount;
-(BOOL)canProcessPayment;
@end

NS_ASSUME_NONNULL_END
