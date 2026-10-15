{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent@.
module ObjC.Matter.MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent
  ( MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent
  , IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent(..)
  , init_
  , copyWithZone
  , previousState
  , setPreviousState
  , newState
  , setNewState
  , reason
  , setReason
  , targetSoftwareVersion
  , setTargetSoftwareVersion
  , copyWithZoneSelector
  , initSelector
  , newStateSelector
  , previousStateSelector
  , reasonSelector
  , setNewStateSelector
  , setPreviousStateSelector
  , setReasonSelector
  , setTargetSoftwareVersionSelector
  , targetSoftwareVersionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> IO (Id MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent)
init_ mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent zone =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent copyWithZoneSelector zone

-- | @- previousState@
previousState :: IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> IO (Id NSNumber)
previousState mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent previousStateSelector

-- | @- setPreviousState:@
setPreviousState :: (IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> value -> IO ()
setPreviousState mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent setPreviousStateSelector (toNSNumber value)

-- | @- newState@
newState :: IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> IO (Id NSNumber)
newState mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent newStateSelector

-- | @- setNewState:@
setNewState :: (IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> value -> IO ()
setNewState mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent setNewStateSelector (toNSNumber value)

-- | @- reason@
reason :: IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> IO (Id NSNumber)
reason mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent reasonSelector

-- | @- setReason:@
setReason :: (IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> value -> IO ()
setReason mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent setReasonSelector (toNSNumber value)

-- | @- targetSoftwareVersion@
targetSoftwareVersion :: IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> IO (Id NSNumber)
targetSoftwareVersion mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent targetSoftwareVersionSelector

-- | @- setTargetSoftwareVersion:@
setTargetSoftwareVersion :: (IsMTROtaSoftwareUpdateRequestorClusterStateTransitionEvent mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent -> value -> IO ()
setTargetSoftwareVersion mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterStateTransitionEvent setTargetSoftwareVersionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateRequestorClusterStateTransitionEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @previousState@
previousStateSelector :: Selector '[] (Id NSNumber)
previousStateSelector = mkSelector "previousState"

-- | @Selector@ for @setPreviousState:@
setPreviousStateSelector :: Selector '[Id NSNumber] ()
setPreviousStateSelector = mkSelector "setPreviousState:"

-- | @Selector@ for @newState@
newStateSelector :: Selector '[] (Id NSNumber)
newStateSelector = mkSelector "newState"

-- | @Selector@ for @setNewState:@
setNewStateSelector :: Selector '[Id NSNumber] ()
setNewStateSelector = mkSelector "setNewState:"

-- | @Selector@ for @reason@
reasonSelector :: Selector '[] (Id NSNumber)
reasonSelector = mkSelector "reason"

-- | @Selector@ for @setReason:@
setReasonSelector :: Selector '[Id NSNumber] ()
setReasonSelector = mkSelector "setReason:"

-- | @Selector@ for @targetSoftwareVersion@
targetSoftwareVersionSelector :: Selector '[] (Id NSNumber)
targetSoftwareVersionSelector = mkSelector "targetSoftwareVersion"

-- | @Selector@ for @setTargetSoftwareVersion:@
setTargetSoftwareVersionSelector :: Selector '[Id NSNumber] ()
setTargetSoftwareVersionSelector = mkSelector "setTargetSoftwareVersion:"

