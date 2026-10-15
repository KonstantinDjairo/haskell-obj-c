{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CKModifyBadgeOperation@.
module ObjC.CloudKit.CKModifyBadgeOperation
  ( CKModifyBadgeOperation
  , IsCKModifyBadgeOperation(..)
  , init_
  , initWithBadgeValue
  , badgeValue
  , setBadgeValue
  , modifyBadgeCompletionBlock
  , setModifyBadgeCompletionBlock
  , badgeValueSelector
  , initSelector
  , initWithBadgeValueSelector
  , modifyBadgeCompletionBlockSelector
  , setBadgeValueSelector
  , setModifyBadgeCompletionBlockSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CloudKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsCKModifyBadgeOperation ckModifyBadgeOperation => ckModifyBadgeOperation -> IO (Id CKModifyBadgeOperation)
init_ ckModifyBadgeOperation =
  sendOwnedMessage ckModifyBadgeOperation initSelector

-- | @- initWithBadgeValue:@
initWithBadgeValue :: IsCKModifyBadgeOperation ckModifyBadgeOperation => ckModifyBadgeOperation -> CULong -> IO (Id CKModifyBadgeOperation)
initWithBadgeValue ckModifyBadgeOperation badgeValue =
  sendOwnedMessage ckModifyBadgeOperation initWithBadgeValueSelector badgeValue

-- | @- badgeValue@
badgeValue :: IsCKModifyBadgeOperation ckModifyBadgeOperation => ckModifyBadgeOperation -> IO CULong
badgeValue ckModifyBadgeOperation =
  sendMessage ckModifyBadgeOperation badgeValueSelector

-- | @- setBadgeValue:@
setBadgeValue :: IsCKModifyBadgeOperation ckModifyBadgeOperation => ckModifyBadgeOperation -> CULong -> IO ()
setBadgeValue ckModifyBadgeOperation value =
  sendMessage ckModifyBadgeOperation setBadgeValueSelector value

-- | This block is called when the operation completes.
--
-- The
--
-- -[NSOperation completionBlock]
--
-- will also be called if both are set.  Each @CKOperation@ instance has a private serial queue. This queue is used for all callback block invocations.
--
-- ObjC selector: @- modifyBadgeCompletionBlock@
modifyBadgeCompletionBlock :: IsCKModifyBadgeOperation ckModifyBadgeOperation => ckModifyBadgeOperation -> IO (Ptr ())
modifyBadgeCompletionBlock ckModifyBadgeOperation =
  sendMessage ckModifyBadgeOperation modifyBadgeCompletionBlockSelector

-- | This block is called when the operation completes.
--
-- The
--
-- -[NSOperation completionBlock]
--
-- will also be called if both are set.  Each @CKOperation@ instance has a private serial queue. This queue is used for all callback block invocations.
--
-- ObjC selector: @- setModifyBadgeCompletionBlock:@
setModifyBadgeCompletionBlock :: IsCKModifyBadgeOperation ckModifyBadgeOperation => ckModifyBadgeOperation -> Ptr () -> IO ()
setModifyBadgeCompletionBlock ckModifyBadgeOperation value =
  sendMessage ckModifyBadgeOperation setModifyBadgeCompletionBlockSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CKModifyBadgeOperation)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithBadgeValue:@
initWithBadgeValueSelector :: Selector '[CULong] (Id CKModifyBadgeOperation)
initWithBadgeValueSelector = mkSelector "initWithBadgeValue:"

-- | @Selector@ for @badgeValue@
badgeValueSelector :: Selector '[] CULong
badgeValueSelector = mkSelector "badgeValue"

-- | @Selector@ for @setBadgeValue:@
setBadgeValueSelector :: Selector '[CULong] ()
setBadgeValueSelector = mkSelector "setBadgeValue:"

-- | @Selector@ for @modifyBadgeCompletionBlock@
modifyBadgeCompletionBlockSelector :: Selector '[] (Ptr ())
modifyBadgeCompletionBlockSelector = mkSelector "modifyBadgeCompletionBlock"

-- | @Selector@ for @setModifyBadgeCompletionBlock:@
setModifyBadgeCompletionBlockSelector :: Selector '[Ptr ()] ()
setModifyBadgeCompletionBlockSelector = mkSelector "setModifyBadgeCompletionBlock:"

