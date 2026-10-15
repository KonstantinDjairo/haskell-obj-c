{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBindingClusterTargetStruct@.
module ObjC.Matter.MTRBindingClusterTargetStruct
  ( MTRBindingClusterTargetStruct
  , IsMTRBindingClusterTargetStruct(..)
  , init_
  , copyWithZone
  , node
  , setNode
  , group
  , setGroup
  , endpoint
  , setEndpoint
  , cluster
  , setCluster
  , fabricIndex
  , setFabricIndex
  , clusterSelector
  , copyWithZoneSelector
  , endpointSelector
  , fabricIndexSelector
  , groupSelector
  , initSelector
  , nodeSelector
  , setClusterSelector
  , setEndpointSelector
  , setFabricIndexSelector
  , setGroupSelector
  , setNodeSelector


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
init_ :: IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct => mtrBindingClusterTargetStruct -> IO (Id MTRBindingClusterTargetStruct)
init_ mtrBindingClusterTargetStruct =
  sendOwnedMessage mtrBindingClusterTargetStruct initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct => mtrBindingClusterTargetStruct -> Ptr () -> IO RawId
copyWithZone mtrBindingClusterTargetStruct zone =
  sendOwnedMessage mtrBindingClusterTargetStruct copyWithZoneSelector zone

-- | @- node@
node :: IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct => mtrBindingClusterTargetStruct -> IO (Id NSNumber)
node mtrBindingClusterTargetStruct =
  sendMessage mtrBindingClusterTargetStruct nodeSelector

-- | @- setNode:@
setNode :: (IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct, IsNSNumber value) => mtrBindingClusterTargetStruct -> value -> IO ()
setNode mtrBindingClusterTargetStruct value =
  sendMessage mtrBindingClusterTargetStruct setNodeSelector (toNSNumber value)

-- | @- group@
group :: IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct => mtrBindingClusterTargetStruct -> IO (Id NSNumber)
group mtrBindingClusterTargetStruct =
  sendMessage mtrBindingClusterTargetStruct groupSelector

-- | @- setGroup:@
setGroup :: (IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct, IsNSNumber value) => mtrBindingClusterTargetStruct -> value -> IO ()
setGroup mtrBindingClusterTargetStruct value =
  sendMessage mtrBindingClusterTargetStruct setGroupSelector (toNSNumber value)

-- | @- endpoint@
endpoint :: IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct => mtrBindingClusterTargetStruct -> IO (Id NSNumber)
endpoint mtrBindingClusterTargetStruct =
  sendMessage mtrBindingClusterTargetStruct endpointSelector

-- | @- setEndpoint:@
setEndpoint :: (IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct, IsNSNumber value) => mtrBindingClusterTargetStruct -> value -> IO ()
setEndpoint mtrBindingClusterTargetStruct value =
  sendMessage mtrBindingClusterTargetStruct setEndpointSelector (toNSNumber value)

-- | @- cluster@
cluster :: IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct => mtrBindingClusterTargetStruct -> IO (Id NSNumber)
cluster mtrBindingClusterTargetStruct =
  sendMessage mtrBindingClusterTargetStruct clusterSelector

-- | @- setCluster:@
setCluster :: (IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct, IsNSNumber value) => mtrBindingClusterTargetStruct -> value -> IO ()
setCluster mtrBindingClusterTargetStruct value =
  sendMessage mtrBindingClusterTargetStruct setClusterSelector (toNSNumber value)

-- | @- fabricIndex@
fabricIndex :: IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct => mtrBindingClusterTargetStruct -> IO (Id NSNumber)
fabricIndex mtrBindingClusterTargetStruct =
  sendMessage mtrBindingClusterTargetStruct fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTRBindingClusterTargetStruct mtrBindingClusterTargetStruct, IsNSNumber value) => mtrBindingClusterTargetStruct -> value -> IO ()
setFabricIndex mtrBindingClusterTargetStruct value =
  sendMessage mtrBindingClusterTargetStruct setFabricIndexSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBindingClusterTargetStruct)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @node@
nodeSelector :: Selector '[] (Id NSNumber)
nodeSelector = mkSelector "node"

-- | @Selector@ for @setNode:@
setNodeSelector :: Selector '[Id NSNumber] ()
setNodeSelector = mkSelector "setNode:"

-- | @Selector@ for @group@
groupSelector :: Selector '[] (Id NSNumber)
groupSelector = mkSelector "group"

-- | @Selector@ for @setGroup:@
setGroupSelector :: Selector '[Id NSNumber] ()
setGroupSelector = mkSelector "setGroup:"

-- | @Selector@ for @endpoint@
endpointSelector :: Selector '[] (Id NSNumber)
endpointSelector = mkSelector "endpoint"

-- | @Selector@ for @setEndpoint:@
setEndpointSelector :: Selector '[Id NSNumber] ()
setEndpointSelector = mkSelector "setEndpoint:"

-- | @Selector@ for @cluster@
clusterSelector :: Selector '[] (Id NSNumber)
clusterSelector = mkSelector "cluster"

-- | @Selector@ for @setCluster:@
setClusterSelector :: Selector '[Id NSNumber] ()
setClusterSelector = mkSelector "setCluster:"

-- | @Selector@ for @fabricIndex@
fabricIndexSelector :: Selector '[] (Id NSNumber)
fabricIndexSelector = mkSelector "fabricIndex"

-- | @Selector@ for @setFabricIndex:@
setFabricIndexSelector :: Selector '[Id NSNumber] ()
setFabricIndexSelector = mkSelector "setFabricIndex:"

