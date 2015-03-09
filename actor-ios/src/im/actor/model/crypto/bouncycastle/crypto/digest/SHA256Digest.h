//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/bouncycastle/crypto/digest/SHA256Digest.java
//

#ifndef _ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest_H_
#define _ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest_H_

@class IOSByteArray;
@class IOSIntArray;
@protocol ImActorModelCryptoBouncycastleUtilsMemoable;

#include "J2ObjC_header.h"
#include "im/actor/model/crypto/bouncycastle/crypto/digest/EncodableDigest.h"
#include "im/actor/model/crypto/bouncycastle/crypto/digest/GeneralDigest.h"

#define ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest_DIGEST_LENGTH 32

@interface ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest : ImActorModelCryptoBouncycastleCryptoDigestGeneralDigest < ImActorModelCryptoBouncycastleCryptoDigestEncodableDigest > {
}

- (instancetype)init;

- (instancetype)initWithImActorModelCryptoBouncycastleCryptoDigestSHA256Digest:(ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest *)t;

- (instancetype)initWithByteArray:(IOSByteArray *)encodedState;

- (NSString *)getAlgorithmName;

- (jint)getDigestSize;

- (void)processWordWithByteArray:(IOSByteArray *)inArg
                         withInt:(jint)inOff;

- (void)processLengthWithLong:(jlong)bitLength;

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff;

- (void)reset;

- (void)processBlock;

- (id<ImActorModelCryptoBouncycastleUtilsMemoable>)copy__ OBJC_METHOD_FAMILY_NONE;

- (void)resetWithImActorModelCryptoBouncycastleUtilsMemoable:(id<ImActorModelCryptoBouncycastleUtilsMemoable>)other;

- (IOSByteArray *)getEncodedState;

@end

FOUNDATION_EXPORT BOOL ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest_initialized;
J2OBJC_STATIC_INIT(ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest, DIGEST_LENGTH, jint)

FOUNDATION_EXPORT IOSIntArray *ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest_K_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest, K_, IOSIntArray *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest)

#endif // _ImActorModelCryptoBouncycastleCryptoDigestSHA256Digest_H_