{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAttributePath@.
module ObjC.Matter.MTRAttributePath
  ( MTRAttributePath
  , IsMTRAttributePath(..)
  , attributePathWithEndpointId_clusterId_attributeId
  , init_
  , new
  , endpoint
  , cluster
  , attribute
  , attributePathWithEndpointId_clusterId_attributeIdSelector
  , attributeSelector
  , clusterSelector
  , endpointSelector
  , initSelector
  , newSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ attributePathWithEndpointId:clusterId:attributeId:@
attributePathWithEndpointId_clusterId_attributeId :: (IsNSNumber endpoint, IsNSNumber clusterId, IsNSNumber attributeId) => endpoint -> clusterId -> attributeId -> IO (Id MTRAttributePath)
attributePathWithEndpointId_clusterId_attributeId endpoint clusterId attributeId =
  do
    cls' <- getRequiredClass "MTRAttributePath"
    sendClassMessage cls' attributePathWithEndpointId_clusterId_attributeIdSelector (toNSNumber endpoint) (toNSNumber clusterId) (toNSNumber attributeId)

-- | @- init@
init_ :: IsMTRAttributePath mtrAttributePath => mtrAttributePath -> IO (Id MTRAttributePath)
init_ mtrAttributePath =
  sendOwnedMessage mtrAttributePath initSelector

-- | @+ new@
new :: IO (Id MTRAttributePath)
new  =
  do
    cls' <- getRequiredClass "MTRAttributePath"
    sendOwnedClassMessage cls' newSelector

-- | @- endpoint@
endpoint :: IsMTRAttributePath mtrAttributePath => mtrAttributePath -> IO (Id NSNumber)
endpoint mtrAttributePath =
  sendMessage mtrAttributePath endpointSelector

-- | @- cluster@
cluster :: IsMTRAttributePath mtrAttributePath => mtrAttributePath -> IO (Id NSNumber)
cluster mtrAttributePath =
  sendMessage mtrAttributePath clusterSelector

-- | @- attribute@
attribute :: IsMTRAttributePath mtrAttributePath => mtrAttributePath -> IO (Id NSNumber)
attribute mtrAttributePath =
  sendMessage mtrAttributePath attributeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @attributePathWithEndpointId:clusterId:attributeId:@
attributePathWithEndpointId_clusterId_attributeIdSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber] (Id MTRAttributePath)
attributePathWithEndpointId_clusterId_attributeIdSelector = mkSelector "attributePathWithEndpointId:clusterId:attributeId:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAttributePath)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRAttributePath)
newSelector = mkSelector "new"

-- | @Selector@ for @endpoint@
endpointSelector :: Selector '[] (Id NSNumber)
endpointSelector = mkSelector "endpoint"

-- | @Selector@ for @cluster@
clusterSelector :: Selector '[] (Id NSNumber)
clusterSelector = mkSelector "cluster"

-- | @Selector@ for @attribute@
attributeSelector :: Selector '[] (Id NSNumber)
attributeSelector = mkSelector "attribute"

