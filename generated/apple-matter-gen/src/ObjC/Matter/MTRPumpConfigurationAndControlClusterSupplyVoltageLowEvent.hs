{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent
  ( MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent
  , IsMTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent mtrPumpConfigurationAndControlClusterSupplyVoltageLowEvent => mtrPumpConfigurationAndControlClusterSupplyVoltageLowEvent -> IO (Id MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent)
init_ mtrPumpConfigurationAndControlClusterSupplyVoltageLowEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSupplyVoltageLowEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent mtrPumpConfigurationAndControlClusterSupplyVoltageLowEvent => mtrPumpConfigurationAndControlClusterSupplyVoltageLowEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterSupplyVoltageLowEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSupplyVoltageLowEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterSupplyVoltageLowEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

