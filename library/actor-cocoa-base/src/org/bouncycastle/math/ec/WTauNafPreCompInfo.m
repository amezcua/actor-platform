//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/ec/WTauNafPreCompInfo.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/math/ec/WTauNafPreCompInfo.h"

@implementation OrgBouncycastleMathEcWTauNafPreCompInfo

- (IOSObjectArray *)getPreComp {
  return preComp_;
}

- (void)setPreCompWithOrgBouncycastleMathEcECPoint_F2mArray:(IOSObjectArray *)preComp {
  self->preComp_ = preComp;
}

- (instancetype)init {
  if (self = [super init]) {
    preComp_ = nil;
  }
  return self;
}

- (void)copyAllFieldsTo:(OrgBouncycastleMathEcWTauNafPreCompInfo *)other {
  [super copyAllFieldsTo:other];
  other->preComp_ = preComp_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcWTauNafPreCompInfo)