{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateRequestorClusterProviderLocation@.
module ObjC.Matter.MTROtaSoftwareUpdateRequestorClusterProviderLocation
  ( MTROtaSoftwareUpdateRequestorClusterProviderLocation
  , IsMTROtaSoftwareUpdateRequestorClusterProviderLocation(..)
  , init_
  , copyWithZone
  , providerNodeID
  , setProviderNodeID
  , endpoint
  , setEndpoint
  , fabricIndex
  , setFabricIndex
  , copyWithZoneSelector
  , endpointSelector
  , fabricIndexSelector
  , initSelector
  , providerNodeIDSelector
  , setEndpointSelector
  , setFabricIndexSelector
  , setProviderNodeIDSelector


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
init_ :: IsMTROtaSoftwareUpdateRequestorClusterProviderLocation mtrOtaSoftwareUpdateRequestorClusterProviderLocation => mtrOtaSoftwareUpdateRequestorClusterProviderLocation -> IO (Id MTROtaSoftwareUpdateRequestorClusterProviderLocation)
init_ mtrOtaSoftwareUpdateRequestorClusterProviderLocation =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterProviderLocation initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateRequestorClusterProviderLocation mtrOtaSoftwareUpdateRequestorClusterProviderLocation => mtrOtaSoftwareUpdateRequestorClusterProviderLocation -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateRequestorClusterProviderLocation zone =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterProviderLocation copyWithZoneSelector zone

-- | @- providerNodeID@
providerNodeID :: IsMTROtaSoftwareUpdateRequestorClusterProviderLocation mtrOtaSoftwareUpdateRequestorClusterProviderLocation => mtrOtaSoftwareUpdateRequestorClusterProviderLocation -> IO (Id NSNumber)
providerNodeID mtrOtaSoftwareUpdateRequestorClusterProviderLocation =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterProviderLocation providerNodeIDSelector

-- | @- setProviderNodeID:@
setProviderNodeID :: (IsMTROtaSoftwareUpdateRequestorClusterProviderLocation mtrOtaSoftwareUpdateRequestorClusterProviderLocation, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterProviderLocation -> value -> IO ()
setProviderNodeID mtrOtaSoftwareUpdateRequestorClusterProviderLocation value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterProviderLocation setProviderNodeIDSelector (toNSNumber value)

-- | @- endpoint@
endpoint :: IsMTROtaSoftwareUpdateRequestorClusterProviderLocation mtrOtaSoftwareUpdateRequestorClusterProviderLocation => mtrOtaSoftwareUpdateRequestorClusterProviderLocation -> IO (Id NSNumber)
endpoint mtrOtaSoftwareUpdateRequestorClusterProviderLocation =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterProviderLocation endpointSelector

-- | @- setEndpoint:@
setEndpoint :: (IsMTROtaSoftwareUpdateRequestorClusterProviderLocation mtrOtaSoftwareUpdateRequestorClusterProviderLocation, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterProviderLocation -> value -> IO ()
setEndpoint mtrOtaSoftwareUpdateRequestorClusterProviderLocation value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterProviderLocation setEndpointSelector (toNSNumber value)

-- | @- fabricIndex@
fabricIndex :: IsMTROtaSoftwareUpdateRequestorClusterProviderLocation mtrOtaSoftwareUpdateRequestorClusterProviderLocation => mtrOtaSoftwareUpdateRequestorClusterProviderLocation -> IO (Id NSNumber)
fabricIndex mtrOtaSoftwareUpdateRequestorClusterProviderLocation =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterProviderLocation fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTROtaSoftwareUpdateRequestorClusterProviderLocation mtrOtaSoftwareUpdateRequestorClusterProviderLocation, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterProviderLocation -> value -> IO ()
setFabricIndex mtrOtaSoftwareUpdateRequestorClusterProviderLocation value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterProviderLocation setFabricIndexSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateRequestorClusterProviderLocation)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @providerNodeID@
providerNodeIDSelector :: Selector '[] (Id NSNumber)
providerNodeIDSelector = mkSelector "providerNodeID"

-- | @Selector@ for @setProviderNodeID:@
setProviderNodeIDSelector :: Selector '[Id NSNumber] ()
setProviderNodeIDSelector = mkSelector "setProviderNodeID:"

-- | @Selector@ for @endpoint@
endpointSelector :: Selector '[] (Id NSNumber)
endpointSelector = mkSelector "endpoint"

-- | @Selector@ for @setEndpoint:@
setEndpointSelector :: Selector '[Id NSNumber] ()
setEndpointSelector = mkSelector "setEndpoint:"

-- | @Selector@ for @fabricIndex@
fabricIndexSelector :: Selector '[] (Id NSNumber)
fabricIndexSelector = mkSelector "fabricIndex"

-- | @Selector@ for @setFabricIndex:@
setFabricIndexSelector :: Selector '[Id NSNumber] ()
setFabricIndexSelector = mkSelector "setFabricIndex:"

