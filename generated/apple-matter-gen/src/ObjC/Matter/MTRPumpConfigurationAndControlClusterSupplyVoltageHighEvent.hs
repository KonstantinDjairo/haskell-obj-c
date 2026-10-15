{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent
  ( MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent
  , IsMTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent mtrPumpConfigurationAndControlClusterSupplyVoltageHighEvent => mtrPumpConfigurationAndControlClusterSupplyVoltageHighEvent -> IO (Id MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent)
init_ mtrPumpConfigurationAndControlClusterSupplyVoltageHighEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSupplyVoltageHighEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent mtrPumpConfigurationAndControlClusterSupplyVoltageHighEvent => mtrPumpConfigurationAndControlClusterSupplyVoltageHighEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterSupplyVoltageHighEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSupplyVoltageHighEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterSupplyVoltageHighEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

