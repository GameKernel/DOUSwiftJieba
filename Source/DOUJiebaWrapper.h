//
//  DOUJiebaWrapper.h
//  SwiftJiebaDemo

#import <Foundation/Foundation.h>

@interface DOUJiebaWrapper : NSObject

- (void) objcJiebaInit:(NSString *)dictPath forPath:(NSString *)hmmPath forDictPath:(NSString *)userDictPath;
- (void) objcJiebaCut:(NSString *)sentence toWords:(NSMutableArray *)words;

@end
