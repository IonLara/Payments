//
//  PaymentGateway.h
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger) amount;
-(BOOL)canProcessPayment;
@end

@interface PaymentGateway : NSObject
@property (nonatomic)id<PaymentDelegate> paymentDelegate;
-(void)processPaymentAmount:(NSInteger) amount;
@end

NS_ASSUME_NONNULL_END
