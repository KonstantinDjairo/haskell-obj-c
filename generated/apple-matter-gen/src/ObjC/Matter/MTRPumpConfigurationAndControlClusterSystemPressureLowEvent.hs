{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterSystemPressureLowEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterSystemPressureLowEvent
  ( MTRPumpConfigurationAndControlClusterSystemPressureLowEvent
  , IsMTRPumpConfigurationAndControlClusterSystemPressureLowEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterSystemPressureLowEvent mtrPumpConfigurationAndControlClusterSystemPressureLowEvent => mtrPumpConfigurationAndControlClusterSystemPressureLowEvent -> IO (Id MTRPumpConfigurationAndControlClusterSystemPressureLowEvent)
init_ mtrPumpConfigurationAndControlClusterSystemPressureLowEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSystemPressureLowEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterSystemPressureLowEvent mtrPumpConfigurationAndControlClusterSystemPressureLowEvent => mtrPumpConfigurationAndControlClusterSystemPressureLowEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterSystemPressureLowEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterSystemPressureLowEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterSystemPressureLowEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

