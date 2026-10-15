{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @JNFTypeCoercer@.
module ObjC.JavaNativeFoundation.JNFTypeCoercer
  ( JNFTypeCoercer
  , IsJNFTypeCoercer(..)
  , init_
  , initWithParent
  , deriveCoercer
  , addCoercion_forNSClass_javaClass
  , coerceNSObject_withEnv
  , coerceJavaObject_withEnv
  , addCoercion_forNSClass_javaClassSelector
  , coerceJavaObject_withEnvSelector
  , coerceNSObject_withEnvSelector
  , deriveCoercerSelector
  , initSelector
  , initWithParentSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.JavaNativeFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsJNFTypeCoercer jnfTypeCoercer => jnfTypeCoercer -> IO RawId
init_ jnfTypeCoercer =
  sendOwnedMessage jnfTypeCoercer initSelector

-- | @- initWithParent:@
initWithParent :: (IsJNFTypeCoercer jnfTypeCoercer, IsNSObject parentIn) => jnfTypeCoercer -> parentIn -> IO RawId
initWithParent jnfTypeCoercer parentIn =
  sendOwnedMessage jnfTypeCoercer initWithParentSelector (toNSObject parentIn)

-- | @- deriveCoercer@
deriveCoercer :: IsJNFTypeCoercer jnfTypeCoercer => jnfTypeCoercer -> IO (Id JNFTypeCoercer)
deriveCoercer jnfTypeCoercer =
  sendMessage jnfTypeCoercer deriveCoercerSelector

-- | @- addCoercion:forNSClass:javaClass:@
addCoercion_forNSClass_javaClass :: (IsJNFTypeCoercer jnfTypeCoercer, IsNSObject coercion, IsNSString javaClassName) => jnfTypeCoercer -> coercion -> Class -> javaClassName -> IO ()
addCoercion_forNSClass_javaClass jnfTypeCoercer coercion nsClass javaClassName =
  sendMessage jnfTypeCoercer addCoercion_forNSClass_javaClassSelector (toNSObject coercion) nsClass (toNSString javaClassName)

-- | @- coerceNSObject:withEnv:@
coerceNSObject_withEnv :: IsJNFTypeCoercer jnfTypeCoercer => jnfTypeCoercer -> RawId -> RawId -> IO (Ptr ())
coerceNSObject_withEnv jnfTypeCoercer obj_ env =
  sendMessage jnfTypeCoercer coerceNSObject_withEnvSelector obj_ env

-- | @- coerceJavaObject:withEnv:@
coerceJavaObject_withEnv :: IsJNFTypeCoercer jnfTypeCoercer => jnfTypeCoercer -> Ptr () -> RawId -> IO RawId
coerceJavaObject_withEnv jnfTypeCoercer obj_ env =
  sendMessage jnfTypeCoercer coerceJavaObject_withEnvSelector obj_ env

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] RawId
initSelector = mkSelector "init"

-- | @Selector@ for @initWithParent:@
initWithParentSelector :: Selector '[Id NSObject] RawId
initWithParentSelector = mkSelector "initWithParent:"

-- | @Selector@ for @deriveCoercer@
deriveCoercerSelector :: Selector '[] (Id JNFTypeCoercer)
deriveCoercerSelector = mkSelector "deriveCoercer"

-- | @Selector@ for @addCoercion:forNSClass:javaClass:@
addCoercion_forNSClass_javaClassSelector :: Selector '[Id NSObject, Class, Id NSString] ()
addCoercion_forNSClass_javaClassSelector = mkSelector "addCoercion:forNSClass:javaClass:"

-- | @Selector@ for @coerceNSObject:withEnv:@
coerceNSObject_withEnvSelector :: Selector '[RawId, RawId] (Ptr ())
coerceNSObject_withEnvSelector = mkSelector "coerceNSObject:withEnv:"

-- | @Selector@ for @coerceJavaObject:withEnv:@
coerceJavaObject_withEnvSelector :: Selector '[Ptr (), RawId] RawId
coerceJavaObject_withEnvSelector = mkSelector "coerceJavaObject:withEnv:"

