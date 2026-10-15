{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Barrier Control    This cluster provides control of a barrier (garage door).
--
-- Generated bindings for @MTRBaseClusterBarrierControl@.
module ObjC.Matter.MTRBaseClusterBarrierControl
  ( MTRBaseClusterBarrierControl
  , IsMTRBaseClusterBarrierControl(..)
  , initWithDevice_endpoint_queue
  , barrierControlGoToPercentWithParams_completionHandler
  , barrierControlStopWithParams_completionHandler
  , barrierControlStopWithCompletionHandler
  , readAttributeBarrierMovingStateWithCompletionHandler
  , subscribeAttributeBarrierMovingStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierMovingStateWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierSafetyStatusWithCompletionHandler
  , subscribeAttributeBarrierSafetyStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierSafetyStatusWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierCapabilitiesWithCompletionHandler
  , subscribeAttributeBarrierCapabilitiesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierCapabilitiesWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierOpenEventsWithCompletionHandler
  , writeAttributeBarrierOpenEventsWithValue_completionHandler
  , writeAttributeBarrierOpenEventsWithValue_params_completionHandler
  , subscribeAttributeBarrierOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierOpenEventsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierCloseEventsWithCompletionHandler
  , writeAttributeBarrierCloseEventsWithValue_completionHandler
  , writeAttributeBarrierCloseEventsWithValue_params_completionHandler
  , subscribeAttributeBarrierCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierCloseEventsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierCommandOpenEventsWithCompletionHandler
  , writeAttributeBarrierCommandOpenEventsWithValue_completionHandler
  , writeAttributeBarrierCommandOpenEventsWithValue_params_completionHandler
  , subscribeAttributeBarrierCommandOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierCommandOpenEventsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierCommandCloseEventsWithCompletionHandler
  , writeAttributeBarrierCommandCloseEventsWithValue_completionHandler
  , writeAttributeBarrierCommandCloseEventsWithValue_params_completionHandler
  , subscribeAttributeBarrierCommandCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierCommandCloseEventsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierOpenPeriodWithCompletionHandler
  , writeAttributeBarrierOpenPeriodWithValue_completionHandler
  , writeAttributeBarrierOpenPeriodWithValue_params_completionHandler
  , subscribeAttributeBarrierOpenPeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierOpenPeriodWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierClosePeriodWithCompletionHandler
  , writeAttributeBarrierClosePeriodWithValue_completionHandler
  , writeAttributeBarrierClosePeriodWithValue_params_completionHandler
  , subscribeAttributeBarrierClosePeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierClosePeriodWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBarrierPositionWithCompletionHandler
  , subscribeAttributeBarrierPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBarrierPositionWithAttributeCache_endpoint_queue_completionHandler
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
  , barrierControlGoToPercentWithParams_completionHandlerSelector
  , barrierControlStopWithCompletionHandlerSelector
  , barrierControlStopWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeBarrierCapabilitiesWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierCapabilitiesWithCompletionHandlerSelector
  , readAttributeBarrierCloseEventsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierCloseEventsWithCompletionHandlerSelector
  , readAttributeBarrierClosePeriodWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierClosePeriodWithCompletionHandlerSelector
  , readAttributeBarrierCommandCloseEventsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierCommandCloseEventsWithCompletionHandlerSelector
  , readAttributeBarrierCommandOpenEventsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierCommandOpenEventsWithCompletionHandlerSelector
  , readAttributeBarrierMovingStateWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierMovingStateWithCompletionHandlerSelector
  , readAttributeBarrierOpenEventsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierOpenEventsWithCompletionHandlerSelector
  , readAttributeBarrierOpenPeriodWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierOpenPeriodWithCompletionHandlerSelector
  , readAttributeBarrierPositionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierPositionWithCompletionHandlerSelector
  , readAttributeBarrierSafetyStatusWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBarrierSafetyStatusWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierCapabilitiesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierClosePeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierCommandCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierCommandOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierMovingStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierOpenPeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBarrierSafetyStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeBarrierCloseEventsWithValue_completionHandlerSelector
  , writeAttributeBarrierCloseEventsWithValue_params_completionHandlerSelector
  , writeAttributeBarrierClosePeriodWithValue_completionHandlerSelector
  , writeAttributeBarrierClosePeriodWithValue_params_completionHandlerSelector
  , writeAttributeBarrierCommandCloseEventsWithValue_completionHandlerSelector
  , writeAttributeBarrierCommandCloseEventsWithValue_params_completionHandlerSelector
  , writeAttributeBarrierCommandOpenEventsWithValue_completionHandlerSelector
  , writeAttributeBarrierCommandOpenEventsWithValue_params_completionHandlerSelector
  , writeAttributeBarrierOpenEventsWithValue_completionHandlerSelector
  , writeAttributeBarrierOpenEventsWithValue_params_completionHandlerSelector
  , writeAttributeBarrierOpenPeriodWithValue_completionHandlerSelector
  , writeAttributeBarrierOpenPeriodWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterBarrierControl -> device -> CUShort -> queue -> IO (Id MTRBaseClusterBarrierControl)
initWithDevice_endpoint_queue mtrBaseClusterBarrierControl device endpoint queue =
  sendOwnedMessage mtrBaseClusterBarrierControl initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- barrierControlGoToPercentWithParams:completionHandler:@
barrierControlGoToPercentWithParams_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsMTRBarrierControlClusterBarrierControlGoToPercentParams params) => mtrBaseClusterBarrierControl -> params -> Ptr () -> IO ()
barrierControlGoToPercentWithParams_completionHandler mtrBaseClusterBarrierControl params completionHandler =
  sendMessage mtrBaseClusterBarrierControl barrierControlGoToPercentWithParams_completionHandlerSelector (toMTRBarrierControlClusterBarrierControlGoToPercentParams params) completionHandler

-- | @- barrierControlStopWithParams:completionHandler:@
barrierControlStopWithParams_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsMTRBarrierControlClusterBarrierControlStopParams params) => mtrBaseClusterBarrierControl -> params -> Ptr () -> IO ()
barrierControlStopWithParams_completionHandler mtrBaseClusterBarrierControl params completionHandler =
  sendMessage mtrBaseClusterBarrierControl barrierControlStopWithParams_completionHandlerSelector (toMTRBarrierControlClusterBarrierControlStopParams params) completionHandler

-- | @- barrierControlStopWithCompletionHandler:@
barrierControlStopWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
barrierControlStopWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl barrierControlStopWithCompletionHandlerSelector completionHandler

-- | @- readAttributeBarrierMovingStateWithCompletionHandler:@
readAttributeBarrierMovingStateWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierMovingStateWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierMovingStateWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierMovingStateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierMovingStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierMovingStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierMovingStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierMovingStateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierMovingStateWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierMovingStateWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierMovingStateWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierSafetyStatusWithCompletionHandler:@
readAttributeBarrierSafetyStatusWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierSafetyStatusWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierSafetyStatusWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierSafetyStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierSafetyStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierSafetyStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierSafetyStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierSafetyStatusWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierSafetyStatusWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierSafetyStatusWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierSafetyStatusWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierCapabilitiesWithCompletionHandler:@
readAttributeBarrierCapabilitiesWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierCapabilitiesWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierCapabilitiesWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierCapabilitiesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierCapabilitiesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierCapabilitiesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierCapabilitiesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierCapabilitiesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierCapabilitiesWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierCapabilitiesWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierCapabilitiesWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierOpenEventsWithCompletionHandler:@
readAttributeBarrierOpenEventsWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierOpenEventsWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierOpenEventsWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeBarrierOpenEventsWithValue:completionHandler:@
writeAttributeBarrierOpenEventsWithValue_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value) => mtrBaseClusterBarrierControl -> value -> Ptr () -> IO ()
writeAttributeBarrierOpenEventsWithValue_completionHandler mtrBaseClusterBarrierControl value completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierOpenEventsWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeBarrierOpenEventsWithValue:params:completionHandler:@
writeAttributeBarrierOpenEventsWithValue_params_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBarrierControl -> value -> params -> Ptr () -> IO ()
writeAttributeBarrierOpenEventsWithValue_params_completionHandler mtrBaseClusterBarrierControl value params completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierOpenEventsWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierOpenEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierOpenEventsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierOpenEventsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierOpenEventsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierOpenEventsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierCloseEventsWithCompletionHandler:@
readAttributeBarrierCloseEventsWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierCloseEventsWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierCloseEventsWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeBarrierCloseEventsWithValue:completionHandler:@
writeAttributeBarrierCloseEventsWithValue_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value) => mtrBaseClusterBarrierControl -> value -> Ptr () -> IO ()
writeAttributeBarrierCloseEventsWithValue_completionHandler mtrBaseClusterBarrierControl value completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierCloseEventsWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeBarrierCloseEventsWithValue:params:completionHandler:@
writeAttributeBarrierCloseEventsWithValue_params_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBarrierControl -> value -> params -> Ptr () -> IO ()
writeAttributeBarrierCloseEventsWithValue_params_completionHandler mtrBaseClusterBarrierControl value params completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierCloseEventsWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierCloseEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierCloseEventsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierCloseEventsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierCloseEventsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierCloseEventsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierCommandOpenEventsWithCompletionHandler:@
readAttributeBarrierCommandOpenEventsWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierCommandOpenEventsWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierCommandOpenEventsWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeBarrierCommandOpenEventsWithValue:completionHandler:@
writeAttributeBarrierCommandOpenEventsWithValue_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value) => mtrBaseClusterBarrierControl -> value -> Ptr () -> IO ()
writeAttributeBarrierCommandOpenEventsWithValue_completionHandler mtrBaseClusterBarrierControl value completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierCommandOpenEventsWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeBarrierCommandOpenEventsWithValue:params:completionHandler:@
writeAttributeBarrierCommandOpenEventsWithValue_params_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBarrierControl -> value -> params -> Ptr () -> IO ()
writeAttributeBarrierCommandOpenEventsWithValue_params_completionHandler mtrBaseClusterBarrierControl value params completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierCommandOpenEventsWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierCommandOpenEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierCommandOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierCommandOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierCommandOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierCommandOpenEventsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierCommandOpenEventsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierCommandOpenEventsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierCommandOpenEventsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierCommandCloseEventsWithCompletionHandler:@
readAttributeBarrierCommandCloseEventsWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierCommandCloseEventsWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierCommandCloseEventsWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeBarrierCommandCloseEventsWithValue:completionHandler:@
writeAttributeBarrierCommandCloseEventsWithValue_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value) => mtrBaseClusterBarrierControl -> value -> Ptr () -> IO ()
writeAttributeBarrierCommandCloseEventsWithValue_completionHandler mtrBaseClusterBarrierControl value completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierCommandCloseEventsWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeBarrierCommandCloseEventsWithValue:params:completionHandler:@
writeAttributeBarrierCommandCloseEventsWithValue_params_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBarrierControl -> value -> params -> Ptr () -> IO ()
writeAttributeBarrierCommandCloseEventsWithValue_params_completionHandler mtrBaseClusterBarrierControl value params completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierCommandCloseEventsWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierCommandCloseEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierCommandCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierCommandCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierCommandCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierCommandCloseEventsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierCommandCloseEventsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierCommandCloseEventsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierCommandCloseEventsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierOpenPeriodWithCompletionHandler:@
readAttributeBarrierOpenPeriodWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierOpenPeriodWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierOpenPeriodWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeBarrierOpenPeriodWithValue:completionHandler:@
writeAttributeBarrierOpenPeriodWithValue_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value) => mtrBaseClusterBarrierControl -> value -> Ptr () -> IO ()
writeAttributeBarrierOpenPeriodWithValue_completionHandler mtrBaseClusterBarrierControl value completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierOpenPeriodWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeBarrierOpenPeriodWithValue:params:completionHandler:@
writeAttributeBarrierOpenPeriodWithValue_params_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBarrierControl -> value -> params -> Ptr () -> IO ()
writeAttributeBarrierOpenPeriodWithValue_params_completionHandler mtrBaseClusterBarrierControl value params completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierOpenPeriodWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierOpenPeriodWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierOpenPeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierOpenPeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierOpenPeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierOpenPeriodWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierOpenPeriodWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierOpenPeriodWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierOpenPeriodWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierClosePeriodWithCompletionHandler:@
readAttributeBarrierClosePeriodWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierClosePeriodWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierClosePeriodWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeBarrierClosePeriodWithValue:completionHandler:@
writeAttributeBarrierClosePeriodWithValue_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value) => mtrBaseClusterBarrierControl -> value -> Ptr () -> IO ()
writeAttributeBarrierClosePeriodWithValue_completionHandler mtrBaseClusterBarrierControl value completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierClosePeriodWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeBarrierClosePeriodWithValue:params:completionHandler:@
writeAttributeBarrierClosePeriodWithValue_params_completionHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBarrierControl -> value -> params -> Ptr () -> IO ()
writeAttributeBarrierClosePeriodWithValue_params_completionHandler mtrBaseClusterBarrierControl value params completionHandler =
  sendMessage mtrBaseClusterBarrierControl writeAttributeBarrierClosePeriodWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierClosePeriodWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierClosePeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierClosePeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierClosePeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierClosePeriodWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierClosePeriodWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierClosePeriodWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierClosePeriodWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBarrierPositionWithCompletionHandler:@
readAttributeBarrierPositionWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeBarrierPositionWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeBarrierPositionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBarrierPositionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBarrierPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeBarrierPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBarrierPositionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierPositionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBarrierPositionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeBarrierPositionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterBarrierControl completionHandler =
  sendMessage mtrBaseClusterBarrierControl readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBarrierControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBarrierControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBarrierControl subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterBarrierControl mtrBaseClusterBarrierControl => mtrBaseClusterBarrierControl -> IO (Id MTRBaseClusterBarrierControl)
init_ mtrBaseClusterBarrierControl =
  sendOwnedMessage mtrBaseClusterBarrierControl initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterBarrierControl)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterBarrierControl"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterBarrierControl)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @barrierControlGoToPercentWithParams:completionHandler:@
barrierControlGoToPercentWithParams_completionHandlerSelector :: Selector '[Id MTRBarrierControlClusterBarrierControlGoToPercentParams, Ptr ()] ()
barrierControlGoToPercentWithParams_completionHandlerSelector = mkSelector "barrierControlGoToPercentWithParams:completionHandler:"

-- | @Selector@ for @barrierControlStopWithParams:completionHandler:@
barrierControlStopWithParams_completionHandlerSelector :: Selector '[Id MTRBarrierControlClusterBarrierControlStopParams, Ptr ()] ()
barrierControlStopWithParams_completionHandlerSelector = mkSelector "barrierControlStopWithParams:completionHandler:"

-- | @Selector@ for @barrierControlStopWithCompletionHandler:@
barrierControlStopWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
barrierControlStopWithCompletionHandlerSelector = mkSelector "barrierControlStopWithCompletionHandler:"

-- | @Selector@ for @readAttributeBarrierMovingStateWithCompletionHandler:@
readAttributeBarrierMovingStateWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierMovingStateWithCompletionHandlerSelector = mkSelector "readAttributeBarrierMovingStateWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierMovingStateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierMovingStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierMovingStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierMovingStateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierMovingStateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierMovingStateWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierMovingStateWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierMovingStateWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierSafetyStatusWithCompletionHandler:@
readAttributeBarrierSafetyStatusWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierSafetyStatusWithCompletionHandlerSelector = mkSelector "readAttributeBarrierSafetyStatusWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierSafetyStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierSafetyStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierSafetyStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierSafetyStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierSafetyStatusWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierSafetyStatusWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierSafetyStatusWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierSafetyStatusWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierCapabilitiesWithCompletionHandler:@
readAttributeBarrierCapabilitiesWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierCapabilitiesWithCompletionHandlerSelector = mkSelector "readAttributeBarrierCapabilitiesWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierCapabilitiesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierCapabilitiesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierCapabilitiesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierCapabilitiesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierCapabilitiesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierCapabilitiesWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierCapabilitiesWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierCapabilitiesWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierOpenEventsWithCompletionHandler:@
readAttributeBarrierOpenEventsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierOpenEventsWithCompletionHandlerSelector = mkSelector "readAttributeBarrierOpenEventsWithCompletionHandler:"

-- | @Selector@ for @writeAttributeBarrierOpenEventsWithValue:completionHandler:@
writeAttributeBarrierOpenEventsWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeBarrierOpenEventsWithValue_completionHandlerSelector = mkSelector "writeAttributeBarrierOpenEventsWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeBarrierOpenEventsWithValue:params:completionHandler:@
writeAttributeBarrierOpenEventsWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeBarrierOpenEventsWithValue_params_completionHandlerSelector = mkSelector "writeAttributeBarrierOpenEventsWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierOpenEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierOpenEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierOpenEventsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierOpenEventsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierOpenEventsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierOpenEventsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierCloseEventsWithCompletionHandler:@
readAttributeBarrierCloseEventsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierCloseEventsWithCompletionHandlerSelector = mkSelector "readAttributeBarrierCloseEventsWithCompletionHandler:"

-- | @Selector@ for @writeAttributeBarrierCloseEventsWithValue:completionHandler:@
writeAttributeBarrierCloseEventsWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeBarrierCloseEventsWithValue_completionHandlerSelector = mkSelector "writeAttributeBarrierCloseEventsWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeBarrierCloseEventsWithValue:params:completionHandler:@
writeAttributeBarrierCloseEventsWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeBarrierCloseEventsWithValue_params_completionHandlerSelector = mkSelector "writeAttributeBarrierCloseEventsWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierCloseEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierCloseEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierCloseEventsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierCloseEventsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierCloseEventsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierCloseEventsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierCommandOpenEventsWithCompletionHandler:@
readAttributeBarrierCommandOpenEventsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierCommandOpenEventsWithCompletionHandlerSelector = mkSelector "readAttributeBarrierCommandOpenEventsWithCompletionHandler:"

-- | @Selector@ for @writeAttributeBarrierCommandOpenEventsWithValue:completionHandler:@
writeAttributeBarrierCommandOpenEventsWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeBarrierCommandOpenEventsWithValue_completionHandlerSelector = mkSelector "writeAttributeBarrierCommandOpenEventsWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeBarrierCommandOpenEventsWithValue:params:completionHandler:@
writeAttributeBarrierCommandOpenEventsWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeBarrierCommandOpenEventsWithValue_params_completionHandlerSelector = mkSelector "writeAttributeBarrierCommandOpenEventsWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierCommandOpenEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierCommandOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierCommandOpenEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierCommandOpenEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierCommandOpenEventsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierCommandOpenEventsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierCommandOpenEventsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierCommandOpenEventsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierCommandCloseEventsWithCompletionHandler:@
readAttributeBarrierCommandCloseEventsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierCommandCloseEventsWithCompletionHandlerSelector = mkSelector "readAttributeBarrierCommandCloseEventsWithCompletionHandler:"

-- | @Selector@ for @writeAttributeBarrierCommandCloseEventsWithValue:completionHandler:@
writeAttributeBarrierCommandCloseEventsWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeBarrierCommandCloseEventsWithValue_completionHandlerSelector = mkSelector "writeAttributeBarrierCommandCloseEventsWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeBarrierCommandCloseEventsWithValue:params:completionHandler:@
writeAttributeBarrierCommandCloseEventsWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeBarrierCommandCloseEventsWithValue_params_completionHandlerSelector = mkSelector "writeAttributeBarrierCommandCloseEventsWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierCommandCloseEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierCommandCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierCommandCloseEventsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierCommandCloseEventsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierCommandCloseEventsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierCommandCloseEventsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierCommandCloseEventsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierCommandCloseEventsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierOpenPeriodWithCompletionHandler:@
readAttributeBarrierOpenPeriodWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierOpenPeriodWithCompletionHandlerSelector = mkSelector "readAttributeBarrierOpenPeriodWithCompletionHandler:"

-- | @Selector@ for @writeAttributeBarrierOpenPeriodWithValue:completionHandler:@
writeAttributeBarrierOpenPeriodWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeBarrierOpenPeriodWithValue_completionHandlerSelector = mkSelector "writeAttributeBarrierOpenPeriodWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeBarrierOpenPeriodWithValue:params:completionHandler:@
writeAttributeBarrierOpenPeriodWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeBarrierOpenPeriodWithValue_params_completionHandlerSelector = mkSelector "writeAttributeBarrierOpenPeriodWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierOpenPeriodWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierOpenPeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierOpenPeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierOpenPeriodWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierOpenPeriodWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierOpenPeriodWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierOpenPeriodWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierOpenPeriodWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierClosePeriodWithCompletionHandler:@
readAttributeBarrierClosePeriodWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierClosePeriodWithCompletionHandlerSelector = mkSelector "readAttributeBarrierClosePeriodWithCompletionHandler:"

-- | @Selector@ for @writeAttributeBarrierClosePeriodWithValue:completionHandler:@
writeAttributeBarrierClosePeriodWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeBarrierClosePeriodWithValue_completionHandlerSelector = mkSelector "writeAttributeBarrierClosePeriodWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeBarrierClosePeriodWithValue:params:completionHandler:@
writeAttributeBarrierClosePeriodWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeBarrierClosePeriodWithValue_params_completionHandlerSelector = mkSelector "writeAttributeBarrierClosePeriodWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierClosePeriodWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierClosePeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierClosePeriodWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierClosePeriodWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierClosePeriodWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierClosePeriodWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierClosePeriodWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierClosePeriodWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBarrierPositionWithCompletionHandler:@
readAttributeBarrierPositionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBarrierPositionWithCompletionHandlerSelector = mkSelector "readAttributeBarrierPositionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBarrierPositionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBarrierPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBarrierPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBarrierPositionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBarrierPositionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBarrierPositionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBarrierPositionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBarrierPositionWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterBarrierControl)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterBarrierControl)
newSelector = mkSelector "new"

