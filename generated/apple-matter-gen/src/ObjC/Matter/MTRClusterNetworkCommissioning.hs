{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Network Commissioning    Functionality to configure, enable, disable network credentials and access on a Matter device.
--
-- Generated bindings for @MTRClusterNetworkCommissioning@.
module ObjC.Matter.MTRClusterNetworkCommissioning
  ( MTRClusterNetworkCommissioning
  , IsMTRClusterNetworkCommissioning(..)
  , initWithDevice_endpoint_queue
  , scanNetworksWithParams_expectedValues_expectedValueInterval_completionHandler
  , addOrUpdateWiFiNetworkWithParams_expectedValues_expectedValueInterval_completionHandler
  , addOrUpdateThreadNetworkWithParams_expectedValues_expectedValueInterval_completionHandler
  , removeNetworkWithParams_expectedValues_expectedValueInterval_completionHandler
  , connectNetworkWithParams_expectedValues_expectedValueInterval_completionHandler
  , reorderNetworkWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeMaxNetworksWithParams
  , readAttributeNetworksWithParams
  , readAttributeScanMaxTimeSecondsWithParams
  , readAttributeConnectMaxTimeSecondsWithParams
  , readAttributeInterfaceEnabledWithParams
  , writeAttributeInterfaceEnabledWithValue_expectedValueInterval
  , writeAttributeInterfaceEnabledWithValue_expectedValueInterval_params
  , readAttributeLastNetworkingStatusWithParams
  , readAttributeLastNetworkIDWithParams
  , readAttributeLastConnectErrorValueWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , addOrUpdateThreadNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , addOrUpdateWiFiNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , connectNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeConnectMaxTimeSecondsWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeInterfaceEnabledWithParamsSelector
  , readAttributeLastConnectErrorValueWithParamsSelector
  , readAttributeLastNetworkIDWithParamsSelector
  , readAttributeLastNetworkingStatusWithParamsSelector
  , readAttributeMaxNetworksWithParamsSelector
  , readAttributeNetworksWithParamsSelector
  , readAttributeScanMaxTimeSecondsWithParamsSelector
  , removeNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , reorderNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , scanNetworksWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , writeAttributeInterfaceEnabledWithValue_expectedValueIntervalSelector
  , writeAttributeInterfaceEnabledWithValue_expectedValueInterval_paramsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRDevice device, IsNSObject queue) => mtrClusterNetworkCommissioning -> device -> CUShort -> queue -> IO (Id MTRClusterNetworkCommissioning)
initWithDevice_endpoint_queue mtrClusterNetworkCommissioning device endpoint queue =
  sendOwnedMessage mtrClusterNetworkCommissioning initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- scanNetworksWithParams:expectedValues:expectedValueInterval:completionHandler:@
scanNetworksWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterScanNetworksParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterNetworkCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
scanNetworksWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterNetworkCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterNetworkCommissioning scanNetworksWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRNetworkCommissioningClusterScanNetworksParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- addOrUpdateWiFiNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
addOrUpdateWiFiNetworkWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterNetworkCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
addOrUpdateWiFiNetworkWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterNetworkCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterNetworkCommissioning addOrUpdateWiFiNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- addOrUpdateThreadNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
addOrUpdateThreadNetworkWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterNetworkCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
addOrUpdateThreadNetworkWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterNetworkCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterNetworkCommissioning addOrUpdateThreadNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- removeNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeNetworkWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterRemoveNetworkParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterNetworkCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
removeNetworkWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterNetworkCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterNetworkCommissioning removeNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRNetworkCommissioningClusterRemoveNetworkParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- connectNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
connectNetworkWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterConnectNetworkParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterNetworkCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
connectNetworkWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterNetworkCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterNetworkCommissioning connectNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRNetworkCommissioningClusterConnectNetworkParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- reorderNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
reorderNetworkWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRNetworkCommissioningClusterReorderNetworkParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterNetworkCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
reorderNetworkWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterNetworkCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterNetworkCommissioning reorderNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRNetworkCommissioningClusterReorderNetworkParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeMaxNetworksWithParams:@
readAttributeMaxNetworksWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeMaxNetworksWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeMaxNetworksWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeNetworksWithParams:@
readAttributeNetworksWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeNetworksWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeNetworksWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeScanMaxTimeSecondsWithParams:@
readAttributeScanMaxTimeSecondsWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeScanMaxTimeSecondsWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeScanMaxTimeSecondsWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeConnectMaxTimeSecondsWithParams:@
readAttributeConnectMaxTimeSecondsWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeConnectMaxTimeSecondsWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeConnectMaxTimeSecondsWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeInterfaceEnabledWithParams:@
readAttributeInterfaceEnabledWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeInterfaceEnabledWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeInterfaceEnabledWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeInterfaceEnabledWithValue:expectedValueInterval:@
writeAttributeInterfaceEnabledWithValue_expectedValueInterval :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterNetworkCommissioning -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeInterfaceEnabledWithValue_expectedValueInterval mtrClusterNetworkCommissioning dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterNetworkCommissioning writeAttributeInterfaceEnabledWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeInterfaceEnabledWithValue:expectedValueInterval:params:@
writeAttributeInterfaceEnabledWithValue_expectedValueInterval_params :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterNetworkCommissioning -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeInterfaceEnabledWithValue_expectedValueInterval_params mtrClusterNetworkCommissioning dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterNetworkCommissioning writeAttributeInterfaceEnabledWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeLastNetworkingStatusWithParams:@
readAttributeLastNetworkingStatusWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeLastNetworkingStatusWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeLastNetworkingStatusWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeLastNetworkIDWithParams:@
readAttributeLastNetworkIDWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeLastNetworkIDWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeLastNetworkIDWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeLastConnectErrorValueWithParams:@
readAttributeLastConnectErrorValueWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeLastConnectErrorValueWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeLastConnectErrorValueWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning, IsMTRReadParams params) => mtrClusterNetworkCommissioning -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterNetworkCommissioning params =
  sendMessage mtrClusterNetworkCommissioning readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterNetworkCommissioning mtrClusterNetworkCommissioning => mtrClusterNetworkCommissioning -> IO (Id MTRClusterNetworkCommissioning)
init_ mtrClusterNetworkCommissioning =
  sendOwnedMessage mtrClusterNetworkCommissioning initSelector

-- | @+ new@
new :: IO (Id MTRClusterNetworkCommissioning)
new  =
  do
    cls' <- getRequiredClass "MTRClusterNetworkCommissioning"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterNetworkCommissioning)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @scanNetworksWithParams:expectedValues:expectedValueInterval:completionHandler:@
scanNetworksWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterScanNetworksParams, Id NSArray, Id NSNumber, Ptr ()] ()
scanNetworksWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "scanNetworksWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @addOrUpdateWiFiNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
addOrUpdateWiFiNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams, Id NSArray, Id NSNumber, Ptr ()] ()
addOrUpdateWiFiNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "addOrUpdateWiFiNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @addOrUpdateThreadNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
addOrUpdateThreadNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams, Id NSArray, Id NSNumber, Ptr ()] ()
addOrUpdateThreadNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "addOrUpdateThreadNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @removeNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterRemoveNetworkParams, Id NSArray, Id NSNumber, Ptr ()] ()
removeNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "removeNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @connectNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
connectNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterConnectNetworkParams, Id NSArray, Id NSNumber, Ptr ()] ()
connectNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "connectNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @reorderNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:@
reorderNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRNetworkCommissioningClusterReorderNetworkParams, Id NSArray, Id NSNumber, Ptr ()] ()
reorderNetworkWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "reorderNetworkWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeMaxNetworksWithParams:@
readAttributeMaxNetworksWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeMaxNetworksWithParamsSelector = mkSelector "readAttributeMaxNetworksWithParams:"

-- | @Selector@ for @readAttributeNetworksWithParams:@
readAttributeNetworksWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeNetworksWithParamsSelector = mkSelector "readAttributeNetworksWithParams:"

-- | @Selector@ for @readAttributeScanMaxTimeSecondsWithParams:@
readAttributeScanMaxTimeSecondsWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeScanMaxTimeSecondsWithParamsSelector = mkSelector "readAttributeScanMaxTimeSecondsWithParams:"

-- | @Selector@ for @readAttributeConnectMaxTimeSecondsWithParams:@
readAttributeConnectMaxTimeSecondsWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeConnectMaxTimeSecondsWithParamsSelector = mkSelector "readAttributeConnectMaxTimeSecondsWithParams:"

-- | @Selector@ for @readAttributeInterfaceEnabledWithParams:@
readAttributeInterfaceEnabledWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeInterfaceEnabledWithParamsSelector = mkSelector "readAttributeInterfaceEnabledWithParams:"

-- | @Selector@ for @writeAttributeInterfaceEnabledWithValue:expectedValueInterval:@
writeAttributeInterfaceEnabledWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeInterfaceEnabledWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeInterfaceEnabledWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeInterfaceEnabledWithValue:expectedValueInterval:params:@
writeAttributeInterfaceEnabledWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeInterfaceEnabledWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeInterfaceEnabledWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeLastNetworkingStatusWithParams:@
readAttributeLastNetworkingStatusWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeLastNetworkingStatusWithParamsSelector = mkSelector "readAttributeLastNetworkingStatusWithParams:"

-- | @Selector@ for @readAttributeLastNetworkIDWithParams:@
readAttributeLastNetworkIDWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeLastNetworkIDWithParamsSelector = mkSelector "readAttributeLastNetworkIDWithParams:"

-- | @Selector@ for @readAttributeLastConnectErrorValueWithParams:@
readAttributeLastConnectErrorValueWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeLastConnectErrorValueWithParamsSelector = mkSelector "readAttributeLastConnectErrorValueWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterNetworkCommissioning)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterNetworkCommissioning)
newSelector = mkSelector "new"

