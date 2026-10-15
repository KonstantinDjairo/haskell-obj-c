{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Bridged Device Basic    This Cluster serves two purposes towards a Node communicating with a Bridge: indicate that the functionality on          the Endpoint where it is placed (and its Parts) is bridged from a non-CHIP technology; and provide a centralized          collection of attributes that the Node MAY collect to aid in conveying information regarding the Bridged Device to a user,          such as the vendor name, the model name, or user-assigned name.
--
-- Generated bindings for @MTRClusterBridgedDeviceBasic@.
module ObjC.Matter.MTRClusterBridgedDeviceBasic
  ( MTRClusterBridgedDeviceBasic
  , IsMTRClusterBridgedDeviceBasic(..)
  , initWithDevice_endpoint_queue
  , readAttributeVendorNameWithParams
  , readAttributeVendorIDWithParams
  , readAttributeProductNameWithParams
  , readAttributeNodeLabelWithParams
  , writeAttributeNodeLabelWithValue_expectedValueInterval
  , writeAttributeNodeLabelWithValue_expectedValueInterval_params
  , readAttributeHardwareVersionWithParams
  , readAttributeHardwareVersionStringWithParams
  , readAttributeSoftwareVersionWithParams
  , readAttributeSoftwareVersionStringWithParams
  , readAttributeManufacturingDateWithParams
  , readAttributePartNumberWithParams
  , readAttributeProductURLWithParams
  , readAttributeProductLabelWithParams
  , readAttributeSerialNumberWithParams
  , readAttributeReachableWithParams
  , readAttributeUniqueIDWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeHardwareVersionStringWithParamsSelector
  , readAttributeHardwareVersionWithParamsSelector
  , readAttributeManufacturingDateWithParamsSelector
  , readAttributeNodeLabelWithParamsSelector
  , readAttributePartNumberWithParamsSelector
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
initWithDevice_endpoint_queue :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRDevice device, IsNSObject queue) => mtrClusterBridgedDeviceBasic -> device -> CUShort -> queue -> IO (Id MTRClusterBridgedDeviceBasic)
initWithDevice_endpoint_queue mtrClusterBridgedDeviceBasic device endpoint queue =
  sendOwnedMessage mtrClusterBridgedDeviceBasic initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- readAttributeVendorNameWithParams:@
readAttributeVendorNameWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeVendorNameWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeVendorNameWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeVendorIDWithParams:@
readAttributeVendorIDWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeVendorIDWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeVendorIDWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeProductNameWithParams:@
readAttributeProductNameWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeProductNameWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeProductNameWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeNodeLabelWithParams:@
readAttributeNodeLabelWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeNodeLabelWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeNodeLabelWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeNodeLabelWithValue:expectedValueInterval:@
writeAttributeNodeLabelWithValue_expectedValueInterval :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterBridgedDeviceBasic -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeNodeLabelWithValue_expectedValueInterval mtrClusterBridgedDeviceBasic dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterBridgedDeviceBasic writeAttributeNodeLabelWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeNodeLabelWithValue:expectedValueInterval:params:@
writeAttributeNodeLabelWithValue_expectedValueInterval_params :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterBridgedDeviceBasic -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeNodeLabelWithValue_expectedValueInterval_params mtrClusterBridgedDeviceBasic dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterBridgedDeviceBasic writeAttributeNodeLabelWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeHardwareVersionWithParams:@
readAttributeHardwareVersionWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeHardwareVersionWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeHardwareVersionWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeHardwareVersionStringWithParams:@
readAttributeHardwareVersionStringWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeHardwareVersionStringWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeHardwareVersionStringWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSoftwareVersionWithParams:@
readAttributeSoftwareVersionWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeSoftwareVersionWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeSoftwareVersionWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSoftwareVersionStringWithParams:@
readAttributeSoftwareVersionStringWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeSoftwareVersionStringWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeSoftwareVersionStringWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeManufacturingDateWithParams:@
readAttributeManufacturingDateWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeManufacturingDateWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeManufacturingDateWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePartNumberWithParams:@
readAttributePartNumberWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributePartNumberWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributePartNumberWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeProductURLWithParams:@
readAttributeProductURLWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeProductURLWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeProductURLWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeProductLabelWithParams:@
readAttributeProductLabelWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeProductLabelWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeProductLabelWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSerialNumberWithParams:@
readAttributeSerialNumberWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeSerialNumberWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeSerialNumberWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeReachableWithParams:@
readAttributeReachableWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeReachableWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeReachableWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeUniqueIDWithParams:@
readAttributeUniqueIDWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeUniqueIDWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeUniqueIDWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic, IsMTRReadParams params) => mtrClusterBridgedDeviceBasic -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterBridgedDeviceBasic params =
  sendMessage mtrClusterBridgedDeviceBasic readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterBridgedDeviceBasic mtrClusterBridgedDeviceBasic => mtrClusterBridgedDeviceBasic -> IO (Id MTRClusterBridgedDeviceBasic)
init_ mtrClusterBridgedDeviceBasic =
  sendOwnedMessage mtrClusterBridgedDeviceBasic initSelector

-- | @+ new@
new :: IO (Id MTRClusterBridgedDeviceBasic)
new  =
  do
    cls' <- getRequiredClass "MTRClusterBridgedDeviceBasic"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterBridgedDeviceBasic)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeVendorNameWithParams:@
readAttributeVendorNameWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeVendorNameWithParamsSelector = mkSelector "readAttributeVendorNameWithParams:"

-- | @Selector@ for @readAttributeVendorIDWithParams:@
readAttributeVendorIDWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeVendorIDWithParamsSelector = mkSelector "readAttributeVendorIDWithParams:"

-- | @Selector@ for @readAttributeProductNameWithParams:@
readAttributeProductNameWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeProductNameWithParamsSelector = mkSelector "readAttributeProductNameWithParams:"

-- | @Selector@ for @readAttributeNodeLabelWithParams:@
readAttributeNodeLabelWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeNodeLabelWithParamsSelector = mkSelector "readAttributeNodeLabelWithParams:"

-- | @Selector@ for @writeAttributeNodeLabelWithValue:expectedValueInterval:@
writeAttributeNodeLabelWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeNodeLabelWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeNodeLabelWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeNodeLabelWithValue:expectedValueInterval:params:@
writeAttributeNodeLabelWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeNodeLabelWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeNodeLabelWithValue:expectedValueInterval:params:"

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

-- | @Selector@ for @readAttributeReachableWithParams:@
readAttributeReachableWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeReachableWithParamsSelector = mkSelector "readAttributeReachableWithParams:"

-- | @Selector@ for @readAttributeUniqueIDWithParams:@
readAttributeUniqueIDWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUniqueIDWithParamsSelector = mkSelector "readAttributeUniqueIDWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterBridgedDeviceBasic)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterBridgedDeviceBasic)
newSelector = mkSelector "new"

