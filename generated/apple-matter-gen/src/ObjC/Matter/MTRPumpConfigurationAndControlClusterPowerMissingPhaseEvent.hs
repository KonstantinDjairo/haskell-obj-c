{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent
  ( MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent
  , IsMTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent mtrPumpConfigurationAndControlClusterPowerMissingPhaseEvent => mtrPumpConfigurationAndControlClusterPowerMissingPhaseEvent -> IO (Id MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent)
init_ mtrPumpConfigurationAndControlClusterPowerMissingPhaseEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterPowerMissingPhaseEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent mtrPumpConfigurationAndControlClusterPowerMissingPhaseEvent => mtrPumpConfigurationAndControlClusterPowerMissingPhaseEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterPowerMissingPhaseEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterPowerMissingPhaseEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterPowerMissingPhaseEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

