{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRActionsClusterStateChangedEvent@.
module ObjC.Matter.MTRActionsClusterStateChangedEvent
  ( MTRActionsClusterStateChangedEvent
  , IsMTRActionsClusterStateChangedEvent(..)
  , init_
  , copyWithZone
  , actionID
  , setActionID
  , invokeID
  , setInvokeID
  , newState
  , setNewState
  , actionIDSelector
  , copyWithZoneSelector
  , initSelector
  , invokeIDSelector
  , newStateSelector
  , setActionIDSelector
  , setInvokeIDSelector
  , setNewStateSelector


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
init_ :: IsMTRActionsClusterStateChangedEvent mtrActionsClusterStateChangedEvent => mtrActionsClusterStateChangedEvent -> IO (Id MTRActionsClusterStateChangedEvent)
init_ mtrActionsClusterStateChangedEvent =
  sendOwnedMessage mtrActionsClusterStateChangedEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRActionsClusterStateChangedEvent mtrActionsClusterStateChangedEvent => mtrActionsClusterStateChangedEvent -> Ptr () -> IO RawId
copyWithZone mtrActionsClusterStateChangedEvent zone =
  sendOwnedMessage mtrActionsClusterStateChangedEvent copyWithZoneSelector zone

-- | @- actionID@
actionID :: IsMTRActionsClusterStateChangedEvent mtrActionsClusterStateChangedEvent => mtrActionsClusterStateChangedEvent -> IO (Id NSNumber)
actionID mtrActionsClusterStateChangedEvent =
  sendMessage mtrActionsClusterStateChangedEvent actionIDSelector

-- | @- setActionID:@
setActionID :: (IsMTRActionsClusterStateChangedEvent mtrActionsClusterStateChangedEvent, IsNSNumber value) => mtrActionsClusterStateChangedEvent -> value -> IO ()
setActionID mtrActionsClusterStateChangedEvent value =
  sendMessage mtrActionsClusterStateChangedEvent setActionIDSelector (toNSNumber value)

-- | @- invokeID@
invokeID :: IsMTRActionsClusterStateChangedEvent mtrActionsClusterStateChangedEvent => mtrActionsClusterStateChangedEvent -> IO (Id NSNumber)
invokeID mtrActionsClusterStateChangedEvent =
  sendMessage mtrActionsClusterStateChangedEvent invokeIDSelector

-- | @- setInvokeID:@
setInvokeID :: (IsMTRActionsClusterStateChangedEvent mtrActionsClusterStateChangedEvent, IsNSNumber value) => mtrActionsClusterStateChangedEvent -> value -> IO ()
setInvokeID mtrActionsClusterStateChangedEvent value =
  sendMessage mtrActionsClusterStateChangedEvent setInvokeIDSelector (toNSNumber value)

-- | @- newState@
newState :: IsMTRActionsClusterStateChangedEvent mtrActionsClusterStateChangedEvent => mtrActionsClusterStateChangedEvent -> IO (Id NSNumber)
newState mtrActionsClusterStateChangedEvent =
  sendOwnedMessage mtrActionsClusterStateChangedEvent newStateSelector

-- | @- setNewState:@
setNewState :: (IsMTRActionsClusterStateChangedEvent mtrActionsClusterStateChangedEvent, IsNSNumber value) => mtrActionsClusterStateChangedEvent -> value -> IO ()
setNewState mtrActionsClusterStateChangedEvent value =
  sendMessage mtrActionsClusterStateChangedEvent setNewStateSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRActionsClusterStateChangedEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @actionID@
actionIDSelector :: Selector '[] (Id NSNumber)
actionIDSelector = mkSelector "actionID"

-- | @Selector@ for @setActionID:@
setActionIDSelector :: Selector '[Id NSNumber] ()
setActionIDSelector = mkSelector "setActionID:"

-- | @Selector@ for @invokeID@
invokeIDSelector :: Selector '[] (Id NSNumber)
invokeIDSelector = mkSelector "invokeID"

-- | @Selector@ for @setInvokeID:@
setInvokeIDSelector :: Selector '[Id NSNumber] ()
setInvokeIDSelector = mkSelector "setInvokeID:"

-- | @Selector@ for @newState@
newStateSelector :: Selector '[] (Id NSNumber)
newStateSelector = mkSelector "newState"

-- | @Selector@ for @setNewState:@
setNewStateSelector :: Selector '[Id NSNumber] ()
setNewStateSelector = mkSelector "setNewState:"

