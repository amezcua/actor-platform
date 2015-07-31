//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/GroupOutPeer.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface APGroupOutPeer () {
 @public
  jint groupId_;
  jlong accessHash_;
}

@end

@implementation APGroupOutPeer

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)accessHash {
  APGroupOutPeer_initWithInt_withLong_(self, groupId, accessHash);
  return self;
}

- (instancetype)init {
  APGroupOutPeer_init(self);
  return self;
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
}

- (NSString *)description {
  NSString *res = @"struct GroupOutPeer{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end

void APGroupOutPeer_initWithInt_withLong_(APGroupOutPeer *self, jint groupId, jlong accessHash) {
  (void) BSBserObject_init(self);
  self->groupId_ = groupId;
  self->accessHash_ = accessHash;
}

APGroupOutPeer *new_APGroupOutPeer_initWithInt_withLong_(jint groupId, jlong accessHash) {
  APGroupOutPeer *self = [APGroupOutPeer alloc];
  APGroupOutPeer_initWithInt_withLong_(self, groupId, accessHash);
  return self;
}

void APGroupOutPeer_init(APGroupOutPeer *self) {
  (void) BSBserObject_init(self);
}

APGroupOutPeer *new_APGroupOutPeer_init() {
  APGroupOutPeer *self = [APGroupOutPeer alloc];
  APGroupOutPeer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APGroupOutPeer)