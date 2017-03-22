#import <XCTest/XCTest.h>

#if __has_include("CryptoSquareExample.h")
# import "CryptoSquareExample.h"
# else
# import "CryptoSquare.h"
#endif

@interface CryptoSquareTest : XCTestCase

@end

@implementation CryptoSquareTest

- (void)testNormalizeStrangeCharacters {
    CryptoSquare *crypto = [[CryptoSquare alloc] initWithString:@"s#$%^&plunk"];
    XCTAssertEqualObjects(@"splunk", [crypto normalizePlaintext]);
}

//- (void)testNormalizeUppercaseCharacters {
//    let crypto = Crypto("WHOA HEY!")
//    XCTAssertEqual("whoahey", crypto.normalizePlaintext)
//}
//
//- (void)testNormalizeWithNumbers {
//    let crypto = Crypto("1, 2, 3 GO!")
//    XCTAssertEqual("123go", crypto.normalizePlaintext)
//}
//
//- (void)testSizeOfSmallSquare {
//    let crypto = Crypto("1234")
//    XCTAssertEqual(2, crypto.size)
//}
//
//- (void)testSizeOfSlightlyLargerSquare {
//    let crypto = Crypto("123456789")
//    XCTAssertEqual(3, crypto.size)
//}
//
//- (void)testSizeOfNonPerfectSquare {
//    let crypto = Crypto("123456789abc")
//    XCTAssertEqual(4, crypto.size)
//}
//
//- (void)testSizeIsDeterminedByNormalizedPlaintext {
//    let crypto = Crypto("Oh hey, this is nuts!")
//    XCTAssertEqual(4, crypto.size)
//}
//
//- (void)testPlaintextSegments {
//    let crypto = Crypto("Never vex thine heart with idle woes")
//    let expected = ["neverv", "exthin", "eheart", "withid", "lewoes"]
//    XCTAssertEqual(expected, crypto.plaintextSegments)
//}
//
//- (void)testOtherPlaintextSegments {
//    let crypto = Crypto("ZOMG! ZOMBIES!!!")
//    XCTAssertEqual(["zomg", "zomb", "ies"], crypto.plaintextSegments)
//}
//
//- (void)testCiphertext {
//    let crypto = Crypto("Time is an illusion. Lunchtime doubly so.")
//    XCTAssertEqual("tasneyinicdsmiohooelntuillibsuuml", crypto.ciphertext)
//}
//
//- (void)testAnotherCiphertext {
//    let crypto = Crypto("We all know interspecies romance is weird.")
//    XCTAssertEqual("wneiaweoreneawssciliprerlneoidktcms", crypto.ciphertext)
//}
//
//- (void)testNormalizedCiphertext {
//    let crypto = Crypto("Vampires are people too!")
//    XCTAssertEqual("vrel aepe mset paoo irpo", crypto.normalizeCiphertext)
//}
//
//- (void)testNormalizedCiphertextSpillsIntoShortSegment {
//    let crypto = Crypto("Madness, and then illumination.")
//    XCTAssertEqual("msemo aanin dninn dlaet ltshu i", crypto.normalizeCiphertext)
//}
//
//- (void)testAnotherNormalizedCiphertext {
//    let crypto = Crypto(
//                        "If man was meant to stay on the ground god would have given us roots"
//                        )
//    let  expected = "imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghns seoau"
//    XCTAssertEqual(expected, crypto.normalizeCiphertext)
//}
//
//- (void)testNormalizedCiphertextWithPunctuation {
//    let crypto = Crypto("Have a nice day. Feed the dog & chill out!")
//    let expected = "hifei acedl veeol eddgo aatcu nyhht"
//    XCTAssertEqual(expected, crypto.normalizeCiphertext)
//}

@end
