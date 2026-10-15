{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @JNFRunLoop@.
module ObjC.JavaNativeFoundation.JNFRunLoop
  ( JNFRunLoop
  , IsJNFRunLoop(..)
  , javaRunLoopMode
  , performOnMainThread_on_withObject_waitUntilDone
  , performOnMainThreadWaiting_withBlock
  , javaRunLoopModeSelector
  , performOnMainThreadWaiting_withBlockSelector
  , performOnMainThread_on_withObject_waitUntilDoneSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.JavaNativeFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ javaRunLoopMode@
javaRunLoopMode :: IO (Id NSString)
javaRunLoopMode  =
  do
    cls' <- getRequiredClass "JNFRunLoop"
    sendClassMessage cls' javaRunLoopModeSelector

-- | @+ performOnMainThread:on:withObject:waitUntilDone:@
performOnMainThread_on_withObject_waitUntilDone :: Sel -> RawId -> RawId -> Bool -> IO ()
performOnMainThread_on_withObject_waitUntilDone aSelector target arg wait =
  do
    cls' <- getRequiredClass "JNFRunLoop"
    sendClassMessage cls' performOnMainThread_on_withObject_waitUntilDoneSelector aSelector target arg wait

-- | @+ performOnMainThreadWaiting:withBlock:@
performOnMainThreadWaiting_withBlock :: Bool -> Ptr () -> IO ()
performOnMainThreadWaiting_withBlock waitUntilDone block =
  do
    cls' <- getRequiredClass "JNFRunLoop"
    sendClassMessage cls' performOnMainThreadWaiting_withBlockSelector waitUntilDone block

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @javaRunLoopMode@
javaRunLoopModeSelector :: Selector '[] (Id NSString)
javaRunLoopModeSelector = mkSelector "javaRunLoopMode"

-- | @Selector@ for @performOnMainThread:on:withObject:waitUntilDone:@
performOnMainThread_on_withObject_waitUntilDoneSelector :: Selector '[Sel, RawId, RawId, Bool] ()
performOnMainThread_on_withObject_waitUntilDoneSelector = mkSelector "performOnMainThread:on:withObject:waitUntilDone:"

-- | @Selector@ for @performOnMainThreadWaiting:withBlock:@
performOnMainThreadWaiting_withBlockSelector :: Selector '[Bool, Ptr ()] ()
performOnMainThreadWaiting_withBlockSelector = mkSelector "performOnMainThreadWaiting:withBlock:"

