{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster WiFi Network Diagnostics    The Wi-Fi Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
--
-- Generated bindings for @MTRBaseClusterWiFiNetworkDiagnostics@.
module ObjC.Matter.MTRBaseClusterWiFiNetworkDiagnostics
  ( MTRBaseClusterWiFiNetworkDiagnostics
  , IsMTRBaseClusterWiFiNetworkDiagnostics(..)
  , initWithDevice_endpoint_queue
  , resetCountsWithParams_completionHandler
  , resetCountsWithCompletionHandler
  , readAttributeBssidWithCompletionHandler
  , subscribeAttributeBssidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBssidWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSecurityTypeWithCompletionHandler
  , subscribeAttributeSecurityTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSecurityTypeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeWiFiVersionWithCompletionHandler
  , subscribeAttributeWiFiVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeWiFiVersionWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeChannelNumberWithCompletionHandler
  , subscribeAttributeChannelNumberWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeChannelNumberWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeRssiWithCompletionHandler
  , subscribeAttributeRssiWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeRssiWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBeaconLostCountWithCompletionHandler
  , subscribeAttributeBeaconLostCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBeaconLostCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBeaconRxCountWithCompletionHandler
  , subscribeAttributeBeaconRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBeaconRxCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePacketMulticastRxCountWithCompletionHandler
  , subscribeAttributePacketMulticastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePacketMulticastRxCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePacketMulticastTxCountWithCompletionHandler
  , subscribeAttributePacketMulticastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePacketMulticastTxCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePacketUnicastRxCountWithCompletionHandler
  , subscribeAttributePacketUnicastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePacketUnicastRxCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePacketUnicastTxCountWithCompletionHandler
  , subscribeAttributePacketUnicastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePacketUnicastTxCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCurrentMaxRateWithCompletionHandler
  , subscribeAttributeCurrentMaxRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentMaxRateWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOverrunCountWithCompletionHandler
  , subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeBeaconLostCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBeaconLostCountWithCompletionHandlerSelector
  , readAttributeBeaconRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBeaconRxCountWithCompletionHandlerSelector
  , readAttributeBssidWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBssidWithCompletionHandlerSelector
  , readAttributeChannelNumberWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeChannelNumberWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeCurrentMaxRateWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentMaxRateWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOverrunCountWithCompletionHandlerSelector
  , readAttributePacketMulticastRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePacketMulticastRxCountWithCompletionHandlerSelector
  , readAttributePacketMulticastTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePacketMulticastTxCountWithCompletionHandlerSelector
  , readAttributePacketUnicastRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePacketUnicastRxCountWithCompletionHandlerSelector
  , readAttributePacketUnicastTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePacketUnicastTxCountWithCompletionHandlerSelector
  , readAttributeRssiWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeRssiWithCompletionHandlerSelector
  , readAttributeSecurityTypeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSecurityTypeWithCompletionHandlerSelector
  , readAttributeWiFiVersionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeWiFiVersionWithCompletionHandlerSelector
  , resetCountsWithCompletionHandlerSelector
  , resetCountsWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBeaconLostCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBeaconRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBssidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeChannelNumberWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentMaxRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePacketMulticastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePacketMulticastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePacketUnicastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePacketUnicastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeRssiWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSecurityTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeWiFiVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterWiFiNetworkDiagnostics -> device -> CUShort -> queue -> IO (Id MTRBaseClusterWiFiNetworkDiagnostics)
initWithDevice_endpoint_queue mtrBaseClusterWiFiNetworkDiagnostics device endpoint queue =
  sendOwnedMessage mtrBaseClusterWiFiNetworkDiagnostics initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- resetCountsWithParams:completionHandler:@
resetCountsWithParams_completionHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsMTRWiFiNetworkDiagnosticsClusterResetCountsParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> params -> Ptr () -> IO ()
resetCountsWithParams_completionHandler mtrBaseClusterWiFiNetworkDiagnostics params completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics resetCountsWithParams_completionHandlerSelector (toMTRWiFiNetworkDiagnosticsClusterResetCountsParams params) completionHandler

-- | @- resetCountsWithCompletionHandler:@
resetCountsWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
resetCountsWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics resetCountsWithCompletionHandlerSelector completionHandler

-- | @- readAttributeBssidWithCompletionHandler:@
readAttributeBssidWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeBssidWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeBssidWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBssidWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBssidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBssidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeBssidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBssidWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBssidWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBssidWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeBssidWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSecurityTypeWithCompletionHandler:@
readAttributeSecurityTypeWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeSecurityTypeWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeSecurityTypeWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSecurityTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSecurityTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSecurityTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeSecurityTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSecurityTypeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSecurityTypeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSecurityTypeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeSecurityTypeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeWiFiVersionWithCompletionHandler:@
readAttributeWiFiVersionWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeWiFiVersionWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeWiFiVersionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeWiFiVersionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeWiFiVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeWiFiVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeWiFiVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeWiFiVersionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeWiFiVersionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeWiFiVersionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeWiFiVersionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeChannelNumberWithCompletionHandler:@
readAttributeChannelNumberWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeChannelNumberWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeChannelNumberWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeChannelNumberWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeChannelNumberWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeChannelNumberWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeChannelNumberWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeChannelNumberWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeChannelNumberWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeChannelNumberWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeChannelNumberWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeRssiWithCompletionHandler:@
readAttributeRssiWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeRssiWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeRssiWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeRssiWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeRssiWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeRssiWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeRssiWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeRssiWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeRssiWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeRssiWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeRssiWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBeaconLostCountWithCompletionHandler:@
readAttributeBeaconLostCountWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeBeaconLostCountWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeBeaconLostCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBeaconLostCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBeaconLostCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBeaconLostCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeBeaconLostCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBeaconLostCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBeaconLostCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBeaconLostCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeBeaconLostCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBeaconRxCountWithCompletionHandler:@
readAttributeBeaconRxCountWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeBeaconRxCountWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeBeaconRxCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBeaconRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBeaconRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBeaconRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeBeaconRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBeaconRxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBeaconRxCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBeaconRxCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeBeaconRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePacketMulticastRxCountWithCompletionHandler:@
readAttributePacketMulticastRxCountWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributePacketMulticastRxCountWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributePacketMulticastRxCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePacketMulticastRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketMulticastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePacketMulticastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributePacketMulticastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePacketMulticastRxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketMulticastRxCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePacketMulticastRxCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributePacketMulticastRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePacketMulticastTxCountWithCompletionHandler:@
readAttributePacketMulticastTxCountWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributePacketMulticastTxCountWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributePacketMulticastTxCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePacketMulticastTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketMulticastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePacketMulticastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributePacketMulticastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePacketMulticastTxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketMulticastTxCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePacketMulticastTxCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributePacketMulticastTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePacketUnicastRxCountWithCompletionHandler:@
readAttributePacketUnicastRxCountWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributePacketUnicastRxCountWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributePacketUnicastRxCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePacketUnicastRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketUnicastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePacketUnicastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributePacketUnicastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePacketUnicastRxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketUnicastRxCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePacketUnicastRxCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributePacketUnicastRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePacketUnicastTxCountWithCompletionHandler:@
readAttributePacketUnicastTxCountWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributePacketUnicastTxCountWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributePacketUnicastTxCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePacketUnicastTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketUnicastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePacketUnicastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributePacketUnicastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePacketUnicastTxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketUnicastTxCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePacketUnicastTxCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributePacketUnicastTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCurrentMaxRateWithCompletionHandler:@
readAttributeCurrentMaxRateWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeCurrentMaxRateWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeCurrentMaxRateWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentMaxRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentMaxRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentMaxRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeCurrentMaxRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentMaxRateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentMaxRateWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentMaxRateWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeCurrentMaxRateWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOverrunCountWithCompletionHandler:@
readAttributeOverrunCountWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeOverrunCountWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeOverrunCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOverrunCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOverrunCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterWiFiNetworkDiagnostics completionHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterWiFiNetworkDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterWiFiNetworkDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterWiFiNetworkDiagnostics subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterWiFiNetworkDiagnostics mtrBaseClusterWiFiNetworkDiagnostics => mtrBaseClusterWiFiNetworkDiagnostics -> IO (Id MTRBaseClusterWiFiNetworkDiagnostics)
init_ mtrBaseClusterWiFiNetworkDiagnostics =
  sendOwnedMessage mtrBaseClusterWiFiNetworkDiagnostics initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterWiFiNetworkDiagnostics)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterWiFiNetworkDiagnostics"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterWiFiNetworkDiagnostics)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @resetCountsWithParams:completionHandler:@
resetCountsWithParams_completionHandlerSelector :: Selector '[Id MTRWiFiNetworkDiagnosticsClusterResetCountsParams, Ptr ()] ()
resetCountsWithParams_completionHandlerSelector = mkSelector "resetCountsWithParams:completionHandler:"

-- | @Selector@ for @resetCountsWithCompletionHandler:@
resetCountsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
resetCountsWithCompletionHandlerSelector = mkSelector "resetCountsWithCompletionHandler:"

-- | @Selector@ for @readAttributeBssidWithCompletionHandler:@
readAttributeBssidWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBssidWithCompletionHandlerSelector = mkSelector "readAttributeBssidWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBssidWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBssidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBssidWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBssidWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBssidWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBssidWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBssidWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBssidWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSecurityTypeWithCompletionHandler:@
readAttributeSecurityTypeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSecurityTypeWithCompletionHandlerSelector = mkSelector "readAttributeSecurityTypeWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSecurityTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSecurityTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSecurityTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSecurityTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSecurityTypeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSecurityTypeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSecurityTypeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSecurityTypeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeWiFiVersionWithCompletionHandler:@
readAttributeWiFiVersionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeWiFiVersionWithCompletionHandlerSelector = mkSelector "readAttributeWiFiVersionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeWiFiVersionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeWiFiVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeWiFiVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeWiFiVersionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeWiFiVersionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeWiFiVersionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeWiFiVersionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeWiFiVersionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeChannelNumberWithCompletionHandler:@
readAttributeChannelNumberWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeChannelNumberWithCompletionHandlerSelector = mkSelector "readAttributeChannelNumberWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeChannelNumberWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeChannelNumberWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeChannelNumberWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeChannelNumberWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeChannelNumberWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeChannelNumberWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeChannelNumberWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeChannelNumberWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeRssiWithCompletionHandler:@
readAttributeRssiWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeRssiWithCompletionHandlerSelector = mkSelector "readAttributeRssiWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeRssiWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeRssiWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeRssiWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeRssiWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeRssiWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeRssiWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeRssiWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeRssiWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBeaconLostCountWithCompletionHandler:@
readAttributeBeaconLostCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBeaconLostCountWithCompletionHandlerSelector = mkSelector "readAttributeBeaconLostCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBeaconLostCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBeaconLostCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBeaconLostCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBeaconLostCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBeaconLostCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBeaconLostCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBeaconLostCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBeaconLostCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBeaconRxCountWithCompletionHandler:@
readAttributeBeaconRxCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBeaconRxCountWithCompletionHandlerSelector = mkSelector "readAttributeBeaconRxCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBeaconRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBeaconRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBeaconRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBeaconRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBeaconRxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBeaconRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBeaconRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBeaconRxCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePacketMulticastRxCountWithCompletionHandler:@
readAttributePacketMulticastRxCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePacketMulticastRxCountWithCompletionHandlerSelector = mkSelector "readAttributePacketMulticastRxCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePacketMulticastRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketMulticastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePacketMulticastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePacketMulticastRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePacketMulticastRxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketMulticastRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePacketMulticastRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePacketMulticastRxCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePacketMulticastTxCountWithCompletionHandler:@
readAttributePacketMulticastTxCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePacketMulticastTxCountWithCompletionHandlerSelector = mkSelector "readAttributePacketMulticastTxCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePacketMulticastTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketMulticastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePacketMulticastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePacketMulticastTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePacketMulticastTxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketMulticastTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePacketMulticastTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePacketMulticastTxCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePacketUnicastRxCountWithCompletionHandler:@
readAttributePacketUnicastRxCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePacketUnicastRxCountWithCompletionHandlerSelector = mkSelector "readAttributePacketUnicastRxCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePacketUnicastRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketUnicastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePacketUnicastRxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePacketUnicastRxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePacketUnicastRxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketUnicastRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePacketUnicastRxCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePacketUnicastRxCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePacketUnicastTxCountWithCompletionHandler:@
readAttributePacketUnicastTxCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePacketUnicastTxCountWithCompletionHandlerSelector = mkSelector "readAttributePacketUnicastTxCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePacketUnicastTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePacketUnicastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePacketUnicastTxCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePacketUnicastTxCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePacketUnicastTxCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePacketUnicastTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePacketUnicastTxCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePacketUnicastTxCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCurrentMaxRateWithCompletionHandler:@
readAttributeCurrentMaxRateWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentMaxRateWithCompletionHandlerSelector = mkSelector "readAttributeCurrentMaxRateWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentMaxRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentMaxRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentMaxRateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentMaxRateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentMaxRateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentMaxRateWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentMaxRateWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentMaxRateWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOverrunCountWithCompletionHandler:@
readAttributeOverrunCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOverrunCountWithCompletionHandlerSelector = mkSelector "readAttributeOverrunCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeOverrunCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOverrunCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOverrunCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOverrunCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOverrunCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOverrunCountWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterWiFiNetworkDiagnostics)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterWiFiNetworkDiagnostics)
newSelector = mkSelector "new"

