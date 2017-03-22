#import <Foundation/Foundation.h>

@interface CryptoSquare : NSObject

- (instancetype)initWithString:(NSString *)string;
- (NSString *)normalizePlainText;

@end
