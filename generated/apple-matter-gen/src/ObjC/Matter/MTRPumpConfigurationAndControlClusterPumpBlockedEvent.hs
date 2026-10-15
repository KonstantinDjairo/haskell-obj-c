{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRPumpConfigurationAndControlClusterPumpBlockedEvent@.
module ObjC.Matter.MTRPumpConfigurationAndControlClusterPumpBlockedEvent
  ( MTRPumpConfigurationAndControlClusterPumpBlockedEvent
  , IsMTRPumpConfigurationAndControlClusterPumpBlockedEvent(..)
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
init_ :: IsMTRPumpConfigurationAndControlClusterPumpBlockedEvent mtrPumpConfigurationAndControlClusterPumpBlockedEvent => mtrPumpConfigurationAndControlClusterPumpBlockedEvent -> IO (Id MTRPumpConfigurationAndControlClusterPumpBlockedEvent)
init_ mtrPumpConfigurationAndControlClusterPumpBlockedEvent =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterPumpBlockedEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRPumpConfigurationAndControlClusterPumpBlockedEvent mtrPumpConfigurationAndControlClusterPumpBlockedEvent => mtrPumpConfigurationAndControlClusterPumpBlockedEvent -> Ptr () -> IO RawId
copyWithZone mtrPumpConfigurationAndControlClusterPumpBlockedEvent zone =
  sendOwnedMessage mtrPumpConfigurationAndControlClusterPumpBlockedEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRPumpConfigurationAndControlClusterPumpBlockedEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

