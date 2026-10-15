{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Descriptor    The Descriptor Cluster is meant to replace the support from the Zigbee Device Object (ZDO) for describing a node, its endpoints and clusters.
--
-- Generated bindings for @MTRClusterDescriptor@.
module ObjC.Matter.MTRClusterDescriptor
  ( MTRClusterDescriptor
  , IsMTRClusterDescriptor(..)
  , initWithDevice_endpoint_queue
  , readAttributeDeviceListWithParams
  , readAttributeServerListWithParams
  , readAttributeClientListWithParams
  , readAttributePartsListWithParams
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
  , readAttributeClientListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeDeviceListWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributePartsListWithParamsSelector
  , readAttributeServerListWithParamsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRDevice device, IsNSObject queue) => mtrClusterDescriptor -> device -> CUShort -> queue -> IO (Id MTRClusterDescriptor)
initWithDevice_endpoint_queue mtrClusterDescriptor device endpoint queue =
  sendOwnedMessage mtrClusterDescriptor initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- readAttributeDeviceListWithParams:@
readAttributeDeviceListWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributeDeviceListWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributeDeviceListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeServerListWithParams:@
readAttributeServerListWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributeServerListWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributeServerListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClientListWithParams:@
readAttributeClientListWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributeClientListWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributeClientListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePartsListWithParams:@
readAttributePartsListWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributePartsListWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributePartsListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterDescriptor mtrClusterDescriptor, IsMTRReadParams params) => mtrClusterDescriptor -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterDescriptor params =
  sendMessage mtrClusterDescriptor readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterDescriptor mtrClusterDescriptor => mtrClusterDescriptor -> IO (Id MTRClusterDescriptor)
init_ mtrClusterDescriptor =
  sendOwnedMessage mtrClusterDescriptor initSelector

-- | @+ new@
new :: IO (Id MTRClusterDescriptor)
new  =
  do
    cls' <- getRequiredClass "MTRClusterDescriptor"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterDescriptor)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeDeviceListWithParams:@
readAttributeDeviceListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeDeviceListWithParamsSelector = mkSelector "readAttributeDeviceListWithParams:"

-- | @Selector@ for @readAttributeServerListWithParams:@
readAttributeServerListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeServerListWithParamsSelector = mkSelector "readAttributeServerListWithParams:"

-- | @Selector@ for @readAttributeClientListWithParams:@
readAttributeClientListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeClientListWithParamsSelector = mkSelector "readAttributeClientListWithParams:"

-- | @Selector@ for @readAttributePartsListWithParams:@
readAttributePartsListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePartsListWithParamsSelector = mkSelector "readAttributePartsListWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterDescriptor)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterDescriptor)
newSelector = mkSelector "new"

