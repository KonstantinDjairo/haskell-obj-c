{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Access Control    The Access Control Cluster exposes a data model view of a      Node's Access Control List (ACL), which codifies the rules used to manage      and enforce Access Control for the Node's endpoints and their associated      cluster instances.
--
-- Generated bindings for @MTRBaseClusterAccessControl@.
module ObjC.Matter.MTRBaseClusterAccessControl
  ( MTRBaseClusterAccessControl
  , IsMTRBaseClusterAccessControl(..)
  , initWithDevice_endpoint_queue
  , readAttributeAclWithParams_completionHandler
  , writeAttributeAclWithValue_completionHandler
  , writeAttributeAclWithValue_params_completionHandler
  , subscribeAttributeAclWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAclWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeExtensionWithParams_completionHandler
  , writeAttributeExtensionWithValue_completionHandler
  , writeAttributeExtensionWithValue_params_completionHandler
  , subscribeAttributeExtensionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeExtensionWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSubjectsPerAccessControlEntryWithCompletionHandler
  , subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSubjectsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeTargetsPerAccessControlEntryWithCompletionHandler
  , subscribeAttributeTargetsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeTargetsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAccessControlEntriesPerFabricWithCompletionHandler
  , subscribeAttributeAccessControlEntriesPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAccessControlEntriesPerFabricWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeAccessControlEntriesPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAccessControlEntriesPerFabricWithCompletionHandlerSelector
  , readAttributeAclWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAclWithParams_completionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeExtensionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeExtensionWithParams_completionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeSubjectsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSubjectsPerAccessControlEntryWithCompletionHandlerSelector
  , readAttributeTargetsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeTargetsPerAccessControlEntryWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAccessControlEntriesPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAclWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeExtensionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeTargetsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeAclWithValue_completionHandlerSelector
  , writeAttributeAclWithValue_params_completionHandlerSelector
  , writeAttributeExtensionWithValue_completionHandlerSelector
  , writeAttributeExtensionWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterAccessControl -> device -> CUShort -> queue -> IO (Id MTRBaseClusterAccessControl)
initWithDevice_endpoint_queue mtrBaseClusterAccessControl device endpoint queue =
  sendOwnedMessage mtrBaseClusterAccessControl initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- readAttributeAclWithParams:completionHandler:@
readAttributeAclWithParams_completionHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsMTRReadParams params) => mtrBaseClusterAccessControl -> params -> Ptr () -> IO ()
readAttributeAclWithParams_completionHandler mtrBaseClusterAccessControl params completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeAclWithParams_completionHandlerSelector (toMTRReadParams params) completionHandler

-- | @- writeAttributeAclWithValue:completionHandler:@
writeAttributeAclWithValue_completionHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSArray value) => mtrBaseClusterAccessControl -> value -> Ptr () -> IO ()
writeAttributeAclWithValue_completionHandler mtrBaseClusterAccessControl value completionHandler =
  sendMessage mtrBaseClusterAccessControl writeAttributeAclWithValue_completionHandlerSelector (toNSArray value) completionHandler

-- | @- writeAttributeAclWithValue:params:completionHandler:@
writeAttributeAclWithValue_params_completionHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSArray value, IsMTRWriteParams params) => mtrBaseClusterAccessControl -> value -> params -> Ptr () -> IO ()
writeAttributeAclWithValue_params_completionHandler mtrBaseClusterAccessControl value params completionHandler =
  sendMessage mtrBaseClusterAccessControl writeAttributeAclWithValue_params_completionHandlerSelector (toNSArray value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAclWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAclWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAclWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeAclWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAclWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAclWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAclWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeAclWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeExtensionWithParams:completionHandler:@
readAttributeExtensionWithParams_completionHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsMTRReadParams params) => mtrBaseClusterAccessControl -> params -> Ptr () -> IO ()
readAttributeExtensionWithParams_completionHandler mtrBaseClusterAccessControl params completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeExtensionWithParams_completionHandlerSelector (toMTRReadParams params) completionHandler

-- | @- writeAttributeExtensionWithValue:completionHandler:@
writeAttributeExtensionWithValue_completionHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSArray value) => mtrBaseClusterAccessControl -> value -> Ptr () -> IO ()
writeAttributeExtensionWithValue_completionHandler mtrBaseClusterAccessControl value completionHandler =
  sendMessage mtrBaseClusterAccessControl writeAttributeExtensionWithValue_completionHandlerSelector (toNSArray value) completionHandler

-- | @- writeAttributeExtensionWithValue:params:completionHandler:@
writeAttributeExtensionWithValue_params_completionHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSArray value, IsMTRWriteParams params) => mtrBaseClusterAccessControl -> value -> params -> Ptr () -> IO ()
writeAttributeExtensionWithValue_params_completionHandler mtrBaseClusterAccessControl value params completionHandler =
  sendMessage mtrBaseClusterAccessControl writeAttributeExtensionWithValue_params_completionHandlerSelector (toNSArray value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeExtensionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeExtensionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeExtensionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeExtensionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeExtensionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeExtensionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeExtensionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeExtensionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSubjectsPerAccessControlEntryWithCompletionHandler:@
readAttributeSubjectsPerAccessControlEntryWithCompletionHandler :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> Ptr () -> IO ()
readAttributeSubjectsPerAccessControlEntryWithCompletionHandler mtrBaseClusterAccessControl completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeSubjectsPerAccessControlEntryWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSubjectsPerAccessControlEntryWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSubjectsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSubjectsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeSubjectsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeTargetsPerAccessControlEntryWithCompletionHandler:@
readAttributeTargetsPerAccessControlEntryWithCompletionHandler :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> Ptr () -> IO ()
readAttributeTargetsPerAccessControlEntryWithCompletionHandler mtrBaseClusterAccessControl completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeTargetsPerAccessControlEntryWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeTargetsPerAccessControlEntryWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTargetsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeTargetsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeTargetsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeTargetsPerAccessControlEntryWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTargetsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeTargetsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeTargetsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAccessControlEntriesPerFabricWithCompletionHandler:@
readAttributeAccessControlEntriesPerFabricWithCompletionHandler :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> Ptr () -> IO ()
readAttributeAccessControlEntriesPerFabricWithCompletionHandler mtrBaseClusterAccessControl completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeAccessControlEntriesPerFabricWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAccessControlEntriesPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAccessControlEntriesPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAccessControlEntriesPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeAccessControlEntriesPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAccessControlEntriesPerFabricWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAccessControlEntriesPerFabricWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAccessControlEntriesPerFabricWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeAccessControlEntriesPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterAccessControl completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterAccessControl completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterAccessControl completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterAccessControl completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterAccessControl completionHandler =
  sendMessage mtrBaseClusterAccessControl readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAccessControl -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAccessControl minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAccessControl subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterAccessControl mtrBaseClusterAccessControl => mtrBaseClusterAccessControl -> IO (Id MTRBaseClusterAccessControl)
init_ mtrBaseClusterAccessControl =
  sendOwnedMessage mtrBaseClusterAccessControl initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterAccessControl)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterAccessControl"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterAccessControl)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeAclWithParams:completionHandler:@
readAttributeAclWithParams_completionHandlerSelector :: Selector '[Id MTRReadParams, Ptr ()] ()
readAttributeAclWithParams_completionHandlerSelector = mkSelector "readAttributeAclWithParams:completionHandler:"

-- | @Selector@ for @writeAttributeAclWithValue:completionHandler:@
writeAttributeAclWithValue_completionHandlerSelector :: Selector '[Id NSArray, Ptr ()] ()
writeAttributeAclWithValue_completionHandlerSelector = mkSelector "writeAttributeAclWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeAclWithValue:params:completionHandler:@
writeAttributeAclWithValue_params_completionHandlerSelector :: Selector '[Id NSArray, Id MTRWriteParams, Ptr ()] ()
writeAttributeAclWithValue_params_completionHandlerSelector = mkSelector "writeAttributeAclWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeAclWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAclWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAclWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAclWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAclWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAclWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAclWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAclWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeExtensionWithParams:completionHandler:@
readAttributeExtensionWithParams_completionHandlerSelector :: Selector '[Id MTRReadParams, Ptr ()] ()
readAttributeExtensionWithParams_completionHandlerSelector = mkSelector "readAttributeExtensionWithParams:completionHandler:"

-- | @Selector@ for @writeAttributeExtensionWithValue:completionHandler:@
writeAttributeExtensionWithValue_completionHandlerSelector :: Selector '[Id NSArray, Ptr ()] ()
writeAttributeExtensionWithValue_completionHandlerSelector = mkSelector "writeAttributeExtensionWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeExtensionWithValue:params:completionHandler:@
writeAttributeExtensionWithValue_params_completionHandlerSelector :: Selector '[Id NSArray, Id MTRWriteParams, Ptr ()] ()
writeAttributeExtensionWithValue_params_completionHandlerSelector = mkSelector "writeAttributeExtensionWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeExtensionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeExtensionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeExtensionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeExtensionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeExtensionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeExtensionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeExtensionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeExtensionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSubjectsPerAccessControlEntryWithCompletionHandler:@
readAttributeSubjectsPerAccessControlEntryWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSubjectsPerAccessControlEntryWithCompletionHandlerSelector = mkSelector "readAttributeSubjectsPerAccessControlEntryWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSubjectsPerAccessControlEntryWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSubjectsPerAccessControlEntryWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSubjectsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSubjectsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSubjectsPerAccessControlEntryWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeTargetsPerAccessControlEntryWithCompletionHandler:@
readAttributeTargetsPerAccessControlEntryWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeTargetsPerAccessControlEntryWithCompletionHandlerSelector = mkSelector "readAttributeTargetsPerAccessControlEntryWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeTargetsPerAccessControlEntryWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTargetsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeTargetsPerAccessControlEntryWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeTargetsPerAccessControlEntryWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeTargetsPerAccessControlEntryWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTargetsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeTargetsPerAccessControlEntryWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeTargetsPerAccessControlEntryWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAccessControlEntriesPerFabricWithCompletionHandler:@
readAttributeAccessControlEntriesPerFabricWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAccessControlEntriesPerFabricWithCompletionHandlerSelector = mkSelector "readAttributeAccessControlEntriesPerFabricWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAccessControlEntriesPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAccessControlEntriesPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAccessControlEntriesPerFabricWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAccessControlEntriesPerFabricWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAccessControlEntriesPerFabricWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAccessControlEntriesPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAccessControlEntriesPerFabricWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAccessControlEntriesPerFabricWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterAccessControl)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterAccessControl)
newSelector = mkSelector "new"

