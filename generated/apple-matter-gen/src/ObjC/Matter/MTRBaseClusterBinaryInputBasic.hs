{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Binary Input (Basic)    An interface for reading the value of a binary measurement and accessing various characteristics of that measurement.
--
-- Generated bindings for @MTRBaseClusterBinaryInputBasic@.
module ObjC.Matter.MTRBaseClusterBinaryInputBasic
  ( MTRBaseClusterBinaryInputBasic
  , IsMTRBaseClusterBinaryInputBasic(..)
  , initWithDevice_endpoint_queue
  , readAttributeActiveTextWithCompletionHandler
  , writeAttributeActiveTextWithValue_completionHandler
  , writeAttributeActiveTextWithValue_params_completionHandler
  , subscribeAttributeActiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeActiveTextWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeDescriptionWithCompletionHandler
  , writeAttributeDescriptionWithValue_completionHandler
  , writeAttributeDescriptionWithValue_params_completionHandler
  , subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeInactiveTextWithCompletionHandler
  , writeAttributeInactiveTextWithValue_completionHandler
  , writeAttributeInactiveTextWithValue_params_completionHandler
  , subscribeAttributeInactiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeInactiveTextWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOutOfServiceWithCompletionHandler
  , writeAttributeOutOfServiceWithValue_completionHandler
  , writeAttributeOutOfServiceWithValue_params_completionHandler
  , subscribeAttributeOutOfServiceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOutOfServiceWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePolarityWithCompletionHandler
  , subscribeAttributePolarityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePolarityWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePresentValueWithCompletionHandler
  , writeAttributePresentValueWithValue_completionHandler
  , writeAttributePresentValueWithValue_params_completionHandler
  , subscribeAttributePresentValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePresentValueWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeReliabilityWithCompletionHandler
  , writeAttributeReliabilityWithValue_completionHandler
  , writeAttributeReliabilityWithValue_params_completionHandler
  , subscribeAttributeReliabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeReliabilityWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeStatusFlagsWithCompletionHandler
  , subscribeAttributeStatusFlagsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeStatusFlagsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeApplicationTypeWithCompletionHandler
  , subscribeAttributeApplicationTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeApplicationTypeWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeActiveTextWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeActiveTextWithCompletionHandlerSelector
  , readAttributeApplicationTypeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeApplicationTypeWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeDescriptionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeInactiveTextWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeInactiveTextWithCompletionHandlerSelector
  , readAttributeOutOfServiceWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOutOfServiceWithCompletionHandlerSelector
  , readAttributePolarityWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePolarityWithCompletionHandlerSelector
  , readAttributePresentValueWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePresentValueWithCompletionHandlerSelector
  , readAttributeReliabilityWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeReliabilityWithCompletionHandlerSelector
  , readAttributeStatusFlagsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeStatusFlagsWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeActiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeApplicationTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeInactiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOutOfServiceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePolarityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePresentValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeReliabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeStatusFlagsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeActiveTextWithValue_completionHandlerSelector
  , writeAttributeActiveTextWithValue_params_completionHandlerSelector
  , writeAttributeDescriptionWithValue_completionHandlerSelector
  , writeAttributeDescriptionWithValue_params_completionHandlerSelector
  , writeAttributeInactiveTextWithValue_completionHandlerSelector
  , writeAttributeInactiveTextWithValue_params_completionHandlerSelector
  , writeAttributeOutOfServiceWithValue_completionHandlerSelector
  , writeAttributeOutOfServiceWithValue_params_completionHandlerSelector
  , writeAttributePresentValueWithValue_completionHandlerSelector
  , writeAttributePresentValueWithValue_params_completionHandlerSelector
  , writeAttributeReliabilityWithValue_completionHandlerSelector
  , writeAttributeReliabilityWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterBinaryInputBasic -> device -> CUShort -> queue -> IO (Id MTRBaseClusterBinaryInputBasic)
initWithDevice_endpoint_queue mtrBaseClusterBinaryInputBasic device endpoint queue =
  sendOwnedMessage mtrBaseClusterBinaryInputBasic initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- readAttributeActiveTextWithCompletionHandler:@
readAttributeActiveTextWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeActiveTextWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeActiveTextWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeActiveTextWithValue:completionHandler:@
writeAttributeActiveTextWithValue_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSString value) => mtrBaseClusterBinaryInputBasic -> value -> Ptr () -> IO ()
writeAttributeActiveTextWithValue_completionHandler mtrBaseClusterBinaryInputBasic value completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeActiveTextWithValue_completionHandlerSelector (toNSString value) completionHandler

-- | @- writeAttributeActiveTextWithValue:params:completionHandler:@
writeAttributeActiveTextWithValue_params_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSString value, IsMTRWriteParams params) => mtrBaseClusterBinaryInputBasic -> value -> params -> Ptr () -> IO ()
writeAttributeActiveTextWithValue_params_completionHandler mtrBaseClusterBinaryInputBasic value params completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeActiveTextWithValue_params_completionHandlerSelector (toNSString value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeActiveTextWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeActiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeActiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeActiveTextWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveTextWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeActiveTextWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeActiveTextWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeDescriptionWithCompletionHandler:@
readAttributeDescriptionWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeDescriptionWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeDescriptionWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeDescriptionWithValue:completionHandler:@
writeAttributeDescriptionWithValue_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSString value) => mtrBaseClusterBinaryInputBasic -> value -> Ptr () -> IO ()
writeAttributeDescriptionWithValue_completionHandler mtrBaseClusterBinaryInputBasic value completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeDescriptionWithValue_completionHandlerSelector (toNSString value) completionHandler

-- | @- writeAttributeDescriptionWithValue:params:completionHandler:@
writeAttributeDescriptionWithValue_params_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSString value, IsMTRWriteParams params) => mtrBaseClusterBinaryInputBasic -> value -> params -> Ptr () -> IO ()
writeAttributeDescriptionWithValue_params_completionHandler mtrBaseClusterBinaryInputBasic value params completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeDescriptionWithValue_params_completionHandlerSelector (toNSString value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeDescriptionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeDescriptionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeInactiveTextWithCompletionHandler:@
readAttributeInactiveTextWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeInactiveTextWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeInactiveTextWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeInactiveTextWithValue:completionHandler:@
writeAttributeInactiveTextWithValue_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSString value) => mtrBaseClusterBinaryInputBasic -> value -> Ptr () -> IO ()
writeAttributeInactiveTextWithValue_completionHandler mtrBaseClusterBinaryInputBasic value completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeInactiveTextWithValue_completionHandlerSelector (toNSString value) completionHandler

-- | @- writeAttributeInactiveTextWithValue:params:completionHandler:@
writeAttributeInactiveTextWithValue_params_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSString value, IsMTRWriteParams params) => mtrBaseClusterBinaryInputBasic -> value -> params -> Ptr () -> IO ()
writeAttributeInactiveTextWithValue_params_completionHandler mtrBaseClusterBinaryInputBasic value params completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeInactiveTextWithValue_params_completionHandlerSelector (toNSString value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeInactiveTextWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeInactiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeInactiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeInactiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeInactiveTextWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeInactiveTextWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeInactiveTextWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeInactiveTextWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOutOfServiceWithCompletionHandler:@
readAttributeOutOfServiceWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeOutOfServiceWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeOutOfServiceWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOutOfServiceWithValue:completionHandler:@
writeAttributeOutOfServiceWithValue_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber value) => mtrBaseClusterBinaryInputBasic -> value -> Ptr () -> IO ()
writeAttributeOutOfServiceWithValue_completionHandler mtrBaseClusterBinaryInputBasic value completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeOutOfServiceWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOutOfServiceWithValue:params:completionHandler:@
writeAttributeOutOfServiceWithValue_params_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBinaryInputBasic -> value -> params -> Ptr () -> IO ()
writeAttributeOutOfServiceWithValue_params_completionHandler mtrBaseClusterBinaryInputBasic value params completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeOutOfServiceWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOutOfServiceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOutOfServiceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOutOfServiceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeOutOfServiceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOutOfServiceWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOutOfServiceWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOutOfServiceWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeOutOfServiceWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePolarityWithCompletionHandler:@
readAttributePolarityWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributePolarityWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributePolarityWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePolarityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePolarityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePolarityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributePolarityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePolarityWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePolarityWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePolarityWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributePolarityWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePresentValueWithCompletionHandler:@
readAttributePresentValueWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributePresentValueWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributePresentValueWithCompletionHandlerSelector completionHandler

-- | @- writeAttributePresentValueWithValue:completionHandler:@
writeAttributePresentValueWithValue_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber value) => mtrBaseClusterBinaryInputBasic -> value -> Ptr () -> IO ()
writeAttributePresentValueWithValue_completionHandler mtrBaseClusterBinaryInputBasic value completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributePresentValueWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributePresentValueWithValue:params:completionHandler:@
writeAttributePresentValueWithValue_params_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBinaryInputBasic -> value -> params -> Ptr () -> IO ()
writeAttributePresentValueWithValue_params_completionHandler mtrBaseClusterBinaryInputBasic value params completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributePresentValueWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePresentValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePresentValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePresentValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributePresentValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePresentValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePresentValueWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePresentValueWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributePresentValueWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeReliabilityWithCompletionHandler:@
readAttributeReliabilityWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeReliabilityWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeReliabilityWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeReliabilityWithValue:completionHandler:@
writeAttributeReliabilityWithValue_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber value) => mtrBaseClusterBinaryInputBasic -> value -> Ptr () -> IO ()
writeAttributeReliabilityWithValue_completionHandler mtrBaseClusterBinaryInputBasic value completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeReliabilityWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeReliabilityWithValue:params:completionHandler:@
writeAttributeReliabilityWithValue_params_completionHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterBinaryInputBasic -> value -> params -> Ptr () -> IO ()
writeAttributeReliabilityWithValue_params_completionHandler mtrBaseClusterBinaryInputBasic value params completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic writeAttributeReliabilityWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeReliabilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeReliabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeReliabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeReliabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeReliabilityWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeReliabilityWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeReliabilityWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeReliabilityWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeStatusFlagsWithCompletionHandler:@
readAttributeStatusFlagsWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeStatusFlagsWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeStatusFlagsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeStatusFlagsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStatusFlagsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeStatusFlagsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeStatusFlagsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeStatusFlagsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStatusFlagsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeStatusFlagsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeStatusFlagsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeApplicationTypeWithCompletionHandler:@
readAttributeApplicationTypeWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeApplicationTypeWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeApplicationTypeWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeApplicationTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeApplicationTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeApplicationTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeApplicationTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeApplicationTypeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeApplicationTypeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeApplicationTypeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeApplicationTypeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterBinaryInputBasic completionHandler =
  sendMessage mtrBaseClusterBinaryInputBasic readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterBinaryInputBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterBinaryInputBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterBinaryInputBasic subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterBinaryInputBasic mtrBaseClusterBinaryInputBasic => mtrBaseClusterBinaryInputBasic -> IO (Id MTRBaseClusterBinaryInputBasic)
init_ mtrBaseClusterBinaryInputBasic =
  sendOwnedMessage mtrBaseClusterBinaryInputBasic initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterBinaryInputBasic)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterBinaryInputBasic"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterBinaryInputBasic)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeActiveTextWithCompletionHandler:@
readAttributeActiveTextWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeActiveTextWithCompletionHandlerSelector = mkSelector "readAttributeActiveTextWithCompletionHandler:"

-- | @Selector@ for @writeAttributeActiveTextWithValue:completionHandler:@
writeAttributeActiveTextWithValue_completionHandlerSelector :: Selector '[Id NSString, Ptr ()] ()
writeAttributeActiveTextWithValue_completionHandlerSelector = mkSelector "writeAttributeActiveTextWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeActiveTextWithValue:params:completionHandler:@
writeAttributeActiveTextWithValue_params_completionHandlerSelector :: Selector '[Id NSString, Id MTRWriteParams, Ptr ()] ()
writeAttributeActiveTextWithValue_params_completionHandlerSelector = mkSelector "writeAttributeActiveTextWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeActiveTextWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeActiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeActiveTextWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeActiveTextWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveTextWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeActiveTextWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeActiveTextWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeDescriptionWithCompletionHandler:@
readAttributeDescriptionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeDescriptionWithCompletionHandlerSelector = mkSelector "readAttributeDescriptionWithCompletionHandler:"

-- | @Selector@ for @writeAttributeDescriptionWithValue:completionHandler:@
writeAttributeDescriptionWithValue_completionHandlerSelector :: Selector '[Id NSString, Ptr ()] ()
writeAttributeDescriptionWithValue_completionHandlerSelector = mkSelector "writeAttributeDescriptionWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeDescriptionWithValue:params:completionHandler:@
writeAttributeDescriptionWithValue_params_completionHandlerSelector :: Selector '[Id NSString, Id MTRWriteParams, Ptr ()] ()
writeAttributeDescriptionWithValue_params_completionHandlerSelector = mkSelector "writeAttributeDescriptionWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeDescriptionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeDescriptionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeDescriptionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeDescriptionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeInactiveTextWithCompletionHandler:@
readAttributeInactiveTextWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeInactiveTextWithCompletionHandlerSelector = mkSelector "readAttributeInactiveTextWithCompletionHandler:"

-- | @Selector@ for @writeAttributeInactiveTextWithValue:completionHandler:@
writeAttributeInactiveTextWithValue_completionHandlerSelector :: Selector '[Id NSString, Ptr ()] ()
writeAttributeInactiveTextWithValue_completionHandlerSelector = mkSelector "writeAttributeInactiveTextWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeInactiveTextWithValue:params:completionHandler:@
writeAttributeInactiveTextWithValue_params_completionHandlerSelector :: Selector '[Id NSString, Id MTRWriteParams, Ptr ()] ()
writeAttributeInactiveTextWithValue_params_completionHandlerSelector = mkSelector "writeAttributeInactiveTextWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeInactiveTextWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeInactiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeInactiveTextWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeInactiveTextWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeInactiveTextWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeInactiveTextWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeInactiveTextWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeInactiveTextWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOutOfServiceWithCompletionHandler:@
readAttributeOutOfServiceWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOutOfServiceWithCompletionHandlerSelector = mkSelector "readAttributeOutOfServiceWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOutOfServiceWithValue:completionHandler:@
writeAttributeOutOfServiceWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOutOfServiceWithValue_completionHandlerSelector = mkSelector "writeAttributeOutOfServiceWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOutOfServiceWithValue:params:completionHandler:@
writeAttributeOutOfServiceWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOutOfServiceWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOutOfServiceWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOutOfServiceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOutOfServiceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOutOfServiceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOutOfServiceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOutOfServiceWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOutOfServiceWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOutOfServiceWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOutOfServiceWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePolarityWithCompletionHandler:@
readAttributePolarityWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePolarityWithCompletionHandlerSelector = mkSelector "readAttributePolarityWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePolarityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePolarityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePolarityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePolarityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePolarityWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePolarityWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePolarityWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePolarityWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePresentValueWithCompletionHandler:@
readAttributePresentValueWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePresentValueWithCompletionHandlerSelector = mkSelector "readAttributePresentValueWithCompletionHandler:"

-- | @Selector@ for @writeAttributePresentValueWithValue:completionHandler:@
writeAttributePresentValueWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributePresentValueWithValue_completionHandlerSelector = mkSelector "writeAttributePresentValueWithValue:completionHandler:"

-- | @Selector@ for @writeAttributePresentValueWithValue:params:completionHandler:@
writeAttributePresentValueWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributePresentValueWithValue_params_completionHandlerSelector = mkSelector "writeAttributePresentValueWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributePresentValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePresentValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePresentValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePresentValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePresentValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePresentValueWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePresentValueWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePresentValueWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeReliabilityWithCompletionHandler:@
readAttributeReliabilityWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeReliabilityWithCompletionHandlerSelector = mkSelector "readAttributeReliabilityWithCompletionHandler:"

-- | @Selector@ for @writeAttributeReliabilityWithValue:completionHandler:@
writeAttributeReliabilityWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeReliabilityWithValue_completionHandlerSelector = mkSelector "writeAttributeReliabilityWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeReliabilityWithValue:params:completionHandler:@
writeAttributeReliabilityWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeReliabilityWithValue_params_completionHandlerSelector = mkSelector "writeAttributeReliabilityWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeReliabilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeReliabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeReliabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeReliabilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeReliabilityWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeReliabilityWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeReliabilityWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeReliabilityWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeStatusFlagsWithCompletionHandler:@
readAttributeStatusFlagsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeStatusFlagsWithCompletionHandlerSelector = mkSelector "readAttributeStatusFlagsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeStatusFlagsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStatusFlagsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeStatusFlagsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeStatusFlagsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeStatusFlagsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStatusFlagsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeStatusFlagsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeStatusFlagsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeApplicationTypeWithCompletionHandler:@
readAttributeApplicationTypeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeApplicationTypeWithCompletionHandlerSelector = mkSelector "readAttributeApplicationTypeWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeApplicationTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeApplicationTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeApplicationTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeApplicationTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeApplicationTypeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeApplicationTypeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeApplicationTypeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeApplicationTypeWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterBinaryInputBasic)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterBinaryInputBasic)
newSelector = mkSelector "new"

