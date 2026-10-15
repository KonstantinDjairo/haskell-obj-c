{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Basic    This cluster provides attributes and events for determining basic information about Nodes, which supports both      Commissioning and operational determination of Node characteristics, such as Vendor ID, Product ID and serial number,      which apply to the whole Node. Also allows setting user device information such as location.
--
-- Generated bindings for @MTRClusterBasic@.
module ObjC.Matter.MTRClusterBasic
  ( MTRClusterBasic
  , IsMTRClusterBasic(..)
  , initWithDevice_endpoint_queue
  , mfgSpecificPingWithParams_expectedValues_expectedValueInterval_completionHandler
  , mfgSpecificPingWithExpectedValues_expectedValueInterval_completionHandler
  , readAttributeDataModelRevisionWithParams
  , readAttributeVendorNameWithParams
  , readAttributeVendorIDWithParams
  , readAttributeProductNameWithParams
  , readAttributeProductIDWithParams
  , readAttributeNodeLabelWithParams
  , writeAttributeNodeLabelWithValue_expectedValueInterval
  , writeAttributeNodeLabelWithValue_expectedValueInterval_params
  , readAttributeLocationWithParams
  , writeAttributeLocationWithValue_expectedValueInterval
  , writeAttributeLocationWithValue_expectedValueInterval_params
  , readAttributeHardwareVersionWithParams
  , readAttributeHardwareVersionStringWithParams
  , readAttributeSoftwareVersionWithParams
  , readAttributeSoftwareVersionStringWithParams
  , readAttributeManufacturingDateWithParams
  , readAttributePartNumberWithParams
  , readAttributeProductURLWithParams
  , readAttributeProductLabelWithParams
  , readAttributeSerialNumberWithParams
  , readAttributeLocalConfigDisabledWithParams
  , writeAttributeLocalConfigDisabledWithValue_expectedValueInterval
  , writeAttributeLocalConfigDisabledWithValue_expectedValueInterval_params
  , readAttributeReachableWithParams
  , readAttributeUniqueIDWithParams
  , readAttributeCapabilityMinimaWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , mfgSpecificPingWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , mfgSpecificPingWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeCapabilityMinimaWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeDataModelRevisionWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeHardwareVersionStringWithParamsSelector
  , readAttributeHardwareVersionWithParamsSelector
  , readAttributeLocalConfigDisabledWithParamsSelector
  , readAttributeLocationWithParamsSelector
  , readAttributeManufacturingDateWithParamsSelector
  , readAttributeNodeLabelWithParamsSelector
  , readAttributePartNumberWithParamsSelector
  , readAttributeProductIDWithParamsSelector
  , readAttributeProductLabelWithParamsSelector
  , readAttributeProductNameWithParamsSelector
  , readAttributeProductURLWithParamsSelector
  , readAttributeReachableWithParamsSelector
  , readAttributeSerialNumberWithParamsSelector
  , readAttributeSoftwareVersionStringWithParamsSelector
  , readAttributeSoftwareVersionWithParamsSelector
  , readAttributeUniqueIDWithParamsSelector
  , readAttributeVendorIDWithParamsSelector
  , readAttributeVendorNameWithParamsSelector
  , writeAttributeLocalConfigDisabledWithValue_expectedValueIntervalSelector
  , writeAttributeLocalConfigDisabledWithValue_expectedValueInterval_paramsSelector
  , writeAttributeLocationWithValue_expectedValueIntervalSelector
  , writeAttributeLocationWithValue_expectedValueInterval_paramsSelector
  , writeAttributeNodeLabelWithValue_expectedValueIntervalSelector
  , writeAttributeNodeLabelWithValue_expectedValueInterval_paramsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterBasic mtrClusterBasic, IsMTRDevice device, IsNSObject queue) => mtrClusterBasic -> device -> CUShort -> queue -> IO (Id MTRClusterBasic)
initWithDevice_endpoint_queue mtrClusterBasic device endpoint queue =
  sendOwnedMessage mtrClusterBasic initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- mfgSpecificPingWithParams:expectedValues:expectedValueInterval:completionHandler:@
mfgSpecificPingWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterBasic mtrClusterBasic, IsMTRBasicClusterMfgSpecificPingParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterBasic -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
mfgSpecificPingWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterBasic params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterBasic mfgSpecificPingWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRBasicClusterMfgSpecificPingParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- mfgSpecificPingWithExpectedValues:expectedValueInterval:completionHandler:@
mfgSpecificPingWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterBasic mtrClusterBasic, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterBasic -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
mfgSpecificPingWithExpectedValues_expectedValueInterval_completionHandler mtrClusterBasic expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterBasic mfgSpecificPingWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeDataModelRevisionWithParams:@
readAttributeDataModelRevisionWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeDataModelRevisionWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeDataModelRevisionWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeVendorNameWithParams:@
readAttributeVendorNameWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeVendorNameWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeVendorNameWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeVendorIDWithParams:@
readAttributeVendorIDWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeVendorIDWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeVendorIDWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeProductNameWithParams:@
readAttributeProductNameWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeProductNameWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeProductNameWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeProductIDWithParams:@
readAttributeProductIDWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeProductIDWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeProductIDWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeNodeLabelWithParams:@
readAttributeNodeLabelWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeNodeLabelWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeNodeLabelWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeNodeLabelWithValue:expectedValueInterval:@
writeAttributeNodeLabelWithValue_expectedValueInterval :: (IsMTRClusterBasic mtrClusterBasic, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterBasic -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeNodeLabelWithValue_expectedValueInterval mtrClusterBasic dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterBasic writeAttributeNodeLabelWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeNodeLabelWithValue:expectedValueInterval:params:@
writeAttributeNodeLabelWithValue_expectedValueInterval_params :: (IsMTRClusterBasic mtrClusterBasic, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterBasic -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeNodeLabelWithValue_expectedValueInterval_params mtrClusterBasic dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterBasic writeAttributeNodeLabelWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeLocationWithParams:@
readAttributeLocationWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeLocationWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeLocationWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeLocationWithValue:expectedValueInterval:@
writeAttributeLocationWithValue_expectedValueInterval :: (IsMTRClusterBasic mtrClusterBasic, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterBasic -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeLocationWithValue_expectedValueInterval mtrClusterBasic dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterBasic writeAttributeLocationWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeLocationWithValue:expectedValueInterval:params:@
writeAttributeLocationWithValue_expectedValueInterval_params :: (IsMTRClusterBasic mtrClusterBasic, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterBasic -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeLocationWithValue_expectedValueInterval_params mtrClusterBasic dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterBasic writeAttributeLocationWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeHardwareVersionWithParams:@
readAttributeHardwareVersionWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeHardwareVersionWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeHardwareVersionWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeHardwareVersionStringWithParams:@
readAttributeHardwareVersionStringWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeHardwareVersionStringWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeHardwareVersionStringWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSoftwareVersionWithParams:@
readAttributeSoftwareVersionWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeSoftwareVersionWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeSoftwareVersionWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSoftwareVersionStringWithParams:@
readAttributeSoftwareVersionStringWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeSoftwareVersionStringWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeSoftwareVersionStringWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeManufacturingDateWithParams:@
readAttributeManufacturingDateWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeManufacturingDateWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeManufacturingDateWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePartNumberWithParams:@
readAttributePartNumberWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributePartNumberWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributePartNumberWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeProductURLWithParams:@
readAttributeProductURLWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeProductURLWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeProductURLWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeProductLabelWithParams:@
readAttributeProductLabelWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeProductLabelWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeProductLabelWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSerialNumberWithParams:@
readAttributeSerialNumberWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeSerialNumberWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeSerialNumberWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeLocalConfigDisabledWithParams:@
readAttributeLocalConfigDisabledWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeLocalConfigDisabledWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeLocalConfigDisabledWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeLocalConfigDisabledWithValue:expectedValueInterval:@
writeAttributeLocalConfigDisabledWithValue_expectedValueInterval :: (IsMTRClusterBasic mtrClusterBasic, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterBasic -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeLocalConfigDisabledWithValue_expectedValueInterval mtrClusterBasic dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterBasic writeAttributeLocalConfigDisabledWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeLocalConfigDisabledWithValue:expectedValueInterval:params:@
writeAttributeLocalConfigDisabledWithValue_expectedValueInterval_params :: (IsMTRClusterBasic mtrClusterBasic, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterBasic -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeLocalConfigDisabledWithValue_expectedValueInterval_params mtrClusterBasic dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterBasic writeAttributeLocalConfigDisabledWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeReachableWithParams:@
readAttributeReachableWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeReachableWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeReachableWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeUniqueIDWithParams:@
readAttributeUniqueIDWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeUniqueIDWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeUniqueIDWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCapabilityMinimaWithParams:@
readAttributeCapabilityMinimaWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeCapabilityMinimaWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeCapabilityMinimaWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterBasic mtrClusterBasic, IsMTRReadParams params) => mtrClusterBasic -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterBasic params =
  sendMessage mtrClusterBasic readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterBasic mtrClusterBasic => mtrClusterBasic -> IO (Id MTRClusterBasic)
init_ mtrClusterBasic =
  sendOwnedMessage mtrClusterBasic initSelector

-- | @+ new@
new :: IO (Id MTRClusterBasic)
new  =
  do
    cls' <- getRequiredClass "MTRClusterBasic"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterBasic)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @mfgSpecificPingWithParams:expectedValues:expectedValueInterval:completionHandler:@
mfgSpecificPingWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRBasicClusterMfgSpecificPingParams, Id NSArray, Id NSNumber, Ptr ()] ()
mfgSpecificPingWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "mfgSpecificPingWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @mfgSpecificPingWithExpectedValues:expectedValueInterval:completionHandler:@
mfgSpecificPingWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
mfgSpecificPingWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "mfgSpecificPingWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeDataModelRevisionWithParams:@
readAttributeDataModelRevisionWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeDataModelRevisionWithParamsSelector = mkSelector "readAttributeDataModelRevisionWithParams:"

-- | @Selector@ for @readAttributeVendorNameWithParams:@
readAttributeVendorNameWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeVendorNameWithParamsSelector = mkSelector "readAttributeVendorNameWithParams:"

-- | @Selector@ for @readAttributeVendorIDWithParams:@
readAttributeVendorIDWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeVendorIDWithParamsSelector = mkSelector "readAttributeVendorIDWithParams:"

-- | @Selector@ for @readAttributeProductNameWithParams:@
readAttributeProductNameWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeProductNameWithParamsSelector = mkSelector "readAttributeProductNameWithParams:"

-- | @Selector@ for @readAttributeProductIDWithParams:@
readAttributeProductIDWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeProductIDWithParamsSelector = mkSelector "readAttributeProductIDWithParams:"

-- | @Selector@ for @readAttributeNodeLabelWithParams:@
readAttributeNodeLabelWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeNodeLabelWithParamsSelector = mkSelector "readAttributeNodeLabelWithParams:"

-- | @Selector@ for @writeAttributeNodeLabelWithValue:expectedValueInterval:@
writeAttributeNodeLabelWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeNodeLabelWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeNodeLabelWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeNodeLabelWithValue:expectedValueInterval:params:@
writeAttributeNodeLabelWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeNodeLabelWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeNodeLabelWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeLocationWithParams:@
readAttributeLocationWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeLocationWithParamsSelector = mkSelector "readAttributeLocationWithParams:"

-- | @Selector@ for @writeAttributeLocationWithValue:expectedValueInterval:@
writeAttributeLocationWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeLocationWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeLocationWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeLocationWithValue:expectedValueInterval:params:@
writeAttributeLocationWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeLocationWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeLocationWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeHardwareVersionWithParams:@
readAttributeHardwareVersionWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeHardwareVersionWithParamsSelector = mkSelector "readAttributeHardwareVersionWithParams:"

-- | @Selector@ for @readAttributeHardwareVersionStringWithParams:@
readAttributeHardwareVersionStringWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeHardwareVersionStringWithParamsSelector = mkSelector "readAttributeHardwareVersionStringWithParams:"

-- | @Selector@ for @readAttributeSoftwareVersionWithParams:@
readAttributeSoftwareVersionWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSoftwareVersionWithParamsSelector = mkSelector "readAttributeSoftwareVersionWithParams:"

-- | @Selector@ for @readAttributeSoftwareVersionStringWithParams:@
readAttributeSoftwareVersionStringWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSoftwareVersionStringWithParamsSelector = mkSelector "readAttributeSoftwareVersionStringWithParams:"

-- | @Selector@ for @readAttributeManufacturingDateWithParams:@
readAttributeManufacturingDateWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeManufacturingDateWithParamsSelector = mkSelector "readAttributeManufacturingDateWithParams:"

-- | @Selector@ for @readAttributePartNumberWithParams:@
readAttributePartNumberWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePartNumberWithParamsSelector = mkSelector "readAttributePartNumberWithParams:"

-- | @Selector@ for @readAttributeProductURLWithParams:@
readAttributeProductURLWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeProductURLWithParamsSelector = mkSelector "readAttributeProductURLWithParams:"

-- | @Selector@ for @readAttributeProductLabelWithParams:@
readAttributeProductLabelWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeProductLabelWithParamsSelector = mkSelector "readAttributeProductLabelWithParams:"

-- | @Selector@ for @readAttributeSerialNumberWithParams:@
readAttributeSerialNumberWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSerialNumberWithParamsSelector = mkSelector "readAttributeSerialNumberWithParams:"

-- | @Selector@ for @readAttributeLocalConfigDisabledWithParams:@
readAttributeLocalConfigDisabledWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeLocalConfigDisabledWithParamsSelector = mkSelector "readAttributeLocalConfigDisabledWithParams:"

-- | @Selector@ for @writeAttributeLocalConfigDisabledWithValue:expectedValueInterval:@
writeAttributeLocalConfigDisabledWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeLocalConfigDisabledWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeLocalConfigDisabledWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeLocalConfigDisabledWithValue:expectedValueInterval:params:@
writeAttributeLocalConfigDisabledWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeLocalConfigDisabledWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeLocalConfigDisabledWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeReachableWithParams:@
readAttributeReachableWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeReachableWithParamsSelector = mkSelector "readAttributeReachableWithParams:"

-- | @Selector@ for @readAttributeUniqueIDWithParams:@
readAttributeUniqueIDWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUniqueIDWithParamsSelector = mkSelector "readAttributeUniqueIDWithParams:"

-- | @Selector@ for @readAttributeCapabilityMinimaWithParams:@
readAttributeCapabilityMinimaWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCapabilityMinimaWithParamsSelector = mkSelector "readAttributeCapabilityMinimaWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterBasic)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterBasic)
newSelector = mkSelector "new"

