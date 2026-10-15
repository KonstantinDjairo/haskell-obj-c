{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Application Basic    This cluster provides information about an application running on a TV or media player device which is represented as an endpoint.
--
-- Generated bindings for @MTRBaseClusterApplicationBasic@.
module ObjC.Matter.MTRBaseClusterApplicationBasic
  ( MTRBaseClusterApplicationBasic
  , IsMTRBaseClusterApplicationBasic(..)
  , initWithDevice_endpoint_queue
  , readAttributeVendorNameWithCompletionHandler
  , subscribeAttributeVendorNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeVendorNameWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeVendorIDWithCompletionHandler
  , subscribeAttributeVendorIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeVendorIDWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeApplicationNameWithCompletionHandler
  , subscribeAttributeApplicationNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeApplicationNameWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeProductIDWithCompletionHandler
  , subscribeAttributeProductIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeProductIDWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeApplicationWithCompletionHandler
  , subscribeAttributeApplicationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeApplicationWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeStatusWithCompletionHandler
  , subscribeAttributeStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeStatusWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeApplicationVersionWithCompletionHandler
  , subscribeAttributeApplicationVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeApplicationVersionWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAllowedVendorListWithCompletionHandler
  , subscribeAttributeAllowedVendorListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAllowedVendorListWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeAllowedVendorListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAllowedVendorListWithCompletionHandlerSelector
  , readAttributeApplicationNameWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeApplicationNameWithCompletionHandlerSelector
  , readAttributeApplicationVersionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeApplicationVersionWithCompletionHandlerSelector
  , readAttributeApplicationWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeApplicationWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeProductIDWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeProductIDWithCompletionHandlerSelector
  , readAttributeStatusWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeStatusWithCompletionHandlerSelector
  , readAttributeVendorIDWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeVendorIDWithCompletionHandlerSelector
  , readAttributeVendorNameWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeVendorNameWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAllowedVendorListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeApplicationNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeApplicationVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeApplicationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeProductIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeVendorIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeVendorNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterApplicationBasic -> device -> CUShort -> queue -> IO (Id MTRBaseClusterApplicationBasic)
initWithDevice_endpoint_queue mtrBaseClusterApplicationBasic device endpoint queue =
  sendOwnedMessage mtrBaseClusterApplicationBasic initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- readAttributeVendorNameWithCompletionHandler:@
readAttributeVendorNameWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeVendorNameWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeVendorNameWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeVendorNameWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeVendorNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeVendorNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeVendorNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeVendorNameWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeVendorNameWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeVendorNameWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeVendorNameWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeVendorIDWithCompletionHandler:@
readAttributeVendorIDWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeVendorIDWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeVendorIDWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeVendorIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeVendorIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeVendorIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeVendorIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeVendorIDWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeVendorIDWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeVendorIDWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeVendorIDWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeApplicationNameWithCompletionHandler:@
readAttributeApplicationNameWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeApplicationNameWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeApplicationNameWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeApplicationNameWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeApplicationNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeApplicationNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeApplicationNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeApplicationNameWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeApplicationNameWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeApplicationNameWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeApplicationNameWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeProductIDWithCompletionHandler:@
readAttributeProductIDWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeProductIDWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeProductIDWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeProductIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeProductIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeProductIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeProductIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeProductIDWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeProductIDWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeProductIDWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeProductIDWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeApplicationWithCompletionHandler:@
readAttributeApplicationWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeApplicationWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeApplicationWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeApplicationWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeApplicationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeApplicationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeApplicationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeApplicationWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeApplicationWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeApplicationWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeApplicationWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeStatusWithCompletionHandler:@
readAttributeStatusWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeStatusWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeStatusWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeStatusWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStatusWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeStatusWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeStatusWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeApplicationVersionWithCompletionHandler:@
readAttributeApplicationVersionWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeApplicationVersionWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeApplicationVersionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeApplicationVersionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeApplicationVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeApplicationVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeApplicationVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeApplicationVersionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeApplicationVersionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeApplicationVersionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeApplicationVersionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAllowedVendorListWithCompletionHandler:@
readAttributeAllowedVendorListWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeAllowedVendorListWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeAllowedVendorListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAllowedVendorListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAllowedVendorListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAllowedVendorListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeAllowedVendorListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAllowedVendorListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAllowedVendorListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAllowedVendorListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeAllowedVendorListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterApplicationBasic completionHandler =
  sendMessage mtrBaseClusterApplicationBasic readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationBasic -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationBasic minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationBasic subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterApplicationBasic mtrBaseClusterApplicationBasic => mtrBaseClusterApplicationBasic -> IO (Id MTRBaseClusterApplicationBasic)
init_ mtrBaseClusterApplicationBasic =
  sendOwnedMessage mtrBaseClusterApplicationBasic initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterApplicationBasic)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationBasic"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterApplicationBasic)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeVendorNameWithCompletionHandler:@
readAttributeVendorNameWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeVendorNameWithCompletionHandlerSelector = mkSelector "readAttributeVendorNameWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeVendorNameWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeVendorNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeVendorNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeVendorNameWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeVendorNameWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeVendorNameWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeVendorNameWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeVendorNameWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeVendorIDWithCompletionHandler:@
readAttributeVendorIDWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeVendorIDWithCompletionHandlerSelector = mkSelector "readAttributeVendorIDWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeVendorIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeVendorIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeVendorIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeVendorIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeVendorIDWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeVendorIDWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeVendorIDWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeVendorIDWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeApplicationNameWithCompletionHandler:@
readAttributeApplicationNameWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeApplicationNameWithCompletionHandlerSelector = mkSelector "readAttributeApplicationNameWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeApplicationNameWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeApplicationNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeApplicationNameWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeApplicationNameWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeApplicationNameWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeApplicationNameWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeApplicationNameWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeApplicationNameWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeProductIDWithCompletionHandler:@
readAttributeProductIDWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeProductIDWithCompletionHandlerSelector = mkSelector "readAttributeProductIDWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeProductIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeProductIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeProductIDWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeProductIDWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeProductIDWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeProductIDWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeProductIDWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeProductIDWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeApplicationWithCompletionHandler:@
readAttributeApplicationWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeApplicationWithCompletionHandlerSelector = mkSelector "readAttributeApplicationWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeApplicationWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeApplicationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeApplicationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeApplicationWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeApplicationWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeApplicationWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeApplicationWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeApplicationWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeStatusWithCompletionHandler:@
readAttributeStatusWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeStatusWithCompletionHandlerSelector = mkSelector "readAttributeStatusWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeStatusWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStatusWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeStatusWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeStatusWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeApplicationVersionWithCompletionHandler:@
readAttributeApplicationVersionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeApplicationVersionWithCompletionHandlerSelector = mkSelector "readAttributeApplicationVersionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeApplicationVersionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeApplicationVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeApplicationVersionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeApplicationVersionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeApplicationVersionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeApplicationVersionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeApplicationVersionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeApplicationVersionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAllowedVendorListWithCompletionHandler:@
readAttributeAllowedVendorListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAllowedVendorListWithCompletionHandlerSelector = mkSelector "readAttributeAllowedVendorListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAllowedVendorListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAllowedVendorListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAllowedVendorListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAllowedVendorListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAllowedVendorListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAllowedVendorListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAllowedVendorListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAllowedVendorListWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterApplicationBasic)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterApplicationBasic)
newSelector = mkSelector "new"

