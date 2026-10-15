{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Level Control    Attributes and commands for controlling devices that can be set to a level between fully 'On' and fully 'Off.'
--
-- Generated bindings for @MTRBaseClusterLevelControl@.
module ObjC.Matter.MTRBaseClusterLevelControl
  ( MTRBaseClusterLevelControl
  , IsMTRBaseClusterLevelControl(..)
  , initWithDevice_endpoint_queue
  , moveToLevelWithParams_completionHandler
  , moveWithParams_completionHandler
  , stepWithParams_completionHandler
  , stopWithParams_completionHandler
  , moveToLevelWithOnOffWithParams_completionHandler
  , moveWithOnOffWithParams_completionHandler
  , stepWithOnOffWithParams_completionHandler
  , stopWithOnOffWithParams_completionHandler
  , moveToClosestFrequencyWithParams_completionHandler
  , readAttributeCurrentLevelWithCompletionHandler
  , subscribeAttributeCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentLevelWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeRemainingTimeWithCompletionHandler
  , subscribeAttributeRemainingTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeRemainingTimeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMinLevelWithCompletionHandler
  , subscribeAttributeMinLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMinLevelWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMaxLevelWithCompletionHandler
  , subscribeAttributeMaxLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMaxLevelWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCurrentFrequencyWithCompletionHandler
  , subscribeAttributeCurrentFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentFrequencyWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMinFrequencyWithCompletionHandler
  , subscribeAttributeMinFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMinFrequencyWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMaxFrequencyWithCompletionHandler
  , subscribeAttributeMaxFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMaxFrequencyWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOptionsWithCompletionHandler
  , writeAttributeOptionsWithValue_completionHandler
  , writeAttributeOptionsWithValue_params_completionHandler
  , subscribeAttributeOptionsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOptionsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOnOffTransitionTimeWithCompletionHandler
  , writeAttributeOnOffTransitionTimeWithValue_completionHandler
  , writeAttributeOnOffTransitionTimeWithValue_params_completionHandler
  , subscribeAttributeOnOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOnOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOnLevelWithCompletionHandler
  , writeAttributeOnLevelWithValue_completionHandler
  , writeAttributeOnLevelWithValue_params_completionHandler
  , subscribeAttributeOnLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOnLevelWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOnTransitionTimeWithCompletionHandler
  , writeAttributeOnTransitionTimeWithValue_completionHandler
  , writeAttributeOnTransitionTimeWithValue_params_completionHandler
  , subscribeAttributeOnTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOnTransitionTimeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOffTransitionTimeWithCompletionHandler
  , writeAttributeOffTransitionTimeWithValue_completionHandler
  , writeAttributeOffTransitionTimeWithValue_params_completionHandler
  , subscribeAttributeOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeDefaultMoveRateWithCompletionHandler
  , writeAttributeDefaultMoveRateWithValue_completionHandler
  , writeAttributeDefaultMoveRateWithValue_params_completionHandler
  , subscribeAttributeDefaultMoveRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeDefaultMoveRateWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeStartUpCurrentLevelWithCompletionHandler
  , writeAttributeStartUpCurrentLevelWithValue_completionHandler
  , writeAttributeStartUpCurrentLevelWithValue_params_completionHandler
  , subscribeAttributeStartUpCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeStartUpCurrentLevelWithAttributeCache_endpoint_queue_completionHandler
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
  , moveToClosestFrequencyWithParams_completionHandlerSelector
  , moveToLevelWithOnOffWithParams_completionHandlerSelector
  , moveToLevelWithParams_completionHandlerSelector
  , moveWithOnOffWithParams_completionHandlerSelector
  , moveWithParams_completionHandlerSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeCurrentFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentFrequencyWithCompletionHandlerSelector
  , readAttributeCurrentLevelWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentLevelWithCompletionHandlerSelector
  , readAttributeDefaultMoveRateWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeDefaultMoveRateWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeMaxFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMaxFrequencyWithCompletionHandlerSelector
  , readAttributeMaxLevelWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMaxLevelWithCompletionHandlerSelector
  , readAttributeMinFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMinFrequencyWithCompletionHandlerSelector
  , readAttributeMinLevelWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMinLevelWithCompletionHandlerSelector
  , readAttributeOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOffTransitionTimeWithCompletionHandlerSelector
  , readAttributeOnLevelWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOnLevelWithCompletionHandlerSelector
  , readAttributeOnOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOnOffTransitionTimeWithCompletionHandlerSelector
  , readAttributeOnTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOnTransitionTimeWithCompletionHandlerSelector
  , readAttributeOptionsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOptionsWithCompletionHandlerSelector
  , readAttributeRemainingTimeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeRemainingTimeWithCompletionHandlerSelector
  , readAttributeStartUpCurrentLevelWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeStartUpCurrentLevelWithCompletionHandlerSelector
  , stepWithOnOffWithParams_completionHandlerSelector
  , stepWithParams_completionHandlerSelector
  , stopWithOnOffWithParams_completionHandlerSelector
  , stopWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeDefaultMoveRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMaxFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMaxLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMinFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMinLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOnLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOnOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOnTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOptionsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeRemainingTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeStartUpCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeDefaultMoveRateWithValue_completionHandlerSelector
  , writeAttributeDefaultMoveRateWithValue_params_completionHandlerSelector
  , writeAttributeOffTransitionTimeWithValue_completionHandlerSelector
  , writeAttributeOffTransitionTimeWithValue_params_completionHandlerSelector
  , writeAttributeOnLevelWithValue_completionHandlerSelector
  , writeAttributeOnLevelWithValue_params_completionHandlerSelector
  , writeAttributeOnOffTransitionTimeWithValue_completionHandlerSelector
  , writeAttributeOnOffTransitionTimeWithValue_params_completionHandlerSelector
  , writeAttributeOnTransitionTimeWithValue_completionHandlerSelector
  , writeAttributeOnTransitionTimeWithValue_params_completionHandlerSelector
  , writeAttributeOptionsWithValue_completionHandlerSelector
  , writeAttributeOptionsWithValue_params_completionHandlerSelector
  , writeAttributeStartUpCurrentLevelWithValue_completionHandlerSelector
  , writeAttributeStartUpCurrentLevelWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterLevelControl -> device -> CUShort -> queue -> IO (Id MTRBaseClusterLevelControl)
initWithDevice_endpoint_queue mtrBaseClusterLevelControl device endpoint queue =
  sendOwnedMessage mtrBaseClusterLevelControl initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- moveToLevelWithParams:completionHandler:@
moveToLevelWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterMoveToLevelParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
moveToLevelWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl moveToLevelWithParams_completionHandlerSelector (toMTRLevelControlClusterMoveToLevelParams params) completionHandler

-- | @- moveWithParams:completionHandler:@
moveWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterMoveParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
moveWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl moveWithParams_completionHandlerSelector (toMTRLevelControlClusterMoveParams params) completionHandler

-- | @- stepWithParams:completionHandler:@
stepWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterStepParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
stepWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl stepWithParams_completionHandlerSelector (toMTRLevelControlClusterStepParams params) completionHandler

-- | @- stopWithParams:completionHandler:@
stopWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterStopParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
stopWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl stopWithParams_completionHandlerSelector (toMTRLevelControlClusterStopParams params) completionHandler

-- | @- moveToLevelWithOnOffWithParams:completionHandler:@
moveToLevelWithOnOffWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterMoveToLevelWithOnOffParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
moveToLevelWithOnOffWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl moveToLevelWithOnOffWithParams_completionHandlerSelector (toMTRLevelControlClusterMoveToLevelWithOnOffParams params) completionHandler

-- | @- moveWithOnOffWithParams:completionHandler:@
moveWithOnOffWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterMoveWithOnOffParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
moveWithOnOffWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl moveWithOnOffWithParams_completionHandlerSelector (toMTRLevelControlClusterMoveWithOnOffParams params) completionHandler

-- | @- stepWithOnOffWithParams:completionHandler:@
stepWithOnOffWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterStepWithOnOffParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
stepWithOnOffWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl stepWithOnOffWithParams_completionHandlerSelector (toMTRLevelControlClusterStepWithOnOffParams params) completionHandler

-- | @- stopWithOnOffWithParams:completionHandler:@
stopWithOnOffWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterStopWithOnOffParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
stopWithOnOffWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl stopWithOnOffWithParams_completionHandlerSelector (toMTRLevelControlClusterStopWithOnOffParams params) completionHandler

-- | @- moveToClosestFrequencyWithParams:completionHandler:@
moveToClosestFrequencyWithParams_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsMTRLevelControlClusterMoveToClosestFrequencyParams params) => mtrBaseClusterLevelControl -> params -> Ptr () -> IO ()
moveToClosestFrequencyWithParams_completionHandler mtrBaseClusterLevelControl params completionHandler =
  sendMessage mtrBaseClusterLevelControl moveToClosestFrequencyWithParams_completionHandlerSelector (toMTRLevelControlClusterMoveToClosestFrequencyParams params) completionHandler

-- | @- readAttributeCurrentLevelWithCompletionHandler:@
readAttributeCurrentLevelWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeCurrentLevelWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeCurrentLevelWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentLevelWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentLevelWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeCurrentLevelWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeRemainingTimeWithCompletionHandler:@
readAttributeRemainingTimeWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeRemainingTimeWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeRemainingTimeWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeRemainingTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeRemainingTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeRemainingTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeRemainingTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeRemainingTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeRemainingTimeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeRemainingTimeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeRemainingTimeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMinLevelWithCompletionHandler:@
readAttributeMinLevelWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeMinLevelWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeMinLevelWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMinLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMinLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMinLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeMinLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMinLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMinLevelWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMinLevelWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeMinLevelWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMaxLevelWithCompletionHandler:@
readAttributeMaxLevelWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeMaxLevelWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeMaxLevelWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMaxLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMaxLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeMaxLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMaxLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxLevelWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMaxLevelWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeMaxLevelWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCurrentFrequencyWithCompletionHandler:@
readAttributeCurrentFrequencyWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeCurrentFrequencyWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeCurrentFrequencyWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeCurrentFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentFrequencyWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentFrequencyWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentFrequencyWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeCurrentFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMinFrequencyWithCompletionHandler:@
readAttributeMinFrequencyWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeMinFrequencyWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeMinFrequencyWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMinFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMinFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMinFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeMinFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMinFrequencyWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMinFrequencyWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMinFrequencyWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeMinFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMaxFrequencyWithCompletionHandler:@
readAttributeMaxFrequencyWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeMaxFrequencyWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeMaxFrequencyWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMaxFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMaxFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeMaxFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMaxFrequencyWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxFrequencyWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMaxFrequencyWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeMaxFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOptionsWithCompletionHandler:@
readAttributeOptionsWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeOptionsWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeOptionsWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOptionsWithValue:completionHandler:@
writeAttributeOptionsWithValue_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value) => mtrBaseClusterLevelControl -> value -> Ptr () -> IO ()
writeAttributeOptionsWithValue_completionHandler mtrBaseClusterLevelControl value completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOptionsWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOptionsWithValue:params:completionHandler:@
writeAttributeOptionsWithValue_params_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterLevelControl -> value -> params -> Ptr () -> IO ()
writeAttributeOptionsWithValue_params_completionHandler mtrBaseClusterLevelControl value params completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOptionsWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOptionsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOptionsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOptionsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeOptionsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOptionsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOptionsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOptionsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeOptionsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOnOffTransitionTimeWithCompletionHandler:@
readAttributeOnOffTransitionTimeWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeOnOffTransitionTimeWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeOnOffTransitionTimeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOnOffTransitionTimeWithValue:completionHandler:@
writeAttributeOnOffTransitionTimeWithValue_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value) => mtrBaseClusterLevelControl -> value -> Ptr () -> IO ()
writeAttributeOnOffTransitionTimeWithValue_completionHandler mtrBaseClusterLevelControl value completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOnOffTransitionTimeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOnOffTransitionTimeWithValue:params:completionHandler:@
writeAttributeOnOffTransitionTimeWithValue_params_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterLevelControl -> value -> params -> Ptr () -> IO ()
writeAttributeOnOffTransitionTimeWithValue_params_completionHandler mtrBaseClusterLevelControl value params completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOnOffTransitionTimeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOnOffTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOnOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeOnOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOnOffTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOnOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeOnOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOnLevelWithCompletionHandler:@
readAttributeOnLevelWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeOnLevelWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeOnLevelWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOnLevelWithValue:completionHandler:@
writeAttributeOnLevelWithValue_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value) => mtrBaseClusterLevelControl -> value -> Ptr () -> IO ()
writeAttributeOnLevelWithValue_completionHandler mtrBaseClusterLevelControl value completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOnLevelWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOnLevelWithValue:params:completionHandler:@
writeAttributeOnLevelWithValue_params_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterLevelControl -> value -> params -> Ptr () -> IO ()
writeAttributeOnLevelWithValue_params_completionHandler mtrBaseClusterLevelControl value params completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOnLevelWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOnLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOnLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeOnLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOnLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnLevelWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOnLevelWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeOnLevelWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOnTransitionTimeWithCompletionHandler:@
readAttributeOnTransitionTimeWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeOnTransitionTimeWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeOnTransitionTimeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOnTransitionTimeWithValue:completionHandler:@
writeAttributeOnTransitionTimeWithValue_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value) => mtrBaseClusterLevelControl -> value -> Ptr () -> IO ()
writeAttributeOnTransitionTimeWithValue_completionHandler mtrBaseClusterLevelControl value completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOnTransitionTimeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOnTransitionTimeWithValue:params:completionHandler:@
writeAttributeOnTransitionTimeWithValue_params_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterLevelControl -> value -> params -> Ptr () -> IO ()
writeAttributeOnTransitionTimeWithValue_params_completionHandler mtrBaseClusterLevelControl value params completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOnTransitionTimeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOnTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOnTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeOnTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOnTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnTransitionTimeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOnTransitionTimeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeOnTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOffTransitionTimeWithCompletionHandler:@
readAttributeOffTransitionTimeWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeOffTransitionTimeWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeOffTransitionTimeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOffTransitionTimeWithValue:completionHandler:@
writeAttributeOffTransitionTimeWithValue_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value) => mtrBaseClusterLevelControl -> value -> Ptr () -> IO ()
writeAttributeOffTransitionTimeWithValue_completionHandler mtrBaseClusterLevelControl value completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOffTransitionTimeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOffTransitionTimeWithValue:params:completionHandler:@
writeAttributeOffTransitionTimeWithValue_params_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterLevelControl -> value -> params -> Ptr () -> IO ()
writeAttributeOffTransitionTimeWithValue_params_completionHandler mtrBaseClusterLevelControl value params completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeOffTransitionTimeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOffTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOffTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeDefaultMoveRateWithCompletionHandler:@
readAttributeDefaultMoveRateWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeDefaultMoveRateWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeDefaultMoveRateWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeDefaultMoveRateWithValue:completionHandler:@
writeAttributeDefaultMoveRateWithValue_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value) => mtrBaseClusterLevelControl -> value -> Ptr () -> IO ()
writeAttributeDefaultMoveRateWithValue_completionHandler mtrBaseClusterLevelControl value completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeDefaultMoveRateWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeDefaultMoveRateWithValue:params:completionHandler:@
writeAttributeDefaultMoveRateWithValue_params_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterLevelControl -> value -> params -> Ptr () -> IO ()
writeAttributeDefaultMoveRateWithValue_params_completionHandler mtrBaseClusterLevelControl value params completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeDefaultMoveRateWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeDefaultMoveRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeDefaultMoveRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeDefaultMoveRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeDefaultMoveRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeDefaultMoveRateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeDefaultMoveRateWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeDefaultMoveRateWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeDefaultMoveRateWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeStartUpCurrentLevelWithCompletionHandler:@
readAttributeStartUpCurrentLevelWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeStartUpCurrentLevelWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeStartUpCurrentLevelWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeStartUpCurrentLevelWithValue:completionHandler:@
writeAttributeStartUpCurrentLevelWithValue_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value) => mtrBaseClusterLevelControl -> value -> Ptr () -> IO ()
writeAttributeStartUpCurrentLevelWithValue_completionHandler mtrBaseClusterLevelControl value completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeStartUpCurrentLevelWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeStartUpCurrentLevelWithValue:params:completionHandler:@
writeAttributeStartUpCurrentLevelWithValue_params_completionHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterLevelControl -> value -> params -> Ptr () -> IO ()
writeAttributeStartUpCurrentLevelWithValue_params_completionHandler mtrBaseClusterLevelControl value params completionHandler =
  sendMessage mtrBaseClusterLevelControl writeAttributeStartUpCurrentLevelWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeStartUpCurrentLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStartUpCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeStartUpCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeStartUpCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeStartUpCurrentLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStartUpCurrentLevelWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeStartUpCurrentLevelWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeStartUpCurrentLevelWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterLevelControl completionHandler =
  sendMessage mtrBaseClusterLevelControl readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterLevelControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterLevelControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterLevelControl subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterLevelControl mtrBaseClusterLevelControl => mtrBaseClusterLevelControl -> IO (Id MTRBaseClusterLevelControl)
init_ mtrBaseClusterLevelControl =
  sendOwnedMessage mtrBaseClusterLevelControl initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterLevelControl)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterLevelControl"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterLevelControl)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @moveToLevelWithParams:completionHandler:@
moveToLevelWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterMoveToLevelParams, Ptr ()] ()
moveToLevelWithParams_completionHandlerSelector = mkSelector "moveToLevelWithParams:completionHandler:"

-- | @Selector@ for @moveWithParams:completionHandler:@
moveWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterMoveParams, Ptr ()] ()
moveWithParams_completionHandlerSelector = mkSelector "moveWithParams:completionHandler:"

-- | @Selector@ for @stepWithParams:completionHandler:@
stepWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterStepParams, Ptr ()] ()
stepWithParams_completionHandlerSelector = mkSelector "stepWithParams:completionHandler:"

-- | @Selector@ for @stopWithParams:completionHandler:@
stopWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterStopParams, Ptr ()] ()
stopWithParams_completionHandlerSelector = mkSelector "stopWithParams:completionHandler:"

-- | @Selector@ for @moveToLevelWithOnOffWithParams:completionHandler:@
moveToLevelWithOnOffWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterMoveToLevelWithOnOffParams, Ptr ()] ()
moveToLevelWithOnOffWithParams_completionHandlerSelector = mkSelector "moveToLevelWithOnOffWithParams:completionHandler:"

-- | @Selector@ for @moveWithOnOffWithParams:completionHandler:@
moveWithOnOffWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterMoveWithOnOffParams, Ptr ()] ()
moveWithOnOffWithParams_completionHandlerSelector = mkSelector "moveWithOnOffWithParams:completionHandler:"

-- | @Selector@ for @stepWithOnOffWithParams:completionHandler:@
stepWithOnOffWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterStepWithOnOffParams, Ptr ()] ()
stepWithOnOffWithParams_completionHandlerSelector = mkSelector "stepWithOnOffWithParams:completionHandler:"

-- | @Selector@ for @stopWithOnOffWithParams:completionHandler:@
stopWithOnOffWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterStopWithOnOffParams, Ptr ()] ()
stopWithOnOffWithParams_completionHandlerSelector = mkSelector "stopWithOnOffWithParams:completionHandler:"

-- | @Selector@ for @moveToClosestFrequencyWithParams:completionHandler:@
moveToClosestFrequencyWithParams_completionHandlerSelector :: Selector '[Id MTRLevelControlClusterMoveToClosestFrequencyParams, Ptr ()] ()
moveToClosestFrequencyWithParams_completionHandlerSelector = mkSelector "moveToClosestFrequencyWithParams:completionHandler:"

-- | @Selector@ for @readAttributeCurrentLevelWithCompletionHandler:@
readAttributeCurrentLevelWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentLevelWithCompletionHandlerSelector = mkSelector "readAttributeCurrentLevelWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentLevelWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentLevelWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentLevelWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeRemainingTimeWithCompletionHandler:@
readAttributeRemainingTimeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeRemainingTimeWithCompletionHandlerSelector = mkSelector "readAttributeRemainingTimeWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeRemainingTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeRemainingTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeRemainingTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeRemainingTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeRemainingTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeRemainingTimeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeRemainingTimeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeRemainingTimeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMinLevelWithCompletionHandler:@
readAttributeMinLevelWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMinLevelWithCompletionHandlerSelector = mkSelector "readAttributeMinLevelWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMinLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMinLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMinLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMinLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMinLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMinLevelWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMinLevelWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMinLevelWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMaxLevelWithCompletionHandler:@
readAttributeMaxLevelWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMaxLevelWithCompletionHandlerSelector = mkSelector "readAttributeMaxLevelWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMaxLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMaxLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMaxLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMaxLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxLevelWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMaxLevelWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMaxLevelWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCurrentFrequencyWithCompletionHandler:@
readAttributeCurrentFrequencyWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentFrequencyWithCompletionHandlerSelector = mkSelector "readAttributeCurrentFrequencyWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentFrequencyWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentFrequencyWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMinFrequencyWithCompletionHandler:@
readAttributeMinFrequencyWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMinFrequencyWithCompletionHandlerSelector = mkSelector "readAttributeMinFrequencyWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMinFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMinFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMinFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMinFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMinFrequencyWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMinFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMinFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMinFrequencyWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMaxFrequencyWithCompletionHandler:@
readAttributeMaxFrequencyWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMaxFrequencyWithCompletionHandlerSelector = mkSelector "readAttributeMaxFrequencyWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMaxFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMaxFrequencyWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMaxFrequencyWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMaxFrequencyWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMaxFrequencyWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMaxFrequencyWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOptionsWithCompletionHandler:@
readAttributeOptionsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOptionsWithCompletionHandlerSelector = mkSelector "readAttributeOptionsWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOptionsWithValue:completionHandler:@
writeAttributeOptionsWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOptionsWithValue_completionHandlerSelector = mkSelector "writeAttributeOptionsWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOptionsWithValue:params:completionHandler:@
writeAttributeOptionsWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOptionsWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOptionsWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOptionsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOptionsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOptionsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOptionsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOptionsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOptionsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOptionsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOptionsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOnOffTransitionTimeWithCompletionHandler:@
readAttributeOnOffTransitionTimeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOnOffTransitionTimeWithCompletionHandlerSelector = mkSelector "readAttributeOnOffTransitionTimeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOnOffTransitionTimeWithValue:completionHandler:@
writeAttributeOnOffTransitionTimeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOnOffTransitionTimeWithValue_completionHandlerSelector = mkSelector "writeAttributeOnOffTransitionTimeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOnOffTransitionTimeWithValue:params:completionHandler:@
writeAttributeOnOffTransitionTimeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOnOffTransitionTimeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOnOffTransitionTimeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOnOffTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOnOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOnOffTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOnOffTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOnOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOnOffTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOnLevelWithCompletionHandler:@
readAttributeOnLevelWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOnLevelWithCompletionHandlerSelector = mkSelector "readAttributeOnLevelWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOnLevelWithValue:completionHandler:@
writeAttributeOnLevelWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOnLevelWithValue_completionHandlerSelector = mkSelector "writeAttributeOnLevelWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOnLevelWithValue:params:completionHandler:@
writeAttributeOnLevelWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOnLevelWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOnLevelWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOnLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOnLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOnLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOnLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnLevelWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOnLevelWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOnLevelWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOnTransitionTimeWithCompletionHandler:@
readAttributeOnTransitionTimeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOnTransitionTimeWithCompletionHandlerSelector = mkSelector "readAttributeOnTransitionTimeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOnTransitionTimeWithValue:completionHandler:@
writeAttributeOnTransitionTimeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOnTransitionTimeWithValue_completionHandlerSelector = mkSelector "writeAttributeOnTransitionTimeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOnTransitionTimeWithValue:params:completionHandler:@
writeAttributeOnTransitionTimeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOnTransitionTimeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOnTransitionTimeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOnTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOnTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOnTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOnTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOnTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOnTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOffTransitionTimeWithCompletionHandler:@
readAttributeOffTransitionTimeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOffTransitionTimeWithCompletionHandlerSelector = mkSelector "readAttributeOffTransitionTimeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOffTransitionTimeWithValue:completionHandler:@
writeAttributeOffTransitionTimeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOffTransitionTimeWithValue_completionHandlerSelector = mkSelector "writeAttributeOffTransitionTimeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOffTransitionTimeWithValue:params:completionHandler:@
writeAttributeOffTransitionTimeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOffTransitionTimeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOffTransitionTimeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOffTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOffTransitionTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOffTransitionTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOffTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOffTransitionTimeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOffTransitionTimeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeDefaultMoveRateWithCompletionHandler:@
readAttributeDefaultMoveRateWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeDefaultMoveRateWithCompletionHandlerSelector = mkSelector "readAttributeDefaultMoveRateWithCompletionHandler:"

-- | @Selector@ for @writeAttributeDefaultMoveRateWithValue:completionHandler:@
writeAttributeDefaultMoveRateWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeDefaultMoveRateWithValue_completionHandlerSelector = mkSelector "writeAttributeDefaultMoveRateWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeDefaultMoveRateWithValue:params:completionHandler:@
writeAttributeDefaultMoveRateWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeDefaultMoveRateWithValue_params_completionHandlerSelector = mkSelector "writeAttributeDefaultMoveRateWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeDefaultMoveRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeDefaultMoveRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeDefaultMoveRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeDefaultMoveRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeDefaultMoveRateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeDefaultMoveRateWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeDefaultMoveRateWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeDefaultMoveRateWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeStartUpCurrentLevelWithCompletionHandler:@
readAttributeStartUpCurrentLevelWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeStartUpCurrentLevelWithCompletionHandlerSelector = mkSelector "readAttributeStartUpCurrentLevelWithCompletionHandler:"

-- | @Selector@ for @writeAttributeStartUpCurrentLevelWithValue:completionHandler:@
writeAttributeStartUpCurrentLevelWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeStartUpCurrentLevelWithValue_completionHandlerSelector = mkSelector "writeAttributeStartUpCurrentLevelWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeStartUpCurrentLevelWithValue:params:completionHandler:@
writeAttributeStartUpCurrentLevelWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeStartUpCurrentLevelWithValue_params_completionHandlerSelector = mkSelector "writeAttributeStartUpCurrentLevelWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeStartUpCurrentLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStartUpCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeStartUpCurrentLevelWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeStartUpCurrentLevelWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeStartUpCurrentLevelWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStartUpCurrentLevelWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeStartUpCurrentLevelWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeStartUpCurrentLevelWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterLevelControl)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterLevelControl)
newSelector = mkSelector "new"

