@interface Anagram : NSObject

- (instancetype)initWithString:(NSString *)string;
- (NSArray *)match:(NSArray *)potentialMatches;

@end
