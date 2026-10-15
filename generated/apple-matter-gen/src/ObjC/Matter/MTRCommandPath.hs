{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRCommandPath@.
module ObjC.Matter.MTRCommandPath
  ( MTRCommandPath
  , IsMTRCommandPath(..)
  , commandPathWithEndpointId_clusterId_commandId
  , init_
  , new
  , endpoint
  , cluster
  , command
  , clusterSelector
  , commandPathWithEndpointId_clusterId_commandIdSelector
  , commandSelector
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

-- | @+ commandPathWithEndpointId:clusterId:commandId:@
commandPathWithEndpointId_clusterId_commandId :: (IsNSNumber endpoint, IsNSNumber clusterId, IsNSNumber commandId) => endpoint -> clusterId -> commandId -> IO (Id MTRCommandPath)
commandPathWithEndpointId_clusterId_commandId endpoint clusterId commandId =
  do
    cls' <- getRequiredClass "MTRCommandPath"
    sendClassMessage cls' commandPathWithEndpointId_clusterId_commandIdSelector (toNSNumber endpoint) (toNSNumber clusterId) (toNSNumber commandId)

-- | @- init@
init_ :: IsMTRCommandPath mtrCommandPath => mtrCommandPath -> IO (Id MTRCommandPath)
init_ mtrCommandPath =
  sendOwnedMessage mtrCommandPath initSelector

-- | @+ new@
new :: IO (Id MTRCommandPath)
new  =
  do
    cls' <- getRequiredClass "MTRCommandPath"
    sendOwnedClassMessage cls' newSelector

-- | @- endpoint@
endpoint :: IsMTRCommandPath mtrCommandPath => mtrCommandPath -> IO (Id NSNumber)
endpoint mtrCommandPath =
  sendMessage mtrCommandPath endpointSelector

-- | @- cluster@
cluster :: IsMTRCommandPath mtrCommandPath => mtrCommandPath -> IO (Id NSNumber)
cluster mtrCommandPath =
  sendMessage mtrCommandPath clusterSelector

-- | @- command@
command :: IsMTRCommandPath mtrCommandPath => mtrCommandPath -> IO (Id NSNumber)
command mtrCommandPath =
  sendMessage mtrCommandPath commandSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @commandPathWithEndpointId:clusterId:commandId:@
commandPathWithEndpointId_clusterId_commandIdSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber] (Id MTRCommandPath)
commandPathWithEndpointId_clusterId_commandIdSelector = mkSelector "commandPathWithEndpointId:clusterId:commandId:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRCommandPath)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRCommandPath)
newSelector = mkSelector "new"

-- | @Selector@ for @endpoint@
endpointSelector :: Selector '[] (Id NSNumber)
endpointSelector = mkSelector "endpoint"

-- | @Selector@ for @cluster@
clusterSelector :: Selector '[] (Id NSNumber)
clusterSelector = mkSelector "cluster"

-- | @Selector@ for @command@
commandSelector :: Selector '[] (Id NSNumber)
commandSelector = mkSelector "command"

