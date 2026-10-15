{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent
  ( MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent
  , IsMTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent mtrPumpConfigurationAndControlClusterElectronicTemperatureHighEvent => mtrPumpConfigurationAndControlClusterElectronicTemperatureHighEvent -> IO (Id MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent)
init_ mtrPumpConfigurationAndControlClusterElectronicTemperatureHighEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterElectronicTemperatureHighEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent mtrPumpConfigurationAndControlClusterElectronicTemperatureHighEvent => mtrPumpConfigurationAndControlClusterElectronicTemperatureHighEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterElectronicTemperatureHighEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterElectronicTemperatureHighEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterElectronicTemperatureHighEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

