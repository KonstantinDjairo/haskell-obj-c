{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Actions    This cluster provides a standardized way for a Node (typically a Bridge, but could be any Node) to expose action information.
--
-- Generated bindings for @MTRBaseClusterActions@.
module ObjC.Matter.MTRBaseClusterActions
  ( MTRBaseClusterActions
  , IsMTRBaseClusterActions(..)
  , initWithDevice_endpoint_queue
  , instantActionWithParams_completionHandler
  , instantActionWithTransitionWithParams_completionHandler
  , startActionWithParams_completionHandler
  , startActionWithDurationWithParams_completionHandler
  , stopActionWithParams_completionHandler
  , pauseActionWithParams_completionHandler
  , pauseActionWithDurationWithParams_completionHandler
  , resumeActionWithParams_completionHandler
  , enableActionWithParams_completionHandler
  , enableActionWithDurationWithParams_completionHandler
  , disableActionWithParams_completionHandler
  , disableActionWithDurationWithParams_completionHandler
  , readAttributeActionListWithCompletionHandler
  , subscribeAttributeActionListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeActionListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeEndpointListsWithCompletionHandler
  , subscribeAttributeEndpointListsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeEndpointListsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSetupURLWithCompletionHandler
  , subscribeAttributeSetupURLWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSetupURLWithAttributeCache_endpoint_queue_completionHandler
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
  , disableActionWithDurationWithParams_completionHandlerSelector
  , disableActionWithParams_completionHandlerSelector
  , enableActionWithDurationWithParams_completionHandlerSelector
  , enableActionWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , instantActionWithParams_completionHandlerSelector
  , instantActionWithTransitionWithParams_completionHandlerSelector
  , newSelector
  , pauseActionWithDurationWithParams_completionHandlerSelector
  , pauseActionWithParams_completionHandlerSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeActionListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeActionListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeEndpointListsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeEndpointListsWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeSetupURLWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSetupURLWithCompletionHandlerSelector
  , resumeActionWithParams_completionHandlerSelector
  , startActionWithDurationWithParams_completionHandlerSelector
  , startActionWithParams_completionHandlerSelector
  , stopActionWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeActionListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeEndpointListsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSetupURLWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterActions -> device -> CUShort -> queue -> IO (Id MTRBaseClusterActions)
initWithDevice_endpoint_queue mtrBaseClusterActions device endpoint queue =
  sendOwnedMessage mtrBaseClusterActions initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- instantActionWithParams:completionHandler:@
instantActionWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterInstantActionParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
instantActionWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions instantActionWithParams_completionHandlerSelector (toMTRActionsClusterInstantActionParams params) completionHandler

-- | @- instantActionWithTransitionWithParams:completionHandler:@
instantActionWithTransitionWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterInstantActionWithTransitionParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
instantActionWithTransitionWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions instantActionWithTransitionWithParams_completionHandlerSelector (toMTRActionsClusterInstantActionWithTransitionParams params) completionHandler

-- | @- startActionWithParams:completionHandler:@
startActionWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterStartActionParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
startActionWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions startActionWithParams_completionHandlerSelector (toMTRActionsClusterStartActionParams params) completionHandler

-- | @- startActionWithDurationWithParams:completionHandler:@
startActionWithDurationWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterStartActionWithDurationParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
startActionWithDurationWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions startActionWithDurationWithParams_completionHandlerSelector (toMTRActionsClusterStartActionWithDurationParams params) completionHandler

-- | @- stopActionWithParams:completionHandler:@
stopActionWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterStopActionParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
stopActionWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions stopActionWithParams_completionHandlerSelector (toMTRActionsClusterStopActionParams params) completionHandler

-- | @- pauseActionWithParams:completionHandler:@
pauseActionWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterPauseActionParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
pauseActionWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions pauseActionWithParams_completionHandlerSelector (toMTRActionsClusterPauseActionParams params) completionHandler

-- | @- pauseActionWithDurationWithParams:completionHandler:@
pauseActionWithDurationWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterPauseActionWithDurationParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
pauseActionWithDurationWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions pauseActionWithDurationWithParams_completionHandlerSelector (toMTRActionsClusterPauseActionWithDurationParams params) completionHandler

-- | @- resumeActionWithParams:completionHandler:@
resumeActionWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterResumeActionParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
resumeActionWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions resumeActionWithParams_completionHandlerSelector (toMTRActionsClusterResumeActionParams params) completionHandler

-- | @- enableActionWithParams:completionHandler:@
enableActionWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterEnableActionParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
enableActionWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions enableActionWithParams_completionHandlerSelector (toMTRActionsClusterEnableActionParams params) completionHandler

-- | @- enableActionWithDurationWithParams:completionHandler:@
enableActionWithDurationWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterEnableActionWithDurationParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
enableActionWithDurationWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions enableActionWithDurationWithParams_completionHandlerSelector (toMTRActionsClusterEnableActionWithDurationParams params) completionHandler

-- | @- disableActionWithParams:completionHandler:@
disableActionWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterDisableActionParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
disableActionWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions disableActionWithParams_completionHandlerSelector (toMTRActionsClusterDisableActionParams params) completionHandler

-- | @- disableActionWithDurationWithParams:completionHandler:@
disableActionWithDurationWithParams_completionHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsMTRActionsClusterDisableActionWithDurationParams params) => mtrBaseClusterActions -> params -> Ptr () -> IO ()
disableActionWithDurationWithParams_completionHandler mtrBaseClusterActions params completionHandler =
  sendMessage mtrBaseClusterActions disableActionWithDurationWithParams_completionHandlerSelector (toMTRActionsClusterDisableActionWithDurationParams params) completionHandler

-- | @- readAttributeActionListWithCompletionHandler:@
readAttributeActionListWithCompletionHandler :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> Ptr () -> IO ()
readAttributeActionListWithCompletionHandler mtrBaseClusterActions completionHandler =
  sendMessage mtrBaseClusterActions readAttributeActionListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeActionListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActionListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterActions -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeActionListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterActions minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterActions subscribeAttributeActionListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeActionListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActionListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeActionListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendClassMessage cls' readAttributeActionListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeEndpointListsWithCompletionHandler:@
readAttributeEndpointListsWithCompletionHandler :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> Ptr () -> IO ()
readAttributeEndpointListsWithCompletionHandler mtrBaseClusterActions completionHandler =
  sendMessage mtrBaseClusterActions readAttributeEndpointListsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeEndpointListsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeEndpointListsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterActions -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeEndpointListsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterActions minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterActions subscribeAttributeEndpointListsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeEndpointListsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeEndpointListsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeEndpointListsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendClassMessage cls' readAttributeEndpointListsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSetupURLWithCompletionHandler:@
readAttributeSetupURLWithCompletionHandler :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> Ptr () -> IO ()
readAttributeSetupURLWithCompletionHandler mtrBaseClusterActions completionHandler =
  sendMessage mtrBaseClusterActions readAttributeSetupURLWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSetupURLWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSetupURLWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterActions -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSetupURLWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterActions minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterActions subscribeAttributeSetupURLWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSetupURLWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSetupURLWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSetupURLWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendClassMessage cls' readAttributeSetupURLWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterActions completionHandler =
  sendMessage mtrBaseClusterActions readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterActions -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterActions minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterActions subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterActions completionHandler =
  sendMessage mtrBaseClusterActions readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterActions -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterActions minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterActions subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterActions completionHandler =
  sendMessage mtrBaseClusterActions readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterActions -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterActions minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterActions subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterActions completionHandler =
  sendMessage mtrBaseClusterActions readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterActions -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterActions minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterActions subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterActions completionHandler =
  sendMessage mtrBaseClusterActions readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterActions mtrBaseClusterActions, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterActions -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterActions minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterActions subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterActions mtrBaseClusterActions => mtrBaseClusterActions -> IO (Id MTRBaseClusterActions)
init_ mtrBaseClusterActions =
  sendOwnedMessage mtrBaseClusterActions initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterActions)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterActions"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterActions)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @instantActionWithParams:completionHandler:@
instantActionWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterInstantActionParams, Ptr ()] ()
instantActionWithParams_completionHandlerSelector = mkSelector "instantActionWithParams:completionHandler:"

-- | @Selector@ for @instantActionWithTransitionWithParams:completionHandler:@
instantActionWithTransitionWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterInstantActionWithTransitionParams, Ptr ()] ()
instantActionWithTransitionWithParams_completionHandlerSelector = mkSelector "instantActionWithTransitionWithParams:completionHandler:"

-- | @Selector@ for @startActionWithParams:completionHandler:@
startActionWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterStartActionParams, Ptr ()] ()
startActionWithParams_completionHandlerSelector = mkSelector "startActionWithParams:completionHandler:"

-- | @Selector@ for @startActionWithDurationWithParams:completionHandler:@
startActionWithDurationWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterStartActionWithDurationParams, Ptr ()] ()
startActionWithDurationWithParams_completionHandlerSelector = mkSelector "startActionWithDurationWithParams:completionHandler:"

-- | @Selector@ for @stopActionWithParams:completionHandler:@
stopActionWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterStopActionParams, Ptr ()] ()
stopActionWithParams_completionHandlerSelector = mkSelector "stopActionWithParams:completionHandler:"

-- | @Selector@ for @pauseActionWithParams:completionHandler:@
pauseActionWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterPauseActionParams, Ptr ()] ()
pauseActionWithParams_completionHandlerSelector = mkSelector "pauseActionWithParams:completionHandler:"

-- | @Selector@ for @pauseActionWithDurationWithParams:completionHandler:@
pauseActionWithDurationWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterPauseActionWithDurationParams, Ptr ()] ()
pauseActionWithDurationWithParams_completionHandlerSelector = mkSelector "pauseActionWithDurationWithParams:completionHandler:"

-- | @Selector@ for @resumeActionWithParams:completionHandler:@
resumeActionWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterResumeActionParams, Ptr ()] ()
resumeActionWithParams_completionHandlerSelector = mkSelector "resumeActionWithParams:completionHandler:"

-- | @Selector@ for @enableActionWithParams:completionHandler:@
enableActionWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterEnableActionParams, Ptr ()] ()
enableActionWithParams_completionHandlerSelector = mkSelector "enableActionWithParams:completionHandler:"

-- | @Selector@ for @enableActionWithDurationWithParams:completionHandler:@
enableActionWithDurationWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterEnableActionWithDurationParams, Ptr ()] ()
enableActionWithDurationWithParams_completionHandlerSelector = mkSelector "enableActionWithDurationWithParams:completionHandler:"

-- | @Selector@ for @disableActionWithParams:completionHandler:@
disableActionWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterDisableActionParams, Ptr ()] ()
disableActionWithParams_completionHandlerSelector = mkSelector "disableActionWithParams:completionHandler:"

-- | @Selector@ for @disableActionWithDurationWithParams:completionHandler:@
disableActionWithDurationWithParams_completionHandlerSelector :: Selector '[Id MTRActionsClusterDisableActionWithDurationParams, Ptr ()] ()
disableActionWithDurationWithParams_completionHandlerSelector = mkSelector "disableActionWithDurationWithParams:completionHandler:"

-- | @Selector@ for @readAttributeActionListWithCompletionHandler:@
readAttributeActionListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeActionListWithCompletionHandlerSelector = mkSelector "readAttributeActionListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeActionListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActionListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeActionListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeActionListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeActionListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActionListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeActionListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeActionListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeEndpointListsWithCompletionHandler:@
readAttributeEndpointListsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeEndpointListsWithCompletionHandlerSelector = mkSelector "readAttributeEndpointListsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeEndpointListsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeEndpointListsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeEndpointListsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeEndpointListsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeEndpointListsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeEndpointListsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeEndpointListsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeEndpointListsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSetupURLWithCompletionHandler:@
readAttributeSetupURLWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSetupURLWithCompletionHandlerSelector = mkSelector "readAttributeSetupURLWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSetupURLWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSetupURLWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSetupURLWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSetupURLWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSetupURLWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSetupURLWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSetupURLWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSetupURLWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterActions)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterActions)
newSelector = mkSelector "new"

