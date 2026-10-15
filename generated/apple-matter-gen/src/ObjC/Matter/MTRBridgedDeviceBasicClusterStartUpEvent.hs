{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBridgedDeviceBasicClusterStartUpEvent@.
module ObjC.Matter.MTRBridgedDeviceBasicClusterStartUpEvent
  ( MTRBridgedDeviceBasicClusterStartUpEvent
  , IsMTRBridgedDeviceBasicClusterStartUpEvent(..)
  , init_
  , copyWithZone
  , softwareVersion
  , setSoftwareVersion
  , copyWithZoneSelector
  , initSelector
  , setSoftwareVersionSelector
  , softwareVersionSelector


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
init_ :: IsMTRBridgedDeviceBasicClusterStartUpEvent mtrBridgedDeviceBasicClusterStartUpEvent => mtrBridgedDeviceBasicClusterStartUpEvent -> IO (Id MTRBridgedDeviceBasicClusterStartUpEvent)
init_ mtrBridgedDeviceBasicClusterStartUpEvent =
  sendOwnedMessage mtrBridgedDeviceBasicClusterStartUpEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBridgedDeviceBasicClusterStartUpEvent mtrBridgedDeviceBasicClusterStartUpEvent => mtrBridgedDeviceBasicClusterStartUpEvent -> Ptr () -> IO RawId
copyWithZone mtrBridgedDeviceBasicClusterStartUpEvent zone =
  sendOwnedMessage mtrBridgedDeviceBasicClusterStartUpEvent copyWithZoneSelector zone

-- | @- softwareVersion@
softwareVersion :: IsMTRBridgedDeviceBasicClusterStartUpEvent mtrBridgedDeviceBasicClusterStartUpEvent => mtrBridgedDeviceBasicClusterStartUpEvent -> IO (Id NSNumber)
softwareVersion mtrBridgedDeviceBasicClusterStartUpEvent =
  sendMessage mtrBridgedDeviceBasicClusterStartUpEvent softwareVersionSelector

-- | @- setSoftwareVersion:@
setSoftwareVersion :: (IsMTRBridgedDeviceBasicClusterStartUpEvent mtrBridgedDeviceBasicClusterStartUpEvent, IsNSNumber value) => mtrBridgedDeviceBasicClusterStartUpEvent -> value -> IO ()
setSoftwareVersion mtrBridgedDeviceBasicClusterStartUpEvent value =
  sendMessage mtrBridgedDeviceBasicClusterStartUpEvent setSoftwareVersionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBridgedDeviceBasicClusterStartUpEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @softwareVersion@
softwareVersionSelector :: Selector '[] (Id NSNumber)
softwareVersionSelector = mkSelector "softwareVersion"

-- | @Selector@ for @setSoftwareVersion:@
setSoftwareVersionSelector :: Selector '[Id NSNumber] ()
setSoftwareVersionSelector = mkSelector "setSoftwareVersion:"

