{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Group Key Management    The Group Key Management Cluster is the mechanism by which group keys are managed.
--
-- Generated bindings for @MTRBaseClusterGroupKeyManagement@.
module ObjC.Matter.MTRBaseClusterGroupKeyManagement
  ( MTRBaseClusterGroupKeyManagement
  , IsMTRBaseClusterGroupKeyManagement(..)
  , initWithDevice_endpoint_queue
  , keySetWriteWithParams_completionHandler
  , keySetReadWithParams_completionHandler
  , keySetRemoveWithParams_completionHandler
  , keySetReadAllIndicesWithParams_completionHandler
  , readAttributeGroupKeyMapWithParams_completionHandler
  , writeAttributeGroupKeyMapWithValue_completionHandler
  , writeAttributeGroupKeyMapWithValue_params_completionHandler
  , subscribeAttributeGroupKeyMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeGroupKeyMapWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeGroupTableWithParams_completionHandler
  , subscribeAttributeGroupTableWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeGroupTableWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMaxGroupsPerFabricWithCompletionHandler
  , subscribeAttributeMaxGroupsPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMaxGroupsPerFabricWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMaxGroupKeysPerFabricWithCompletionHandler
  , subscribeAttributeMaxGroupKeysPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMaxGroupKeysPerFabricWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeGeneratedCommandListWithCompletionHandler
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAcceptedCommandListWithCompletionHandler
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAttributeListWithCompletionHandler
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeFeatureMapWithCompletionHandler
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeClusterRevisionWithCompletionHandler
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler
  , init_
  , new
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , keySetReadAllIndicesWithParams_completionHandlerSelector
  , keySetReadWithParams_completionHandlerSelector
  , keySetRemoveWithParams_completionHandlerSelector
  , keySetWriteWithParams_completionHandlerSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeGroupKeyMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGroupKeyMapWithParams_completionHandlerSelector
  , readAttributeGroupTableWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGroupTableWithParams_completionHandlerSelector
  , readAttributeMaxGroupKeysPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMaxGroupKeysPerFabricWithCompletionHandlerSelector
  , readAttributeMaxGroupsPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMaxGroupsPerFabricWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGroupKeyMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGroupTableWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMaxGroupKeysPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMaxGroupsPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeGroupKeyMapWithValue_completionHandlerSelector
  , writeAttributeGroupKeyMapWithValue_params_completionHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queue :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterGroupKeyManagement -> device -> CUShort -> queue -> IO (Id MTRBaseClusterGroupKeyManagement)
initWithDevice_endpoint_queue mtrBaseClusterGroupKeyManagement device endpoint queue =
  sendOwnedMessage mtrBaseClusterGroupKeyManagement initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- keySetWriteWithParams:completionHandler:@
keySetWriteWithParams_completionHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsMTRGroupKeyManagementClusterKeySetWriteParams params) => mtrBaseClusterGroupKeyManagement -> params -> Ptr () -> IO ()
keySetWriteWithParams_completionHandler mtrBaseClusterGroupKeyManagement params completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement keySetWriteWithParams_completionHandlerSelector (toMTRGroupKeyManagementClusterKeySetWriteParams params) completionHandler

-- | @- keySetReadWithParams:completionHandler:@
keySetReadWithParams_completionHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsMTRGroupKeyManagementClusterKeySetReadParams params) => mtrBaseClusterGroupKeyManagement -> params -> Ptr () -> IO ()
keySetReadWithParams_completionHandler mtrBaseClusterGroupKeyManagement params completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement keySetReadWithParams_completionHandlerSelector (toMTRGroupKeyManagementClusterKeySetReadParams params) completionHandler

-- | @- keySetRemoveWithParams:completionHandler:@
keySetRemoveWithParams_completionHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsMTRGroupKeyManagementClusterKeySetRemoveParams params) => mtrBaseClusterGroupKeyManagement -> params -> Ptr () -> IO ()
keySetRemoveWithParams_completionHandler mtrBaseClusterGroupKeyManagement params completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement keySetRemoveWithParams_completionHandlerSelector (toMTRGroupKeyManagementClusterKeySetRemoveParams params) completionHandler

-- | @- keySetReadAllIndicesWithParams:completionHandler:@
keySetReadAllIndicesWithParams_completionHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams params) => mtrBaseClusterGroupKeyManagement -> params -> Ptr () -> IO ()
keySetReadAllIndicesWithParams_completionHandler mtrBaseClusterGroupKeyManagement params completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement keySetReadAllIndicesWithParams_completionHandlerSelector (toMTRGroupKeyManagementClusterKeySetReadAllIndicesParams params) completionHandler

-- | @- readAttributeGroupKeyMapWithParams:completionHandler:@
readAttributeGroupKeyMapWithParams_completionHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsMTRReadParams params) => mtrBaseClusterGroupKeyManagement -> params -> Ptr () -> IO ()
readAttributeGroupKeyMapWithParams_completionHandler mtrBaseClusterGroupKeyManagement params completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeGroupKeyMapWithParams_completionHandlerSelector (toMTRReadParams params) completionHandler

-- | @- writeAttributeGroupKeyMapWithValue:completionHandler:@
writeAttributeGroupKeyMapWithValue_completionHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSArray value) => mtrBaseClusterGroupKeyManagement -> value -> Ptr () -> IO ()
writeAttributeGroupKeyMapWithValue_completionHandler mtrBaseClusterGroupKeyManagement value completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement writeAttributeGroupKeyMapWithValue_completionHandlerSelector (toNSArray value) completionHandler

-- | @- writeAttributeGroupKeyMapWithValue:params:completionHandler:@
writeAttributeGroupKeyMapWithValue_params_completionHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSArray value, IsMTRWriteParams params) => mtrBaseClusterGroupKeyManagement -> value -> params -> Ptr () -> IO ()
writeAttributeGroupKeyMapWithValue_params_completionHandler mtrBaseClusterGroupKeyManagement value params completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement writeAttributeGroupKeyMapWithValue_params_completionHandlerSelector (toNSArray value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGroupKeyMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGroupKeyMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGroupKeyMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeGroupKeyMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGroupKeyMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGroupKeyMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGroupKeyMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeGroupKeyMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGroupTableWithParams:completionHandler:@
readAttributeGroupTableWithParams_completionHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsMTRReadParams params) => mtrBaseClusterGroupKeyManagement -> params -> Ptr () -> IO ()
readAttributeGroupTableWithParams_completionHandler mtrBaseClusterGroupKeyManagement params completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeGroupTableWithParams_completionHandlerSelector (toMTRReadParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGroupTableWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGroupTableWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGroupTableWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeGroupTableWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGroupTableWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGroupTableWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGroupTableWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeGroupTableWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMaxGroupsPerFabricWithCompletionHandler:@
readAttributeMaxGroupsPerFabricWithCompletionHandler :: IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement => mtrBaseClusterGroupKeyManagement -> Ptr () -> IO ()
readAttributeMaxGroupsPerFabricWithCompletionHandler mtrBaseClusterGroupKeyManagement completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeMaxGroupsPerFabricWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMaxGroupsPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxGroupsPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMaxGroupsPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeMaxGroupsPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMaxGroupsPerFabricWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxGroupsPerFabricWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMaxGroupsPerFabricWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeMaxGroupsPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMaxGroupKeysPerFabricWithCompletionHandler:@
readAttributeMaxGroupKeysPerFabricWithCompletionHandler :: IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement => mtrBaseClusterGroupKeyManagement -> Ptr () -> IO ()
readAttributeMaxGroupKeysPerFabricWithCompletionHandler mtrBaseClusterGroupKeyManagement completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeMaxGroupKeysPerFabricWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMaxGroupKeysPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxGroupKeysPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMaxGroupKeysPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeMaxGroupKeysPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMaxGroupKeysPerFabricWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxGroupKeysPerFabricWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMaxGroupKeysPerFabricWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeMaxGroupKeysPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement => mtrBaseClusterGroupKeyManagement -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterGroupKeyManagement completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement => mtrBaseClusterGroupKeyManagement -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterGroupKeyManagement completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement => mtrBaseClusterGroupKeyManagement -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterGroupKeyManagement completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement => mtrBaseClusterGroupKeyManagement -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterGroupKeyManagement completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement => mtrBaseClusterGroupKeyManagement -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterGroupKeyManagement completionHandler =
  sendMessage mtrBaseClusterGroupKeyManagement readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGroupKeyManagement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGroupKeyManagement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGroupKeyManagement subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterGroupKeyManagement mtrBaseClusterGroupKeyManagement => mtrBaseClusterGroupKeyManagement -> IO (Id MTRBaseClusterGroupKeyManagement)
init_ mtrBaseClusterGroupKeyManagement =
  sendOwnedMessage mtrBaseClusterGroupKeyManagement initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterGroupKeyManagement)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterGroupKeyManagement"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterGroupKeyManagement)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @keySetWriteWithParams:completionHandler:@
keySetWriteWithParams_completionHandlerSelector :: Selector '[Id MTRGroupKeyManagementClusterKeySetWriteParams, Ptr ()] ()
keySetWriteWithParams_completionHandlerSelector = mkSelector "keySetWriteWithParams:completionHandler:"

-- | @Selector@ for @keySetReadWithParams:completionHandler:@
keySetReadWithParams_completionHandlerSelector :: Selector '[Id MTRGroupKeyManagementClusterKeySetReadParams, Ptr ()] ()
keySetReadWithParams_completionHandlerSelector = mkSelector "keySetReadWithParams:completionHandler:"

-- | @Selector@ for @keySetRemoveWithParams:completionHandler:@
keySetRemoveWithParams_completionHandlerSelector :: Selector '[Id MTRGroupKeyManagementClusterKeySetRemoveParams, Ptr ()] ()
keySetRemoveWithParams_completionHandlerSelector = mkSelector "keySetRemoveWithParams:completionHandler:"

-- | @Selector@ for @keySetReadAllIndicesWithParams:completionHandler:@
keySetReadAllIndicesWithParams_completionHandlerSelector :: Selector '[Id MTRGroupKeyManagementClusterKeySetReadAllIndicesParams, Ptr ()] ()
keySetReadAllIndicesWithParams_completionHandlerSelector = mkSelector "keySetReadAllIndicesWithParams:completionHandler:"

-- | @Selector@ for @readAttributeGroupKeyMapWithParams:completionHandler:@
readAttributeGroupKeyMapWithParams_completionHandlerSelector :: Selector '[Id MTRReadParams, Ptr ()] ()
readAttributeGroupKeyMapWithParams_completionHandlerSelector = mkSelector "readAttributeGroupKeyMapWithParams:completionHandler:"

-- | @Selector@ for @writeAttributeGroupKeyMapWithValue:completionHandler:@
writeAttributeGroupKeyMapWithValue_completionHandlerSelector :: Selector '[Id NSArray, Ptr ()] ()
writeAttributeGroupKeyMapWithValue_completionHandlerSelector = mkSelector "writeAttributeGroupKeyMapWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeGroupKeyMapWithValue:params:completionHandler:@
writeAttributeGroupKeyMapWithValue_params_completionHandlerSelector :: Selector '[Id NSArray, Id MTRWriteParams, Ptr ()] ()
writeAttributeGroupKeyMapWithValue_params_completionHandlerSelector = mkSelector "writeAttributeGroupKeyMapWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeGroupKeyMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGroupKeyMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeGroupKeyMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeGroupKeyMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeGroupKeyMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGroupKeyMapWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeGroupKeyMapWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeGroupKeyMapWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeGroupTableWithParams:completionHandler:@
readAttributeGroupTableWithParams_completionHandlerSelector :: Selector '[Id MTRReadParams, Ptr ()] ()
readAttributeGroupTableWithParams_completionHandlerSelector = mkSelector "readAttributeGroupTableWithParams:completionHandler:"

-- | @Selector@ for @subscribeAttributeGroupTableWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGroupTableWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeGroupTableWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeGroupTableWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeGroupTableWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGroupTableWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeGroupTableWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeGroupTableWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMaxGroupsPerFabricWithCompletionHandler:@
readAttributeMaxGroupsPerFabricWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMaxGroupsPerFabricWithCompletionHandlerSelector = mkSelector "readAttributeMaxGroupsPerFabricWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMaxGroupsPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxGroupsPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMaxGroupsPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMaxGroupsPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMaxGroupsPerFabricWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxGroupsPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMaxGroupsPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMaxGroupsPerFabricWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMaxGroupKeysPerFabricWithCompletionHandler:@
readAttributeMaxGroupKeysPerFabricWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMaxGroupKeysPerFabricWithCompletionHandlerSelector = mkSelector "readAttributeMaxGroupKeysPerFabricWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMaxGroupKeysPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxGroupKeysPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMaxGroupKeysPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMaxGroupKeysPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMaxGroupKeysPerFabricWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxGroupKeysPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMaxGroupKeysPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMaxGroupKeysPerFabricWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeGeneratedCommandListWithCompletionHandlerSelector = mkSelector "readAttributeGeneratedCommandListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAcceptedCommandListWithCompletionHandlerSelector = mkSelector "readAttributeAcceptedCommandListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAttributeListWithCompletionHandlerSelector = mkSelector "readAttributeAttributeListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeFeatureMapWithCompletionHandlerSelector = mkSelector "readAttributeFeatureMapWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeClusterRevisionWithCompletionHandlerSelector = mkSelector "readAttributeClusterRevisionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBaseClusterGroupKeyManagement)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterGroupKeyManagement)
newSelector = mkSelector "new"

