#import "CryptoSquareExample.h"

@interface CryptoSquare ()

@property (nonatomic, strong) NSString *string;

@end

@implementation CryptoSquare

- (instancetype)initWithString:(NSString *)string {
    self = [super init];
    
    if (self) {
        _string = string;
    }
    
    return self;
}

- (NSString *)normalizePlainText {
    
}

@end
