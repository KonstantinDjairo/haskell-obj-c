{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @JNFJObjectWrapper@.
module ObjC.JavaNativeFoundation.JNFJObjectWrapper
  ( JNFJObjectWrapper
  , IsJNFJObjectWrapper(..)
  , wrapperWithJObject_withEnv
  , initWithJObject_withEnv
  , setJObject_withEnv
  , jObjectWithEnv
  , jObject
  , initWithJObject_withEnvSelector
  , jObjectSelector
  , jObjectWithEnvSelector
  , setJObject_withEnvSelector
  , wrapperWithJObject_withEnvSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.JavaNativeFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ wrapperWithJObject:withEnv:@
wrapperWithJObject_withEnv :: Ptr () -> RawId -> IO (Id JNFJObjectWrapper)
wrapperWithJObject_withEnv jObjectIn env =
  do
    cls' <- getRequiredClass "JNFJObjectWrapper"
    sendClassMessage cls' wrapperWithJObject_withEnvSelector jObjectIn env

-- | @- initWithJObject:withEnv:@
initWithJObject_withEnv :: IsJNFJObjectWrapper jnfjObjectWrapper => jnfjObjectWrapper -> Ptr () -> RawId -> IO RawId
initWithJObject_withEnv jnfjObjectWrapper jObjectIn env =
  sendOwnedMessage jnfjObjectWrapper initWithJObject_withEnvSelector jObjectIn env

-- | @- setJObject:withEnv:@
setJObject_withEnv :: IsJNFJObjectWrapper jnfjObjectWrapper => jnfjObjectWrapper -> Ptr () -> RawId -> IO ()
setJObject_withEnv jnfjObjectWrapper jObjectIn env =
  sendMessage jnfjObjectWrapper setJObject_withEnvSelector jObjectIn env

-- | @- jObjectWithEnv:@
jObjectWithEnv :: IsJNFJObjectWrapper jnfjObjectWrapper => jnfjObjectWrapper -> RawId -> IO (Ptr ())
jObjectWithEnv jnfjObjectWrapper env =
  sendMessage jnfjObjectWrapper jObjectWithEnvSelector env

-- | @- jObject@
jObject :: IsJNFJObjectWrapper jnfjObjectWrapper => jnfjObjectWrapper -> IO (Ptr ())
jObject jnfjObjectWrapper =
  sendMessage jnfjObjectWrapper jObjectSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @wrapperWithJObject:withEnv:@
wrapperWithJObject_withEnvSelector :: Selector '[Ptr (), RawId] (Id JNFJObjectWrapper)
wrapperWithJObject_withEnvSelector = mkSelector "wrapperWithJObject:withEnv:"

-- | @Selector@ for @initWithJObject:withEnv:@
initWithJObject_withEnvSelector :: Selector '[Ptr (), RawId] RawId
initWithJObject_withEnvSelector = mkSelector "initWithJObject:withEnv:"

-- | @Selector@ for @setJObject:withEnv:@
setJObject_withEnvSelector :: Selector '[Ptr (), RawId] ()
setJObject_withEnvSelector = mkSelector "setJObject:withEnv:"

-- | @Selector@ for @jObjectWithEnv:@
jObjectWithEnvSelector :: Selector '[RawId] (Ptr ())
jObjectWithEnvSelector = mkSelector "jObjectWithEnv:"

-- | @Selector@ for @jObject@
jObjectSelector :: Selector '[] (Ptr ())
jObjectSelector = mkSelector "jObject"

