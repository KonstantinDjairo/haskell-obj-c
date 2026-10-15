{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Unit Localization    Nodes should be expected to be deployed to any and all regions of the world. These global regions      may have differing preferences for the units in which values are conveyed in communication to a      user. As such, Nodes that visually or audibly convey measurable values to the user need a      mechanism by which they can be configured to use a user’s preferred unit.
--
-- Generated bindings for @MTRBaseClusterUnitLocalization@.
module ObjC.Matter.MTRBaseClusterUnitLocalization
  ( MTRBaseClusterUnitLocalization
  , IsMTRBaseClusterUnitLocalization(..)
  , initWithDevice_endpoint_queue
  , readAttributeTemperatureUnitWithCompletionHandler
  , writeAttributeTemperatureUnitWithValue_completionHandler
  , writeAttributeTemperatureUnitWithValue_params_completionHandler
  , subscribeAttributeTemperatureUnitWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeTemperatureUnitWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeTemperatureUnitWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeTemperatureUnitWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeTemperatureUnitWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeTemperatureUnitWithValue_completionHandlerSelector
  , writeAttributeTemperatureUnitWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterUnitLocalization -> device -> CUShort -> queue -> IO (Id MTRBaseClusterUnitLocalization)
initWithDevice_endpoint_queue mtrBaseClusterUnitLocalization device endpoint queue =
  sendOwnedMessage mtrBaseClusterUnitLocalization initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- readAttributeTemperatureUnitWithCompletionHandler:@
readAttributeTemperatureUnitWithCompletionHandler :: IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization => mtrBaseClusterUnitLocalization -> Ptr () -> IO ()
readAttributeTemperatureUnitWithCompletionHandler mtrBaseClusterUnitLocalization completionHandler =
  sendMessage mtrBaseClusterUnitLocalization readAttributeTemperatureUnitWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeTemperatureUnitWithValue:completionHandler:@
writeAttributeTemperatureUnitWithValue_completionHandler :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsNSNumber value) => mtrBaseClusterUnitLocalization -> value -> Ptr () -> IO ()
writeAttributeTemperatureUnitWithValue_completionHandler mtrBaseClusterUnitLocalization value completionHandler =
  sendMessage mtrBaseClusterUnitLocalization writeAttributeTemperatureUnitWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeTemperatureUnitWithValue:params:completionHandler:@
writeAttributeTemperatureUnitWithValue_params_completionHandler :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterUnitLocalization -> value -> params -> Ptr () -> IO ()
writeAttributeTemperatureUnitWithValue_params_completionHandler mtrBaseClusterUnitLocalization value params completionHandler =
  sendMessage mtrBaseClusterUnitLocalization writeAttributeTemperatureUnitWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeTemperatureUnitWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTemperatureUnitWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterUnitLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeTemperatureUnitWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterUnitLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterUnitLocalization subscribeAttributeTemperatureUnitWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeTemperatureUnitWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTemperatureUnitWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeTemperatureUnitWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterUnitLocalization"
    sendClassMessage cls' readAttributeTemperatureUnitWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization => mtrBaseClusterUnitLocalization -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterUnitLocalization completionHandler =
  sendMessage mtrBaseClusterUnitLocalization readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterUnitLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterUnitLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterUnitLocalization subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterUnitLocalization"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization => mtrBaseClusterUnitLocalization -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterUnitLocalization completionHandler =
  sendMessage mtrBaseClusterUnitLocalization readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterUnitLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterUnitLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterUnitLocalization subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterUnitLocalization"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization => mtrBaseClusterUnitLocalization -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterUnitLocalization completionHandler =
  sendMessage mtrBaseClusterUnitLocalization readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterUnitLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterUnitLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterUnitLocalization subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterUnitLocalization"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization => mtrBaseClusterUnitLocalization -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterUnitLocalization completionHandler =
  sendMessage mtrBaseClusterUnitLocalization readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterUnitLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterUnitLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterUnitLocalization subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterUnitLocalization"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization => mtrBaseClusterUnitLocalization -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterUnitLocalization completionHandler =
  sendMessage mtrBaseClusterUnitLocalization readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterUnitLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterUnitLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterUnitLocalization subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterUnitLocalization"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterUnitLocalization mtrBaseClusterUnitLocalization => mtrBaseClusterUnitLocalization -> IO (Id MTRBaseClusterUnitLocalization)
init_ mtrBaseClusterUnitLocalization =
  sendOwnedMessage mtrBaseClusterUnitLocalization initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterUnitLocalization)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterUnitLocalization"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterUnitLocalization)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeTemperatureUnitWithCompletionHandler:@
readAttributeTemperatureUnitWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeTemperatureUnitWithCompletionHandlerSelector = mkSelector "readAttributeTemperatureUnitWithCompletionHandler:"

-- | @Selector@ for @writeAttributeTemperatureUnitWithValue:completionHandler:@
writeAttributeTemperatureUnitWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeTemperatureUnitWithValue_completionHandlerSelector = mkSelector "writeAttributeTemperatureUnitWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeTemperatureUnitWithValue:params:completionHandler:@
writeAttributeTemperatureUnitWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeTemperatureUnitWithValue_params_completionHandlerSelector = mkSelector "writeAttributeTemperatureUnitWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeTemperatureUnitWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTemperatureUnitWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeTemperatureUnitWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeTemperatureUnitWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeTemperatureUnitWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTemperatureUnitWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeTemperatureUnitWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeTemperatureUnitWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterUnitLocalization)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterUnitLocalization)
newSelector = mkSelector "new"

