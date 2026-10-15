{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent
  ( MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent
  , IsMTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent mtrPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent => mtrPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent -> IO (Id MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent)
init_ mtrPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent mtrPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent => mtrPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterElectronicNonFatalFailureEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

