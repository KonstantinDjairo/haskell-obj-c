{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterDryRunningEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterDryRunningEvent
  ( MTRPumpConfigurationAndControlClusterDryRunningEvent
  , IsMTRPumpConfigurationAndControlClusterDryRunningEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterDryRunningEvent mtrPumpConfigurationAndControlClusterDryRunningEvent => mtrPumpConfigurationAndControlClusterDryRunningEvent -> IO (Id MTRPumpConfigurationAndControlClusterDryRunningEvent)
init_ mtrPumpConfigurationAndControlClusterDryRunningEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterDryRunningEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterDryRunningEvent mtrPumpConfigurationAndControlClusterDryRunningEvent => mtrPumpConfigurationAndControlClusterDryRunningEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterDryRunningEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterDryRunningEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterDryRunningEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

