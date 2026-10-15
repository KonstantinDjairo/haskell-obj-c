{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterLeakageEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterLeakageEvent
  ( MTRPumpConfigurationAndControlClusterLeakageEvent
  , IsMTRPumpConfigurationAndControlClusterLeakageEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterLeakageEvent mtrPumpConfigurationAndControlClusterLeakageEvent => mtrPumpConfigurationAndControlClusterLeakageEvent -> IO (Id MTRPumpConfigurationAndControlClusterLeakageEvent)
init_ mtrPumpConfigurationAndControlClusterLeakageEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterLeakageEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterLeakageEvent mtrPumpConfigurationAndControlClusterLeakageEvent => mtrPumpConfigurationAndControlClusterLeakageEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterLeakageEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterLeakageEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterLeakageEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

