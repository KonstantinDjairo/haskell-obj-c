{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTREventPath@.
module ObjC.Matter.MTREventPath
  ( MTREventPath
  , IsMTREventPath(..)
  , eventPathWithEndpointId_clusterId_eventId
  , init_
  , new
  , endpoint
  , cluster
  , event
  , clusterSelector
  , endpointSelector
  , eventPathWithEndpointId_clusterId_eventIdSelector
  , eventSelector
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

-- | @+ eventPathWithEndpointId:clusterId:eventId:@
eventPathWithEndpointId_clusterId_eventId :: (IsNSNumber endpoint, IsNSNumber clusterId, IsNSNumber eventId) => endpoint -> clusterId -> eventId -> IO (Id MTREventPath)
eventPathWithEndpointId_clusterId_eventId endpoint clusterId eventId =
  do
    cls' <- getRequiredClass "MTREventPath"
    sendClassMessage cls' eventPathWithEndpointId_clusterId_eventIdSelector (toNSNumber endpoint) (toNSNumber clusterId) (toNSNumber eventId)

-- | @- init@
init_ :: IsMTREventPath mtrEventPath => mtrEventPath -> IO (Id MTREventPath)
init_ mtrEventPath =
  sendOwnedMessage mtrEventPath initSelector

-- | @+ new@
new :: IO (Id MTREventPath)
new  =
  do
    cls' <- getRequiredClass "MTREventPath"
    sendOwnedClassMessage cls' newSelector

-- | @- endpoint@
endpoint :: IsMTREventPath mtrEventPath => mtrEventPath -> IO (Id NSNumber)
endpoint mtrEventPath =
  sendMessage mtrEventPath endpointSelector

-- | @- cluster@
cluster :: IsMTREventPath mtrEventPath => mtrEventPath -> IO (Id NSNumber)
cluster mtrEventPath =
  sendMessage mtrEventPath clusterSelector

-- | @- event@
event :: IsMTREventPath mtrEventPath => mtrEventPath -> IO (Id NSNumber)
event mtrEventPath =
  sendMessage mtrEventPath eventSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @eventPathWithEndpointId:clusterId:eventId:@
eventPathWithEndpointId_clusterId_eventIdSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber] (Id MTREventPath)
eventPathWithEndpointId_clusterId_eventIdSelector = mkSelector "eventPathWithEndpointId:clusterId:eventId:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTREventPath)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTREventPath)
newSelector = mkSelector "new"

-- | @Selector@ for @endpoint@
endpointSelector :: Selector '[] (Id NSNumber)
endpointSelector = mkSelector "endpoint"

-- | @Selector@ for @cluster@
clusterSelector :: Selector '[] (Id NSNumber)
clusterSelector = mkSelector "cluster"

-- | @Selector@ for @event@
eventSelector :: Selector '[] (Id NSNumber)
eventSelector = mkSelector "event"

