{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRSwitchClusterShortReleaseEvent@.
module ObjC.Matter.MTRSwitchClusterShortReleaseEvent
  ( MTRSwitchClusterShortReleaseEvent
  , IsMTRSwitchClusterShortReleaseEvent(..)
  , init_
  , copyWithZone
  , previousPosition
  , setPreviousPosition
  , copyWithZoneSelector
  , initSelector
  , previousPositionSelector
  , setPreviousPositionSelector


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
init_ :: IsMTRSwitchClusterShortReleaseEvent mtrSwitchClusterShortReleaseEvent => mtrSwitchClusterShortReleaseEvent -> IO (Id MTRSwitchClusterShortReleaseEvent)
init_ mtrSwitchClusterShortReleaseEvent =
  sendOwnedMessage mtrSwitchClusterShortReleaseEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRSwitchClusterShortReleaseEvent mtrSwitchClusterShortReleaseEvent => mtrSwitchClusterShortReleaseEvent -> Ptr () -> IO RawId
copyWithZone mtrSwitchClusterShortReleaseEvent zone =
  sendOwnedMessage mtrSwitchClusterShortReleaseEvent copyWithZoneSelector zone

-- | @- previousPosition@
previousPosition :: IsMTRSwitchClusterShortReleaseEvent mtrSwitchClusterShortReleaseEvent => mtrSwitchClusterShortReleaseEvent -> IO (Id NSNumber)
previousPosition mtrSwitchClusterShortReleaseEvent =
  sendMessage mtrSwitchClusterShortReleaseEvent previousPositionSelector

-- | @- setPreviousPosition:@
setPreviousPosition :: (IsMTRSwitchClusterShortReleaseEvent mtrSwitchClusterShortReleaseEvent, IsNSNumber value) => mtrSwitchClusterShortReleaseEvent -> value -> IO ()
setPreviousPosition mtrSwitchClusterShortReleaseEvent value =
  sendMessage mtrSwitchClusterShortReleaseEvent setPreviousPositionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRSwitchClusterShortReleaseEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @previousPosition@
previousPositionSelector :: Selector '[] (Id NSNumber)
previousPositionSelector = mkSelector "previousPosition"

-- | @Selector@ for @setPreviousPosition:@
setPreviousPositionSelector :: Selector '[Id NSNumber] ()
setPreviousPositionSelector = mkSelector "setPreviousPosition:"

