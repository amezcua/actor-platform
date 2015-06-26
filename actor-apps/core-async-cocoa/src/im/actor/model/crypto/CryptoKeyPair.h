//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/crypto/CryptoKeyPair.java
//

#ifndef _AMCryptoKeyPair_H_
#define _AMCryptoKeyPair_H_

#include "J2ObjC_header.h"

@class IOSByteArray;

@interface AMCryptoKeyPair : NSObject

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)publicKey
                    withByteArray:(IOSByteArray *)privateKey;

- (IOSByteArray *)getPrivateKey;

- (IOSByteArray *)getPublicKey;

@end

J2OBJC_EMPTY_STATIC_INIT(AMCryptoKeyPair)

FOUNDATION_EXPORT void AMCryptoKeyPair_initWithByteArray_withByteArray_(AMCryptoKeyPair *self, IOSByteArray *publicKey, IOSByteArray *privateKey);

FOUNDATION_EXPORT AMCryptoKeyPair *new_AMCryptoKeyPair_initWithByteArray_withByteArray_(IOSByteArray *publicKey, IOSByteArray *privateKey) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMCryptoKeyPair)

typedef AMCryptoKeyPair ImActorModelCryptoCryptoKeyPair;

#endif // _AMCryptoKeyPair_H_