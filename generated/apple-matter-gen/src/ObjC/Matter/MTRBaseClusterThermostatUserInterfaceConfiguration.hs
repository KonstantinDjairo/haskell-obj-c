{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Thermostat User Interface Configuration    An interface for configuring the user interface of a thermostat (which may be remote from the thermostat).
--
-- Generated bindings for @MTRBaseClusterThermostatUserInterfaceConfiguration@.
module ObjC.Matter.MTRBaseClusterThermostatUserInterfaceConfiguration
  ( MTRBaseClusterThermostatUserInterfaceConfiguration
  , IsMTRBaseClusterThermostatUserInterfaceConfiguration(..)
  , initWithDevice_endpoint_queue
  , readAttributeTemperatureDisplayModeWithCompletionHandler
  , writeAttributeTemperatureDisplayModeWithValue_completionHandler
  , writeAttributeTemperatureDisplayModeWithValue_params_completionHandler
  , subscribeAttributeTemperatureDisplayModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeTemperatureDisplayModeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeKeypadLockoutWithCompletionHandler
  , writeAttributeKeypadLockoutWithValue_completionHandler
  , writeAttributeKeypadLockoutWithValue_params_completionHandler
  , subscribeAttributeKeypadLockoutWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeKeypadLockoutWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeScheduleProgrammingVisibilityWithCompletionHandler
  , writeAttributeScheduleProgrammingVisibilityWithValue_completionHandler
  , writeAttributeScheduleProgrammingVisibilityWithValue_params_completionHandler
  , subscribeAttributeScheduleProgrammingVisibilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeScheduleProgrammingVisibilityWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeKeypadLockoutWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeKeypadLockoutWithCompletionHandlerSelector
  , readAttributeScheduleProgrammingVisibilityWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeScheduleProgrammingVisibilityWithCompletionHandlerSelector
  , readAttributeTemperatureDisplayModeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeTemperatureDisplayModeWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeKeypadLockoutWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeScheduleProgrammingVisibilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeTemperatureDisplayModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeKeypadLockoutWithValue_completionHandlerSelector
  , writeAttributeKeypadLockoutWithValue_params_completionHandlerSelector
  , writeAttributeScheduleProgrammingVisibilityWithValue_completionHandlerSelector
  , writeAttributeScheduleProgrammingVisibilityWithValue_params_completionHandlerSelector
  , writeAttributeTemperatureDisplayModeWithValue_completionHandlerSelector
  , writeAttributeTemperatureDisplayModeWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterThermostatUserInterfaceConfiguration -> device -> CUShort -> queue -> IO (Id MTRBaseClusterThermostatUserInterfaceConfiguration)
initWithDevice_endpoint_queue mtrBaseClusterThermostatUserInterfaceConfiguration device endpoint queue =
  sendOwnedMessage mtrBaseClusterThermostatUserInterfaceConfiguration initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- readAttributeTemperatureDisplayModeWithCompletionHandler:@
readAttributeTemperatureDisplayModeWithCompletionHandler :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> Ptr () -> IO ()
readAttributeTemperatureDisplayModeWithCompletionHandler mtrBaseClusterThermostatUserInterfaceConfiguration completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration readAttributeTemperatureDisplayModeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeTemperatureDisplayModeWithValue:completionHandler:@
writeAttributeTemperatureDisplayModeWithValue_completionHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber value) => mtrBaseClusterThermostatUserInterfaceConfiguration -> value -> Ptr () -> IO ()
writeAttributeTemperatureDisplayModeWithValue_completionHandler mtrBaseClusterThermostatUserInterfaceConfiguration value completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration writeAttributeTemperatureDisplayModeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeTemperatureDisplayModeWithValue:params:completionHandler:@
writeAttributeTemperatureDisplayModeWithValue_params_completionHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> value -> params -> Ptr () -> IO ()
writeAttributeTemperatureDisplayModeWithValue_params_completionHandler mtrBaseClusterThermostatUserInterfaceConfiguration value params completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration writeAttributeTemperatureDisplayModeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeTemperatureDisplayModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTemperatureDisplayModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeTemperatureDisplayModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterThermostatUserInterfaceConfiguration minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration subscribeAttributeTemperatureDisplayModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeTemperatureDisplayModeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTemperatureDisplayModeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeTemperatureDisplayModeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendClassMessage cls' readAttributeTemperatureDisplayModeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeKeypadLockoutWithCompletionHandler:@
readAttributeKeypadLockoutWithCompletionHandler :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> Ptr () -> IO ()
readAttributeKeypadLockoutWithCompletionHandler mtrBaseClusterThermostatUserInterfaceConfiguration completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration readAttributeKeypadLockoutWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeKeypadLockoutWithValue:completionHandler:@
writeAttributeKeypadLockoutWithValue_completionHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber value) => mtrBaseClusterThermostatUserInterfaceConfiguration -> value -> Ptr () -> IO ()
writeAttributeKeypadLockoutWithValue_completionHandler mtrBaseClusterThermostatUserInterfaceConfiguration value completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration writeAttributeKeypadLockoutWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeKeypadLockoutWithValue:params:completionHandler:@
writeAttributeKeypadLockoutWithValue_params_completionHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> value -> params -> Ptr () -> IO ()
writeAttributeKeypadLockoutWithValue_params_completionHandler mtrBaseClusterThermostatUserInterfaceConfiguration value params completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration writeAttributeKeypadLockoutWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeKeypadLockoutWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeKeypadLockoutWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeKeypadLockoutWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterThermostatUserInterfaceConfiguration minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration subscribeAttributeKeypadLockoutWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeKeypadLockoutWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeKeypadLockoutWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeKeypadLockoutWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendClassMessage cls' readAttributeKeypadLockoutWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeScheduleProgrammingVisibilityWithCompletionHandler:@
readAttributeScheduleProgrammingVisibilityWithCompletionHandler :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> Ptr () -> IO ()
readAttributeScheduleProgrammingVisibilityWithCompletionHandler mtrBaseClusterThermostatUserInterfaceConfiguration completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration readAttributeScheduleProgrammingVisibilityWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeScheduleProgrammingVisibilityWithValue:completionHandler:@
writeAttributeScheduleProgrammingVisibilityWithValue_completionHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber value) => mtrBaseClusterThermostatUserInterfaceConfiguration -> value -> Ptr () -> IO ()
writeAttributeScheduleProgrammingVisibilityWithValue_completionHandler mtrBaseClusterThermostatUserInterfaceConfiguration value completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration writeAttributeScheduleProgrammingVisibilityWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeScheduleProgrammingVisibilityWithValue:params:completionHandler:@
writeAttributeScheduleProgrammingVisibilityWithValue_params_completionHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> value -> params -> Ptr () -> IO ()
writeAttributeScheduleProgrammingVisibilityWithValue_params_completionHandler mtrBaseClusterThermostatUserInterfaceConfiguration value params completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration writeAttributeScheduleProgrammingVisibilityWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeScheduleProgrammingVisibilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScheduleProgrammingVisibilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeScheduleProgrammingVisibilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterThermostatUserInterfaceConfiguration minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration subscribeAttributeScheduleProgrammingVisibilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeScheduleProgrammingVisibilityWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScheduleProgrammingVisibilityWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeScheduleProgrammingVisibilityWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendClassMessage cls' readAttributeScheduleProgrammingVisibilityWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterThermostatUserInterfaceConfiguration completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterThermostatUserInterfaceConfiguration minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterThermostatUserInterfaceConfiguration completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterThermostatUserInterfaceConfiguration minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterThermostatUserInterfaceConfiguration completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterThermostatUserInterfaceConfiguration minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterThermostatUserInterfaceConfiguration completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterThermostatUserInterfaceConfiguration minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterThermostatUserInterfaceConfiguration completionHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterThermostatUserInterfaceConfiguration -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterThermostatUserInterfaceConfiguration minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterThermostatUserInterfaceConfiguration subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterThermostatUserInterfaceConfiguration mtrBaseClusterThermostatUserInterfaceConfiguration => mtrBaseClusterThermostatUserInterfaceConfiguration -> IO (Id MTRBaseClusterThermostatUserInterfaceConfiguration)
init_ mtrBaseClusterThermostatUserInterfaceConfiguration =
  sendOwnedMessage mtrBaseClusterThermostatUserInterfaceConfiguration initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterThermostatUserInterfaceConfiguration)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterThermostatUserInterfaceConfiguration"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterThermostatUserInterfaceConfiguration)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeTemperatureDisplayModeWithCompletionHandler:@
readAttributeTemperatureDisplayModeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeTemperatureDisplayModeWithCompletionHandlerSelector = mkSelector "readAttributeTemperatureDisplayModeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeTemperatureDisplayModeWithValue:completionHandler:@
writeAttributeTemperatureDisplayModeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeTemperatureDisplayModeWithValue_completionHandlerSelector = mkSelector "writeAttributeTemperatureDisplayModeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeTemperatureDisplayModeWithValue:params:completionHandler:@
writeAttributeTemperatureDisplayModeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeTemperatureDisplayModeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeTemperatureDisplayModeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeTemperatureDisplayModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTemperatureDisplayModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeTemperatureDisplayModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeTemperatureDisplayModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeTemperatureDisplayModeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTemperatureDisplayModeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeTemperatureDisplayModeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeTemperatureDisplayModeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeKeypadLockoutWithCompletionHandler:@
readAttributeKeypadLockoutWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeKeypadLockoutWithCompletionHandlerSelector = mkSelector "readAttributeKeypadLockoutWithCompletionHandler:"

-- | @Selector@ for @writeAttributeKeypadLockoutWithValue:completionHandler:@
writeAttributeKeypadLockoutWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeKeypadLockoutWithValue_completionHandlerSelector = mkSelector "writeAttributeKeypadLockoutWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeKeypadLockoutWithValue:params:completionHandler:@
writeAttributeKeypadLockoutWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeKeypadLockoutWithValue_params_completionHandlerSelector = mkSelector "writeAttributeKeypadLockoutWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeKeypadLockoutWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeKeypadLockoutWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeKeypadLockoutWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeKeypadLockoutWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeKeypadLockoutWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeKeypadLockoutWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeKeypadLockoutWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeKeypadLockoutWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeScheduleProgrammingVisibilityWithCompletionHandler:@
readAttributeScheduleProgrammingVisibilityWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeScheduleProgrammingVisibilityWithCompletionHandlerSelector = mkSelector "readAttributeScheduleProgrammingVisibilityWithCompletionHandler:"

-- | @Selector@ for @writeAttributeScheduleProgrammingVisibilityWithValue:completionHandler:@
writeAttributeScheduleProgrammingVisibilityWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeScheduleProgrammingVisibilityWithValue_completionHandlerSelector = mkSelector "writeAttributeScheduleProgrammingVisibilityWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeScheduleProgrammingVisibilityWithValue:params:completionHandler:@
writeAttributeScheduleProgrammingVisibilityWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeScheduleProgrammingVisibilityWithValue_params_completionHandlerSelector = mkSelector "writeAttributeScheduleProgrammingVisibilityWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeScheduleProgrammingVisibilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeScheduleProgrammingVisibilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeScheduleProgrammingVisibilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeScheduleProgrammingVisibilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeScheduleProgrammingVisibilityWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeScheduleProgrammingVisibilityWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeScheduleProgrammingVisibilityWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeScheduleProgrammingVisibilityWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterThermostatUserInterfaceConfiguration)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterThermostatUserInterfaceConfiguration)
newSelector = mkSelector "new"

