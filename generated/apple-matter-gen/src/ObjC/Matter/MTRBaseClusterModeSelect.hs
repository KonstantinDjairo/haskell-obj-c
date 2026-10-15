{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Mode Select    Attributes and commands for selecting a mode from a list of supported options.
--
-- Generated bindings for @MTRBaseClusterModeSelect@.
module ObjC.Matter.MTRBaseClusterModeSelect
  ( MTRBaseClusterModeSelect
  , IsMTRBaseClusterModeSelect(..)
  , initWithDevice_endpoint_queue
  , changeToModeWithParams_completionHandler
  , readAttributeDescriptionWithCompletionHandler
  , subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeStandardNamespaceWithCompletionHandler
  , subscribeAttributeStandardNamespaceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeStandardNamespaceWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSupportedModesWithCompletionHandler
  , subscribeAttributeSupportedModesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSupportedModesWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCurrentModeWithCompletionHandler
  , subscribeAttributeCurrentModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentModeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeStartUpModeWithCompletionHandler
  , writeAttributeStartUpModeWithValue_completionHandler
  , writeAttributeStartUpModeWithValue_params_completionHandler
  , subscribeAttributeStartUpModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeStartUpModeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOnModeWithCompletionHandler
  , writeAttributeOnModeWithValue_completionHandler
  , writeAttributeOnModeWithValue_params_completionHandler
  , subscribeAttributeOnModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOnModeWithAttributeCache_endpoint_queue_completionHandler
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
  , changeToModeWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeCurrentModeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentModeWithCompletionHandlerSelector
  , readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeDescriptionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeOnModeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOnModeWithCompletionHandlerSelector
  , readAttributeStandardNamespaceWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeStandardNamespaceWithCompletionHandlerSelector
  , readAttributeStartUpModeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeStartUpModeWithCompletionHandlerSelector
  , readAttributeSupportedModesWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSupportedModesWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOnModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeStandardNamespaceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeStartUpModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSupportedModesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeOnModeWithValue_completionHandlerSelector
  , writeAttributeOnModeWithValue_params_completionHandlerSelector
  , writeAttributeStartUpModeWithValue_completionHandlerSelector
  , writeAttributeStartUpModeWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterModeSelect -> device -> CUShort -> queue -> IO (Id MTRBaseClusterModeSelect)
initWithDevice_endpoint_queue mtrBaseClusterModeSelect device endpoint queue =
  sendOwnedMessage mtrBaseClusterModeSelect initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- changeToModeWithParams:completionHandler:@
changeToModeWithParams_completionHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsMTRModeSelectClusterChangeToModeParams params) => mtrBaseClusterModeSelect -> params -> Ptr () -> IO ()
changeToModeWithParams_completionHandler mtrBaseClusterModeSelect params completionHandler =
  sendMessage mtrBaseClusterModeSelect changeToModeWithParams_completionHandlerSelector (toMTRModeSelectClusterChangeToModeParams params) completionHandler

-- | @- readAttributeDescriptionWithCompletionHandler:@
readAttributeDescriptionWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeDescriptionWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeDescriptionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeDescriptionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeDescriptionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeStandardNamespaceWithCompletionHandler:@
readAttributeStandardNamespaceWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeStandardNamespaceWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeStandardNamespaceWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeStandardNamespaceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStandardNamespaceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeStandardNamespaceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeStandardNamespaceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeStandardNamespaceWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStandardNamespaceWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeStandardNamespaceWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeStandardNamespaceWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSupportedModesWithCompletionHandler:@
readAttributeSupportedModesWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeSupportedModesWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeSupportedModesWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSupportedModesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSupportedModesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSupportedModesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeSupportedModesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSupportedModesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSupportedModesWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSupportedModesWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeSupportedModesWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCurrentModeWithCompletionHandler:@
readAttributeCurrentModeWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeCurrentModeWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeCurrentModeWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeCurrentModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentModeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentModeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentModeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeCurrentModeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeStartUpModeWithCompletionHandler:@
readAttributeStartUpModeWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeStartUpModeWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeStartUpModeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeStartUpModeWithValue:completionHandler:@
writeAttributeStartUpModeWithValue_completionHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber value) => mtrBaseClusterModeSelect -> value -> Ptr () -> IO ()
writeAttributeStartUpModeWithValue_completionHandler mtrBaseClusterModeSelect value completionHandler =
  sendMessage mtrBaseClusterModeSelect writeAttributeStartUpModeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeStartUpModeWithValue:params:completionHandler:@
writeAttributeStartUpModeWithValue_params_completionHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterModeSelect -> value -> params -> Ptr () -> IO ()
writeAttributeStartUpModeWithValue_params_completionHandler mtrBaseClusterModeSelect value params completionHandler =
  sendMessage mtrBaseClusterModeSelect writeAttributeStartUpModeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeStartUpModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStartUpModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeStartUpModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeStartUpModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeStartUpModeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStartUpModeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeStartUpModeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeStartUpModeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOnModeWithCompletionHandler:@
readAttributeOnModeWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeOnModeWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeOnModeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOnModeWithValue:completionHandler:@
writeAttributeOnModeWithValue_completionHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber value) => mtrBaseClusterModeSelect -> value -> Ptr () -> IO ()
writeAttributeOnModeWithValue_completionHandler mtrBaseClusterModeSelect value completionHandler =
  sendMessage mtrBaseClusterModeSelect writeAttributeOnModeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOnModeWithValue:params:completionHandler:@
writeAttributeOnModeWithValue_params_completionHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterModeSelect -> value -> params -> Ptr () -> IO ()
writeAttributeOnModeWithValue_params_completionHandler mtrBaseClusterModeSelect value params completionHandler =
  sendMessage mtrBaseClusterModeSelect writeAttributeOnModeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOnModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOnModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeOnModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOnModeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnModeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOnModeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeOnModeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterModeSelect completionHandler =
  sendMessage mtrBaseClusterModeSelect readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterModeSelect -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterModeSelect minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterModeSelect subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterModeSelect mtrBaseClusterModeSelect => mtrBaseClusterModeSelect -> IO (Id MTRBaseClusterModeSelect)
init_ mtrBaseClusterModeSelect =
  sendOwnedMessage mtrBaseClusterModeSelect initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterModeSelect)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterModeSelect"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterModeSelect)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @changeToModeWithParams:completionHandler:@
changeToModeWithParams_completionHandlerSelector :: Selector '[Id MTRModeSelectClusterChangeToModeParams, Ptr ()] ()
changeToModeWithParams_completionHandlerSelector = mkSelector "changeToModeWithParams:completionHandler:"

-- | @Selector@ for @readAttributeDescriptionWithCompletionHandler:@
readAttributeDescriptionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeDescriptionWithCompletionHandlerSelector = mkSelector "readAttributeDescriptionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeDescriptionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeDescriptionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeDescriptionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeDescriptionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeDescriptionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeDescriptionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeStandardNamespaceWithCompletionHandler:@
readAttributeStandardNamespaceWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeStandardNamespaceWithCompletionHandlerSelector = mkSelector "readAttributeStandardNamespaceWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeStandardNamespaceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStandardNamespaceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeStandardNamespaceWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeStandardNamespaceWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeStandardNamespaceWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStandardNamespaceWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeStandardNamespaceWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeStandardNamespaceWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSupportedModesWithCompletionHandler:@
readAttributeSupportedModesWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSupportedModesWithCompletionHandlerSelector = mkSelector "readAttributeSupportedModesWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSupportedModesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSupportedModesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSupportedModesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSupportedModesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSupportedModesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSupportedModesWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSupportedModesWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSupportedModesWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCurrentModeWithCompletionHandler:@
readAttributeCurrentModeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentModeWithCompletionHandlerSelector = mkSelector "readAttributeCurrentModeWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentModeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentModeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentModeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentModeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeStartUpModeWithCompletionHandler:@
readAttributeStartUpModeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeStartUpModeWithCompletionHandlerSelector = mkSelector "readAttributeStartUpModeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeStartUpModeWithValue:completionHandler:@
writeAttributeStartUpModeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeStartUpModeWithValue_completionHandlerSelector = mkSelector "writeAttributeStartUpModeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeStartUpModeWithValue:params:completionHandler:@
writeAttributeStartUpModeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeStartUpModeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeStartUpModeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeStartUpModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStartUpModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeStartUpModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeStartUpModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeStartUpModeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStartUpModeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeStartUpModeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeStartUpModeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOnModeWithCompletionHandler:@
readAttributeOnModeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOnModeWithCompletionHandlerSelector = mkSelector "readAttributeOnModeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOnModeWithValue:completionHandler:@
writeAttributeOnModeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOnModeWithValue_completionHandlerSelector = mkSelector "writeAttributeOnModeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOnModeWithValue:params:completionHandler:@
writeAttributeOnModeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOnModeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOnModeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOnModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOnModeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOnModeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOnModeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnModeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOnModeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOnModeWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterModeSelect)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterModeSelect)
newSelector = mkSelector "new"

