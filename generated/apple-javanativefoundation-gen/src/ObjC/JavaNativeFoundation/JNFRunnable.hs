{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @JNFRunnable@.
module ObjC.JavaNativeFoundation.JNFRunnable
  ( JNFRunnable
  , IsJNFRunnable(..)
  , invocationWithRunnable_withEnv
  , blockWithRunnable_withEnv
  , blockWithRunnable_withEnvSelector
  , invocationWithRunnable_withEnvSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.JavaNativeFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ invocationWithRunnable:withEnv:@
invocationWithRunnable_withEnv :: Ptr () -> RawId -> IO (Id NSInvocation)
invocationWithRunnable_withEnv runnable env =
  do
    cls' <- getRequiredClass "JNFRunnable"
    sendClassMessage cls' invocationWithRunnable_withEnvSelector runnable env

-- | @+ blockWithRunnable:withEnv:@
blockWithRunnable_withEnv :: Ptr () -> RawId -> IO (Ptr ())
blockWithRunnable_withEnv runnable env =
  do
    cls' <- getRequiredClass "JNFRunnable"
    sendClassMessage cls' blockWithRunnable_withEnvSelector runnable env

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @invocationWithRunnable:withEnv:@
invocationWithRunnable_withEnvSelector :: Selector '[Ptr (), RawId] (Id NSInvocation)
invocationWithRunnable_withEnvSelector = mkSelector "invocationWithRunnable:withEnv:"

-- | @Selector@ for @blockWithRunnable:withEnv:@
blockWithRunnable_withEnvSelector :: Selector '[Ptr (), RawId] (Ptr ())
blockWithRunnable_withEnvSelector = mkSelector "blockWithRunnable:withEnv:"

