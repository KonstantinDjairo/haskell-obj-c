{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRSwitchClusterLongPressEvent@.
module ObjC.Matter.MTRSwitchClusterLongPressEvent
  ( MTRSwitchClusterLongPressEvent
  , IsMTRSwitchClusterLongPressEvent(..)
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
init_ :: IsMTRSwitchClusterLongPressEvent mtrSwitchClusterLongPressEvent => mtrSwitchClusterLongPressEvent -> IO (Id MTRSwitchClusterLongPressEvent)
init_ mtrSwitchClusterLongPressEvent =
  sendOwnedMessage mtrSwitchClusterLongPressEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRSwitchClusterLongPressEvent mtrSwitchClusterLongPressEvent => mtrSwitchClusterLongPressEvent -> Ptr () -> IO RawId
copyWithZone mtrSwitchClusterLongPressEvent zone =
  sendOwnedMessage mtrSwitchClusterLongPressEvent copyWithZoneSelector zone

-- | @- newPosition@
newPosition :: IsMTRSwitchClusterLongPressEvent mtrSwitchClusterLongPressEvent => mtrSwitchClusterLongPressEvent -> IO (Id NSNumber)
newPosition mtrSwitchClusterLongPressEvent =
  sendOwnedMessage mtrSwitchClusterLongPressEvent newPositionSelector

-- | @- setNewPosition:@
setNewPosition :: (IsMTRSwitchClusterLongPressEvent mtrSwitchClusterLongPressEvent, IsNSNumber value) => mtrSwitchClusterLongPressEvent -> value -> IO ()
setNewPosition mtrSwitchClusterLongPressEvent value =
  sendMessage mtrSwitchClusterLongPressEvent setNewPositionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRSwitchClusterLongPressEvent)
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

