//
//  InputCollector.h
//  Payments
//
//  Created by Ion Sebastian Rodriguez Lara on 14/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject
+(NSString*)inputForPrompt:(NSString *)promptString;
+(NSInteger)getIntFrom:(NSString *)promptString;
@end

NS_ASSUME_NONNULL_END
