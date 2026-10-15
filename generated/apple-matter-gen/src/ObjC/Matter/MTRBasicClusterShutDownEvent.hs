{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBasicClusterShutDownEvent@.
module ObjC.Matter.MTRBasicClusterShutDownEvent
  ( MTRBasicClusterShutDownEvent
  , IsMTRBasicClusterShutDownEvent(..)
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
init_ :: IsMTRBasicClusterShutDownEvent mtrBasicClusterShutDownEvent => mtrBasicClusterShutDownEvent -> IO (Id MTRBasicClusterShutDownEvent)
init_ mtrBasicClusterShutDownEvent =
  sendOwnedMessage mtrBasicClusterShutDownEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBasicClusterShutDownEvent mtrBasicClusterShutDownEvent => mtrBasicClusterShutDownEvent -> Ptr () -> IO RawId
copyWithZone mtrBasicClusterShutDownEvent zone =
  sendOwnedMessage mtrBasicClusterShutDownEvent copyWithZoneSelector zone

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBasicClusterShutDownEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

