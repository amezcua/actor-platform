//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/asn1/ASN1Integer.java
//

#ifndef _ImActorModelCryptoAsn1ASN1Integer_H_
#define _ImActorModelCryptoAsn1ASN1Integer_H_

@class BSDataInput;
@class BSDataOutput;
@class IOSByteArray;
@class JavaMathBigInteger;

#include "J2ObjC_header.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"

@interface ImActorModelCryptoAsn1ASN1Integer : ImActorModelCryptoAsn1ASN1Primitive {
}

+ (ImActorModelCryptoAsn1ASN1Integer *)readIntegerWithBSDataInput:(BSDataInput *)dataInput;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)data;

- (instancetype)init;

- (instancetype)initWithInt:(jint)val;

- (IOSByteArray *)getData;

- (JavaMathBigInteger *)asBigInteger;

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelCryptoAsn1ASN1Integer)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelCryptoAsn1ASN1Integer *ImActorModelCryptoAsn1ASN1Integer_readIntegerWithBSDataInput_(BSDataInput *dataInput);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelCryptoAsn1ASN1Integer)

#endif // _ImActorModelCryptoAsn1ASN1Integer_H_
