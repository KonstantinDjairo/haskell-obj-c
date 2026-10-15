{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterGeneralFaultEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterGeneralFaultEvent
  ( MTRPumpConfigurationAndControlClusterGeneralFaultEvent
  , IsMTRPumpConfigurationAndControlClusterGeneralFaultEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterGeneralFaultEvent mtrPumpConfigurationAndControlClusterGeneralFaultEvent => mtrPumpConfigurationAndControlClusterGeneralFaultEvent -> IO (Id MTRPumpConfigurationAndControlClusterGeneralFaultEvent)
init_ mtrPumpConfigurationAndControlClusterGeneralFaultEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterGeneralFaultEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterGeneralFaultEvent mtrPumpConfigurationAndControlClusterGeneralFaultEvent => mtrPumpConfigurationAndControlClusterGeneralFaultEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterGeneralFaultEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterGeneralFaultEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterGeneralFaultEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

