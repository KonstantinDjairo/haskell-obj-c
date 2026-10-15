{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRSwitchClusterInitialPressEvent@.
module ObjC.Matter.MTRSwitchClusterInitialPressEvent
  ( MTRSwitchClusterInitialPressEvent
  , IsMTRSwitchClusterInitialPressEvent(..)
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
init_ :: IsMTRSwitchClusterInitialPressEvent mtrSwitchClusterInitialPressEvent => mtrSwitchClusterInitialPressEvent -> IO (Id MTRSwitchClusterInitialPressEvent)
init_ mtrSwitchClusterInitialPressEvent =
  sendOwnedMessage mtrSwitchClusterInitialPressEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRSwitchClusterInitialPressEvent mtrSwitchClusterInitialPressEvent => mtrSwitchClusterInitialPressEvent -> Ptr () -> IO RawId
copyWithZone mtrSwitchClusterInitialPressEvent zone =
  sendOwnedMessage mtrSwitchClusterInitialPressEvent copyWithZoneSelector zone

-- | @- newPosition@
newPosition :: IsMTRSwitchClusterInitialPressEvent mtrSwitchClusterInitialPressEvent => mtrSwitchClusterInitialPressEvent -> IO (Id NSNumber)
newPosition mtrSwitchClusterInitialPressEvent =
  sendOwnedMessage mtrSwitchClusterInitialPressEvent newPositionSelector

-- | @- setNewPosition:@
setNewPosition :: (IsMTRSwitchClusterInitialPressEvent mtrSwitchClusterInitialPressEvent, IsNSNumber value) => mtrSwitchClusterInitialPressEvent -> value -> IO ()
setNewPosition mtrSwitchClusterInitialPressEvent value =
  sendMessage mtrSwitchClusterInitialPressEvent setNewPositionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRSwitchClusterInitialPressEvent)
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

