{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster OTA Software Update Requestor    Provides an interface for downloading and applying OTA software updates
--
-- Generated bindings for @MTRClusterOtaSoftwareUpdateRequestor@.
module ObjC.Matter.MTRClusterOtaSoftwareUpdateRequestor
  ( MTRClusterOtaSoftwareUpdateRequestor
  , IsMTRClusterOtaSoftwareUpdateRequestor(..)
  , initWithDevice_endpoint_queue
  , announceOtaProviderWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeDefaultOtaProvidersWithParams
  , writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval
  , writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval_params
  , readAttributeUpdatePossibleWithParams
  , readAttributeUpdateStateWithParams
  , readAttributeUpdateStateProgressWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , announceOtaProviderWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeDefaultOtaProvidersWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeUpdatePossibleWithParamsSelector
  , readAttributeUpdateStateProgressWithParamsSelector
  , readAttributeUpdateStateWithParamsSelector
  , writeAttributeDefaultOtaProvidersWithValue_expectedValueIntervalSelector
  , writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval_paramsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRDevice device, IsNSObject queue) => mtrClusterOtaSoftwareUpdateRequestor -> device -> CUShort -> queue -> IO (Id MTRClusterOtaSoftwareUpdateRequestor)
initWithDevice_endpoint_queue mtrClusterOtaSoftwareUpdateRequestor device endpoint queue =
  sendOwnedMessage mtrClusterOtaSoftwareUpdateRequestor initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- announceOtaProviderWithParams:expectedValues:expectedValueInterval:completionHandler:@
announceOtaProviderWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterOtaSoftwareUpdateRequestor -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
announceOtaProviderWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterOtaSoftwareUpdateRequestor params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor announceOtaProviderWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeDefaultOtaProvidersWithParams:@
readAttributeDefaultOtaProvidersWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeDefaultOtaProvidersWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeDefaultOtaProvidersWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeDefaultOtaProvidersWithValue:expectedValueInterval:@
writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOtaSoftwareUpdateRequestor -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval mtrClusterOtaSoftwareUpdateRequestor dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor writeAttributeDefaultOtaProvidersWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeDefaultOtaProvidersWithValue:expectedValueInterval:params:@
writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval_params :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOtaSoftwareUpdateRequestor -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval_params mtrClusterOtaSoftwareUpdateRequestor dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeUpdatePossibleWithParams:@
readAttributeUpdatePossibleWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeUpdatePossibleWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeUpdatePossibleWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeUpdateStateWithParams:@
readAttributeUpdateStateWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeUpdateStateWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeUpdateStateWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeUpdateStateProgressWithParams:@
readAttributeUpdateStateProgressWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeUpdateStateProgressWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeUpdateStateProgressWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor, IsMTRReadParams params) => mtrClusterOtaSoftwareUpdateRequestor -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterOtaSoftwareUpdateRequestor params =
  sendMessage mtrClusterOtaSoftwareUpdateRequestor readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterOtaSoftwareUpdateRequestor mtrClusterOtaSoftwareUpdateRequestor => mtrClusterOtaSoftwareUpdateRequestor -> IO (Id MTRClusterOtaSoftwareUpdateRequestor)
init_ mtrClusterOtaSoftwareUpdateRequestor =
  sendOwnedMessage mtrClusterOtaSoftwareUpdateRequestor initSelector

-- | @+ new@
new :: IO (Id MTRClusterOtaSoftwareUpdateRequestor)
new  =
  do
    cls' <- getRequiredClass "MTRClusterOtaSoftwareUpdateRequestor"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterOtaSoftwareUpdateRequestor)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @announceOtaProviderWithParams:expectedValues:expectedValueInterval:completionHandler:@
announceOtaProviderWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams, Id NSArray, Id NSNumber, Ptr ()] ()
announceOtaProviderWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "announceOtaProviderWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeDefaultOtaProvidersWithParams:@
readAttributeDefaultOtaProvidersWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeDefaultOtaProvidersWithParamsSelector = mkSelector "readAttributeDefaultOtaProvidersWithParams:"

-- | @Selector@ for @writeAttributeDefaultOtaProvidersWithValue:expectedValueInterval:@
writeAttributeDefaultOtaProvidersWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeDefaultOtaProvidersWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeDefaultOtaProvidersWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeDefaultOtaProvidersWithValue:expectedValueInterval:params:@
writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeDefaultOtaProvidersWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeDefaultOtaProvidersWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeUpdatePossibleWithParams:@
readAttributeUpdatePossibleWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUpdatePossibleWithParamsSelector = mkSelector "readAttributeUpdatePossibleWithParams:"

-- | @Selector@ for @readAttributeUpdateStateWithParams:@
readAttributeUpdateStateWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUpdateStateWithParamsSelector = mkSelector "readAttributeUpdateStateWithParams:"

-- | @Selector@ for @readAttributeUpdateStateProgressWithParams:@
readAttributeUpdateStateProgressWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUpdateStateProgressWithParamsSelector = mkSelector "readAttributeUpdateStateProgressWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterOtaSoftwareUpdateRequestor)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterOtaSoftwareUpdateRequestor)
newSelector = mkSelector "new"

