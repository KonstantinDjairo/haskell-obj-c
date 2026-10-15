{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBridgedDeviceBasicClusterLeaveEvent@.
module ObjC.Matter.MTRBridgedDeviceBasicClusterLeaveEvent
  ( MTRBridgedDeviceBasicClusterLeaveEvent
  , IsMTRBridgedDeviceBasicClusterLeaveEvent(..)
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
init_ :: IsMTRBridgedDeviceBasicClusterLeaveEvent mtrBridgedDeviceBasicClusterLeaveEvent => mtrBridgedDeviceBasicClusterLeaveEvent -> IO (Id MTRBridgedDeviceBasicClusterLeaveEvent)
init_ mtrBridgedDeviceBasicClusterLeaveEvent =
  sendOwnedMessage mtrBridgedDeviceBasicClusterLeaveEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBridgedDeviceBasicClusterLeaveEvent mtrBridgedDeviceBasicClusterLeaveEvent => mtrBridgedDeviceBasicClusterLeaveEvent -> Ptr () -> IO RawId
copyWithZone mtrBridgedDeviceBasicClusterLeaveEvent zone =
  sendOwnedMessage mtrBridgedDeviceBasicClusterLeaveEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBridgedDeviceBasicClusterLeaveEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

