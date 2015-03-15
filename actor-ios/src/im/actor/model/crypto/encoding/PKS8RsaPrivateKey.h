//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/encoding/PKS8RsaPrivateKey.java
//

#ifndef _ImActorModelCryptoEncodingPKS8RsaPrivateKey_H_
#define _ImActorModelCryptoEncodingPKS8RsaPrivateKey_H_

@class IOSByteArray;
@class JavaMathBigInteger;

#include "J2ObjC_header.h"

@interface ImActorModelCryptoEncodingPKS8RsaPrivateKey : NSObject {
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)modulus
                    withJavaMathBigInteger:(JavaMathBigInteger *)exponent;

- (instancetype)initWithByteArray:(IOSByteArray *)encoded;

- (JavaMathBigInteger *)getModulus;

- (JavaMathBigInteger *)getExponent;

- (IOSByteArray *)serialize;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelCryptoEncodingPKS8RsaPrivateKey)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *ImActorModelCryptoEncodingPKS8RsaPrivateKey_ALGO_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelCryptoEncodingPKS8RsaPrivateKey, ALGO_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelCryptoEncodingPKS8RsaPrivateKey)

#endif // _ImActorModelCryptoEncodingPKS8RsaPrivateKey_H_
