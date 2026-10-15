{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Scenes    Attributes and commands for scene configuration and manipulation.
--
-- Generated bindings for @MTRClusterScenes@.
module ObjC.Matter.MTRClusterScenes
  ( MTRClusterScenes
  , IsMTRClusterScenes(..)
  , initWithDevice_endpoint_queue
  , addSceneWithParams_expectedValues_expectedValueInterval_completionHandler
  , viewSceneWithParams_expectedValues_expectedValueInterval_completionHandler
  , removeSceneWithParams_expectedValues_expectedValueInterval_completionHandler
  , removeAllScenesWithParams_expectedValues_expectedValueInterval_completionHandler
  , storeSceneWithParams_expectedValues_expectedValueInterval_completionHandler
  , recallSceneWithParams_expectedValues_expectedValueInterval_completionHandler
  , getSceneMembershipWithParams_expectedValues_expectedValueInterval_completionHandler
  , enhancedAddSceneWithParams_expectedValues_expectedValueInterval_completionHandler
  , enhancedViewSceneWithParams_expectedValues_expectedValueInterval_completionHandler
  , copySceneWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeSceneCountWithParams
  , readAttributeCurrentSceneWithParams
  , readAttributeCurrentGroupWithParams
  , readAttributeSceneValidWithParams
  , readAttributeNameSupportWithParams
  , readAttributeLastConfiguredByWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , addSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , copySceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , enhancedAddSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , enhancedViewSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , getSceneMembershipWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeCurrentGroupWithParamsSelector
  , readAttributeCurrentSceneWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeLastConfiguredByWithParamsSelector
  , readAttributeNameSupportWithParamsSelector
  , readAttributeSceneCountWithParamsSelector
  , readAttributeSceneValidWithParamsSelector
  , recallSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , removeAllScenesWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , removeSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , storeSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , viewSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterScenes mtrClusterScenes, IsMTRDevice device, IsNSObject queue) => mtrClusterScenes -> device -> CUShort -> queue -> IO (Id MTRClusterScenes)
initWithDevice_endpoint_queue mtrClusterScenes device endpoint queue =
  sendOwnedMessage mtrClusterScenes initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- addSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
addSceneWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterAddSceneParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
addSceneWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes addSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterAddSceneParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- viewSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
viewSceneWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterViewSceneParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
viewSceneWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes viewSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterViewSceneParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- removeSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeSceneWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterRemoveSceneParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
removeSceneWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes removeSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterRemoveSceneParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- removeAllScenesWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeAllScenesWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterRemoveAllScenesParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
removeAllScenesWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes removeAllScenesWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterRemoveAllScenesParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- storeSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
storeSceneWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterStoreSceneParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
storeSceneWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes storeSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterStoreSceneParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- recallSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
recallSceneWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterRecallSceneParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
recallSceneWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes recallSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterRecallSceneParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- getSceneMembershipWithParams:expectedValues:expectedValueInterval:completionHandler:@
getSceneMembershipWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterGetSceneMembershipParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
getSceneMembershipWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes getSceneMembershipWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterGetSceneMembershipParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- enhancedAddSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
enhancedAddSceneWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterEnhancedAddSceneParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
enhancedAddSceneWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes enhancedAddSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterEnhancedAddSceneParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- enhancedViewSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
enhancedViewSceneWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterEnhancedViewSceneParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
enhancedViewSceneWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterScenes enhancedViewSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterEnhancedViewSceneParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- copySceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
copySceneWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterScenes mtrClusterScenes, IsMTRScenesClusterCopySceneParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterScenes -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
copySceneWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterScenes params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendOwnedMessage mtrClusterScenes copySceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRScenesClusterCopySceneParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeSceneCountWithParams:@
readAttributeSceneCountWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeSceneCountWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeSceneCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCurrentSceneWithParams:@
readAttributeCurrentSceneWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeCurrentSceneWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeCurrentSceneWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCurrentGroupWithParams:@
readAttributeCurrentGroupWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeCurrentGroupWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeCurrentGroupWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSceneValidWithParams:@
readAttributeSceneValidWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeSceneValidWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeSceneValidWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeNameSupportWithParams:@
readAttributeNameSupportWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeNameSupportWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeNameSupportWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeLastConfiguredByWithParams:@
readAttributeLastConfiguredByWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeLastConfiguredByWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeLastConfiguredByWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterScenes mtrClusterScenes, IsMTRReadParams params) => mtrClusterScenes -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterScenes params =
  sendMessage mtrClusterScenes readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterScenes mtrClusterScenes => mtrClusterScenes -> IO (Id MTRClusterScenes)
init_ mtrClusterScenes =
  sendOwnedMessage mtrClusterScenes initSelector

-- | @+ new@
new :: IO (Id MTRClusterScenes)
new  =
  do
    cls' <- getRequiredClass "MTRClusterScenes"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterScenes)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @addSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
addSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterAddSceneParams, Id NSArray, Id NSNumber, Ptr ()] ()
addSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "addSceneWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @viewSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
viewSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterViewSceneParams, Id NSArray, Id NSNumber, Ptr ()] ()
viewSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "viewSceneWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @removeSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterRemoveSceneParams, Id NSArray, Id NSNumber, Ptr ()] ()
removeSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "removeSceneWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @removeAllScenesWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeAllScenesWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterRemoveAllScenesParams, Id NSArray, Id NSNumber, Ptr ()] ()
removeAllScenesWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "removeAllScenesWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @storeSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
storeSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterStoreSceneParams, Id NSArray, Id NSNumber, Ptr ()] ()
storeSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "storeSceneWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @recallSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
recallSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterRecallSceneParams, Id NSArray, Id NSNumber, Ptr ()] ()
recallSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "recallSceneWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @getSceneMembershipWithParams:expectedValues:expectedValueInterval:completionHandler:@
getSceneMembershipWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterGetSceneMembershipParams, Id NSArray, Id NSNumber, Ptr ()] ()
getSceneMembershipWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "getSceneMembershipWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @enhancedAddSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
enhancedAddSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterEnhancedAddSceneParams, Id NSArray, Id NSNumber, Ptr ()] ()
enhancedAddSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "enhancedAddSceneWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @enhancedViewSceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
enhancedViewSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterEnhancedViewSceneParams, Id NSArray, Id NSNumber, Ptr ()] ()
enhancedViewSceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "enhancedViewSceneWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @copySceneWithParams:expectedValues:expectedValueInterval:completionHandler:@
copySceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRScenesClusterCopySceneParams, Id NSArray, Id NSNumber, Ptr ()] ()
copySceneWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "copySceneWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeSceneCountWithParams:@
readAttributeSceneCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSceneCountWithParamsSelector = mkSelector "readAttributeSceneCountWithParams:"

-- | @Selector@ for @readAttributeCurrentSceneWithParams:@
readAttributeCurrentSceneWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentSceneWithParamsSelector = mkSelector "readAttributeCurrentSceneWithParams:"

-- | @Selector@ for @readAttributeCurrentGroupWithParams:@
readAttributeCurrentGroupWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentGroupWithParamsSelector = mkSelector "readAttributeCurrentGroupWithParams:"

-- | @Selector@ for @readAttributeSceneValidWithParams:@
readAttributeSceneValidWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSceneValidWithParamsSelector = mkSelector "readAttributeSceneValidWithParams:"

-- | @Selector@ for @readAttributeNameSupportWithParams:@
readAttributeNameSupportWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeNameSupportWithParamsSelector = mkSelector "readAttributeNameSupportWithParams:"

-- | @Selector@ for @readAttributeLastConfiguredByWithParams:@
readAttributeLastConfiguredByWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeLastConfiguredByWithParamsSelector = mkSelector "readAttributeLastConfiguredByWithParams:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeGeneratedCommandListWithParamsSelector = mkSelector "readAttributeGeneratedCommandListWithParams:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeAcceptedCommandListWithParamsSelector = mkSelector "readAttributeAcceptedCommandListWithParams:"

-- | @Selector@ for @readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeAttributeListWithParamsSelector = mkSelector "readAttributeAttributeListWithParams:"

-- | @Selector@ for @readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeFeatureMapWithParamsSelector = mkSelector "readAttributeFeatureMapWithParams:"

-- | @Selector@ for @readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeClusterRevisionWithParamsSelector = mkSelector "readAttributeClusterRevisionWithParams:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRClusterScenes)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterScenes)
newSelector = mkSelector "new"

