{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @JNFWeakJObjectWrapper@.
module ObjC.JavaNativeFoundation.JNFWeakJObjectWrapper
  ( JNFWeakJObjectWrapper
  , IsJNFWeakJObjectWrapper(..)
  , wrapperWithJObject_withEnv
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
wrapperWithJObject_withEnv :: Ptr () -> RawId -> IO (Id JNFWeakJObjectWrapper)
wrapperWithJObject_withEnv jObjectIn env =
  do
    cls' <- getRequiredClass "JNFWeakJObjectWrapper"
    sendClassMessage cls' wrapperWithJObject_withEnvSelector jObjectIn env

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @wrapperWithJObject:withEnv:@
wrapperWithJObject_withEnvSelector :: Selector '[Ptr (), RawId] (Id JNFWeakJObjectWrapper)
wrapperWithJObject_withEnvSelector = mkSelector "wrapperWithJObject:withEnv:"

