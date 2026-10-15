{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Pressure Measurement    Attributes and commands for configuring the measurement of pressure, and reporting pressure measurements.
--
-- Generated bindings for @MTRBaseClusterPressureMeasurement@.
module ObjC.Matter.MTRBaseClusterPressureMeasurement
  ( MTRBaseClusterPressureMeasurement
  , IsMTRBaseClusterPressureMeasurement(..)
  , initWithDevice_endpoint_queue
  , readAttributeMeasuredValueWithCompletionHandler
  , subscribeAttributeMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMeasuredValueWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMinMeasuredValueWithCompletionHandler
  , subscribeAttributeMinMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMinMeasuredValueWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMaxMeasuredValueWithCompletionHandler
  , subscribeAttributeMaxMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMaxMeasuredValueWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeToleranceWithCompletionHandler
  , subscribeAttributeToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeToleranceWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeScaledValueWithCompletionHandler
  , subscribeAttributeScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeScaledValueWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMinScaledValueWithCompletionHandler
  , subscribeAttributeMinScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMinScaledValueWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeMaxScaledValueWithCompletionHandler
  , subscribeAttributeMaxScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMaxScaledValueWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeScaledToleranceWithCompletionHandler
  , subscribeAttributeScaledToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeScaledToleranceWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeScaleWithCompletionHandler
  , subscribeAttributeScaleWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeScaleWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeMaxMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMaxMeasuredValueWithCompletionHandlerSelector
  , readAttributeMaxScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMaxScaledValueWithCompletionHandlerSelector
  , readAttributeMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMeasuredValueWithCompletionHandlerSelector
  , readAttributeMinMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMinMeasuredValueWithCompletionHandlerSelector
  , readAttributeMinScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMinScaledValueWithCompletionHandlerSelector
  , readAttributeScaleWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeScaleWithCompletionHandlerSelector
  , readAttributeScaledToleranceWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeScaledToleranceWithCompletionHandlerSelector
  , readAttributeScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeScaledValueWithCompletionHandlerSelector
  , readAttributeToleranceWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeToleranceWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMaxMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMaxScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMinMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMinScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeScaleWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeScaledToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterPressureMeasurement -> device -> CUShort -> queue -> IO (Id MTRBaseClusterPressureMeasurement)
initWithDevice_endpoint_queue mtrBaseClusterPressureMeasurement device endpoint queue =
  sendOwnedMessage mtrBaseClusterPressureMeasurement initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- readAttributeMeasuredValueWithCompletionHandler:@
readAttributeMeasuredValueWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeMeasuredValueWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeMeasuredValueWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMeasuredValueWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMeasuredValueWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMinMeasuredValueWithCompletionHandler:@
readAttributeMinMeasuredValueWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeMinMeasuredValueWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeMinMeasuredValueWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMinMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMinMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMinMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeMinMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMinMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMinMeasuredValueWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMinMeasuredValueWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeMinMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMaxMeasuredValueWithCompletionHandler:@
readAttributeMaxMeasuredValueWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeMaxMeasuredValueWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeMaxMeasuredValueWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMaxMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMaxMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeMaxMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMaxMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxMeasuredValueWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMaxMeasuredValueWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeMaxMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeToleranceWithCompletionHandler:@
readAttributeToleranceWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeToleranceWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeToleranceWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeToleranceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeToleranceWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeToleranceWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeToleranceWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeToleranceWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeScaledValueWithCompletionHandler:@
readAttributeScaledValueWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeScaledValueWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeScaledValueWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeScaledValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScaledValueWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeScaledValueWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMinScaledValueWithCompletionHandler:@
readAttributeMinScaledValueWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeMinScaledValueWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeMinScaledValueWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMinScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMinScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMinScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeMinScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMinScaledValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMinScaledValueWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMinScaledValueWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeMinScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeMaxScaledValueWithCompletionHandler:@
readAttributeMaxScaledValueWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeMaxScaledValueWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeMaxScaledValueWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMaxScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMaxScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeMaxScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMaxScaledValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxScaledValueWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMaxScaledValueWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeMaxScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeScaledToleranceWithCompletionHandler:@
readAttributeScaledToleranceWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeScaledToleranceWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeScaledToleranceWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeScaledToleranceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScaledToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeScaledToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeScaledToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeScaledToleranceWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScaledToleranceWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeScaledToleranceWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeScaledToleranceWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeScaleWithCompletionHandler:@
readAttributeScaleWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeScaleWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeScaleWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeScaleWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScaleWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeScaleWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeScaleWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeScaleWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScaleWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeScaleWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeScaleWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterPressureMeasurement completionHandler =
  sendMessage mtrBaseClusterPressureMeasurement readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterPressureMeasurement -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterPressureMeasurement minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterPressureMeasurement subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterPressureMeasurement mtrBaseClusterPressureMeasurement => mtrBaseClusterPressureMeasurement -> IO (Id MTRBaseClusterPressureMeasurement)
init_ mtrBaseClusterPressureMeasurement =
  sendOwnedMessage mtrBaseClusterPressureMeasurement initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterPressureMeasurement)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterPressureMeasurement"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterPressureMeasurement)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeMeasuredValueWithCompletionHandler:@
readAttributeMeasuredValueWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMeasuredValueWithCompletionHandlerSelector = mkSelector "readAttributeMeasuredValueWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMinMeasuredValueWithCompletionHandler:@
readAttributeMinMeasuredValueWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMinMeasuredValueWithCompletionHandlerSelector = mkSelector "readAttributeMinMeasuredValueWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMinMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMinMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMinMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMinMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMinMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMinMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMinMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMinMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMaxMeasuredValueWithCompletionHandler:@
readAttributeMaxMeasuredValueWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMaxMeasuredValueWithCompletionHandlerSelector = mkSelector "readAttributeMaxMeasuredValueWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMaxMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMaxMeasuredValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMaxMeasuredValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMaxMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMaxMeasuredValueWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMaxMeasuredValueWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeToleranceWithCompletionHandler:@
readAttributeToleranceWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeToleranceWithCompletionHandlerSelector = mkSelector "readAttributeToleranceWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeToleranceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeToleranceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeToleranceWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeToleranceWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeToleranceWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeToleranceWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeScaledValueWithCompletionHandler:@
readAttributeScaledValueWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeScaledValueWithCompletionHandlerSelector = mkSelector "readAttributeScaledValueWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeScaledValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeScaledValueWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMinScaledValueWithCompletionHandler:@
readAttributeMinScaledValueWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMinScaledValueWithCompletionHandlerSelector = mkSelector "readAttributeMinScaledValueWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMinScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMinScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMinScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMinScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMinScaledValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMinScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMinScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMinScaledValueWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeMaxScaledValueWithCompletionHandler:@
readAttributeMaxScaledValueWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMaxScaledValueWithCompletionHandlerSelector = mkSelector "readAttributeMaxScaledValueWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMaxScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMaxScaledValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMaxScaledValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMaxScaledValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMaxScaledValueWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMaxScaledValueWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeScaledToleranceWithCompletionHandler:@
readAttributeScaledToleranceWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeScaledToleranceWithCompletionHandlerSelector = mkSelector "readAttributeScaledToleranceWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeScaledToleranceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScaledToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeScaledToleranceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeScaledToleranceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeScaledToleranceWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScaledToleranceWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeScaledToleranceWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeScaledToleranceWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeScaleWithCompletionHandler:@
readAttributeScaleWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeScaleWithCompletionHandlerSelector = mkSelector "readAttributeScaleWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeScaleWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScaleWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeScaleWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeScaleWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeScaleWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScaleWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeScaleWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeScaleWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterPressureMeasurement)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterPressureMeasurement)
newSelector = mkSelector "new"

