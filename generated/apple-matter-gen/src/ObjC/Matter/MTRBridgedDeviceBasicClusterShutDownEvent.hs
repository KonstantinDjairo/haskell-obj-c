{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBridgedDeviceBasicClusterShutDownEvent@.
module ObjC.Matter.MTRBridgedDeviceBasicClusterShutDownEvent
  ( MTRBridgedDeviceBasicClusterShutDownEvent
  , IsMTRBridgedDeviceBasicClusterShutDownEvent(..)
  , init_
  , copyWithZone
  , copyWithZoneSelector
  , initSelector


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
init_ :: IsMTRBridgedDeviceBasicClusterShutDownEvent mtrBridgedDeviceBasicClusterShutDownEvent => mtrBridgedDeviceBasicClusterShutDownEvent -> IO (Id MTRBridgedDeviceBasicClusterShutDownEvent)
init_ mtrBridgedDeviceBasicClusterShutDownEvent =
  sendOwnedMessage mtrBridgedDeviceBasicClusterShutDownEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBridgedDeviceBasicClusterShutDownEvent mtrBridgedDeviceBasicClusterShutDownEvent => mtrBridgedDeviceBasicClusterShutDownEvent -> Ptr () -> IO RawId
copyWithZone mtrBridgedDeviceBasicClusterShutDownEvent zone =
  sendOwnedMessage mtrBridgedDeviceBasicClusterShutDownEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBridgedDeviceBasicClusterShutDownEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

