{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterTurbineOperationEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterTurbineOperationEvent
  ( MTRPumpConfigurationAndControlClusterTurbineOperationEvent
  , IsMTRPumpConfigurationAndControlClusterTurbineOperationEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterTurbineOperationEvent mtrPumpConfigurationAndControlClusterTurbineOperationEvent => mtrPumpConfigurationAndControlClusterTurbineOperationEvent -> IO (Id MTRPumpConfigurationAndControlClusterTurbineOperationEvent)
init_ mtrPumpConfigurationAndControlClusterTurbineOperationEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterTurbineOperationEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterTurbineOperationEvent mtrPumpConfigurationAndControlClusterTurbineOperationEvent => mtrPumpConfigurationAndControlClusterTurbineOperationEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterTurbineOperationEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterTurbineOperationEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterTurbineOperationEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

