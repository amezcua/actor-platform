//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/DeleteStorage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/messages/entity/Delete.h"
#include "im/actor/model/modules/messages/entity/DeleteStorage.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"

@interface ImActorModelModulesMessagesEntityDeleteStorage () {
 @public
  JavaUtilHashMap *pendingDeletions_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityDeleteStorage, pendingDeletions_, JavaUtilHashMap *)

@implementation ImActorModelModulesMessagesEntityDeleteStorage

+ (ImActorModelModulesMessagesEntityDeleteStorage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelModulesMessagesEntityDeleteStorage_fromBytesWithByteArray_(data);
}

- (JavaUtilHashMap *)getPendingDeletions {
  return pendingDeletions_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  [((JavaUtilHashMap *) nil_chk(pendingDeletions_)) clear];
  jint count = [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1];
  id<JavaUtilList> tmp = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < count; i++) {
    [tmp addWithId:[[ImActorModelModulesMessagesEntityDelete alloc] init]];
  }
  for (ImActorModelModulesMessagesEntityDelete * __strong d in nil_chk([values getRepeatedObjWithInt:1 withJavaUtilList:tmp])) {
    (void) [pendingDeletions_ putWithId:[((ImActorModelModulesMessagesEntityDelete *) nil_chk(d)) getPeer] withId:d];
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:[[JavaUtilArrayList alloc] initWithJavaUtilCollection:[((JavaUtilHashMap *) nil_chk(pendingDeletions_)) values]]];
}

- (instancetype)init {
  if (self = [super init]) {
    pendingDeletions_ = [[JavaUtilHashMap alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesEntityDeleteStorage *)other {
  [super copyAllFieldsTo:other];
  other->pendingDeletions_ = pendingDeletions_;
}

@end

ImActorModelModulesMessagesEntityDeleteStorage *ImActorModelModulesMessagesEntityDeleteStorage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelModulesMessagesEntityDeleteStorage_init();
  return ((ImActorModelModulesMessagesEntityDeleteStorage *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelModulesMessagesEntityDeleteStorage alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesEntityDeleteStorage)