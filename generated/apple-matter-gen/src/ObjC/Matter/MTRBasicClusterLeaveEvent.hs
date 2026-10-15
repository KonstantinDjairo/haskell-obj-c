{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBasicClusterLeaveEvent@.
module ObjC.Matter.MTRBasicClusterLeaveEvent
  ( MTRBasicClusterLeaveEvent
  , IsMTRBasicClusterLeaveEvent(..)
  , init_
  , copyWithZone
  , fabricIndex
  , setFabricIndex
  , copyWithZoneSelector
  , fabricIndexSelector
  , initSelector
  , setFabricIndexSelector


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
init_ :: IsMTRBasicClusterLeaveEvent mtrBasicClusterLeaveEvent => mtrBasicClusterLeaveEvent -> IO (Id MTRBasicClusterLeaveEvent)
init_ mtrBasicClusterLeaveEvent =
  sendOwnedMessage mtrBasicClusterLeaveEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBasicClusterLeaveEvent mtrBasicClusterLeaveEvent => mtrBasicClusterLeaveEvent -> Ptr () -> IO RawId
copyWithZone mtrBasicClusterLeaveEvent zone =
  sendOwnedMessage mtrBasicClusterLeaveEvent copyWithZoneSelector zone

-- | @- fabricIndex@
fabricIndex :: IsMTRBasicClusterLeaveEvent mtrBasicClusterLeaveEvent => mtrBasicClusterLeaveEvent -> IO (Id NSNumber)
fabricIndex mtrBasicClusterLeaveEvent =
  sendMessage mtrBasicClusterLeaveEvent fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTRBasicClusterLeaveEvent mtrBasicClusterLeaveEvent, IsNSNumber value) => mtrBasicClusterLeaveEvent -> value -> IO ()
setFabricIndex mtrBasicClusterLeaveEvent value =
  sendMessage mtrBasicClusterLeaveEvent setFabricIndexSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBasicClusterLeaveEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @fabricIndex@
fabricIndexSelector :: Selector '[] (Id NSNumber)
fabricIndexSelector = mkSelector "fabricIndex"

-- | @Selector@ for @setFabricIndex:@
setFabricIndexSelector :: Selector '[Id NSNumber] ()
setFabricIndexSelector = mkSelector "setFabricIndex:"

