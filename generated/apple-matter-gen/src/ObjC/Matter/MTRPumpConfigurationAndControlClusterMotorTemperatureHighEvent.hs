{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent
  ( MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent
  , IsMTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent mtrPumpConfigurationAndControlClusterMotorTemperatureHighEvent => mtrPumpConfigurationAndControlClusterMotorTemperatureHighEvent -> IO (Id MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent)
init_ mtrPumpConfigurationAndControlClusterMotorTemperatureHighEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterMotorTemperatureHighEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent mtrPumpConfigurationAndControlClusterMotorTemperatureHighEvent => mtrPumpConfigurationAndControlClusterMotorTemperatureHighEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterMotorTemperatureHighEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterMotorTemperatureHighEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterMotorTemperatureHighEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

