{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterSystemPressureHighEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterSystemPressureHighEvent
  ( MTRPumpConfigurationAndControlClusterSystemPressureHighEvent
  , IsMTRPumpConfigurationAndControlClusterSystemPressureHighEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterSystemPressureHighEvent mtrPumpConfigurationAndControlClusterSystemPressureHighEvent => mtrPumpConfigurationAndControlClusterSystemPressureHighEvent -> IO (Id MTRPumpConfigurationAndControlClusterSystemPressureHighEvent)
init_ mtrPumpConfigurationAndControlClusterSystemPressureHighEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSystemPressureHighEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterSystemPressureHighEvent mtrPumpConfigurationAndControlClusterSystemPressureHighEvent => mtrPumpConfigurationAndControlClusterSystemPressureHighEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterSystemPressureHighEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSystemPressureHighEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterSystemPressureHighEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

