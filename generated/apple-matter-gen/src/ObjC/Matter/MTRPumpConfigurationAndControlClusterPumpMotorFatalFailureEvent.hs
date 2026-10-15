{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent
  ( MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent
  , IsMTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent mtrPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent => mtrPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent -> IO (Id MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent)
init_ mtrPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent mtrPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent => mtrPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterPumpMotorFatalFailureEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

