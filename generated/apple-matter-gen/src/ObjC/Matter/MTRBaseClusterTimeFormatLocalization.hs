{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Time Format Localization    Nodes should be expected to be deployed to any and all regions of the world. These global regions      may have differing preferences for how dates and times are conveyed. As such, Nodes that visually      or audibly convey time information need a mechanism by which they can be configured to use a      user’s preferred format.
--
-- Generated bindings for @MTRBaseClusterTimeFormatLocalization@.
module ObjC.Matter.MTRBaseClusterTimeFormatLocalization
  ( MTRBaseClusterTimeFormatLocalization
  , IsMTRBaseClusterTimeFormatLocalization(..)
  , initWithDevice_endpoint_queue
  , readAttributeHourFormatWithCompletionHandler
  , writeAttributeHourFormatWithValue_completionHandler
  , writeAttributeHourFormatWithValue_params_completionHandler
  , subscribeAttributeHourFormatWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeHourFormatWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeActiveCalendarTypeWithCompletionHandler
  , writeAttributeActiveCalendarTypeWithValue_completionHandler
  , writeAttributeActiveCalendarTypeWithValue_params_completionHandler
  , subscribeAttributeActiveCalendarTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeActiveCalendarTypeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSupportedCalendarTypesWithCompletionHandler
  , subscribeAttributeSupportedCalendarTypesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSupportedCalendarTypesWithAttributeCache_endpoint_queue_completionHandler
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
  , readAttributeActiveCalendarTypeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeActiveCalendarTypeWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeHourFormatWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeHourFormatWithCompletionHandlerSelector
  , readAttributeSupportedCalendarTypesWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSupportedCalendarTypesWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeActiveCalendarTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeHourFormatWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSupportedCalendarTypesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , writeAttributeActiveCalendarTypeWithValue_completionHandlerSelector
  , writeAttributeActiveCalendarTypeWithValue_params_completionHandlerSelector
  , writeAttributeHourFormatWithValue_completionHandlerSelector
  , writeAttributeHourFormatWithValue_params_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterTimeFormatLocalization -> device -> CUShort -> queue -> IO (Id MTRBaseClusterTimeFormatLocalization)
initWithDevice_endpoint_queue mtrBaseClusterTimeFormatLocalization device endpoint queue =
  sendOwnedMessage mtrBaseClusterTimeFormatLocalization initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- readAttributeHourFormatWithCompletionHandler:@
readAttributeHourFormatWithCompletionHandler :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> Ptr () -> IO ()
readAttributeHourFormatWithCompletionHandler mtrBaseClusterTimeFormatLocalization completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization readAttributeHourFormatWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeHourFormatWithValue:completionHandler:@
writeAttributeHourFormatWithValue_completionHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber value) => mtrBaseClusterTimeFormatLocalization -> value -> Ptr () -> IO ()
writeAttributeHourFormatWithValue_completionHandler mtrBaseClusterTimeFormatLocalization value completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization writeAttributeHourFormatWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeHourFormatWithValue:params:completionHandler:@
writeAttributeHourFormatWithValue_params_completionHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterTimeFormatLocalization -> value -> params -> Ptr () -> IO ()
writeAttributeHourFormatWithValue_params_completionHandler mtrBaseClusterTimeFormatLocalization value params completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization writeAttributeHourFormatWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeHourFormatWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeHourFormatWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterTimeFormatLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeHourFormatWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterTimeFormatLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization subscribeAttributeHourFormatWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeHourFormatWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeHourFormatWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeHourFormatWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendClassMessage cls' readAttributeHourFormatWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeActiveCalendarTypeWithCompletionHandler:@
readAttributeActiveCalendarTypeWithCompletionHandler :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> Ptr () -> IO ()
readAttributeActiveCalendarTypeWithCompletionHandler mtrBaseClusterTimeFormatLocalization completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization readAttributeActiveCalendarTypeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeActiveCalendarTypeWithValue:completionHandler:@
writeAttributeActiveCalendarTypeWithValue_completionHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber value) => mtrBaseClusterTimeFormatLocalization -> value -> Ptr () -> IO ()
writeAttributeActiveCalendarTypeWithValue_completionHandler mtrBaseClusterTimeFormatLocalization value completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization writeAttributeActiveCalendarTypeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeActiveCalendarTypeWithValue:params:completionHandler:@
writeAttributeActiveCalendarTypeWithValue_params_completionHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterTimeFormatLocalization -> value -> params -> Ptr () -> IO ()
writeAttributeActiveCalendarTypeWithValue_params_completionHandler mtrBaseClusterTimeFormatLocalization value params completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization writeAttributeActiveCalendarTypeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeActiveCalendarTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveCalendarTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterTimeFormatLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeActiveCalendarTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterTimeFormatLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization subscribeAttributeActiveCalendarTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeActiveCalendarTypeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveCalendarTypeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeActiveCalendarTypeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendClassMessage cls' readAttributeActiveCalendarTypeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSupportedCalendarTypesWithCompletionHandler:@
readAttributeSupportedCalendarTypesWithCompletionHandler :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> Ptr () -> IO ()
readAttributeSupportedCalendarTypesWithCompletionHandler mtrBaseClusterTimeFormatLocalization completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization readAttributeSupportedCalendarTypesWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSupportedCalendarTypesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSupportedCalendarTypesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterTimeFormatLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSupportedCalendarTypesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterTimeFormatLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization subscribeAttributeSupportedCalendarTypesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSupportedCalendarTypesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSupportedCalendarTypesWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSupportedCalendarTypesWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendClassMessage cls' readAttributeSupportedCalendarTypesWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterTimeFormatLocalization completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterTimeFormatLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterTimeFormatLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterTimeFormatLocalization completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterTimeFormatLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterTimeFormatLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterTimeFormatLocalization completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterTimeFormatLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterTimeFormatLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterTimeFormatLocalization completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterTimeFormatLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterTimeFormatLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterTimeFormatLocalization completionHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterTimeFormatLocalization -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterTimeFormatLocalization minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterTimeFormatLocalization subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterTimeFormatLocalization mtrBaseClusterTimeFormatLocalization => mtrBaseClusterTimeFormatLocalization -> IO (Id MTRBaseClusterTimeFormatLocalization)
init_ mtrBaseClusterTimeFormatLocalization =
  sendOwnedMessage mtrBaseClusterTimeFormatLocalization initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterTimeFormatLocalization)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterTimeFormatLocalization"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterTimeFormatLocalization)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeHourFormatWithCompletionHandler:@
readAttributeHourFormatWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeHourFormatWithCompletionHandlerSelector = mkSelector "readAttributeHourFormatWithCompletionHandler:"

-- | @Selector@ for @writeAttributeHourFormatWithValue:completionHandler:@
writeAttributeHourFormatWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeHourFormatWithValue_completionHandlerSelector = mkSelector "writeAttributeHourFormatWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeHourFormatWithValue:params:completionHandler:@
writeAttributeHourFormatWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeHourFormatWithValue_params_completionHandlerSelector = mkSelector "writeAttributeHourFormatWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeHourFormatWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeHourFormatWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeHourFormatWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeHourFormatWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeHourFormatWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeHourFormatWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeHourFormatWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeHourFormatWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeActiveCalendarTypeWithCompletionHandler:@
readAttributeActiveCalendarTypeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeActiveCalendarTypeWithCompletionHandlerSelector = mkSelector "readAttributeActiveCalendarTypeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeActiveCalendarTypeWithValue:completionHandler:@
writeAttributeActiveCalendarTypeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeActiveCalendarTypeWithValue_completionHandlerSelector = mkSelector "writeAttributeActiveCalendarTypeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeActiveCalendarTypeWithValue:params:completionHandler:@
writeAttributeActiveCalendarTypeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeActiveCalendarTypeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeActiveCalendarTypeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeActiveCalendarTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeActiveCalendarTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeActiveCalendarTypeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeActiveCalendarTypeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeActiveCalendarTypeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeActiveCalendarTypeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeActiveCalendarTypeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeActiveCalendarTypeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSupportedCalendarTypesWithCompletionHandler:@
readAttributeSupportedCalendarTypesWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSupportedCalendarTypesWithCompletionHandlerSelector = mkSelector "readAttributeSupportedCalendarTypesWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSupportedCalendarTypesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSupportedCalendarTypesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSupportedCalendarTypesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSupportedCalendarTypesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSupportedCalendarTypesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSupportedCalendarTypesWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSupportedCalendarTypesWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSupportedCalendarTypesWithAttributeCache:endpoint:queue:completionHandler:"

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
initSelector :: Selector '[] (Id MTRBaseClusterTimeFormatLocalization)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterTimeFormatLocalization)
newSelector = mkSelector "new"

