{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Occupancy Sensing    Attributes and commands for configuring occupancy sensing, and reporting occupancy status.
--
-- Generated bindings for @MTRClusterOccupancySensing@.
module ObjC.Matter.MTRClusterOccupancySensing
  ( MTRClusterOccupancySensing
  , IsMTRClusterOccupancySensing(..)
  , initWithDevice_endpoint_queue
  , readAttributeOccupancyWithParams
  , readAttributeOccupancySensorTypeWithParams
  , readAttributeOccupancySensorTypeBitmapWithParams
  , readAttributePirOccupiedToUnoccupiedDelayWithParams
  , writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval
  , writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params
  , readAttributePirUnoccupiedToOccupiedDelayWithParams
  , writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval
  , writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params
  , readAttributePirUnoccupiedToOccupiedThresholdWithParams
  , writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval
  , writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params
  , readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParams
  , writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval
  , writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params
  , readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParams
  , writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval
  , writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params
  , readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParams
  , writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval
  , writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params
  , readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParams
  , writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval
  , writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params
  , readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParams
  , writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval
  , writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params
  , readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParams
  , writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval
  , writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params
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
  , readAttributeOccupancySensorTypeBitmapWithParamsSelector
  , readAttributeOccupancySensorTypeWithParamsSelector
  , readAttributeOccupancyWithParamsSelector
  , readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParamsSelector
  , readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParamsSelector
  , readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParamsSelector
  , readAttributePirOccupiedToUnoccupiedDelayWithParamsSelector
  , readAttributePirUnoccupiedToOccupiedDelayWithParamsSelector
  , readAttributePirUnoccupiedToOccupiedThresholdWithParamsSelector
  , readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParamsSelector
  , readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParamsSelector
  , readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParamsSelector
  , writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector
  , writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector
  , writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector
  , writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector
  , writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector
  , writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector
  , writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector
  , writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector
  , writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector
  , writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector
  , writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector
  , writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector
  , writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector
  , writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector
  , writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector
  , writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector
  , writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector
  , writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRDevice device, IsNSObject queue) => mtrClusterOccupancySensing -> device -> CUShort -> queue -> IO (Id MTRClusterOccupancySensing)
initWithDevice_endpoint_queue mtrClusterOccupancySensing device endpoint queue =
  sendOwnedMessage mtrClusterOccupancySensing initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- readAttributeOccupancyWithParams:@
readAttributeOccupancyWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeOccupancyWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeOccupancyWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeOccupancySensorTypeWithParams:@
readAttributeOccupancySensorTypeWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeOccupancySensorTypeWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeOccupancySensorTypeWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeOccupancySensorTypeBitmapWithParams:@
readAttributeOccupancySensorTypeBitmapWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeOccupancySensorTypeBitmapWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeOccupancySensorTypeBitmapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePirOccupiedToUnoccupiedDelayWithParams:@
readAttributePirOccupiedToUnoccupiedDelayWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributePirOccupiedToUnoccupiedDelayWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributePirOccupiedToUnoccupiedDelayWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributePirOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:@
writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributePirOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributePirUnoccupiedToOccupiedDelayWithParams:@
readAttributePirUnoccupiedToOccupiedDelayWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributePirUnoccupiedToOccupiedDelayWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributePirUnoccupiedToOccupiedDelayWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributePirUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:@
writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributePirUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributePirUnoccupiedToOccupiedThresholdWithParams:@
readAttributePirUnoccupiedToOccupiedThresholdWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributePirUnoccupiedToOccupiedThresholdWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributePirUnoccupiedToOccupiedThresholdWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributePirUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:@
writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributePirUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:@
writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParams:@
readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:@
writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParams:@
readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:@
writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParams:@
readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:@
writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:@
writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParams:@
readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:@
writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParams:@
readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:@
writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParams:@
readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:@
writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterOccupancySensing writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:@
writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterOccupancySensing -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_params mtrClusterOccupancySensing dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterOccupancySensing writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterOccupancySensing mtrClusterOccupancySensing, IsMTRReadParams params) => mtrClusterOccupancySensing -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterOccupancySensing params =
  sendMessage mtrClusterOccupancySensing readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterOccupancySensing mtrClusterOccupancySensing => mtrClusterOccupancySensing -> IO (Id MTRClusterOccupancySensing)
init_ mtrClusterOccupancySensing =
  sendOwnedMessage mtrClusterOccupancySensing initSelector

-- | @+ new@
new :: IO (Id MTRClusterOccupancySensing)
new  =
  do
    cls' <- getRequiredClass "MTRClusterOccupancySensing"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterOccupancySensing)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeOccupancyWithParams:@
readAttributeOccupancyWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeOccupancyWithParamsSelector = mkSelector "readAttributeOccupancyWithParams:"

-- | @Selector@ for @readAttributeOccupancySensorTypeWithParams:@
readAttributeOccupancySensorTypeWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeOccupancySensorTypeWithParamsSelector = mkSelector "readAttributeOccupancySensorTypeWithParams:"

-- | @Selector@ for @readAttributeOccupancySensorTypeBitmapWithParams:@
readAttributeOccupancySensorTypeBitmapWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeOccupancySensorTypeBitmapWithParamsSelector = mkSelector "readAttributeOccupancySensorTypeBitmapWithParams:"

-- | @Selector@ for @readAttributePirOccupiedToUnoccupiedDelayWithParams:@
readAttributePirOccupiedToUnoccupiedDelayWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePirOccupiedToUnoccupiedDelayWithParamsSelector = mkSelector "readAttributePirOccupiedToUnoccupiedDelayWithParams:"

-- | @Selector@ for @writeAttributePirOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:@
writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector = mkSelector "writeAttributePirOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributePirOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributePirOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributePirOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributePirUnoccupiedToOccupiedDelayWithParams:@
readAttributePirUnoccupiedToOccupiedDelayWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePirUnoccupiedToOccupiedDelayWithParamsSelector = mkSelector "readAttributePirUnoccupiedToOccupiedDelayWithParams:"

-- | @Selector@ for @writeAttributePirUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:@
writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector = mkSelector "writeAttributePirUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributePirUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributePirUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributePirUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributePirUnoccupiedToOccupiedThresholdWithParams:@
readAttributePirUnoccupiedToOccupiedThresholdWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePirUnoccupiedToOccupiedThresholdWithParamsSelector = mkSelector "readAttributePirUnoccupiedToOccupiedThresholdWithParams:"

-- | @Selector@ for @writeAttributePirUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:@
writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector = mkSelector "writeAttributePirUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributePirUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:@
writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributePirUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributePirUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParams:@
readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParamsSelector = mkSelector "readAttributeUltrasonicOccupiedToUnoccupiedDelayWithParams:"

-- | @Selector@ for @writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:@
writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeUltrasonicOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParams:@
readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParamsSelector = mkSelector "readAttributeUltrasonicUnoccupiedToOccupiedDelayWithParams:"

-- | @Selector@ for @writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:@
writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeUltrasonicUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParams:@
readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParamsSelector = mkSelector "readAttributeUltrasonicUnoccupiedToOccupiedThresholdWithParams:"

-- | @Selector@ for @writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:@
writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:@
writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeUltrasonicUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParams:@
readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParamsSelector = mkSelector "readAttributePhysicalContactOccupiedToUnoccupiedDelayWithParams:"

-- | @Selector@ for @writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:@
writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueIntervalSelector = mkSelector "writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributePhysicalContactOccupiedToUnoccupiedDelayWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParams:@
readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParamsSelector = mkSelector "readAttributePhysicalContactUnoccupiedToOccupiedDelayWithParams:"

-- | @Selector@ for @writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:@
writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueIntervalSelector = mkSelector "writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:@
writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributePhysicalContactUnoccupiedToOccupiedDelayWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParams:@
readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParamsSelector = mkSelector "readAttributePhysicalContactUnoccupiedToOccupiedThresholdWithParams:"

-- | @Selector@ for @writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:@
writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueIntervalSelector = mkSelector "writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:@
writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributePhysicalContactUnoccupiedToOccupiedThresholdWithValue:expectedValueInterval:params:"

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
initSelector :: Selector '[] (Id MTRClusterOccupancySensing)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterOccupancySensing)
newSelector = mkSelector "new"

