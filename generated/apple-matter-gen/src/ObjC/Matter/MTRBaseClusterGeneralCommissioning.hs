{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster General Commissioning    This cluster is used to manage global aspects of the Commissioning flow.
--
-- Generated bindings for @MTRBaseClusterGeneralCommissioning@.
module ObjC.Matter.MTRBaseClusterGeneralCommissioning
  ( MTRBaseClusterGeneralCommissioning
  , IsMTRBaseClusterGeneralCommissioning(..)
  , initWithDevice_endpoint_queue
  , armFailSafeWithParams_completionHandler
  , setRegulatoryConfigWithParams_completionHandler
  , commissioningCompleteWithParams_completionHandler
  , commissioningCompleteWithCompletionHandler
  , readAttributeBreadcrumbWithCompletionHandler
  , writeAttributeBreadcrumbWithValue_completionHandler
  , writeAttributeBreadcrumbWithValue_params_completionHandler
  , subscribeAttributeBreadcrumbWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBreadcrumbWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeBasicCommissioningInfoWithCompletionHandler
  , subscribeAttributeBasicCommissioningInfoWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeBasicCommissioningInfoWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeRegulatoryConfigWithCompletionHandler
  , subscribeAttributeRegulatoryConfigWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeRegulatoryConfigWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeLocationCapabilityWithCompletionHandler
  , subscribeAttributeLocationCapabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeLocationCapabilityWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSupportsConcurrentConnectionWithCompletionHandler
  , subscribeAttributeSupportsConcurrentConnectionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSupportsConcurrentConnectionWithAttributeCache_endpoint_queue_completionHandler
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
  , armFailSafeWithParams_completionHandlerSelector
  , commissioningCompleteWithCompletionHandlerSelector
  , commissioningCompleteWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeBasicCommissioningInfoWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBasicCommissioningInfoWithCompletionHandlerSelector
  , readAttributeBreadcrumbWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeBreadcrumbWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeLocationCapabilityWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeLocationCapabilityWithCompletionHandlerSelector
  , readAttributeRegulatoryConfigWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeRegulatoryConfigWithCompletionHandlerSelector
  , readAttributeSupportsConcurrentConnectionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSupportsConcurrentConnectionWithCompletionHandlerSelector
  , setRegulatoryConfigWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBasicCommissioningInfoWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeBreadcrumbWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeLocationCapabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeRegulatoryConfigWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSupportsConcurrentConnectionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeBreadcrumbWithValue_completionHandlerSelector
  , writeAttributeBreadcrumbWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterGeneralCommissioning -> device -> CUShort -> queue -> IO (Id MTRBaseClusterGeneralCommissioning)
initWithDevice_endpoint_queue mtrBaseClusterGeneralCommissioning device endpoint queue =
  sendOwnedMessage mtrBaseClusterGeneralCommissioning initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- armFailSafeWithParams:completionHandler:@
armFailSafeWithParams_completionHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsMTRGeneralCommissioningClusterArmFailSafeParams params) => mtrBaseClusterGeneralCommissioning -> params -> Ptr () -> IO ()
armFailSafeWithParams_completionHandler mtrBaseClusterGeneralCommissioning params completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning armFailSafeWithParams_completionHandlerSelector (toMTRGeneralCommissioningClusterArmFailSafeParams params) completionHandler

-- | @- setRegulatoryConfigWithParams:completionHandler:@
setRegulatoryConfigWithParams_completionHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsMTRGeneralCommissioningClusterSetRegulatoryConfigParams params) => mtrBaseClusterGeneralCommissioning -> params -> Ptr () -> IO ()
setRegulatoryConfigWithParams_completionHandler mtrBaseClusterGeneralCommissioning params completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning setRegulatoryConfigWithParams_completionHandlerSelector (toMTRGeneralCommissioningClusterSetRegulatoryConfigParams params) completionHandler

-- | @- commissioningCompleteWithParams:completionHandler:@
commissioningCompleteWithParams_completionHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsMTRGeneralCommissioningClusterCommissioningCompleteParams params) => mtrBaseClusterGeneralCommissioning -> params -> Ptr () -> IO ()
commissioningCompleteWithParams_completionHandler mtrBaseClusterGeneralCommissioning params completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning commissioningCompleteWithParams_completionHandlerSelector (toMTRGeneralCommissioningClusterCommissioningCompleteParams params) completionHandler

-- | @- commissioningCompleteWithCompletionHandler:@
commissioningCompleteWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
commissioningCompleteWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning commissioningCompleteWithCompletionHandlerSelector completionHandler

-- | @- readAttributeBreadcrumbWithCompletionHandler:@
readAttributeBreadcrumbWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeBreadcrumbWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeBreadcrumbWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeBreadcrumbWithValue:completionHandler:@
writeAttributeBreadcrumbWithValue_completionHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber value) => mtrBaseClusterGeneralCommissioning -> value -> Ptr () -> IO ()
writeAttributeBreadcrumbWithValue_completionHandler mtrBaseClusterGeneralCommissioning value completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning writeAttributeBreadcrumbWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeBreadcrumbWithValue:params:completionHandler:@
writeAttributeBreadcrumbWithValue_params_completionHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterGeneralCommissioning -> value -> params -> Ptr () -> IO ()
writeAttributeBreadcrumbWithValue_params_completionHandler mtrBaseClusterGeneralCommissioning value params completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning writeAttributeBreadcrumbWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBreadcrumbWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBreadcrumbWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBreadcrumbWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeBreadcrumbWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBreadcrumbWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBreadcrumbWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBreadcrumbWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeBreadcrumbWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeBasicCommissioningInfoWithCompletionHandler:@
readAttributeBasicCommissioningInfoWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeBasicCommissioningInfoWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeBasicCommissioningInfoWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeBasicCommissioningInfoWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBasicCommissioningInfoWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeBasicCommissioningInfoWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeBasicCommissioningInfoWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeBasicCommissioningInfoWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBasicCommissioningInfoWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeBasicCommissioningInfoWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeBasicCommissioningInfoWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeRegulatoryConfigWithCompletionHandler:@
readAttributeRegulatoryConfigWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeRegulatoryConfigWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeRegulatoryConfigWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeRegulatoryConfigWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeRegulatoryConfigWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeRegulatoryConfigWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeRegulatoryConfigWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeRegulatoryConfigWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeRegulatoryConfigWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeRegulatoryConfigWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeRegulatoryConfigWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeLocationCapabilityWithCompletionHandler:@
readAttributeLocationCapabilityWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeLocationCapabilityWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeLocationCapabilityWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeLocationCapabilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLocationCapabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeLocationCapabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeLocationCapabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeLocationCapabilityWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLocationCapabilityWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeLocationCapabilityWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeLocationCapabilityWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSupportsConcurrentConnectionWithCompletionHandler:@
readAttributeSupportsConcurrentConnectionWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeSupportsConcurrentConnectionWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeSupportsConcurrentConnectionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSupportsConcurrentConnectionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSupportsConcurrentConnectionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSupportsConcurrentConnectionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeSupportsConcurrentConnectionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSupportsConcurrentConnectionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSupportsConcurrentConnectionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSupportsConcurrentConnectionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeSupportsConcurrentConnectionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterGeneralCommissioning completionHandler =
  sendMessage mtrBaseClusterGeneralCommissioning readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterGeneralCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterGeneralCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterGeneralCommissioning subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterGeneralCommissioning mtrBaseClusterGeneralCommissioning => mtrBaseClusterGeneralCommissioning -> IO (Id MTRBaseClusterGeneralCommissioning)
init_ mtrBaseClusterGeneralCommissioning =
  sendOwnedMessage mtrBaseClusterGeneralCommissioning initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterGeneralCommissioning)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterGeneralCommissioning"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterGeneralCommissioning)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @armFailSafeWithParams:completionHandler:@
armFailSafeWithParams_completionHandlerSelector :: Selector '[Id MTRGeneralCommissioningClusterArmFailSafeParams, Ptr ()] ()
armFailSafeWithParams_completionHandlerSelector = mkSelector "armFailSafeWithParams:completionHandler:"

-- | @Selector@ for @setRegulatoryConfigWithParams:completionHandler:@
setRegulatoryConfigWithParams_completionHandlerSelector :: Selector '[Id MTRGeneralCommissioningClusterSetRegulatoryConfigParams, Ptr ()] ()
setRegulatoryConfigWithParams_completionHandlerSelector = mkSelector "setRegulatoryConfigWithParams:completionHandler:"

-- | @Selector@ for @commissioningCompleteWithParams:completionHandler:@
commissioningCompleteWithParams_completionHandlerSelector :: Selector '[Id MTRGeneralCommissioningClusterCommissioningCompleteParams, Ptr ()] ()
commissioningCompleteWithParams_completionHandlerSelector = mkSelector "commissioningCompleteWithParams:completionHandler:"

-- | @Selector@ for @commissioningCompleteWithCompletionHandler:@
commissioningCompleteWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
commissioningCompleteWithCompletionHandlerSelector = mkSelector "commissioningCompleteWithCompletionHandler:"

-- | @Selector@ for @readAttributeBreadcrumbWithCompletionHandler:@
readAttributeBreadcrumbWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBreadcrumbWithCompletionHandlerSelector = mkSelector "readAttributeBreadcrumbWithCompletionHandler:"

-- | @Selector@ for @writeAttributeBreadcrumbWithValue:completionHandler:@
writeAttributeBreadcrumbWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeBreadcrumbWithValue_completionHandlerSelector = mkSelector "writeAttributeBreadcrumbWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeBreadcrumbWithValue:params:completionHandler:@
writeAttributeBreadcrumbWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeBreadcrumbWithValue_params_completionHandlerSelector = mkSelector "writeAttributeBreadcrumbWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeBreadcrumbWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBreadcrumbWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBreadcrumbWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBreadcrumbWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBreadcrumbWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBreadcrumbWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBreadcrumbWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBreadcrumbWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeBasicCommissioningInfoWithCompletionHandler:@
readAttributeBasicCommissioningInfoWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeBasicCommissioningInfoWithCompletionHandlerSelector = mkSelector "readAttributeBasicCommissioningInfoWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeBasicCommissioningInfoWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeBasicCommissioningInfoWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeBasicCommissioningInfoWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeBasicCommissioningInfoWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeBasicCommissioningInfoWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeBasicCommissioningInfoWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeBasicCommissioningInfoWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeBasicCommissioningInfoWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeRegulatoryConfigWithCompletionHandler:@
readAttributeRegulatoryConfigWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeRegulatoryConfigWithCompletionHandlerSelector = mkSelector "readAttributeRegulatoryConfigWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeRegulatoryConfigWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeRegulatoryConfigWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeRegulatoryConfigWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeRegulatoryConfigWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeRegulatoryConfigWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeRegulatoryConfigWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeRegulatoryConfigWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeRegulatoryConfigWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeLocationCapabilityWithCompletionHandler:@
readAttributeLocationCapabilityWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeLocationCapabilityWithCompletionHandlerSelector = mkSelector "readAttributeLocationCapabilityWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeLocationCapabilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeLocationCapabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeLocationCapabilityWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeLocationCapabilityWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeLocationCapabilityWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeLocationCapabilityWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeLocationCapabilityWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeLocationCapabilityWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSupportsConcurrentConnectionWithCompletionHandler:@
readAttributeSupportsConcurrentConnectionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSupportsConcurrentConnectionWithCompletionHandlerSelector = mkSelector "readAttributeSupportsConcurrentConnectionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSupportsConcurrentConnectionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSupportsConcurrentConnectionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSupportsConcurrentConnectionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSupportsConcurrentConnectionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSupportsConcurrentConnectionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSupportsConcurrentConnectionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSupportsConcurrentConnectionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSupportsConcurrentConnectionWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterGeneralCommissioning)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterGeneralCommissioning)
newSelector = mkSelector "new"

