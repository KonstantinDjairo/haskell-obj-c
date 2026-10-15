{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster General Diagnostics    The General Diagnostics Cluster, along with other diagnostics clusters, provide a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
--
-- Generated bindings for @MTRBaseClusterGeneralDiagnostics@.
module ObjC.Matter.MTRBaseClusterGeneralDiagnostics
  ( MTRBaseClusterGeneralDiagnostics
  , IsMTRBaseClusterGeneralDiagnostics(..)
  , initWithDevice_endpoint_queue
  , testEventTriggerWithParams_completionHandler
  , readAttributeNetworkInterfacesWithCompletionHandler
  , subscribeAttributeNetworkInterfacesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeNetworkInterfacesWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeRebootCountWithCompletionHandler
  , subscribeAttributeRebootCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeRebootCountWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeUpTimeWithCompletionHandler
  , subscribeAttributeUpTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeUpTimeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeTotalOperationalHoursWithCompletionHandler
  , subscribeAttributeTotalOperationalHoursWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeTotalOperationalHoursWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBootReasonsWithCompletionHandler
  , subscribeAttributeBootReasonsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBootReasonsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeActiveHardwareFaultsWithCompletionHandler
  , subscribeAttributeActiveHardwareFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeActiveHardwareFaultsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeActiveRadioFaultsWithCompletionHandler
  , subscribeAttributeActiveRadioFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeActiveRadioFaultsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeActiveNetworkFaultsWithCompletionHandler
  , subscribeAttributeActiveNetworkFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeActiveNetworkFaultsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeTestEventTriggersEnabledWithCompletionHandler
  , subscribeAttributeTestEventTriggersEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeTestEventTriggersEnabledWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeActiveHardwareFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeActiveHardwareFaultsWithCompletionHandlerSelector
  , readAttributeActiveNetworkFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeActiveNetworkFaultsWithCompletionHandlerSelector
  , readAttributeActiveRadioFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeActiveRadioFaultsWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeBootReasonsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBootReasonsWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeNetworkInterfacesWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeNetworkInterfacesWithCompletionHandlerSelector
  , readAttributeRebootCountWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeRebootCountWithCompletionHandlerSelector
  , readAttributeTestEventTriggersEnabledWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeTestEventTriggersEnabledWithCompletionHandlerSelector
  , readAttributeTotalOperationalHoursWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeTotalOperationalHoursWithCompletionHandlerSelector
  , readAttributeUpTimeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeUpTimeWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeActiveHardwareFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeActiveNetworkFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeActiveRadioFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBootReasonsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeNetworkInterfacesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeRebootCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeTestEventTriggersEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeTotalOperationalHoursWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeUpTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , testEventTriggerWithParams_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterGeneralDiagnostics -> device -> CUShort -> queue -> IO (Id MTRBaseClusterGeneralDiagnostics)
initWithDevice_endpoint_queue mtrBaseClusterGeneralDiagnostics device endpoint queue =
  sendOwnedMessage mtrBaseClusterGeneralDiagnostics initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- testEventTriggerWithParams:completionHandler:@
testEventTriggerWithParams_completionHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsMTRGeneralDiagnosticsClusterTestEventTriggerParams params) => mtrBaseClusterGeneralDiagnostics -> params -> Ptr () -> IO ()
testEventTriggerWithParams_completionHandler mtrBaseClusterGeneralDiagnostics params completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics testEventTriggerWithParams_completionHandlerSelector (toMTRGeneralDiagnosticsClusterTestEventTriggerParams params) completionHandler

-- | @- readAttributeNetworkInterfacesWithCompletionHandler:@
readAttributeNetworkInterfacesWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeNetworkInterfacesWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeNetworkInterfacesWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeNetworkInterfacesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeNetworkInterfacesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeNetworkInterfacesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeNetworkInterfacesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeNetworkInterfacesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeNetworkInterfacesWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeNetworkInterfacesWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeNetworkInterfacesWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeRebootCountWithCompletionHandler:@
readAttributeRebootCountWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeRebootCountWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeRebootCountWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeRebootCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeRebootCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeRebootCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeRebootCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeRebootCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeRebootCountWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeRebootCountWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeRebootCountWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeUpTimeWithCompletionHandler:@
readAttributeUpTimeWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeUpTimeWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeUpTimeWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeUpTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeUpTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeUpTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeUpTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeUpTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeUpTimeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeUpTimeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeUpTimeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeTotalOperationalHoursWithCompletionHandler:@
readAttributeTotalOperationalHoursWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeTotalOperationalHoursWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeTotalOperationalHoursWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeTotalOperationalHoursWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTotalOperationalHoursWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeTotalOperationalHoursWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeTotalOperationalHoursWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeTotalOperationalHoursWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTotalOperationalHoursWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeTotalOperationalHoursWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeTotalOperationalHoursWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBootReasonsWithCompletionHandler:@
readAttributeBootReasonsWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeBootReasonsWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeBootReasonsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBootReasonsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBootReasonsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBootReasonsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeBootReasonsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBootReasonsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBootReasonsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBootReasonsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeBootReasonsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeActiveHardwareFaultsWithCompletionHandler:@
readAttributeActiveHardwareFaultsWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeActiveHardwareFaultsWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeActiveHardwareFaultsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeActiveHardwareFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveHardwareFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeActiveHardwareFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeActiveHardwareFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeActiveHardwareFaultsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveHardwareFaultsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeActiveHardwareFaultsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeActiveHardwareFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeActiveRadioFaultsWithCompletionHandler:@
readAttributeActiveRadioFaultsWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeActiveRadioFaultsWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeActiveRadioFaultsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeActiveRadioFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveRadioFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeActiveRadioFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeActiveRadioFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeActiveRadioFaultsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveRadioFaultsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeActiveRadioFaultsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeActiveRadioFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeActiveNetworkFaultsWithCompletionHandler:@
readAttributeActiveNetworkFaultsWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeActiveNetworkFaultsWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeActiveNetworkFaultsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeActiveNetworkFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveNetworkFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeActiveNetworkFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeActiveNetworkFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeActiveNetworkFaultsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveNetworkFaultsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeActiveNetworkFaultsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeActiveNetworkFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeTestEventTriggersEnabledWithCompletionHandler:@
readAttributeTestEventTriggersEnabledWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeTestEventTriggersEnabledWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeTestEventTriggersEnabledWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeTestEventTriggersEnabledWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTestEventTriggersEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeTestEventTriggersEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeTestEventTriggersEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeTestEventTriggersEnabledWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTestEventTriggersEnabledWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeTestEventTriggersEnabledWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeTestEventTriggersEnabledWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterGeneralDiagnostics completionHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralDiagnostics -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralDiagnostics minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralDiagnostics subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterGeneralDiagnostics mtrBaseClusterGeneralDiagnostics => mtrBaseClusterGeneralDiagnostics -> IO (Id MTRBaseClusterGeneralDiagnostics)
init_ mtrBaseClusterGeneralDiagnostics =
  sendOwnedMessage mtrBaseClusterGeneralDiagnostics initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterGeneralDiagnostics)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralDiagnostics"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterGeneralDiagnostics)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @testEventTriggerWithParams:completionHandler:@
testEventTriggerWithParams_completionHandlerSelector :: Selector '[Id MTRGeneralDiagnosticsClusterTestEventTriggerParams, Ptr ()] ()
testEventTriggerWithParams_completionHandlerSelector = mkSelector "testEventTriggerWithParams:completionHandler:"

-- | @Selector@ for @readAttributeNetworkInterfacesWithCompletionHandler:@
readAttributeNetworkInterfacesWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeNetworkInterfacesWithCompletionHandlerSelector = mkSelector "readAttributeNetworkInterfacesWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeNetworkInterfacesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeNetworkInterfacesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeNetworkInterfacesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeNetworkInterfacesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeNetworkInterfacesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeNetworkInterfacesWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeNetworkInterfacesWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeNetworkInterfacesWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeRebootCountWithCompletionHandler:@
readAttributeRebootCountWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeRebootCountWithCompletionHandlerSelector = mkSelector "readAttributeRebootCountWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeRebootCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeRebootCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeRebootCountWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeRebootCountWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeRebootCountWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeRebootCountWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeRebootCountWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeRebootCountWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeUpTimeWithCompletionHandler:@
readAttributeUpTimeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeUpTimeWithCompletionHandlerSelector = mkSelector "readAttributeUpTimeWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeUpTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeUpTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeUpTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeUpTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeUpTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeUpTimeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeUpTimeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeUpTimeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeTotalOperationalHoursWithCompletionHandler:@
readAttributeTotalOperationalHoursWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeTotalOperationalHoursWithCompletionHandlerSelector = mkSelector "readAttributeTotalOperationalHoursWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeTotalOperationalHoursWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTotalOperationalHoursWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeTotalOperationalHoursWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeTotalOperationalHoursWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeTotalOperationalHoursWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTotalOperationalHoursWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeTotalOperationalHoursWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeTotalOperationalHoursWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBootReasonsWithCompletionHandler:@
readAttributeBootReasonsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBootReasonsWithCompletionHandlerSelector = mkSelector "readAttributeBootReasonsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBootReasonsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBootReasonsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBootReasonsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBootReasonsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBootReasonsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBootReasonsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBootReasonsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBootReasonsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeActiveHardwareFaultsWithCompletionHandler:@
readAttributeActiveHardwareFaultsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeActiveHardwareFaultsWithCompletionHandlerSelector = mkSelector "readAttributeActiveHardwareFaultsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeActiveHardwareFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveHardwareFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeActiveHardwareFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeActiveHardwareFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeActiveHardwareFaultsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveHardwareFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeActiveHardwareFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeActiveHardwareFaultsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeActiveRadioFaultsWithCompletionHandler:@
readAttributeActiveRadioFaultsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeActiveRadioFaultsWithCompletionHandlerSelector = mkSelector "readAttributeActiveRadioFaultsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeActiveRadioFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveRadioFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeActiveRadioFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeActiveRadioFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeActiveRadioFaultsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveRadioFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeActiveRadioFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeActiveRadioFaultsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeActiveNetworkFaultsWithCompletionHandler:@
readAttributeActiveNetworkFaultsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeActiveNetworkFaultsWithCompletionHandlerSelector = mkSelector "readAttributeActiveNetworkFaultsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeActiveNetworkFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveNetworkFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeActiveNetworkFaultsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeActiveNetworkFaultsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeActiveNetworkFaultsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveNetworkFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeActiveNetworkFaultsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeActiveNetworkFaultsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeTestEventTriggersEnabledWithCompletionHandler:@
readAttributeTestEventTriggersEnabledWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeTestEventTriggersEnabledWithCompletionHandlerSelector = mkSelector "readAttributeTestEventTriggersEnabledWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeTestEventTriggersEnabledWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTestEventTriggersEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeTestEventTriggersEnabledWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeTestEventTriggersEnabledWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeTestEventTriggersEnabledWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTestEventTriggersEnabledWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeTestEventTriggersEnabledWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeTestEventTriggersEnabledWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterGeneralDiagnostics)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterGeneralDiagnostics)
newSelector = mkSelector "new"

