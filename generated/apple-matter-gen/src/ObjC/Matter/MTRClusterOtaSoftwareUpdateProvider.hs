{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster OTA Software Update Provider    Provides an interface for providing OTA software updates
--
-- Generated bindings for @MTRClusterOtaSoftwareUpdateProvider@.
module ObjC.Matter.MTRClusterOtaSoftwareUpdateProvider
  ( MTRClusterOtaSoftwareUpdateProvider
  , IsMTRClusterOtaSoftwareUpdateProvider(..)
  , initWithDevice_endpoint_queue
  , queryImageWithParams_expectedValues_expectedValueInterval_completionHandler
  , applyUpdateRequestWithParams_expectedValues_expectedValueInterval_completionHandler
  , notifyUpdateAppliedWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , applyUpdateRequestWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , notifyUpdateAppliedWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , queryImageWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTRDevice device, IsNSObject queue) => mtrClusterOtaSoftwareUpdateProvider -> device -> CUShort -> queue -> IO (Id MTRClusterOtaSoftwareUpdateProvider)
initWithDevice_endpoint_queue mtrClusterOtaSoftwareUpdateProvider device endpoint queue =
  sendOwnedMessage mtrClusterOtaSoftwareUpdateProvider initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- queryImageWithParams:expectedValues:expectedValueInterval:completionHandler:@
queryImageWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTROtaSoftwareUpdateProviderClusterQueryImageParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterOtaSoftwareUpdateProvider -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
queryImageWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterOtaSoftwareUpdateProvider params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterOtaSoftwareUpdateProvider queryImageWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTROtaSoftwareUpdateProviderClusterQueryImageParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- applyUpdateRequestWithParams:expectedValues:expectedValueInterval:completionHandler:@
applyUpdateRequestWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterOtaSoftwareUpdateProvider -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
applyUpdateRequestWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterOtaSoftwareUpdateProvider params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterOtaSoftwareUpdateProvider applyUpdateRequestWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- notifyUpdateAppliedWithParams:expectedValues:expectedValueInterval:completionHandler:@
notifyUpdateAppliedWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterOtaSoftwareUpdateProvider -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
notifyUpdateAppliedWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterOtaSoftwareUpdateProvider params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterOtaSoftwareUpdateProvider notifyUpdateAppliedWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateProvider -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterOtaSoftwareUpdateProvider params =
  sendMessage mtrClusterOtaSoftwareUpdateProvider readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateProvider -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterOtaSoftwareUpdateProvider params =
  sendMessage mtrClusterOtaSoftwareUpdateProvider readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateProvider -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterOtaSoftwareUpdateProvider params =
  sendMessage mtrClusterOtaSoftwareUpdateProvider readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateProvider -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterOtaSoftwareUpdateProvider params =
  sendMessage mtrClusterOtaSoftwareUpdateProvider readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateProvider -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterOtaSoftwareUpdateProvider params =
  sendMessage mtrClusterOtaSoftwareUpdateProvider readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterOtaSoftwareUpdateProvider mtrClusterOtaSoftwareUpdateProvider => mtrClusterOtaSoftwareUpdateProvider -> IO (Id MTRClusterOtaSoftwareUpdateProvider)
init_ mtrClusterOtaSoftwareUpdateProvider =
  sendOwnedMessage mtrClusterOtaSoftwareUpdateProvider initSelector

-- | @+ new@
new :: IO (Id MTRClusterOtaSoftwareUpdateProvider)
new  =
  do
    cls' <- getRequiredClass "MTRClusterOtaSoftwareUpdateProvider"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterOtaSoftwareUpdateProvider)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @queryImageWithParams:expectedValues:expectedValueInterval:completionHandler:@
queryImageWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTROtaSoftwareUpdateProviderClusterQueryImageParams, Id NSArray, Id NSNumber, Ptr ()] ()
queryImageWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "queryImageWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @applyUpdateRequestWithParams:expectedValues:expectedValueInterval:completionHandler:@
applyUpdateRequestWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams, Id NSArray, Id NSNumber, Ptr ()] ()
applyUpdateRequestWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "applyUpdateRequestWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @notifyUpdateAppliedWithParams:expectedValues:expectedValueInterval:completionHandler:@
notifyUpdateAppliedWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams, Id NSArray, Id NSNumber, Ptr ()] ()
notifyUpdateAppliedWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "notifyUpdateAppliedWithParams:expectedValues:expectedValueInterval:completionHandler:"

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
initSelector :: Selector '[] (Id MTRClusterOtaSoftwareUpdateProvider)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterOtaSoftwareUpdateProvider)
newSelector = mkSelector "new"

