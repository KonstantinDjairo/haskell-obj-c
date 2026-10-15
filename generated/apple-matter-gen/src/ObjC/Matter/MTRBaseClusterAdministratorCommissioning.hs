{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster AdministratorCommissioning    Commands to trigger a Node to allow a new Administrator to commission it.
--
-- Generated bindings for @MTRBaseClusterAdministratorCommissioning@.
module ObjC.Matter.MTRBaseClusterAdministratorCommissioning
  ( MTRBaseClusterAdministratorCommissioning
  , IsMTRBaseClusterAdministratorCommissioning(..)
  , initWithDevice_endpoint_queue
  , openCommissioningWindowWithParams_completionHandler
  , openBasicCommissioningWindowWithParams_completionHandler
  , revokeCommissioningWithParams_completionHandler
  , revokeCommissioningWithCompletionHandler
  , readAttributeWindowStatusWithCompletionHandler
  , subscribeAttributeWindowStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeWindowStatusWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAdminFabricIndexWithCompletionHandler
  , subscribeAttributeAdminFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAdminFabricIndexWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAdminVendorIdWithCompletionHandler
  , subscribeAttributeAdminVendorIdWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAdminVendorIdWithAttributeCache_endpoint_queue_completionHandler
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
  , openBasicCommissioningWindowWithParams_completionHandlerSelector
  , openCommissioningWindowWithParams_completionHandlerSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAdminFabricIndexWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAdminFabricIndexWithCompletionHandlerSelector
  , readAttributeAdminVendorIdWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAdminVendorIdWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeWindowStatusWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeWindowStatusWithCompletionHandlerSelector
  , revokeCommissioningWithCompletionHandlerSelector
  , revokeCommissioningWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAdminFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAdminVendorIdWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeWindowStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterAdministratorCommissioning -> device -> CUShort -> queue -> IO (Id MTRBaseClusterAdministratorCommissioning)
initWithDevice_endpoint_queue mtrBaseClusterAdministratorCommissioning device endpoint queue =
  sendOwnedMessage mtrBaseClusterAdministratorCommissioning initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- openCommissioningWindowWithParams:completionHandler:@
openCommissioningWindowWithParams_completionHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams params) => mtrBaseClusterAdministratorCommissioning -> params -> Ptr () -> IO ()
openCommissioningWindowWithParams_completionHandler mtrBaseClusterAdministratorCommissioning params completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning openCommissioningWindowWithParams_completionHandlerSelector (toMTRAdministratorCommissioningClusterOpenCommissioningWindowParams params) completionHandler

-- | @- openBasicCommissioningWindowWithParams:completionHandler:@
openBasicCommissioningWindowWithParams_completionHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams params) => mtrBaseClusterAdministratorCommissioning -> params -> Ptr () -> IO ()
openBasicCommissioningWindowWithParams_completionHandler mtrBaseClusterAdministratorCommissioning params completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning openBasicCommissioningWindowWithParams_completionHandlerSelector (toMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams params) completionHandler

-- | @- revokeCommissioningWithParams:completionHandler:@
revokeCommissioningWithParams_completionHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsMTRAdministratorCommissioningClusterRevokeCommissioningParams params) => mtrBaseClusterAdministratorCommissioning -> params -> Ptr () -> IO ()
revokeCommissioningWithParams_completionHandler mtrBaseClusterAdministratorCommissioning params completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning revokeCommissioningWithParams_completionHandlerSelector (toMTRAdministratorCommissioningClusterRevokeCommissioningParams params) completionHandler

-- | @- revokeCommissioningWithCompletionHandler:@
revokeCommissioningWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
revokeCommissioningWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning revokeCommissioningWithCompletionHandlerSelector completionHandler

-- | @- readAttributeWindowStatusWithCompletionHandler:@
readAttributeWindowStatusWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
readAttributeWindowStatusWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning readAttributeWindowStatusWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeWindowStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeWindowStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAdministratorCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeWindowStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAdministratorCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning subscribeAttributeWindowStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeWindowStatusWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeWindowStatusWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeWindowStatusWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendClassMessage cls' readAttributeWindowStatusWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAdminFabricIndexWithCompletionHandler:@
readAttributeAdminFabricIndexWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
readAttributeAdminFabricIndexWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning readAttributeAdminFabricIndexWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAdminFabricIndexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAdminFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAdministratorCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAdminFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAdministratorCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning subscribeAttributeAdminFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAdminFabricIndexWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAdminFabricIndexWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAdminFabricIndexWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendClassMessage cls' readAttributeAdminFabricIndexWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAdminVendorIdWithCompletionHandler:@
readAttributeAdminVendorIdWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
readAttributeAdminVendorIdWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning readAttributeAdminVendorIdWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAdminVendorIdWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAdminVendorIdWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAdministratorCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAdminVendorIdWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAdministratorCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning subscribeAttributeAdminVendorIdWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAdminVendorIdWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAdminVendorIdWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAdminVendorIdWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendClassMessage cls' readAttributeAdminVendorIdWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAdministratorCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAdministratorCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAdministratorCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAdministratorCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAdministratorCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAdministratorCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAdministratorCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAdministratorCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterAdministratorCommissioning completionHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAdministratorCommissioning -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAdministratorCommissioning minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAdministratorCommissioning subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterAdministratorCommissioning mtrBaseClusterAdministratorCommissioning => mtrBaseClusterAdministratorCommissioning -> IO (Id MTRBaseClusterAdministratorCommissioning)
init_ mtrBaseClusterAdministratorCommissioning =
  sendOwnedMessage mtrBaseClusterAdministratorCommissioning initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterAdministratorCommissioning)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterAdministratorCommissioning"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterAdministratorCommissioning)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @openCommissioningWindowWithParams:completionHandler:@
openCommissioningWindowWithParams_completionHandlerSelector :: Selector '[Id MTRAdministratorCommissioningClusterOpenCommissioningWindowParams, Ptr ()] ()
openCommissioningWindowWithParams_completionHandlerSelector = mkSelector "openCommissioningWindowWithParams:completionHandler:"

-- | @Selector@ for @openBasicCommissioningWindowWithParams:completionHandler:@
openBasicCommissioningWindowWithParams_completionHandlerSelector :: Selector '[Id MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams, Ptr ()] ()
openBasicCommissioningWindowWithParams_completionHandlerSelector = mkSelector "openBasicCommissioningWindowWithParams:completionHandler:"

-- | @Selector@ for @revokeCommissioningWithParams:completionHandler:@
revokeCommissioningWithParams_completionHandlerSelector :: Selector '[Id MTRAdministratorCommissioningClusterRevokeCommissioningParams, Ptr ()] ()
revokeCommissioningWithParams_completionHandlerSelector = mkSelector "revokeCommissioningWithParams:completionHandler:"

-- | @Selector@ for @revokeCommissioningWithCompletionHandler:@
revokeCommissioningWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
revokeCommissioningWithCompletionHandlerSelector = mkSelector "revokeCommissioningWithCompletionHandler:"

-- | @Selector@ for @readAttributeWindowStatusWithCompletionHandler:@
readAttributeWindowStatusWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeWindowStatusWithCompletionHandlerSelector = mkSelector "readAttributeWindowStatusWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeWindowStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeWindowStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeWindowStatusWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeWindowStatusWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeWindowStatusWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeWindowStatusWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeWindowStatusWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeWindowStatusWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAdminFabricIndexWithCompletionHandler:@
readAttributeAdminFabricIndexWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAdminFabricIndexWithCompletionHandlerSelector = mkSelector "readAttributeAdminFabricIndexWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAdminFabricIndexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAdminFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAdminFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAdminFabricIndexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAdminFabricIndexWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAdminFabricIndexWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAdminFabricIndexWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAdminFabricIndexWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAdminVendorIdWithCompletionHandler:@
readAttributeAdminVendorIdWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAdminVendorIdWithCompletionHandlerSelector = mkSelector "readAttributeAdminVendorIdWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAdminVendorIdWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAdminVendorIdWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAdminVendorIdWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAdminVendorIdWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAdminVendorIdWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAdminVendorIdWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAdminVendorIdWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAdminVendorIdWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterAdministratorCommissioning)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterAdministratorCommissioning)
newSelector = mkSelector "new"

