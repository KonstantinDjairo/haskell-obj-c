{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Audio Output    This cluster provides an interface for controlling the Output on a media device such as a TV.
--
-- Generated bindings for @MTRBaseClusterAudioOutput@.
module ObjC.Matter.MTRBaseClusterAudioOutput
  ( MTRBaseClusterAudioOutput
  , IsMTRBaseClusterAudioOutput(..)
  , initWithDevice_endpoint_queue
  , selectOutputWithParams_completionHandler
  , renameOutputWithParams_completionHandler
  , readAttributeOutputListWithCompletionHandler
  , subscribeAttributeOutputListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOutputListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCurrentOutputWithCompletionHandler
  , subscribeAttributeCurrentOutputWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentOutputWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeCurrentOutputWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentOutputWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeOutputListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOutputListWithCompletionHandlerSelector
  , renameOutputWithParams_completionHandlerSelector
  , selectOutputWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentOutputWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOutputListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterAudioOutput -> device -> CUShort -> queue -> IO (Id MTRBaseClusterAudioOutput)
initWithDevice_endpoint_queue mtrBaseClusterAudioOutput device endpoint queue =
  sendOwnedMessage mtrBaseClusterAudioOutput initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- selectOutputWithParams:completionHandler:@
selectOutputWithParams_completionHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsMTRAudioOutputClusterSelectOutputParams params) => mtrBaseClusterAudioOutput -> params -> Ptr () -> IO ()
selectOutputWithParams_completionHandler mtrBaseClusterAudioOutput params completionHandler =
  sendMessage mtrBaseClusterAudioOutput selectOutputWithParams_completionHandlerSelector (toMTRAudioOutputClusterSelectOutputParams params) completionHandler

-- | @- renameOutputWithParams:completionHandler:@
renameOutputWithParams_completionHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsMTRAudioOutputClusterRenameOutputParams params) => mtrBaseClusterAudioOutput -> params -> Ptr () -> IO ()
renameOutputWithParams_completionHandler mtrBaseClusterAudioOutput params completionHandler =
  sendMessage mtrBaseClusterAudioOutput renameOutputWithParams_completionHandlerSelector (toMTRAudioOutputClusterRenameOutputParams params) completionHandler

-- | @- readAttributeOutputListWithCompletionHandler:@
readAttributeOutputListWithCompletionHandler :: IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput => mtrBaseClusterAudioOutput -> Ptr () -> IO ()
readAttributeOutputListWithCompletionHandler mtrBaseClusterAudioOutput completionHandler =
  sendMessage mtrBaseClusterAudioOutput readAttributeOutputListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOutputListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOutputListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAudioOutput -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOutputListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAudioOutput minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAudioOutput subscribeAttributeOutputListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOutputListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOutputListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOutputListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAudioOutput"
    sendClassMessage cls' readAttributeOutputListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCurrentOutputWithCompletionHandler:@
readAttributeCurrentOutputWithCompletionHandler :: IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput => mtrBaseClusterAudioOutput -> Ptr () -> IO ()
readAttributeCurrentOutputWithCompletionHandler mtrBaseClusterAudioOutput completionHandler =
  sendMessage mtrBaseClusterAudioOutput readAttributeCurrentOutputWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentOutputWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentOutputWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAudioOutput -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentOutputWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAudioOutput minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAudioOutput subscribeAttributeCurrentOutputWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentOutputWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentOutputWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentOutputWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAudioOutput"
    sendClassMessage cls' readAttributeCurrentOutputWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput => mtrBaseClusterAudioOutput -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterAudioOutput completionHandler =
  sendMessage mtrBaseClusterAudioOutput readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAudioOutput -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAudioOutput minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAudioOutput subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAudioOutput"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput => mtrBaseClusterAudioOutput -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterAudioOutput completionHandler =
  sendMessage mtrBaseClusterAudioOutput readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAudioOutput -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAudioOutput minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAudioOutput subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAudioOutput"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput => mtrBaseClusterAudioOutput -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterAudioOutput completionHandler =
  sendMessage mtrBaseClusterAudioOutput readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAudioOutput -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAudioOutput minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAudioOutput subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAudioOutput"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput => mtrBaseClusterAudioOutput -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterAudioOutput completionHandler =
  sendMessage mtrBaseClusterAudioOutput readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAudioOutput -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAudioOutput minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAudioOutput subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAudioOutput"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput => mtrBaseClusterAudioOutput -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterAudioOutput completionHandler =
  sendMessage mtrBaseClusterAudioOutput readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterAudioOutput -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterAudioOutput minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterAudioOutput subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterAudioOutput"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterAudioOutput mtrBaseClusterAudioOutput => mtrBaseClusterAudioOutput -> IO (Id MTRBaseClusterAudioOutput)
init_ mtrBaseClusterAudioOutput =
  sendOwnedMessage mtrBaseClusterAudioOutput initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterAudioOutput)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterAudioOutput"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterAudioOutput)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @selectOutputWithParams:completionHandler:@
selectOutputWithParams_completionHandlerSelector :: Selector '[Id MTRAudioOutputClusterSelectOutputParams, Ptr ()] ()
selectOutputWithParams_completionHandlerSelector = mkSelector "selectOutputWithParams:completionHandler:"

-- | @Selector@ for @renameOutputWithParams:completionHandler:@
renameOutputWithParams_completionHandlerSelector :: Selector '[Id MTRAudioOutputClusterRenameOutputParams, Ptr ()] ()
renameOutputWithParams_completionHandlerSelector = mkSelector "renameOutputWithParams:completionHandler:"

-- | @Selector@ for @readAttributeOutputListWithCompletionHandler:@
readAttributeOutputListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOutputListWithCompletionHandlerSelector = mkSelector "readAttributeOutputListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeOutputListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOutputListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOutputListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOutputListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOutputListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOutputListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOutputListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOutputListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCurrentOutputWithCompletionHandler:@
readAttributeCurrentOutputWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentOutputWithCompletionHandlerSelector = mkSelector "readAttributeCurrentOutputWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentOutputWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentOutputWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentOutputWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentOutputWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentOutputWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentOutputWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentOutputWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentOutputWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterAudioOutput)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterAudioOutput)
newSelector = mkSelector "new"

