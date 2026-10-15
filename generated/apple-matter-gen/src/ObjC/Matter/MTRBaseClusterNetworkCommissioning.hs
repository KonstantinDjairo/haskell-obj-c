{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Network Commissioning    Functionality to configure, enable, disable network credentials and access on a Matter device.
--
-- Generated bindings for @MTRBaseClusterNetworkCommissioning@.
module ObjC.Matter.MTRBaseClusterNetworkCommissioning
  ( MTRBaseClusterNetworkCommissioning
  , IsMTRBaseClusterNetworkCommissioning(..)
  , initWithDevice_endpoint_queue
  , scanNetworksWithParams_completionHandler
  , addOrUpdateWiFiNetworkWithParams_completionHandler
  , addOrUpdateThreadNetworkWithParams_completionHandler
  , removeNetworkWithParams_completionHandler
  , connectNetworkWithParams_completionHandler
  , reorderNetworkWithParams_completionHandler
  , readAttributeMaxNetworksWithCompletionHandler
  , subscribeAttributeMaxNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeMaxNetworksWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeNetworksWithCompletionHandler
  , subscribeAttributeNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeNetworksWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeScanMaxTimeSecondsWithCompletionHandler
  , subscribeAttributeScanMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeScanMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeConnectMaxTimeSecondsWithCompletionHandler
  , subscribeAttributeConnectMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeConnectMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeInterfaceEnabledWithCompletionHandler
  , writeAttributeInterfaceEnabledWithValue_completionHandler
  , writeAttributeInterfaceEnabledWithValue_params_completionHandler
  , subscribeAttributeInterfaceEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeInterfaceEnabledWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeLastNetworkingStatusWithCompletionHandler
  , subscribeAttributeLastNetworkingStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeLastNetworkingStatusWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeLastNetworkIDWithCompletionHandler
  , subscribeAttributeLastNetworkIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeLastNetworkIDWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeLastConnectErrorValueWithCompletionHandler
  , subscribeAttributeLastConnectErrorValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeLastConnectErrorValueWithAttributeCache_endpoint_queue_completionHandler
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
  , addOrUpdateThreadNetworkWithParams_completionHandlerSelector
  , addOrUpdateWiFiNetworkWithParams_completionHandlerSelector
  , connectNetworkWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeConnectMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeConnectMaxTimeSecondsWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeInterfaceEnabledWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeInterfaceEnabledWithCompletionHandlerSelector
  , readAttributeLastConnectErrorValueWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeLastConnectErrorValueWithCompletionHandlerSelector
  , readAttributeLastNetworkIDWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeLastNetworkIDWithCompletionHandlerSelector
  , readAttributeLastNetworkingStatusWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeLastNetworkingStatusWithCompletionHandlerSelector
  , readAttributeMaxNetworksWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeMaxNetworksWithCompletionHandlerSelector
  , readAttributeNetworksWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeNetworksWithCompletionHandlerSelector
  , readAttributeScanMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeScanMaxTimeSecondsWithCompletionHandlerSelector
  , removeNetworkWithParams_completionHandlerSelector
  , reorderNetworkWithParams_completionHandlerSelector
  , scanNetworksWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeConnectMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeInterfaceEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeLastConnectErrorValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeLastNetworkIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeLastNetworkingStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeMaxNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeScanMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeInterfaceEnabledWithValue_completionHandlerSelector
  , writeAttributeInterfaceEnabledWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterNetworkCommissioning -> device -> CUShort -> queue -> IO (Id MTRBaseClusterNetworkCommissioning)
initWithDevice_endpoint_queue mtrBaseClusterNetworkCommissioning device endpoint queue =
  sendOwnedMessage mtrBaseClusterNetworkCommissioning initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- scanNetworksWithParams:completionHandler:@
scanNetworksWithParams_completionHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterScanNetworksParams params) => mtrBaseClusterNetworkCommissioning -> params -> Ptr () -> IO ()
scanNetworksWithParams_completionHandler mtrBaseClusterNetworkCommissioning params completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning scanNetworksWithParams_completionHandlerSelector (toMTRNetworkCommissioningClusterScanNetworksParams params) completionHandler

-- | @- addOrUpdateWiFiNetworkWithParams:completionHandler:@
addOrUpdateWiFiNetworkWithParams_completionHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams params) => mtrBaseClusterNetworkCommissioning -> params -> Ptr () -> IO ()
addOrUpdateWiFiNetworkWithParams_completionHandler mtrBaseClusterNetworkCommissioning params completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning addOrUpdateWiFiNetworkWithParams_completionHandlerSelector (toMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams params) completionHandler

-- | @- addOrUpdateThreadNetworkWithParams:completionHandler:@
addOrUpdateThreadNetworkWithParams_completionHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams params) => mtrBaseClusterNetworkCommissioning -> params -> Ptr () -> IO ()
addOrUpdateThreadNetworkWithParams_completionHandler mtrBaseClusterNetworkCommissioning params completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning addOrUpdateThreadNetworkWithParams_completionHandlerSelector (toMTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams params) completionHandler

-- | @- removeNetworkWithParams:completionHandler:@
removeNetworkWithParams_completionHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterRemoveNetworkParams params) => mtrBaseClusterNetworkCommissioning -> params -> Ptr () -> IO ()
removeNetworkWithParams_completionHandler mtrBaseClusterNetworkCommissioning params completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning removeNetworkWithParams_completionHandlerSelector (toMTRNetworkCommissioningClusterRemoveNetworkParams params) completionHandler

-- | @- connectNetworkWithParams:completionHandler:@
connectNetworkWithParams_completionHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterConnectNetworkParams params) => mtrBaseClusterNetworkCommissioning -> params -> Ptr () -> IO ()
connectNetworkWithParams_completionHandler mtrBaseClusterNetworkCommissioning params completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning connectNetworkWithParams_completionHandlerSelector (toMTRNetworkCommissioningClusterConnectNetworkParams params) completionHandler

-- | @- reorderNetworkWithParams:completionHandler:@
reorderNetworkWithParams_completionHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterReorderNetworkParams params) => mtrBaseClusterNetworkCommissioning -> params -> Ptr () -> IO ()
reorderNetworkWithParams_completionHandler mtrBaseClusterNetworkCommissioning params completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning reorderNetworkWithParams_completionHandlerSelector (toMTRNetworkCommissioningClusterReorderNetworkParams params) completionHandler

-- | @- readAttributeMaxNetworksWithCompletionHandler:@
readAttributeMaxNetworksWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeMaxNetworksWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeMaxNetworksWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeMaxNetworksWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeMaxNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeMaxNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeMaxNetworksWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxNetworksWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeMaxNetworksWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeMaxNetworksWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeNetworksWithCompletionHandler:@
readAttributeNetworksWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeNetworksWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeNetworksWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeNetworksWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeNetworksWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeNetworksWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeNetworksWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeNetworksWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeScanMaxTimeSecondsWithCompletionHandler:@
readAttributeScanMaxTimeSecondsWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeScanMaxTimeSecondsWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeScanMaxTimeSecondsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeScanMaxTimeSecondsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScanMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeScanMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeScanMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeScanMaxTimeSecondsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScanMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeScanMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeScanMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeConnectMaxTimeSecondsWithCompletionHandler:@
readAttributeConnectMaxTimeSecondsWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeConnectMaxTimeSecondsWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeConnectMaxTimeSecondsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeConnectMaxTimeSecondsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeConnectMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeConnectMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeConnectMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeConnectMaxTimeSecondsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeConnectMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeConnectMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeConnectMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeInterfaceEnabledWithCompletionHandler:@
readAttributeInterfaceEnabledWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeInterfaceEnabledWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeInterfaceEnabledWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeInterfaceEnabledWithValue:completionHandler:@
writeAttributeInterfaceEnabledWithValue_completionHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber value) => mtrBaseClusterNetworkCommissioning -> value -> Ptr () -> IO ()
writeAttributeInterfaceEnabledWithValue_completionHandler mtrBaseClusterNetworkCommissioning value completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning writeAttributeInterfaceEnabledWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeInterfaceEnabledWithValue:params:completionHandler:@
writeAttributeInterfaceEnabledWithValue_params_completionHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterNetworkCommissioning -> value -> params -> Ptr () -> IO ()
writeAttributeInterfaceEnabledWithValue_params_completionHandler mtrBaseClusterNetworkCommissioning value params completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning writeAttributeInterfaceEnabledWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeInterfaceEnabledWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeInterfaceEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeInterfaceEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeInterfaceEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeInterfaceEnabledWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeInterfaceEnabledWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeInterfaceEnabledWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeInterfaceEnabledWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeLastNetworkingStatusWithCompletionHandler:@
readAttributeLastNetworkingStatusWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeLastNetworkingStatusWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeLastNetworkingStatusWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeLastNetworkingStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLastNetworkingStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeLastNetworkingStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeLastNetworkingStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeLastNetworkingStatusWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLastNetworkingStatusWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeLastNetworkingStatusWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeLastNetworkingStatusWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeLastNetworkIDWithCompletionHandler:@
readAttributeLastNetworkIDWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeLastNetworkIDWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeLastNetworkIDWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeLastNetworkIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLastNetworkIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeLastNetworkIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeLastNetworkIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeLastNetworkIDWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLastNetworkIDWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeLastNetworkIDWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeLastNetworkIDWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeLastConnectErrorValueWithCompletionHandler:@
readAttributeLastConnectErrorValueWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeLastConnectErrorValueWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeLastConnectErrorValueWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeLastConnectErrorValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLastConnectErrorValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeLastConnectErrorValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeLastConnectErrorValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeLastConnectErrorValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLastConnectErrorValueWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeLastConnectErrorValueWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeLastConnectErrorValueWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterNetworkCommissioning completionHandler =
  sendMessage mtrBaseClusterNetworkCommissioning readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterNetworkCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterNetworkCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterNetworkCommissioning subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterNetworkCommissioning mtrBaseClusterNetworkCommissioning => mtrBaseClusterNetworkCommissioning -> IO (Id MTRBaseClusterNetworkCommissioning)
init_ mtrBaseClusterNetworkCommissioning =
  sendOwnedMessage mtrBaseClusterNetworkCommissioning initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterNetworkCommissioning)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterNetworkCommissioning"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterNetworkCommissioning)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @scanNetworksWithParams:completionHandler:@
scanNetworksWithParams_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterScanNetworksParams, Ptr ()] ()
scanNetworksWithParams_completionHandlerSelector = mkSelector "scanNetworksWithParams:completionHandler:"

-- | @Selector@ for @addOrUpdateWiFiNetworkWithParams:completionHandler:@
addOrUpdateWiFiNetworkWithParams_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams, Ptr ()] ()
addOrUpdateWiFiNetworkWithParams_completionHandlerSelector = mkSelector "addOrUpdateWiFiNetworkWithParams:completionHandler:"

-- | @Selector@ for @addOrUpdateThreadNetworkWithParams:completionHandler:@
addOrUpdateThreadNetworkWithParams_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams, Ptr ()] ()
addOrUpdateThreadNetworkWithParams_completionHandlerSelector = mkSelector "addOrUpdateThreadNetworkWithParams:completionHandler:"

-- | @Selector@ for @removeNetworkWithParams:completionHandler:@
removeNetworkWithParams_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterRemoveNetworkParams, Ptr ()] ()
removeNetworkWithParams_completionHandlerSelector = mkSelector "removeNetworkWithParams:completionHandler:"

-- | @Selector@ for @connectNetworkWithParams:completionHandler:@
connectNetworkWithParams_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterConnectNetworkParams, Ptr ()] ()
connectNetworkWithParams_completionHandlerSelector = mkSelector "connectNetworkWithParams:completionHandler:"

-- | @Selector@ for @reorderNetworkWithParams:completionHandler:@
reorderNetworkWithParams_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterReorderNetworkParams, Ptr ()] ()
reorderNetworkWithParams_completionHandlerSelector = mkSelector "reorderNetworkWithParams:completionHandler:"

-- | @Selector@ for @readAttributeMaxNetworksWithCompletionHandler:@
readAttributeMaxNetworksWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeMaxNetworksWithCompletionHandlerSelector = mkSelector "readAttributeMaxNetworksWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeMaxNetworksWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeMaxNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeMaxNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeMaxNetworksWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeMaxNetworksWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeMaxNetworksWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeMaxNetworksWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeMaxNetworksWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeNetworksWithCompletionHandler:@
readAttributeNetworksWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeNetworksWithCompletionHandlerSelector = mkSelector "readAttributeNetworksWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeNetworksWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeNetworksWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeNetworksWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeNetworksWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeNetworksWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeNetworksWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeNetworksWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeScanMaxTimeSecondsWithCompletionHandler:@
readAttributeScanMaxTimeSecondsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeScanMaxTimeSecondsWithCompletionHandlerSelector = mkSelector "readAttributeScanMaxTimeSecondsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeScanMaxTimeSecondsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScanMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeScanMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeScanMaxTimeSecondsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeScanMaxTimeSecondsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScanMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeScanMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeScanMaxTimeSecondsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeConnectMaxTimeSecondsWithCompletionHandler:@
readAttributeConnectMaxTimeSecondsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeConnectMaxTimeSecondsWithCompletionHandlerSelector = mkSelector "readAttributeConnectMaxTimeSecondsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeConnectMaxTimeSecondsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeConnectMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeConnectMaxTimeSecondsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeConnectMaxTimeSecondsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeConnectMaxTimeSecondsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeConnectMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeConnectMaxTimeSecondsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeConnectMaxTimeSecondsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeInterfaceEnabledWithCompletionHandler:@
readAttributeInterfaceEnabledWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeInterfaceEnabledWithCompletionHandlerSelector = mkSelector "readAttributeInterfaceEnabledWithCompletionHandler:"

-- | @Selector@ for @writeAttributeInterfaceEnabledWithValue:completionHandler:@
writeAttributeInterfaceEnabledWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeInterfaceEnabledWithValue_completionHandlerSelector = mkSelector "writeAttributeInterfaceEnabledWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeInterfaceEnabledWithValue:params:completionHandler:@
writeAttributeInterfaceEnabledWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeInterfaceEnabledWithValue_params_completionHandlerSelector = mkSelector "writeAttributeInterfaceEnabledWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeInterfaceEnabledWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeInterfaceEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeInterfaceEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeInterfaceEnabledWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeInterfaceEnabledWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeInterfaceEnabledWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeInterfaceEnabledWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeInterfaceEnabledWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeLastNetworkingStatusWithCompletionHandler:@
readAttributeLastNetworkingStatusWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeLastNetworkingStatusWithCompletionHandlerSelector = mkSelector "readAttributeLastNetworkingStatusWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeLastNetworkingStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLastNetworkingStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeLastNetworkingStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeLastNetworkingStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeLastNetworkingStatusWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLastNetworkingStatusWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeLastNetworkingStatusWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeLastNetworkingStatusWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeLastNetworkIDWithCompletionHandler:@
readAttributeLastNetworkIDWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeLastNetworkIDWithCompletionHandlerSelector = mkSelector "readAttributeLastNetworkIDWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeLastNetworkIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLastNetworkIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeLastNetworkIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeLastNetworkIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeLastNetworkIDWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLastNetworkIDWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeLastNetworkIDWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeLastNetworkIDWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeLastConnectErrorValueWithCompletionHandler:@
readAttributeLastConnectErrorValueWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeLastConnectErrorValueWithCompletionHandlerSelector = mkSelector "readAttributeLastConnectErrorValueWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeLastConnectErrorValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLastConnectErrorValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeLastConnectErrorValueWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeLastConnectErrorValueWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeLastConnectErrorValueWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLastConnectErrorValueWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeLastConnectErrorValueWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeLastConnectErrorValueWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterNetworkCommissioning)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterNetworkCommissioning)
newSelector = mkSelector "new"

