{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAccessControlClusterTarget@.
module ObjC.Matter.MTRAccessControlClusterTarget
  ( MTRAccessControlClusterTarget
  , IsMTRAccessControlClusterTarget(..)
  , init_
  , copyWithZone
  , cluster
  , setCluster
  , endpoint
  , setEndpoint
  , deviceType
  , setDeviceType
  , clusterSelector
  , copyWithZoneSelector
  , deviceTypeSelector
  , endpointSelector
  , initSelector
  , setClusterSelector
  , setDeviceTypeSelector
  , setEndpointSelector


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
init_ :: IsMTRAccessControlClusterTarget mtrAccessControlClusterTarget => mtrAccessControlClusterTarget -> IO (Id MTRAccessControlClusterTarget)
init_ mtrAccessControlClusterTarget =
  sendOwnedMessage mtrAccessControlClusterTarget initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAccessControlClusterTarget mtrAccessControlClusterTarget => mtrAccessControlClusterTarget -> Ptr () -> IO RawId
copyWithZone mtrAccessControlClusterTarget zone =
  sendOwnedMessage mtrAccessControlClusterTarget copyWithZoneSelector zone

-- | @- cluster@
cluster :: IsMTRAccessControlClusterTarget mtrAccessControlClusterTarget => mtrAccessControlClusterTarget -> IO (Id NSNumber)
cluster mtrAccessControlClusterTarget =
  sendMessage mtrAccessControlClusterTarget clusterSelector

-- | @- setCluster:@
setCluster :: (IsMTRAccessControlClusterTarget mtrAccessControlClusterTarget, IsNSNumber value) => mtrAccessControlClusterTarget -> value -> IO ()
setCluster mtrAccessControlClusterTarget value =
  sendMessage mtrAccessControlClusterTarget setClusterSelector (toNSNumber value)

-- | @- endpoint@
endpoint :: IsMTRAccessControlClusterTarget mtrAccessControlClusterTarget => mtrAccessControlClusterTarget -> IO (Id NSNumber)
endpoint mtrAccessControlClusterTarget =
  sendMessage mtrAccessControlClusterTarget endpointSelector

-- | @- setEndpoint:@
setEndpoint :: (IsMTRAccessControlClusterTarget mtrAccessControlClusterTarget, IsNSNumber value) => mtrAccessControlClusterTarget -> value -> IO ()
setEndpoint mtrAccessControlClusterTarget value =
  sendMessage mtrAccessControlClusterTarget setEndpointSelector (toNSNumber value)

-- | @- deviceType@
deviceType :: IsMTRAccessControlClusterTarget mtrAccessControlClusterTarget => mtrAccessControlClusterTarget -> IO (Id NSNumber)
deviceType mtrAccessControlClusterTarget =
  sendMessage mtrAccessControlClusterTarget deviceTypeSelector

-- | @- setDeviceType:@
setDeviceType :: (IsMTRAccessControlClusterTarget mtrAccessControlClusterTarget, IsNSNumber value) => mtrAccessControlClusterTarget -> value -> IO ()
setDeviceType mtrAccessControlClusterTarget value =
  sendMessage mtrAccessControlClusterTarget setDeviceTypeSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAccessControlClusterTarget)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @cluster@
clusterSelector :: Selector '[] (Id NSNumber)
clusterSelector = mkSelector "cluster"

-- | @Selector@ for @setCluster:@
setClusterSelector :: Selector '[Id NSNumber] ()
setClusterSelector = mkSelector "setCluster:"

-- | @Selector@ for @endpoint@
endpointSelector :: Selector '[] (Id NSNumber)
endpointSelector = mkSelector "endpoint"

-- | @Selector@ for @setEndpoint:@
setEndpointSelector :: Selector '[Id NSNumber] ()
setEndpointSelector = mkSelector "setEndpoint:"

-- | @Selector@ for @deviceType@
deviceTypeSelector :: Selector '[] (Id NSNumber)
deviceTypeSelector = mkSelector "deviceType"

-- | @Selector@ for @setDeviceType:@
setDeviceTypeSelector :: Selector '[Id NSNumber] ()
setDeviceTypeSelector = mkSelector "setDeviceType:"

