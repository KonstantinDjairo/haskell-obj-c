{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRSwitchClusterSwitchLatchedEvent@.
module ObjC.Matter.MTRSwitchClusterSwitchLatchedEvent
  ( MTRSwitchClusterSwitchLatchedEvent
  , IsMTRSwitchClusterSwitchLatchedEvent(..)
  , init_
  , copyWithZone
  , newPosition
  , setNewPosition
  , copyWithZoneSelector
  , initSelector
  , newPositionSelector
  , setNewPositionSelector


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
init_ :: IsMTRSwitchClusterSwitchLatchedEvent mtrSwitchClusterSwitchLatchedEvent => mtrSwitchClusterSwitchLatchedEvent -> IO (Id MTRSwitchClusterSwitchLatchedEvent)
init_ mtrSwitchClusterSwitchLatchedEvent =
  sendOwnedMessage mtrSwitchClusterSwitchLatchedEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRSwitchClusterSwitchLatchedEvent mtrSwitchClusterSwitchLatchedEvent => mtrSwitchClusterSwitchLatchedEvent -> Ptr () -> IO RawId
copyWithZone mtrSwitchClusterSwitchLatchedEvent zone =
  sendOwnedMessage mtrSwitchClusterSwitchLatchedEvent copyWithZoneSelector zone

-- | @- newPosition@
newPosition :: IsMTRSwitchClusterSwitchLatchedEvent mtrSwitchClusterSwitchLatchedEvent => mtrSwitchClusterSwitchLatchedEvent -> IO (Id NSNumber)
newPosition mtrSwitchClusterSwitchLatchedEvent =
  sendOwnedMessage mtrSwitchClusterSwitchLatchedEvent newPositionSelector

-- | @- setNewPosition:@
setNewPosition :: (IsMTRSwitchClusterSwitchLatchedEvent mtrSwitchClusterSwitchLatchedEvent, IsNSNumber value) => mtrSwitchClusterSwitchLatchedEvent -> value -> IO ()
setNewPosition mtrSwitchClusterSwitchLatchedEvent value =
  sendMessage mtrSwitchClusterSwitchLatchedEvent setNewPositionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRSwitchClusterSwitchLatchedEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @newPosition@
newPositionSelector :: Selector '[] (Id NSNumber)
newPositionSelector = mkSelector "newPosition"

-- | @Selector@ for @setNewPosition:@
setNewPositionSelector :: Selector '[Id NSNumber] ()
setNewPositionSelector = mkSelector "setNewPosition:"

