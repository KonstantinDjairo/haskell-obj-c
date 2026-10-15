{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterSensorFailureEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterSensorFailureEvent
  ( MTRPumpConfigurationAndControlClusterSensorFailureEvent
  , IsMTRPumpConfigurationAndControlClusterSensorFailureEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterSensorFailureEvent mtrPumpConfigurationAndControlClusterSensorFailureEvent => mtrPumpConfigurationAndControlClusterSensorFailureEvent -> IO (Id MTRPumpConfigurationAndControlClusterSensorFailureEvent)
init_ mtrPumpConfigurationAndControlClusterSensorFailureEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSensorFailureEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterSensorFailureEvent mtrPumpConfigurationAndControlClusterSensorFailureEvent => mtrPumpConfigurationAndControlClusterSensorFailureEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterSensorFailureEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSensorFailureEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterSensorFailureEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

