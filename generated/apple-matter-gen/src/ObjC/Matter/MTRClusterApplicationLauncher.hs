{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Application Launcher    This cluster provides an interface for launching content on a media player device such as a TV or Speaker.
--
-- Generated bindings for @MTRClusterApplicationLauncher@.
module ObjC.Matter.MTRClusterApplicationLauncher
  ( MTRClusterApplicationLauncher
  , IsMTRClusterApplicationLauncher(..)
  , initWithDevice_endpoint_queue
  , launchAppWithParams_expectedValues_expectedValueInterval_completionHandler
  , stopAppWithParams_expectedValues_expectedValueInterval_completionHandler
  , hideAppWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeCatalogListWithParams
  , readAttributeCurrentAppWithParams
  , writeAttributeCurrentAppWithValue_expectedValueInterval
  , writeAttributeCurrentAppWithValue_expectedValueInterval_params
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , hideAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , launchAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeCatalogListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeCurrentAppWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , stopAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , writeAttributeCurrentAppWithValue_expectedValueIntervalSelector
  , writeAttributeCurrentAppWithValue_expectedValueInterval_paramsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRDevice device, IsNSObject queue) => mtrClusterApplicationLauncher -> device -> CUShort -> queue -> IO (Id MTRClusterApplicationLauncher)
initWithDevice_endpoint_queue mtrClusterApplicationLauncher device endpoint queue =
  sendOwnedMessage mtrClusterApplicationLauncher initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- launchAppWithParams:expectedValues:expectedValueInterval:completionHandler:@
launchAppWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRApplicationLauncherClusterLaunchAppParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterApplicationLauncher -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
launchAppWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterApplicationLauncher params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterApplicationLauncher launchAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRApplicationLauncherClusterLaunchAppParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- stopAppWithParams:expectedValues:expectedValueInterval:completionHandler:@
stopAppWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRApplicationLauncherClusterStopAppParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterApplicationLauncher -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
stopAppWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterApplicationLauncher params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterApplicationLauncher stopAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRApplicationLauncherClusterStopAppParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- hideAppWithParams:expectedValues:expectedValueInterval:completionHandler:@
hideAppWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRApplicationLauncherClusterHideAppParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterApplicationLauncher -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
hideAppWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterApplicationLauncher params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterApplicationLauncher hideAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRApplicationLauncherClusterHideAppParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeCatalogListWithParams:@
readAttributeCatalogListWithParams :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRReadParams params) => mtrClusterApplicationLauncher -> params -> IO (Id NSDictionary)
readAttributeCatalogListWithParams mtrClusterApplicationLauncher params =
  sendMessage mtrClusterApplicationLauncher readAttributeCatalogListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCurrentAppWithParams:@
readAttributeCurrentAppWithParams :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRReadParams params) => mtrClusterApplicationLauncher -> params -> IO (Id NSDictionary)
readAttributeCurrentAppWithParams mtrClusterApplicationLauncher params =
  sendMessage mtrClusterApplicationLauncher readAttributeCurrentAppWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeCurrentAppWithValue:expectedValueInterval:@
writeAttributeCurrentAppWithValue_expectedValueInterval :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterApplicationLauncher -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeCurrentAppWithValue_expectedValueInterval mtrClusterApplicationLauncher dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterApplicationLauncher writeAttributeCurrentAppWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeCurrentAppWithValue:expectedValueInterval:params:@
writeAttributeCurrentAppWithValue_expectedValueInterval_params :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterApplicationLauncher -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeCurrentAppWithValue_expectedValueInterval_params mtrClusterApplicationLauncher dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterApplicationLauncher writeAttributeCurrentAppWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRReadParams params) => mtrClusterApplicationLauncher -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterApplicationLauncher params =
  sendMessage mtrClusterApplicationLauncher readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRReadParams params) => mtrClusterApplicationLauncher -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterApplicationLauncher params =
  sendMessage mtrClusterApplicationLauncher readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRReadParams params) => mtrClusterApplicationLauncher -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterApplicationLauncher params =
  sendMessage mtrClusterApplicationLauncher readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRReadParams params) => mtrClusterApplicationLauncher -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterApplicationLauncher params =
  sendMessage mtrClusterApplicationLauncher readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher, IsMTRReadParams params) => mtrClusterApplicationLauncher -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterApplicationLauncher params =
  sendMessage mtrClusterApplicationLauncher readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterApplicationLauncher mtrClusterApplicationLauncher => mtrClusterApplicationLauncher -> IO (Id MTRClusterApplicationLauncher)
init_ mtrClusterApplicationLauncher =
  sendOwnedMessage mtrClusterApplicationLauncher initSelector

-- | @+ new@
new :: IO (Id MTRClusterApplicationLauncher)
new  =
  do
    cls' <- getRequiredClass "MTRClusterApplicationLauncher"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterApplicationLauncher)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @launchAppWithParams:expectedValues:expectedValueInterval:completionHandler:@
launchAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRApplicationLauncherClusterLaunchAppParams, Id NSArray, Id NSNumber, Ptr ()] ()
launchAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "launchAppWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @stopAppWithParams:expectedValues:expectedValueInterval:completionHandler:@
stopAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRApplicationLauncherClusterStopAppParams, Id NSArray, Id NSNumber, Ptr ()] ()
stopAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "stopAppWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @hideAppWithParams:expectedValues:expectedValueInterval:completionHandler:@
hideAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRApplicationLauncherClusterHideAppParams, Id NSArray, Id NSNumber, Ptr ()] ()
hideAppWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "hideAppWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeCatalogListWithParams:@
readAttributeCatalogListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCatalogListWithParamsSelector = mkSelector "readAttributeCatalogListWithParams:"

-- | @Selector@ for @readAttributeCurrentAppWithParams:@
readAttributeCurrentAppWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentAppWithParamsSelector = mkSelector "readAttributeCurrentAppWithParams:"

-- | @Selector@ for @writeAttributeCurrentAppWithValue:expectedValueInterval:@
writeAttributeCurrentAppWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeCurrentAppWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeCurrentAppWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeCurrentAppWithValue:expectedValueInterval:params:@
writeAttributeCurrentAppWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeCurrentAppWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeCurrentAppWithValue:expectedValueInterval:params:"

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
initSelector :: Selector '[] (Id MTRClusterApplicationLauncher)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterApplicationLauncher)
newSelector = mkSelector "new"

