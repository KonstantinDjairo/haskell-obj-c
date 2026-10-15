{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent
  ( MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent
  , IsMTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent mtrPumpConfigurationAndControlClusterElectronicFatalFailureEvent => mtrPumpConfigurationAndControlClusterElectronicFatalFailureEvent -> IO (Id MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent)
init_ mtrPumpConfigurationAndControlClusterElectronicFatalFailureEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterElectronicFatalFailureEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent mtrPumpConfigurationAndControlClusterElectronicFatalFailureEvent => mtrPumpConfigurationAndControlClusterElectronicFatalFailureEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterElectronicFatalFailureEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterElectronicFatalFailureEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterElectronicFatalFailureEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

