{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBaseDevice@.
module ObjC.Matter.MTRBaseDevice
  ( MTRBaseDevice
  , IsMTRBaseDevice(..)
  , init_
  , new
  , subscribeWithQueue_minInterval_maxInterval_params_cacheContainer_attributeReportHandler_eventReportHandler_errorHandler_subscriptionEstablished_resubscriptionScheduled
  , readAttributeWithEndpointId_clusterId_attributeId_params_clientQueue_completion
  , writeAttributeWithEndpointId_clusterId_attributeId_value_timedWriteTimeout_clientQueue_completion
  , invokeCommandWithEndpointId_clusterId_commandId_commandFields_timedInvokeTimeout_clientQueue_completion
  , subscribeAttributeWithEndpointId_clusterId_attributeId_minInterval_maxInterval_params_clientQueue_reportHandler_subscriptionEstablished
  , deregisterReportHandlersWithClientQueue_completion
  , openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completion
  , deregisterReportHandlersWithClientQueue_completionSelector
  , initSelector
  , invokeCommandWithEndpointId_clusterId_commandId_commandFields_timedInvokeTimeout_clientQueue_completionSelector
  , newSelector
  , openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completionSelector
  , readAttributeWithEndpointId_clusterId_attributeId_params_clientQueue_completionSelector
  , subscribeAttributeWithEndpointId_clusterId_attributeId_minInterval_maxInterval_params_clientQueue_reportHandler_subscriptionEstablishedSelector
  , subscribeWithQueue_minInterval_maxInterval_params_cacheContainer_attributeReportHandler_eventReportHandler_errorHandler_subscriptionEstablished_resubscriptionScheduledSelector
  , writeAttributeWithEndpointId_clusterId_attributeId_value_timedWriteTimeout_clientQueue_completionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTRBaseDevice mtrBaseDevice => mtrBaseDevice -> IO (Id MTRBaseDevice)
init_ mtrBaseDevice =
  sendOwnedMessage mtrBaseDevice initSelector

-- | @+ new@
new :: IO (Id MTRBaseDevice)
new  =
  do
    cls' <- getRequiredClass "MTRBaseDevice"
    sendOwnedClassMessage cls' newSelector

-- | Subscribe to receive attribute reports for everything (all endpoints, all clusters, all attributes, all events) on the device.
--
-- A non-nil attribute cache container will cache attribute values, retrievable through the designated attribute cache container.
--
-- attributeReportHandler will be called any time a data update is available (with a non-nil "value")
--
-- The array passed to attributeReportHandler will contain MTRAttributeReport instances.  Errors for specific paths, not the whole subscription, will be reported via those objects.
--
-- eventReportHandler will be called any time an event is reported (with a non-nil "value")
--
-- The array passed to eventReportHandler will contain CHIPEventReport instances.  Errors for specific paths, not the whole subscription, will be reported via those objects.
--
-- errorHandler will be called any time there is an error for the entire subscription (with a non-nil "error"), and terminate the subscription.  This will generally not be invoked if auto-resubscription is enabled, unless there is a fatal error during a resubscription attempt.
--
-- Both report handlers are not supported over XPC at the moment.
--
-- The subscriptionEstablished block, if not nil, will be called once the subscription is established.  This will be _after_ the first (priming) call to both report handlers.  Note that if the MTRSubscribeParams are set to automatically resubscribe this can end up being called more than once.
--
-- The resubscriptionScheduled block, if not nil, will be called if auto-resubscription is enabled, subscription loss is detected, and a resubscription is scheduled.  This can be called multiple times in a row without an intervening subscriptionEstablished call if the resubscription attempts fail.
--
-- ObjC selector: @- subscribeWithQueue:minInterval:maxInterval:params:cacheContainer:attributeReportHandler:eventReportHandler:errorHandler:subscriptionEstablished:resubscriptionScheduled:@
subscribeWithQueue_minInterval_maxInterval_params_cacheContainer_attributeReportHandler_eventReportHandler_errorHandler_subscriptionEstablished_resubscriptionScheduled :: (IsMTRBaseDevice mtrBaseDevice, IsNSObject queue, IsMTRSubscribeParams params, IsMTRAttributeCacheContainer attributeCacheContainer) => mtrBaseDevice -> queue -> CUShort -> CUShort -> params -> attributeCacheContainer -> Ptr () -> Ptr () -> Ptr () -> Ptr () -> Ptr () -> IO ()
subscribeWithQueue_minInterval_maxInterval_params_cacheContainer_attributeReportHandler_eventReportHandler_errorHandler_subscriptionEstablished_resubscriptionScheduled mtrBaseDevice queue minInterval maxInterval params attributeCacheContainer attributeReportHandler eventReportHandler errorHandler subscriptionEstablishedHandler resubscriptionScheduledHandler =
  sendMessage mtrBaseDevice subscribeWithQueue_minInterval_maxInterval_params_cacheContainer_attributeReportHandler_eventReportHandler_errorHandler_subscriptionEstablished_resubscriptionScheduledSelector (toNSObject queue) minInterval maxInterval (toMTRSubscribeParams params) (toMTRAttributeCacheContainer attributeCacheContainer) attributeReportHandler eventReportHandler errorHandler subscriptionEstablishedHandler resubscriptionScheduledHandler

-- | Read attribute in a designated attribute path
--
-- ObjC selector: @- readAttributeWithEndpointId:clusterId:attributeId:params:clientQueue:completion:@
readAttributeWithEndpointId_clusterId_attributeId_params_clientQueue_completion :: (IsMTRBaseDevice mtrBaseDevice, IsNSNumber endpointId, IsNSNumber clusterId, IsNSNumber attributeId, IsMTRReadParams params, IsNSObject clientQueue) => mtrBaseDevice -> endpointId -> clusterId -> attributeId -> params -> clientQueue -> Ptr () -> IO ()
readAttributeWithEndpointId_clusterId_attributeId_params_clientQueue_completion mtrBaseDevice endpointId clusterId attributeId params clientQueue completion =
  sendMessage mtrBaseDevice readAttributeWithEndpointId_clusterId_attributeId_params_clientQueue_completionSelector (toNSNumber endpointId) (toNSNumber clusterId) (toNSNumber attributeId) (toMTRReadParams params) (toNSObject clientQueue) completion

-- | Write to attribute in a designated attribute path
--
-- @value@ — A data-value NSDictionary object as described in                    MTRDeviceResponseHandler.
--
-- @timeoutMs@ — timeout in milliseconds for timed write, or nil.
--
-- @completion@ — response handler will receive either values or error.
--
-- Received values are an NSArray object with response-value element as described in                    readAttributeWithEndpointId:clusterId:attributeId:clientQueue:completion:.
--
-- ObjC selector: @- writeAttributeWithEndpointId:clusterId:attributeId:value:timedWriteTimeout:clientQueue:completion:@
writeAttributeWithEndpointId_clusterId_attributeId_value_timedWriteTimeout_clientQueue_completion :: (IsMTRBaseDevice mtrBaseDevice, IsNSNumber endpointId, IsNSNumber clusterId, IsNSNumber attributeId, IsNSNumber timeoutMs, IsNSObject clientQueue) => mtrBaseDevice -> endpointId -> clusterId -> attributeId -> RawId -> timeoutMs -> clientQueue -> Ptr () -> IO ()
writeAttributeWithEndpointId_clusterId_attributeId_value_timedWriteTimeout_clientQueue_completion mtrBaseDevice endpointId clusterId attributeId value timeoutMs clientQueue completion =
  sendMessage mtrBaseDevice writeAttributeWithEndpointId_clusterId_attributeId_value_timedWriteTimeout_clientQueue_completionSelector (toNSNumber endpointId) (toNSNumber clusterId) (toNSNumber attributeId) value (toNSNumber timeoutMs) (toNSObject clientQueue) completion

-- | Invoke a command with a designated command path
--
-- @commandFields@ — command fields object. The object must be a data-value NSDictionary object                      as described in the MTRDeviceResponseHandler.                      The attribute must be a Structure, i.e.,                      the NSDictionary MTRTypeKey key must have the value MTRStructureValueType.
--
-- @timeoutMs@ — timeout in milliseconds for timed invoke, or nil.
--
-- @completion@ — response handler will receive either values or error.
--
-- ObjC selector: @- invokeCommandWithEndpointId:clusterId:commandId:commandFields:timedInvokeTimeout:clientQueue:completion:@
invokeCommandWithEndpointId_clusterId_commandId_commandFields_timedInvokeTimeout_clientQueue_completion :: (IsMTRBaseDevice mtrBaseDevice, IsNSNumber endpointId, IsNSNumber clusterId, IsNSNumber commandId, IsNSNumber timeoutMs, IsNSObject clientQueue) => mtrBaseDevice -> endpointId -> clusterId -> commandId -> RawId -> timeoutMs -> clientQueue -> Ptr () -> IO ()
invokeCommandWithEndpointId_clusterId_commandId_commandFields_timedInvokeTimeout_clientQueue_completion mtrBaseDevice endpointId clusterId commandId commandFields timeoutMs clientQueue completion =
  sendMessage mtrBaseDevice invokeCommandWithEndpointId_clusterId_commandId_commandFields_timedInvokeTimeout_clientQueue_completionSelector (toNSNumber endpointId) (toNSNumber clusterId) (toNSNumber commandId) commandFields (toNSNumber timeoutMs) (toNSObject clientQueue) completion

-- | Subscribe an attribute in a designated attribute path
--
-- ObjC selector: @- subscribeAttributeWithEndpointId:clusterId:attributeId:minInterval:maxInterval:params:clientQueue:reportHandler:subscriptionEstablished:@
subscribeAttributeWithEndpointId_clusterId_attributeId_minInterval_maxInterval_params_clientQueue_reportHandler_subscriptionEstablished :: (IsMTRBaseDevice mtrBaseDevice, IsNSNumber endpointId, IsNSNumber clusterId, IsNSNumber attributeId, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params, IsNSObject clientQueue) => mtrBaseDevice -> endpointId -> clusterId -> attributeId -> minInterval -> maxInterval -> params -> clientQueue -> Ptr () -> Ptr () -> IO ()
subscribeAttributeWithEndpointId_clusterId_attributeId_minInterval_maxInterval_params_clientQueue_reportHandler_subscriptionEstablished mtrBaseDevice endpointId clusterId attributeId minInterval maxInterval params clientQueue reportHandler subscriptionEstablishedHandler =
  sendMessage mtrBaseDevice subscribeAttributeWithEndpointId_clusterId_attributeId_minInterval_maxInterval_params_clientQueue_reportHandler_subscriptionEstablishedSelector (toNSNumber endpointId) (toNSNumber clusterId) (toNSNumber attributeId) (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) (toNSObject clientQueue) reportHandler subscriptionEstablishedHandler

-- | Deregister all local report handlers for a remote device
--
-- This method is applicable only for a remote device. For a local device, the stack has to be shutdown to stop report handlers. There could be multiple clients accessing a node through a remote controller object and hence it is not appropriate for one of those clients to shut down the entire stack to stop receiving reports.
--
-- ObjC selector: @- deregisterReportHandlersWithClientQueue:completion:@
deregisterReportHandlersWithClientQueue_completion :: (IsMTRBaseDevice mtrBaseDevice, IsNSObject clientQueue) => mtrBaseDevice -> clientQueue -> Ptr () -> IO ()
deregisterReportHandlersWithClientQueue_completion mtrBaseDevice clientQueue completion =
  sendMessage mtrBaseDevice deregisterReportHandlersWithClientQueue_completionSelector (toNSObject clientQueue) completion

-- | Open a commissioning window on the device.
--
-- On success, completion will be called on queue with the MTRSetupPayload that can be used to commission the device.
--
-- @setupPasscode@ — The setup passcode to use for the commissioning window.                      See MTRSetupPayload's generateRandomSetupPasscode for                      generating a valid random passcode.
--
-- @discriminator@ — The discriminator to use for the commissionable                      advertisement.
--
-- @duration@ — Duration, in seconds, during which the commissioning                      window will be open.
--
-- ObjC selector: @- openCommissioningWindowWithSetupPasscode:discriminator:duration:queue:completion:@
openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completion :: (IsMTRBaseDevice mtrBaseDevice, IsNSNumber setupPasscode, IsNSNumber discriminator, IsNSNumber duration, IsNSObject queue) => mtrBaseDevice -> setupPasscode -> discriminator -> duration -> queue -> Ptr () -> IO ()
openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completion mtrBaseDevice setupPasscode discriminator duration queue completion =
  sendMessage mtrBaseDevice openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completionSelector (toNSNumber setupPasscode) (toNSNumber discriminator) (toNSNumber duration) (toNSObject queue) completion

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBaseDevice)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseDevice)
newSelector = mkSelector "new"

-- | @Selector@ for @subscribeWithQueue:minInterval:maxInterval:params:cacheContainer:attributeReportHandler:eventReportHandler:errorHandler:subscriptionEstablished:resubscriptionScheduled:@
subscribeWithQueue_minInterval_maxInterval_params_cacheContainer_attributeReportHandler_eventReportHandler_errorHandler_subscriptionEstablished_resubscriptionScheduledSelector :: Selector '[Id NSObject, CUShort, CUShort, Id MTRSubscribeParams, Id MTRAttributeCacheContainer, Ptr (), Ptr (), Ptr (), Ptr (), Ptr ()] ()
subscribeWithQueue_minInterval_maxInterval_params_cacheContainer_attributeReportHandler_eventReportHandler_errorHandler_subscriptionEstablished_resubscriptionScheduledSelector = mkSelector "subscribeWithQueue:minInterval:maxInterval:params:cacheContainer:attributeReportHandler:eventReportHandler:errorHandler:subscriptionEstablished:resubscriptionScheduled:"

-- | @Selector@ for @readAttributeWithEndpointId:clusterId:attributeId:params:clientQueue:completion:@
readAttributeWithEndpointId_clusterId_attributeId_params_clientQueue_completionSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, Id MTRReadParams, Id NSObject, Ptr ()] ()
readAttributeWithEndpointId_clusterId_attributeId_params_clientQueue_completionSelector = mkSelector "readAttributeWithEndpointId:clusterId:attributeId:params:clientQueue:completion:"

-- | @Selector@ for @writeAttributeWithEndpointId:clusterId:attributeId:value:timedWriteTimeout:clientQueue:completion:@
writeAttributeWithEndpointId_clusterId_attributeId_value_timedWriteTimeout_clientQueue_completionSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, RawId, Id NSNumber, Id NSObject, Ptr ()] ()
writeAttributeWithEndpointId_clusterId_attributeId_value_timedWriteTimeout_clientQueue_completionSelector = mkSelector "writeAttributeWithEndpointId:clusterId:attributeId:value:timedWriteTimeout:clientQueue:completion:"

-- | @Selector@ for @invokeCommandWithEndpointId:clusterId:commandId:commandFields:timedInvokeTimeout:clientQueue:completion:@
invokeCommandWithEndpointId_clusterId_commandId_commandFields_timedInvokeTimeout_clientQueue_completionSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, RawId, Id NSNumber, Id NSObject, Ptr ()] ()
invokeCommandWithEndpointId_clusterId_commandId_commandFields_timedInvokeTimeout_clientQueue_completionSelector = mkSelector "invokeCommandWithEndpointId:clusterId:commandId:commandFields:timedInvokeTimeout:clientQueue:completion:"

-- | @Selector@ for @subscribeAttributeWithEndpointId:clusterId:attributeId:minInterval:maxInterval:params:clientQueue:reportHandler:subscriptionEstablished:@
subscribeAttributeWithEndpointId_clusterId_attributeId_minInterval_maxInterval_params_clientQueue_reportHandler_subscriptionEstablishedSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Id NSObject, Ptr (), Ptr ()] ()
subscribeAttributeWithEndpointId_clusterId_attributeId_minInterval_maxInterval_params_clientQueue_reportHandler_subscriptionEstablishedSelector = mkSelector "subscribeAttributeWithEndpointId:clusterId:attributeId:minInterval:maxInterval:params:clientQueue:reportHandler:subscriptionEstablished:"

-- | @Selector@ for @deregisterReportHandlersWithClientQueue:completion:@
deregisterReportHandlersWithClientQueue_completionSelector :: Selector '[Id NSObject, Ptr ()] ()
deregisterReportHandlersWithClientQueue_completionSelector = mkSelector "deregisterReportHandlersWithClientQueue:completion:"

-- | @Selector@ for @openCommissioningWindowWithSetupPasscode:discriminator:duration:queue:completion:@
openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completionSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, Id NSObject, Ptr ()] ()
openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completionSelector = mkSelector "openCommissioningWindowWithSetupPasscode:discriminator:duration:queue:completion:"

