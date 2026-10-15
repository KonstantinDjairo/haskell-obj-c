{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Application Launcher    This cluster provides an interface for launching content on a media player device such as a TV or Speaker.
--
-- Generated bindings for @MTRBaseClusterApplicationLauncher@.
module ObjC.Matter.MTRBaseClusterApplicationLauncher
  ( MTRBaseClusterApplicationLauncher
  , IsMTRBaseClusterApplicationLauncher(..)
  , initWithDevice_endpoint_queue
  , launchAppWithParams_completionHandler
  , stopAppWithParams_completionHandler
  , hideAppWithParams_completionHandler
  , readAttributeCatalogListWithCompletionHandler
  , subscribeAttributeCatalogListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCatalogListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCurrentAppWithCompletionHandler
  , writeAttributeCurrentAppWithValue_completionHandler
  , writeAttributeCurrentAppWithValue_params_completionHandler
  , subscribeAttributeCurrentAppWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentAppWithAttributeCache_endpoint_queue_completionHandler
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
  , hideAppWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , launchAppWithParams_completionHandlerSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeCatalogListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCatalogListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeCurrentAppWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentAppWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , stopAppWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCatalogListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentAppWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeCurrentAppWithValue_completionHandlerSelector
  , writeAttributeCurrentAppWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterApplicationLauncher -> device -> CUShort -> queue -> IO (Id MTRBaseClusterApplicationLauncher)
initWithDevice_endpoint_queue mtrBaseClusterApplicationLauncher device endpoint queue =
  sendOwnedMessage mtrBaseClusterApplicationLauncher initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- launchAppWithParams:completionHandler:@
launchAppWithParams_completionHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsMTRApplicationLauncherClusterLaunchAppParams params) => mtrBaseClusterApplicationLauncher -> params -> Ptr () -> IO ()
launchAppWithParams_completionHandler mtrBaseClusterApplicationLauncher params completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher launchAppWithParams_completionHandlerSelector (toMTRApplicationLauncherClusterLaunchAppParams params) completionHandler

-- | @- stopAppWithParams:completionHandler:@
stopAppWithParams_completionHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsMTRApplicationLauncherClusterStopAppParams params) => mtrBaseClusterApplicationLauncher -> params -> Ptr () -> IO ()
stopAppWithParams_completionHandler mtrBaseClusterApplicationLauncher params completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher stopAppWithParams_completionHandlerSelector (toMTRApplicationLauncherClusterStopAppParams params) completionHandler

-- | @- hideAppWithParams:completionHandler:@
hideAppWithParams_completionHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsMTRApplicationLauncherClusterHideAppParams params) => mtrBaseClusterApplicationLauncher -> params -> Ptr () -> IO ()
hideAppWithParams_completionHandler mtrBaseClusterApplicationLauncher params completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher hideAppWithParams_completionHandlerSelector (toMTRApplicationLauncherClusterHideAppParams params) completionHandler

-- | @- readAttributeCatalogListWithCompletionHandler:@
readAttributeCatalogListWithCompletionHandler :: IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher => mtrBaseClusterApplicationLauncher -> Ptr () -> IO ()
readAttributeCatalogListWithCompletionHandler mtrBaseClusterApplicationLauncher completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher readAttributeCatalogListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCatalogListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCatalogListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationLauncher -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCatalogListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationLauncher minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationLauncher subscribeAttributeCatalogListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCatalogListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCatalogListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCatalogListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationLauncher"
    sendClassMessage cls' readAttributeCatalogListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCurrentAppWithCompletionHandler:@
readAttributeCurrentAppWithCompletionHandler :: IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher => mtrBaseClusterApplicationLauncher -> Ptr () -> IO ()
readAttributeCurrentAppWithCompletionHandler mtrBaseClusterApplicationLauncher completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher readAttributeCurrentAppWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeCurrentAppWithValue:completionHandler:@
writeAttributeCurrentAppWithValue_completionHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsMTRApplicationLauncherClusterApplicationEP value) => mtrBaseClusterApplicationLauncher -> value -> Ptr () -> IO ()
writeAttributeCurrentAppWithValue_completionHandler mtrBaseClusterApplicationLauncher value completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher writeAttributeCurrentAppWithValue_completionHandlerSelector (toMTRApplicationLauncherClusterApplicationEP value) completionHandler

-- | @- writeAttributeCurrentAppWithValue:params:completionHandler:@
writeAttributeCurrentAppWithValue_params_completionHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsMTRApplicationLauncherClusterApplicationEP value, IsMTRWriteParams params) => mtrBaseClusterApplicationLauncher -> value -> params -> Ptr () -> IO ()
writeAttributeCurrentAppWithValue_params_completionHandler mtrBaseClusterApplicationLauncher value params completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher writeAttributeCurrentAppWithValue_params_completionHandlerSelector (toMTRApplicationLauncherClusterApplicationEP value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentAppWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentAppWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationLauncher -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentAppWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationLauncher minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationLauncher subscribeAttributeCurrentAppWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentAppWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentAppWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentAppWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationLauncher"
    sendClassMessage cls' readAttributeCurrentAppWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher => mtrBaseClusterApplicationLauncher -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterApplicationLauncher completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationLauncher -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationLauncher minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationLauncher subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationLauncher"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher => mtrBaseClusterApplicationLauncher -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterApplicationLauncher completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationLauncher -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationLauncher minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationLauncher subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationLauncher"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher => mtrBaseClusterApplicationLauncher -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterApplicationLauncher completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationLauncher -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationLauncher minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationLauncher subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationLauncher"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher => mtrBaseClusterApplicationLauncher -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterApplicationLauncher completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationLauncher -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationLauncher minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationLauncher subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationLauncher"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher => mtrBaseClusterApplicationLauncher -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterApplicationLauncher completionHandler =
  sendMessage mtrBaseClusterApplicationLauncher readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterApplicationLauncher -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterApplicationLauncher minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterApplicationLauncher subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationLauncher"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterApplicationLauncher mtrBaseClusterApplicationLauncher => mtrBaseClusterApplicationLauncher -> IO (Id MTRBaseClusterApplicationLauncher)
init_ mtrBaseClusterApplicationLauncher =
  sendOwnedMessage mtrBaseClusterApplicationLauncher initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterApplicationLauncher)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterApplicationLauncher"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterApplicationLauncher)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @launchAppWithParams:completionHandler:@
launchAppWithParams_completionHandlerSelector :: Selector '[Id MTRApplicationLauncherClusterLaunchAppParams, Ptr ()] ()
launchAppWithParams_completionHandlerSelector = mkSelector "launchAppWithParams:completionHandler:"

-- | @Selector@ for @stopAppWithParams:completionHandler:@
stopAppWithParams_completionHandlerSelector :: Selector '[Id MTRApplicationLauncherClusterStopAppParams, Ptr ()] ()
stopAppWithParams_completionHandlerSelector = mkSelector "stopAppWithParams:completionHandler:"

-- | @Selector@ for @hideAppWithParams:completionHandler:@
hideAppWithParams_completionHandlerSelector :: Selector '[Id MTRApplicationLauncherClusterHideAppParams, Ptr ()] ()
hideAppWithParams_completionHandlerSelector = mkSelector "hideAppWithParams:completionHandler:"

-- | @Selector@ for @readAttributeCatalogListWithCompletionHandler:@
readAttributeCatalogListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCatalogListWithCompletionHandlerSelector = mkSelector "readAttributeCatalogListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCatalogListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCatalogListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCatalogListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCatalogListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCatalogListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCatalogListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCatalogListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCatalogListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCurrentAppWithCompletionHandler:@
readAttributeCurrentAppWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentAppWithCompletionHandlerSelector = mkSelector "readAttributeCurrentAppWithCompletionHandler:"

-- | @Selector@ for @writeAttributeCurrentAppWithValue:completionHandler:@
writeAttributeCurrentAppWithValue_completionHandlerSelector :: Selector '[Id MTRApplicationLauncherClusterApplicationEP, Ptr ()] ()
writeAttributeCurrentAppWithValue_completionHandlerSelector = mkSelector "writeAttributeCurrentAppWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeCurrentAppWithValue:params:completionHandler:@
writeAttributeCurrentAppWithValue_params_completionHandlerSelector :: Selector '[Id MTRApplicationLauncherClusterApplicationEP, Id MTRWriteParams, Ptr ()] ()
writeAttributeCurrentAppWithValue_params_completionHandlerSelector = mkSelector "writeAttributeCurrentAppWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentAppWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentAppWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentAppWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentAppWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentAppWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentAppWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentAppWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentAppWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterApplicationLauncher)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterApplicationLauncher)
newSelector = mkSelector "new"

