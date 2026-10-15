{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Ethernet Network Diagnostics    The Ethernet Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
--
-- Generated bindings for @MTRBaseClusterEthernetNetworkDiagnostics@.
module ObjC.Matter.MTRBaseClusterEthernetNetworkDiagnostics
  ( MTRBaseClusterEthernetNetworkDiagnostics
  , IsMTRBaseClusterEthernetNetworkDiagnostics(..)
  , initWithDevice_endpoint_queue
  , resetCountsWithParams_completionHandler
  , resetCountsWithCompletionHandler
  , readAttributePHYRateWithCompletionHandler
  , subscribeAttributePHYRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePHYRateWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeFullDuplexWithCompletionHandler
  , subscribeAttributeFullDuplexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeFullDuplexWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePacketRxCountWithCompletionHandler
  , subscribeAttributePacketRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePacketRxCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePacketTxCountWithCompletionHandler
  , subscribeAttributePacketTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePacketTxCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeTxErrCountWithCompletionHandler
  , subscribeAttributeTxErrCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeTxErrCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCollisionCountWithCompletionHandler
  , subscribeAttributeCollisionCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCollisionCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOverrunCountWithCompletionHandler
  , subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCarrierDetectWithCompletionHandler
  , subscribeAttributeCarrierDetectWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCarrierDetectWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeTimeSinceResetWithCompletionHandler
  , subscribeAttributeTimeSinceResetWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeTimeSinceResetWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeCarrierDetectWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCarrierDetectWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeCollisionCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCollisionCountWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeFullDuplexWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFullDuplexWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOverrunCountWithCompletionHandlerSelector
  , readAttributePHYRateWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePHYRateWithCompletionHandlerSelector
  , readAttributePacketRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePacketRxCountWithCompletionHandlerSelector
  , readAttributePacketTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePacketTxCountWithCompletionHandlerSelector
  , readAttributeTimeSinceResetWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeTimeSinceResetWithCompletionHandlerSelector
  , readAttributeTxErrCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeTxErrCountWithCompletionHandlerSelector
  , resetCountsWithCompletionHandlerSelector
  , resetCountsWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCarrierDetectWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCollisionCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFullDuplexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePHYRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePacketRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePacketTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeTimeSinceResetWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeTxErrCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterEthernetNetworkDiagnostics -> device -> CUShort -> queue -> IO (Id MTRBaseClusterEthernetNetworkDiagnostics)
initWithDevice_endpoint_queue mtrBaseClusterEthernetNetworkDiagnostics device endpoint queue =
  sendOwnedMessage mtrBaseClusterEthernetNetworkDiagnostics initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- resetCountsWithParams:completionHandler:@
resetCountsWithParams_completionHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsMTREthernetNetworkDiagnosticsClusterResetCountsParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> params -> Ptr () -> IO ()
resetCountsWithParams_completionHandler mtrBaseClusterEthernetNetworkDiagnostics params completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics resetCountsWithParams_completionHandlerSelector (toMTREthernetNetworkDiagnosticsClusterResetCountsParams params) completionHandler

-- | @- resetCountsWithCompletionHandler:@
resetCountsWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
resetCountsWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics resetCountsWithCompletionHandlerSelector completionHandler

-- | @- readAttributePHYRateWithCompletionHandler:@
readAttributePHYRateWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributePHYRateWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributePHYRateWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePHYRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePHYRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePHYRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributePHYRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePHYRateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePHYRateWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePHYRateWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributePHYRateWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFullDuplexWithCompletionHandler:@
readAttributeFullDuplexWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeFullDuplexWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeFullDuplexWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFullDuplexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFullDuplexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFullDuplexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeFullDuplexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFullDuplexWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFullDuplexWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFullDuplexWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeFullDuplexWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePacketRxCountWithCompletionHandler:@
readAttributePacketRxCountWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributePacketRxCountWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributePacketRxCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePacketRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePacketRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributePacketRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePacketRxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketRxCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePacketRxCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributePacketRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePacketTxCountWithCompletionHandler:@
readAttributePacketTxCountWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributePacketTxCountWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributePacketTxCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePacketTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePacketTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributePacketTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePacketTxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketTxCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePacketTxCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributePacketTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeTxErrCountWithCompletionHandler:@
readAttributeTxErrCountWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeTxErrCountWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeTxErrCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeTxErrCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTxErrCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeTxErrCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeTxErrCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeTxErrCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTxErrCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeTxErrCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeTxErrCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCollisionCountWithCompletionHandler:@
readAttributeCollisionCountWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeCollisionCountWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeCollisionCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCollisionCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCollisionCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCollisionCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeCollisionCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCollisionCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCollisionCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCollisionCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeCollisionCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOverrunCountWithCompletionHandler:@
readAttributeOverrunCountWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeOverrunCountWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeOverrunCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOverrunCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOverrunCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCarrierDetectWithCompletionHandler:@
readAttributeCarrierDetectWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeCarrierDetectWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeCarrierDetectWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCarrierDetectWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCarrierDetectWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCarrierDetectWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeCarrierDetectWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCarrierDetectWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCarrierDetectWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCarrierDetectWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeCarrierDetectWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeTimeSinceResetWithCompletionHandler:@
readAttributeTimeSinceResetWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeTimeSinceResetWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeTimeSinceResetWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeTimeSinceResetWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTimeSinceResetWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeTimeSinceResetWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeTimeSinceResetWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeTimeSinceResetWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTimeSinceResetWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeTimeSinceResetWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeTimeSinceResetWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterEthernetNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterEthernetNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterEthernetNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterEthernetNetworkDiagnostics subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterEthernetNetworkDiagnostics mtrBaseClusterEthernetNetworkDiagnostics => mtrBaseClusterEthernetNetworkDiagnostics -> IO (Id MTRBaseClusterEthernetNetworkDiagnostics)
init_ mtrBaseClusterEthernetNetworkDiagnostics =
  sendOwnedMessage mtrBaseClusterEthernetNetworkDiagnostics initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterEthernetNetworkDiagnostics)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterEthernetNetworkDiagnostics"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterEthernetNetworkDiagnostics)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @resetCountsWithParams:completionHandler:@
resetCountsWithParams_completionHandlerSelector :: Selector '[Id MTREthernetNetworkDiagnosticsClusterResetCountsParams, Ptr ()] ()
resetCountsWithParams_completionHandlerSelector = mkSelector "resetCountsWithParams:completionHandler:"

-- | @Selector@ for @resetCountsWithCompletionHandler:@
resetCountsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
resetCountsWithCompletionHandlerSelector = mkSelector "resetCountsWithCompletionHandler:"

-- | @Selector@ for @readAttributePHYRateWithCompletionHandler:@
readAttributePHYRateWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePHYRateWithCompletionHandlerSelector = mkSelector "readAttributePHYRateWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePHYRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePHYRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePHYRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePHYRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePHYRateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePHYRateWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePHYRateWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePHYRateWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeFullDuplexWithCompletionHandler:@
readAttributeFullDuplexWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeFullDuplexWithCompletionHandlerSelector = mkSelector "readAttributeFullDuplexWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeFullDuplexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFullDuplexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeFullDuplexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeFullDuplexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeFullDuplexWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFullDuplexWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeFullDuplexWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeFullDuplexWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePacketRxCountWithCompletionHandler:@
readAttributePacketRxCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePacketRxCountWithCompletionHandlerSelector = mkSelector "readAttributePacketRxCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePacketRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePacketRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePacketRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePacketRxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePacketRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePacketRxCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePacketTxCountWithCompletionHandler:@
readAttributePacketTxCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePacketTxCountWithCompletionHandlerSelector = mkSelector "readAttributePacketTxCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePacketTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePacketTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePacketTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePacketTxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePacketTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePacketTxCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeTxErrCountWithCompletionHandler:@
readAttributeTxErrCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeTxErrCountWithCompletionHandlerSelector = mkSelector "readAttributeTxErrCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeTxErrCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTxErrCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeTxErrCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeTxErrCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeTxErrCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTxErrCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeTxErrCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeTxErrCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCollisionCountWithCompletionHandler:@
readAttributeCollisionCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCollisionCountWithCompletionHandlerSelector = mkSelector "readAttributeCollisionCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCollisionCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCollisionCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCollisionCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCollisionCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCollisionCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCollisionCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCollisionCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCollisionCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOverrunCountWithCompletionHandler:@
readAttributeOverrunCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOverrunCountWithCompletionHandlerSelector = mkSelector "readAttributeOverrunCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeOverrunCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOverrunCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOverrunCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOverrunCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCarrierDetectWithCompletionHandler:@
readAttributeCarrierDetectWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCarrierDetectWithCompletionHandlerSelector = mkSelector "readAttributeCarrierDetectWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCarrierDetectWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCarrierDetectWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCarrierDetectWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCarrierDetectWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCarrierDetectWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCarrierDetectWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCarrierDetectWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCarrierDetectWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeTimeSinceResetWithCompletionHandler:@
readAttributeTimeSinceResetWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeTimeSinceResetWithCompletionHandlerSelector = mkSelector "readAttributeTimeSinceResetWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeTimeSinceResetWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTimeSinceResetWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeTimeSinceResetWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeTimeSinceResetWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeTimeSinceResetWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTimeSinceResetWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeTimeSinceResetWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeTimeSinceResetWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterEthernetNetworkDiagnostics)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterEthernetNetworkDiagnostics)
newSelector = mkSelector "new"

