{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPowerSourceClusterBatFaultChangeType@.
module ObjC.Matter.MTRPowerSourceClusterBatFaultChangeType
  ( MTRPowerSourceClusterBatFaultChangeType
  , IsMTRPowerSourceClusterBatFaultChangeType(..)
  , init_
  , copyWithZone
  , current
  , setCurrent
  , previous
  , setPrevious
  , copyWithZoneSelector
  , currentSelector
  , initSelector
  , previousSelector
  , setCurrentSelector
  , setPreviousSelector


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
init_ :: IsMTRPowerSourceClusterBatFaultChangeType mtrPowerSourceClusterBatFaultChangeType => mtrPowerSourceClusterBatFaultChangeType -> IO (Id MTRPowerSourceClusterBatFaultChangeType)
init_ mtrPowerSourceClusterBatFaultChangeType =
  sendOwnedMessage mtrPowerSourceClusterBatFaultChangeType initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPowerSourceClusterBatFaultChangeType mtrPowerSourceClusterBatFaultChangeType => mtrPowerSourceClusterBatFaultChangeType -> Ptr () -> IO RawId
copyWithZone mtrPowerSourceClusterBatFaultChangeType zone =
  sendOwnedMessage mtrPowerSourceClusterBatFaultChangeType copyWithZoneSelector zone

-- | @- current@
current :: IsMTRPowerSourceClusterBatFaultChangeType mtrPowerSourceClusterBatFaultChangeType => mtrPowerSourceClusterBatFaultChangeType -> IO (Id NSArray)
current mtrPowerSourceClusterBatFaultChangeType =
  sendMessage mtrPowerSourceClusterBatFaultChangeType currentSelector

-- | @- setCurrent:@
setCurrent :: (IsMTRPowerSourceClusterBatFaultChangeType mtrPowerSourceClusterBatFaultChangeType, IsNSArray value) => mtrPowerSourceClusterBatFaultChangeType -> value -> IO ()
setCurrent mtrPowerSourceClusterBatFaultChangeType value =
  sendMessage mtrPowerSourceClusterBatFaultChangeType setCurrentSelector (toNSArray value)

-- | @- previous@
previous :: IsMTRPowerSourceClusterBatFaultChangeType mtrPowerSourceClusterBatFaultChangeType => mtrPowerSourceClusterBatFaultChangeType -> IO (Id NSArray)
previous mtrPowerSourceClusterBatFaultChangeType =
  sendMessage mtrPowerSourceClusterBatFaultChangeType previousSelector

-- | @- setPrevious:@
setPrevious :: (IsMTRPowerSourceClusterBatFaultChangeType mtrPowerSourceClusterBatFaultChangeType, IsNSArray value) => mtrPowerSourceClusterBatFaultChangeType -> value -> IO ()
setPrevious mtrPowerSourceClusterBatFaultChangeType value =
  sendMessage mtrPowerSourceClusterBatFaultChangeType setPreviousSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPowerSourceClusterBatFaultChangeType)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @current@
currentSelector :: Selector '[] (Id NSArray)
currentSelector = mkSelector "current"

-- | @Selector@ for @setCurrent:@
setCurrentSelector :: Selector '[Id NSArray] ()
setCurrentSelector = mkSelector "setCurrent:"

-- | @Selector@ for @previous@
previousSelector :: Selector '[] (Id NSArray)
previousSelector = mkSelector "previous"

-- | @Selector@ for @setPrevious:@
setPreviousSelector :: Selector '[Id NSArray] ()
setPreviousSelector = mkSelector "setPrevious:"

