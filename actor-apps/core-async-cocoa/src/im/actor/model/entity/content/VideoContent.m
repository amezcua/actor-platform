//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/content/VideoContent.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DocumentEx.h"
#include "im/actor/model/api/DocumentExVideo.h"
#include "im/actor/model/api/DocumentMessage.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/entity/content/VideoContent.h"
#include "im/actor/model/entity/content/internal/AbsLocalContent.h"
#include "im/actor/model/entity/content/internal/ContentLocalContainer.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"
#include "im/actor/model/entity/content/internal/LocalFastThumb.h"
#include "im/actor/model/entity/content/internal/LocalVideo.h"

@interface AMVideoContent () {
 @public
  jint duration_;
  jint w_;
  jint h_;
}

@end

@implementation AMVideoContent

+ (AMVideoContent *)createLocalVideoWithNSString:(NSString *)descriptor
                                    withNSString:(NSString *)fileName
                                         withInt:(jint)fileSize
                                         withInt:(jint)w
                                         withInt:(jint)h
                                         withInt:(jint)duration
                                 withAMFastThumb:(AMFastThumb *)fastThumb {
  return AMVideoContent_createLocalVideoWithNSString_withNSString_withInt_withInt_withInt_withInt_withAMFastThumb_(descriptor, fileName, fileSize, w, h, duration, fastThumb);
}

+ (AMVideoContent *)createRemoteVideoWithAMFileReference:(AMFileReference *)reference
                                                 withInt:(jint)w
                                                 withInt:(jint)h
                                                 withInt:(jint)duration
                                         withAMFastThumb:(AMFastThumb *)fastThumb {
  return AMVideoContent_createRemoteVideoWithAMFileReference_withInt_withInt_withInt_withAMFastThumb_(reference, w, h, duration, fastThumb);
}

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)contentContainer {
  AMVideoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

- (instancetype)initWithImActorModelEntityContentInternalContentLocalContainer:(ImActorModelEntityContentInternalContentLocalContainer *)contentContainer {
  AMVideoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(self, contentContainer);
  return self;
}

- (jint)getDuration {
  return duration_;
}

- (jint)getW {
  return w_;
}

- (jint)getH {
  return h_;
}

@end

AMVideoContent *AMVideoContent_createLocalVideoWithNSString_withNSString_withInt_withInt_withInt_withInt_withAMFastThumb_(NSString *descriptor, NSString *fileName, jint fileSize, jint w, jint h, jint duration, AMFastThumb *fastThumb) {
  AMVideoContent_initialize();
  return new_AMVideoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(new_ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(new_ImActorModelEntityContentInternalLocalVideo_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_withInt_withInt_withInt_(fileName, descriptor, fileSize, @"video/mp4", fastThumb != nil ? new_ImActorModelEntityContentInternalLocalFastThumb_initWithAMFastThumb_(fastThumb) : nil, w, h, duration)));
}

AMVideoContent *AMVideoContent_createRemoteVideoWithAMFileReference_withInt_withInt_withInt_withAMFastThumb_(AMFileReference *reference, jint w, jint h, jint duration, AMFastThumb *fastThumb) {
  AMVideoContent_initialize();
  return new_AMVideoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APDocumentMessage_initWithLong_withLong_withInt_withNSString_withNSString_withAPFastThumb_withAPDocumentEx_([((AMFileReference *) nil_chk(reference)) getFileId], [reference getAccessHash], [reference getFileSize], [reference getFileName], @"video/mp4", fastThumb != nil ? new_APFastThumb_initWithInt_withInt_withByteArray_([fastThumb getW], [fastThumb getH], [fastThumb getImage]) : nil, new_APDocumentExVideo_initWithInt_withInt_withInt_(w, h, duration))));
}

void AMVideoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMVideoContent *self, ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  (void) AMDocumentContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  APDocumentExVideo *video = (APDocumentExVideo *) check_class_cast([((APDocumentMessage *) nil_chk(((APDocumentMessage *) check_class_cast([((ImActorModelEntityContentInternalContentRemoteContainer *) nil_chk(contentContainer)) getMessage], [APDocumentMessage class])))) getExt], [APDocumentExVideo class]);
  self->w_ = [((APDocumentExVideo *) nil_chk(video)) getW];
  self->h_ = [video getH];
  self->duration_ = [video getDuration];
}

AMVideoContent *new_AMVideoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  AMVideoContent *self = [AMVideoContent alloc];
  AMVideoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

void AMVideoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(AMVideoContent *self, ImActorModelEntityContentInternalContentLocalContainer *contentContainer) {
  (void) AMDocumentContent_initWithImActorModelEntityContentInternalContentLocalContainer_(self, contentContainer);
  ImActorModelEntityContentInternalLocalVideo *localVideo = (ImActorModelEntityContentInternalLocalVideo *) check_class_cast([((ImActorModelEntityContentInternalContentLocalContainer *) nil_chk(contentContainer)) getContent], [ImActorModelEntityContentInternalLocalVideo class]);
  self->w_ = [((ImActorModelEntityContentInternalLocalVideo *) nil_chk(localVideo)) getW];
  self->h_ = [localVideo getH];
  self->duration_ = [localVideo getDuration];
}

AMVideoContent *new_AMVideoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(ImActorModelEntityContentInternalContentLocalContainer *contentContainer) {
  AMVideoContent *self = [AMVideoContent alloc];
  AMVideoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(self, contentContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMVideoContent)