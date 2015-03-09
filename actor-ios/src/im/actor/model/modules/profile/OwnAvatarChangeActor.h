//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/profile/OwnAvatarChangeActor.java
//

#ifndef _ImActorModelModulesProfileOwnAvatarChangeActor_H_
#define _ImActorModelModulesProfileOwnAvatarChangeActor_H_

@class AMFileLocation;
@class AMRpcException;
@class ImActorModelApiRpcResponseEditAvatar;
@class ImActorModelApiRpcResponseSeq;
@class ImActorModelModulesModules;

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/network/RpcCallback.h"
#include "java/lang/Runnable.h"

@interface ImActorModelModulesProfileOwnAvatarChangeActor : ImActorModelModulesUtilsModuleActor {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)changeAvatarWithNSString:(NSString *)descriptor;

- (void)uploadCompletedWithLong:(jlong)rid
             withAMFileLocation:(AMFileLocation *)fileLocation;

- (void)avatarChangedWithLong:(jlong)rid;

- (void)uploadErrorWithLong:(jlong)rid;

- (void)removeAvatar;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesProfileOwnAvatarChangeActor)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesProfileOwnAvatarChangeActor)

@interface ImActorModelModulesProfileOwnAvatarChangeActor_ChangeAvatar : NSObject {
}

- (instancetype)initWithNSString:(NSString *)descriptor;

- (NSString *)getDescriptor;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesProfileOwnAvatarChangeActor_ChangeAvatar)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesProfileOwnAvatarChangeActor_ChangeAvatar)

@interface ImActorModelModulesProfileOwnAvatarChangeActor_RemoveAvatar : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesProfileOwnAvatarChangeActor_RemoveAvatar)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesProfileOwnAvatarChangeActor_RemoveAvatar)

@interface ImActorModelModulesProfileOwnAvatarChangeActor_AvatarChanged : NSObject {
}

- (instancetype)initWithLong:(jlong)rid;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesProfileOwnAvatarChangeActor_AvatarChanged)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesProfileOwnAvatarChangeActor_AvatarChanged)

@interface ImActorModelModulesProfileOwnAvatarChangeActor_$1 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseEditAvatar *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesProfileOwnAvatarChangeActor:(ImActorModelModulesProfileOwnAvatarChangeActor *)outer$
                                                              withLong:(jlong)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesProfileOwnAvatarChangeActor_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesProfileOwnAvatarChangeActor_$1)

@interface ImActorModelModulesProfileOwnAvatarChangeActor_$1_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesProfileOwnAvatarChangeActor_$1:(ImActorModelModulesProfileOwnAvatarChangeActor_$1 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesProfileOwnAvatarChangeActor_$1_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesProfileOwnAvatarChangeActor_$1_$1)

@interface ImActorModelModulesProfileOwnAvatarChangeActor_$2 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeq *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesProfileOwnAvatarChangeActor:(ImActorModelModulesProfileOwnAvatarChangeActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesProfileOwnAvatarChangeActor_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesProfileOwnAvatarChangeActor_$2)

#endif // _ImActorModelModulesProfileOwnAvatarChangeActor_H_