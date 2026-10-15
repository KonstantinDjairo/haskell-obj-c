{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRThermostatClusterThermostatScheduleTransition@.
module ObjC.Matter.MTRThermostatClusterThermostatScheduleTransition
  ( MTRThermostatClusterThermostatScheduleTransition
  , IsMTRThermostatClusterThermostatScheduleTransition(..)
  , init_
  , copyWithZone
  , transitionTime
  , setTransitionTime
  , heatSetpoint
  , setHeatSetpoint
  , coolSetpoint
  , setCoolSetpoint
  , coolSetpointSelector
  , copyWithZoneSelector
  , heatSetpointSelector
  , initSelector
  , setCoolSetpointSelector
  , setHeatSetpointSelector
  , setTransitionTimeSelector
  , transitionTimeSelector


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
init_ :: IsMTRThermostatClusterThermostatScheduleTransition mtrThermostatClusterThermostatScheduleTransition => mtrThermostatClusterThermostatScheduleTransition -> IO (Id MTRThermostatClusterThermostatScheduleTransition)
init_ mtrThermostatClusterThermostatScheduleTransition =
  sendOwnedMessage mtrThermostatClusterThermostatScheduleTransition initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRThermostatClusterThermostatScheduleTransition mtrThermostatClusterThermostatScheduleTransition => mtrThermostatClusterThermostatScheduleTransition -> Ptr () -> IO RawId
copyWithZone mtrThermostatClusterThermostatScheduleTransition zone =
  sendOwnedMessage mtrThermostatClusterThermostatScheduleTransition copyWithZoneSelector zone

-- | @- transitionTime@
transitionTime :: IsMTRThermostatClusterThermostatScheduleTransition mtrThermostatClusterThermostatScheduleTransition => mtrThermostatClusterThermostatScheduleTransition -> IO (Id NSNumber)
transitionTime mtrThermostatClusterThermostatScheduleTransition =
  sendMessage mtrThermostatClusterThermostatScheduleTransition transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRThermostatClusterThermostatScheduleTransition mtrThermostatClusterThermostatScheduleTransition, IsNSNumber value) => mtrThermostatClusterThermostatScheduleTransition -> value -> IO ()
setTransitionTime mtrThermostatClusterThermostatScheduleTransition value =
  sendMessage mtrThermostatClusterThermostatScheduleTransition setTransitionTimeSelector (toNSNumber value)

-- | @- heatSetpoint@
heatSetpoint :: IsMTRThermostatClusterThermostatScheduleTransition mtrThermostatClusterThermostatScheduleTransition => mtrThermostatClusterThermostatScheduleTransition -> IO (Id NSNumber)
heatSetpoint mtrThermostatClusterThermostatScheduleTransition =
  sendMessage mtrThermostatClusterThermostatScheduleTransition heatSetpointSelector

-- | @- setHeatSetpoint:@
setHeatSetpoint :: (IsMTRThermostatClusterThermostatScheduleTransition mtrThermostatClusterThermostatScheduleTransition, IsNSNumber value) => mtrThermostatClusterThermostatScheduleTransition -> value -> IO ()
setHeatSetpoint mtrThermostatClusterThermostatScheduleTransition value =
  sendMessage mtrThermostatClusterThermostatScheduleTransition setHeatSetpointSelector (toNSNumber value)

-- | @- coolSetpoint@
coolSetpoint :: IsMTRThermostatClusterThermostatScheduleTransition mtrThermostatClusterThermostatScheduleTransition => mtrThermostatClusterThermostatScheduleTransition -> IO (Id NSNumber)
coolSetpoint mtrThermostatClusterThermostatScheduleTransition =
  sendMessage mtrThermostatClusterThermostatScheduleTransition coolSetpointSelector

-- | @- setCoolSetpoint:@
setCoolSetpoint :: (IsMTRThermostatClusterThermostatScheduleTransition mtrThermostatClusterThermostatScheduleTransition, IsNSNumber value) => mtrThermostatClusterThermostatScheduleTransition -> value -> IO ()
setCoolSetpoint mtrThermostatClusterThermostatScheduleTransition value =
  sendMessage mtrThermostatClusterThermostatScheduleTransition setCoolSetpointSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRThermostatClusterThermostatScheduleTransition)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @transitionTime@
transitionTimeSelector :: Selector '[] (Id NSNumber)
transitionTimeSelector = mkSelector "transitionTime"

-- | @Selector@ for @setTransitionTime:@
setTransitionTimeSelector :: Selector '[Id NSNumber] ()
setTransitionTimeSelector = mkSelector "setTransitionTime:"

-- | @Selector@ for @heatSetpoint@
heatSetpointSelector :: Selector '[] (Id NSNumber)
heatSetpointSelector = mkSelector "heatSetpoint"

-- | @Selector@ for @setHeatSetpoint:@
setHeatSetpointSelector :: Selector '[Id NSNumber] ()
setHeatSetpointSelector = mkSelector "setHeatSetpoint:"

-- | @Selector@ for @coolSetpoint@
coolSetpointSelector :: Selector '[] (Id NSNumber)
coolSetpointSelector = mkSelector "coolSetpoint"

-- | @Selector@ for @setCoolSetpoint:@
setCoolSetpointSelector :: Selector '[Id NSNumber] ()
setCoolSetpointSelector = mkSelector "setCoolSetpoint:"

