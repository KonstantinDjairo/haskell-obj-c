{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRSwitchClusterMultiPressCompleteEvent@.
module ObjC.Matter.MTRSwitchClusterMultiPressCompleteEvent
  ( MTRSwitchClusterMultiPressCompleteEvent
  , IsMTRSwitchClusterMultiPressCompleteEvent(..)
  , init_
  , copyWithZone
  , newPosition
  , setNewPosition
  , totalNumberOfPressesCounted
  , setTotalNumberOfPressesCounted
  , copyWithZoneSelector
  , initSelector
  , newPositionSelector
  , setNewPositionSelector
  , setTotalNumberOfPressesCountedSelector
  , totalNumberOfPressesCountedSelector


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
init_ :: IsMTRSwitchClusterMultiPressCompleteEvent mtrSwitchClusterMultiPressCompleteEvent => mtrSwitchClusterMultiPressCompleteEvent -> IO (Id MTRSwitchClusterMultiPressCompleteEvent)
init_ mtrSwitchClusterMultiPressCompleteEvent =
  sendOwnedMessage mtrSwitchClusterMultiPressCompleteEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRSwitchClusterMultiPressCompleteEvent mtrSwitchClusterMultiPressCompleteEvent => mtrSwitchClusterMultiPressCompleteEvent -> Ptr () -> IO RawId
copyWithZone mtrSwitchClusterMultiPressCompleteEvent zone =
  sendOwnedMessage mtrSwitchClusterMultiPressCompleteEvent copyWithZoneSelector zone

-- | @- newPosition@
newPosition :: IsMTRSwitchClusterMultiPressCompleteEvent mtrSwitchClusterMultiPressCompleteEvent => mtrSwitchClusterMultiPressCompleteEvent -> IO (Id NSNumber)
newPosition mtrSwitchClusterMultiPressCompleteEvent =
  sendOwnedMessage mtrSwitchClusterMultiPressCompleteEvent newPositionSelector

-- | @- setNewPosition:@
setNewPosition :: (IsMTRSwitchClusterMultiPressCompleteEvent mtrSwitchClusterMultiPressCompleteEvent, IsNSNumber value) => mtrSwitchClusterMultiPressCompleteEvent -> value -> IO ()
setNewPosition mtrSwitchClusterMultiPressCompleteEvent value =
  sendMessage mtrSwitchClusterMultiPressCompleteEvent setNewPositionSelector (toNSNumber value)

-- | @- totalNumberOfPressesCounted@
totalNumberOfPressesCounted :: IsMTRSwitchClusterMultiPressCompleteEvent mtrSwitchClusterMultiPressCompleteEvent => mtrSwitchClusterMultiPressCompleteEvent -> IO (Id NSNumber)
totalNumberOfPressesCounted mtrSwitchClusterMultiPressCompleteEvent =
  sendMessage mtrSwitchClusterMultiPressCompleteEvent totalNumberOfPressesCountedSelector

-- | @- setTotalNumberOfPressesCounted:@
setTotalNumberOfPressesCounted :: (IsMTRSwitchClusterMultiPressCompleteEvent mtrSwitchClusterMultiPressCompleteEvent, IsNSNumber value) => mtrSwitchClusterMultiPressCompleteEvent -> value -> IO ()
setTotalNumberOfPressesCounted mtrSwitchClusterMultiPressCompleteEvent value =
  sendMessage mtrSwitchClusterMultiPressCompleteEvent setTotalNumberOfPressesCountedSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRSwitchClusterMultiPressCompleteEvent)
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

-- | @Selector@ for @totalNumberOfPressesCounted@
totalNumberOfPressesCountedSelector :: Selector '[] (Id NSNumber)
totalNumberOfPressesCountedSelector = mkSelector "totalNumberOfPressesCounted"

-- | @Selector@ for @setTotalNumberOfPressesCounted:@
setTotalNumberOfPressesCountedSelector :: Selector '[Id NSNumber] ()
setTotalNumberOfPressesCountedSelector = mkSelector "setTotalNumberOfPressesCounted:"

