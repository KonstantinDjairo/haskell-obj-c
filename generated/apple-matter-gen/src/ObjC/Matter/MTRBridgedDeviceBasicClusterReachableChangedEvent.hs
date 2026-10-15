{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBridgedDeviceBasicClusterReachableChangedEvent@.
module ObjC.Matter.MTRBridgedDeviceBasicClusterReachableChangedEvent
  ( MTRBridgedDeviceBasicClusterReachableChangedEvent
  , IsMTRBridgedDeviceBasicClusterReachableChangedEvent(..)
  , init_
  , copyWithZone
  , reachableNewValue
  , setReachableNewValue
  , copyWithZoneSelector
  , initSelector
  , reachableNewValueSelector
  , setReachableNewValueSelector


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
init_ :: IsMTRBridgedDeviceBasicClusterReachableChangedEvent mtrBridgedDeviceBasicClusterReachableChangedEvent => mtrBridgedDeviceBasicClusterReachableChangedEvent -> IO (Id MTRBridgedDeviceBasicClusterReachableChangedEvent)
init_ mtrBridgedDeviceBasicClusterReachableChangedEvent =
  sendOwnedMessage mtrBridgedDeviceBasicClusterReachableChangedEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBridgedDeviceBasicClusterReachableChangedEvent mtrBridgedDeviceBasicClusterReachableChangedEvent => mtrBridgedDeviceBasicClusterReachableChangedEvent -> Ptr () -> IO RawId
copyWithZone mtrBridgedDeviceBasicClusterReachableChangedEvent zone =
  sendOwnedMessage mtrBridgedDeviceBasicClusterReachableChangedEvent copyWithZoneSelector zone

-- | @- reachableNewValue@
reachableNewValue :: IsMTRBridgedDeviceBasicClusterReachableChangedEvent mtrBridgedDeviceBasicClusterReachableChangedEvent => mtrBridgedDeviceBasicClusterReachableChangedEvent -> IO (Id NSNumber)
reachableNewValue mtrBridgedDeviceBasicClusterReachableChangedEvent =
  sendMessage mtrBridgedDeviceBasicClusterReachableChangedEvent reachableNewValueSelector

-- | @- setReachableNewValue:@
setReachableNewValue :: (IsMTRBridgedDeviceBasicClusterReachableChangedEvent mtrBridgedDeviceBasicClusterReachableChangedEvent, IsNSNumber value) => mtrBridgedDeviceBasicClusterReachableChangedEvent -> value -> IO ()
setReachableNewValue mtrBridgedDeviceBasicClusterReachableChangedEvent value =
  sendMessage mtrBridgedDeviceBasicClusterReachableChangedEvent setReachableNewValueSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBridgedDeviceBasicClusterReachableChangedEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @reachableNewValue@
reachableNewValueSelector :: Selector '[] (Id NSNumber)
reachableNewValueSelector = mkSelector "reachableNewValue"

-- | @Selector@ for @setReachableNewValue:@
setReachableNewValueSelector :: Selector '[Id NSNumber] ()
setReachableNewValueSelector = mkSelector "setReachableNewValue:"

