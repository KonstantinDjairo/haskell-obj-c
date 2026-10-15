{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Scenes    Attributes and commands for scene configuration and manipulation.
--
-- Generated bindings for @MTRBaseClusterScenes@.
module ObjC.Matter.MTRBaseClusterScenes
  ( MTRBaseClusterScenes
  , IsMTRBaseClusterScenes(..)
  , initWithDevice_endpoint_queue
  , addSceneWithParams_completionHandler
  , viewSceneWithParams_completionHandler
  , removeSceneWithParams_completionHandler
  , removeAllScenesWithParams_completionHandler
  , storeSceneWithParams_completionHandler
  , recallSceneWithParams_completionHandler
  , getSceneMembershipWithParams_completionHandler
  , enhancedAddSceneWithParams_completionHandler
  , enhancedViewSceneWithParams_completionHandler
  , copySceneWithParams_completionHandler
  , readAttributeSceneCountWithCompletionHandler
  , subscribeAttributeSceneCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSceneCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCurrentSceneWithCompletionHandler
  , subscribeAttributeCurrentSceneWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentSceneWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCurrentGroupWithCompletionHandler
  , subscribeAttributeCurrentGroupWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentGroupWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSceneValidWithCompletionHandler
  , subscribeAttributeSceneValidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSceneValidWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeNameSupportWithCompletionHandler
  , subscribeAttributeNameSupportWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeNameSupportWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeLastConfiguredByWithCompletionHandler
  , subscribeAttributeLastConfiguredByWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeLastConfiguredByWithAttributeCache_endpoint_queue_completionHandler
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
  , addSceneWithParams_completionHandlerSelector
  , copySceneWithParams_completionHandlerSelector
  , enhancedAddSceneWithParams_completionHandlerSelector
  , enhancedViewSceneWithParams_completionHandlerSelector
  , getSceneMembershipWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeCurrentGroupWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentGroupWithCompletionHandlerSelector
  , readAttributeCurrentSceneWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentSceneWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeLastConfiguredByWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeLastConfiguredByWithCompletionHandlerSelector
  , readAttributeNameSupportWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeNameSupportWithCompletionHandlerSelector
  , readAttributeSceneCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSceneCountWithCompletionHandlerSelector
  , readAttributeSceneValidWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSceneValidWithCompletionHandlerSelector
  , recallSceneWithParams_completionHandlerSelector
  , removeAllScenesWithParams_completionHandlerSelector
  , removeSceneWithParams_completionHandlerSelector
  , storeSceneWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentGroupWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentSceneWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeLastConfiguredByWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeNameSupportWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSceneCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSceneValidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , viewSceneWithParams_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterScenes -> device -> CUShort -> queue -> IO (Id MTRBaseClusterScenes)
initWithDevice_endpoint_queue mtrBaseClusterScenes device endpoint queue =
  sendOwnedMessage mtrBaseClusterScenes initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- addSceneWithParams:completionHandler:@
addSceneWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterAddSceneParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
addSceneWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes addSceneWithParams_completionHandlerSelector (toMTRScenesClusterAddSceneParams params) completionHandler

-- | @- viewSceneWithParams:completionHandler:@
viewSceneWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterViewSceneParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
viewSceneWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes viewSceneWithParams_completionHandlerSelector (toMTRScenesClusterViewSceneParams params) completionHandler

-- | @- removeSceneWithParams:completionHandler:@
removeSceneWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterRemoveSceneParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
removeSceneWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes removeSceneWithParams_completionHandlerSelector (toMTRScenesClusterRemoveSceneParams params) completionHandler

-- | @- removeAllScenesWithParams:completionHandler:@
removeAllScenesWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterRemoveAllScenesParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
removeAllScenesWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes removeAllScenesWithParams_completionHandlerSelector (toMTRScenesClusterRemoveAllScenesParams params) completionHandler

-- | @- storeSceneWithParams:completionHandler:@
storeSceneWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterStoreSceneParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
storeSceneWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes storeSceneWithParams_completionHandlerSelector (toMTRScenesClusterStoreSceneParams params) completionHandler

-- | @- recallSceneWithParams:completionHandler:@
recallSceneWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterRecallSceneParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
recallSceneWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes recallSceneWithParams_completionHandlerSelector (toMTRScenesClusterRecallSceneParams params) completionHandler

-- | @- getSceneMembershipWithParams:completionHandler:@
getSceneMembershipWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterGetSceneMembershipParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
getSceneMembershipWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes getSceneMembershipWithParams_completionHandlerSelector (toMTRScenesClusterGetSceneMembershipParams params) completionHandler

-- | @- enhancedAddSceneWithParams:completionHandler:@
enhancedAddSceneWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterEnhancedAddSceneParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
enhancedAddSceneWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes enhancedAddSceneWithParams_completionHandlerSelector (toMTRScenesClusterEnhancedAddSceneParams params) completionHandler

-- | @- enhancedViewSceneWithParams:completionHandler:@
enhancedViewSceneWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterEnhancedViewSceneParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
enhancedViewSceneWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendMessage mtrBaseClusterScenes enhancedViewSceneWithParams_completionHandlerSelector (toMTRScenesClusterEnhancedViewSceneParams params) completionHandler

-- | @- copySceneWithParams:completionHandler:@
copySceneWithParams_completionHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsMTRScenesClusterCopySceneParams params) => mtrBaseClusterScenes -> params -> Ptr () -> IO ()
copySceneWithParams_completionHandler mtrBaseClusterScenes params completionHandler =
  sendOwnedMessage mtrBaseClusterScenes copySceneWithParams_completionHandlerSelector (toMTRScenesClusterCopySceneParams params) completionHandler

-- | @- readAttributeSceneCountWithCompletionHandler:@
readAttributeSceneCountWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeSceneCountWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeSceneCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSceneCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSceneCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSceneCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeSceneCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSceneCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSceneCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSceneCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeSceneCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCurrentSceneWithCompletionHandler:@
readAttributeCurrentSceneWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeCurrentSceneWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeCurrentSceneWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentSceneWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentSceneWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentSceneWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeCurrentSceneWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentSceneWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentSceneWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentSceneWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeCurrentSceneWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCurrentGroupWithCompletionHandler:@
readAttributeCurrentGroupWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeCurrentGroupWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeCurrentGroupWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentGroupWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentGroupWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentGroupWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeCurrentGroupWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentGroupWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentGroupWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentGroupWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeCurrentGroupWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSceneValidWithCompletionHandler:@
readAttributeSceneValidWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeSceneValidWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeSceneValidWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSceneValidWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSceneValidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSceneValidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeSceneValidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSceneValidWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSceneValidWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSceneValidWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeSceneValidWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeNameSupportWithCompletionHandler:@
readAttributeNameSupportWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeNameSupportWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeNameSupportWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeNameSupportWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeNameSupportWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeNameSupportWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeNameSupportWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeNameSupportWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeNameSupportWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeNameSupportWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeNameSupportWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeLastConfiguredByWithCompletionHandler:@
readAttributeLastConfiguredByWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeLastConfiguredByWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeLastConfiguredByWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeLastConfiguredByWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLastConfiguredByWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeLastConfiguredByWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeLastConfiguredByWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeLastConfiguredByWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLastConfiguredByWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeLastConfiguredByWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeLastConfiguredByWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterScenes completionHandler =
  sendMessage mtrBaseClusterScenes readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterScenes mtrBaseClusterScenes, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterScenes -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterScenes minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterScenes subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterScenes mtrBaseClusterScenes => mtrBaseClusterScenes -> IO (Id MTRBaseClusterScenes)
init_ mtrBaseClusterScenes =
  sendOwnedMessage mtrBaseClusterScenes initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterScenes)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterScenes"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterScenes)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @addSceneWithParams:completionHandler:@
addSceneWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterAddSceneParams, Ptr ()] ()
addSceneWithParams_completionHandlerSelector = mkSelector "addSceneWithParams:completionHandler:"

-- | @Selector@ for @viewSceneWithParams:completionHandler:@
viewSceneWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterViewSceneParams, Ptr ()] ()
viewSceneWithParams_completionHandlerSelector = mkSelector "viewSceneWithParams:completionHandler:"

-- | @Selector@ for @removeSceneWithParams:completionHandler:@
removeSceneWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterRemoveSceneParams, Ptr ()] ()
removeSceneWithParams_completionHandlerSelector = mkSelector "removeSceneWithParams:completionHandler:"

-- | @Selector@ for @removeAllScenesWithParams:completionHandler:@
removeAllScenesWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterRemoveAllScenesParams, Ptr ()] ()
removeAllScenesWithParams_completionHandlerSelector = mkSelector "removeAllScenesWithParams:completionHandler:"

-- | @Selector@ for @storeSceneWithParams:completionHandler:@
storeSceneWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterStoreSceneParams, Ptr ()] ()
storeSceneWithParams_completionHandlerSelector = mkSelector "storeSceneWithParams:completionHandler:"

-- | @Selector@ for @recallSceneWithParams:completionHandler:@
recallSceneWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterRecallSceneParams, Ptr ()] ()
recallSceneWithParams_completionHandlerSelector = mkSelector "recallSceneWithParams:completionHandler:"

-- | @Selector@ for @getSceneMembershipWithParams:completionHandler:@
getSceneMembershipWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterGetSceneMembershipParams, Ptr ()] ()
getSceneMembershipWithParams_completionHandlerSelector = mkSelector "getSceneMembershipWithParams:completionHandler:"

-- | @Selector@ for @enhancedAddSceneWithParams:completionHandler:@
enhancedAddSceneWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterEnhancedAddSceneParams, Ptr ()] ()
enhancedAddSceneWithParams_completionHandlerSelector = mkSelector "enhancedAddSceneWithParams:completionHandler:"

-- | @Selector@ for @enhancedViewSceneWithParams:completionHandler:@
enhancedViewSceneWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterEnhancedViewSceneParams, Ptr ()] ()
enhancedViewSceneWithParams_completionHandlerSelector = mkSelector "enhancedViewSceneWithParams:completionHandler:"

-- | @Selector@ for @copySceneWithParams:completionHandler:@
copySceneWithParams_completionHandlerSelector :: Selector '[Id MTRScenesClusterCopySceneParams, Ptr ()] ()
copySceneWithParams_completionHandlerSelector = mkSelector "copySceneWithParams:completionHandler:"

-- | @Selector@ for @readAttributeSceneCountWithCompletionHandler:@
readAttributeSceneCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSceneCountWithCompletionHandlerSelector = mkSelector "readAttributeSceneCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSceneCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSceneCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSceneCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSceneCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSceneCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSceneCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSceneCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSceneCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCurrentSceneWithCompletionHandler:@
readAttributeCurrentSceneWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentSceneWithCompletionHandlerSelector = mkSelector "readAttributeCurrentSceneWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentSceneWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentSceneWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentSceneWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentSceneWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentSceneWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentSceneWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentSceneWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentSceneWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCurrentGroupWithCompletionHandler:@
readAttributeCurrentGroupWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentGroupWithCompletionHandlerSelector = mkSelector "readAttributeCurrentGroupWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentGroupWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentGroupWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentGroupWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentGroupWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentGroupWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentGroupWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentGroupWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentGroupWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSceneValidWithCompletionHandler:@
readAttributeSceneValidWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSceneValidWithCompletionHandlerSelector = mkSelector "readAttributeSceneValidWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSceneValidWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSceneValidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSceneValidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSceneValidWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSceneValidWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSceneValidWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSceneValidWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSceneValidWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeNameSupportWithCompletionHandler:@
readAttributeNameSupportWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeNameSupportWithCompletionHandlerSelector = mkSelector "readAttributeNameSupportWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeNameSupportWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeNameSupportWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeNameSupportWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeNameSupportWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeNameSupportWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeNameSupportWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeNameSupportWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeNameSupportWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeLastConfiguredByWithCompletionHandler:@
readAttributeLastConfiguredByWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeLastConfiguredByWithCompletionHandlerSelector = mkSelector "readAttributeLastConfiguredByWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeLastConfiguredByWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLastConfiguredByWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeLastConfiguredByWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeLastConfiguredByWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeLastConfiguredByWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLastConfiguredByWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeLastConfiguredByWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeLastConfiguredByWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterScenes)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterScenes)
newSelector = mkSelector "new"

