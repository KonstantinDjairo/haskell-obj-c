{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestFabricScopedEventEvent@.
module ObjC.Matter.MTRTestClusterClusterTestFabricScopedEventEvent
  ( MTRTestClusterClusterTestFabricScopedEventEvent
  , IsMTRTestClusterClusterTestFabricScopedEventEvent(..)
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
init_ :: IsMTRTestClusterClusterTestFabricScopedEventEvent mtrTestClusterClusterTestFabricScopedEventEvent => mtrTestClusterClusterTestFabricScopedEventEvent -> IO (Id MTRTestClusterClusterTestFabricScopedEventEvent)
init_ mtrTestClusterClusterTestFabricScopedEventEvent =
  sendOwnedMessage mtrTestClusterClusterTestFabricScopedEventEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestFabricScopedEventEvent mtrTestClusterClusterTestFabricScopedEventEvent => mtrTestClusterClusterTestFabricScopedEventEvent -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestFabricScopedEventEvent zone =
  sendOwnedMessage mtrTestClusterClusterTestFabricScopedEventEvent copyWithZoneSelector zone

-- | @- fabricIndex@
fabricIndex :: IsMTRTestClusterClusterTestFabricScopedEventEvent mtrTestClusterClusterTestFabricScopedEventEvent => mtrTestClusterClusterTestFabricScopedEventEvent -> IO (Id NSNumber)
fabricIndex mtrTestClusterClusterTestFabricScopedEventEvent =
  sendMessage mtrTestClusterClusterTestFabricScopedEventEvent fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTRTestClusterClusterTestFabricScopedEventEvent mtrTestClusterClusterTestFabricScopedEventEvent, IsNSNumber value) => mtrTestClusterClusterTestFabricScopedEventEvent -> value -> IO ()
setFabricIndex mtrTestClusterClusterTestFabricScopedEventEvent value =
  sendMessage mtrTestClusterClusterTestFabricScopedEventEvent setFabricIndexSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestFabricScopedEventEvent)
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

