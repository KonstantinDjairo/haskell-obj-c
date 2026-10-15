{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterAirDetectionEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterAirDetectionEvent
  ( MTRPumpConfigurationAndControlClusterAirDetectionEvent
  , IsMTRPumpConfigurationAndControlClusterAirDetectionEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterAirDetectionEvent mtrPumpConfigurationAndControlClusterAirDetectionEvent => mtrPumpConfigurationAndControlClusterAirDetectionEvent -> IO (Id MTRPumpConfigurationAndControlClusterAirDetectionEvent)
init_ mtrPumpConfigurationAndControlClusterAirDetectionEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterAirDetectionEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterAirDetectionEvent mtrPumpConfigurationAndControlClusterAirDetectionEvent => mtrPumpConfigurationAndControlClusterAirDetectionEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterAirDetectionEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterAirDetectionEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterAirDetectionEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

