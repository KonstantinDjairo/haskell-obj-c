{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Power Source Configuration    This cluster is used to describe the configuration and capabilities of a Device's power system.
--
-- Generated bindings for @MTRClusterPowerSourceConfiguration@.
module ObjC.Matter.MTRClusterPowerSourceConfiguration
  ( MTRClusterPowerSourceConfiguration
  , IsMTRClusterPowerSourceConfiguration(..)
  , initWithDevice_endpoint_queue
  , readAttributeSourcesWithParams
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
  , readAttributeSourcesWithParamsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterPowerSourceConfiguration mtrClusterPowerSourceConfiguration, IsMTRDevice device, IsNSObject queue) => mtrClusterPowerSourceConfiguration -> device -> CUShort -> queue -> IO (Id MTRClusterPowerSourceConfiguration)
initWithDevice_endpoint_queue mtrClusterPowerSourceConfiguration device endpoint queue =
  sendOwnedMessage mtrClusterPowerSourceConfiguration initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- readAttributeSourcesWithParams:@
readAttributeSourcesWithParams :: (IsMTRClusterPowerSourceConfiguration mtrClusterPowerSourceConfiguration, IsMTRReadParams params) => mtrClusterPowerSourceConfiguration -> params -> IO (Id NSDictionary)
readAttributeSourcesWithParams mtrClusterPowerSourceConfiguration params =
  sendMessage mtrClusterPowerSourceConfiguration readAttributeSourcesWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterPowerSourceConfiguration mtrClusterPowerSourceConfiguration, IsMTRReadParams params) => mtrClusterPowerSourceConfiguration -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterPowerSourceConfiguration params =
  sendMessage mtrClusterPowerSourceConfiguration readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterPowerSourceConfiguration mtrClusterPowerSourceConfiguration, IsMTRReadParams params) => mtrClusterPowerSourceConfiguration -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterPowerSourceConfiguration params =
  sendMessage mtrClusterPowerSourceConfiguration readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterPowerSourceConfiguration mtrClusterPowerSourceConfiguration, IsMTRReadParams params) => mtrClusterPowerSourceConfiguration -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterPowerSourceConfiguration params =
  sendMessage mtrClusterPowerSourceConfiguration readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterPowerSourceConfiguration mtrClusterPowerSourceConfiguration, IsMTRReadParams params) => mtrClusterPowerSourceConfiguration -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterPowerSourceConfiguration params =
  sendMessage mtrClusterPowerSourceConfiguration readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterPowerSourceConfiguration mtrClusterPowerSourceConfiguration, IsMTRReadParams params) => mtrClusterPowerSourceConfiguration -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterPowerSourceConfiguration params =
  sendMessage mtrClusterPowerSourceConfiguration readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterPowerSourceConfiguration mtrClusterPowerSourceConfiguration => mtrClusterPowerSourceConfiguration -> IO (Id MTRClusterPowerSourceConfiguration)
init_ mtrClusterPowerSourceConfiguration =
  sendOwnedMessage mtrClusterPowerSourceConfiguration initSelector

-- | @+ new@
new :: IO (Id MTRClusterPowerSourceConfiguration)
new  =
  do
    cls' <- getRequiredClass "MTRClusterPowerSourceConfiguration"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterPowerSourceConfiguration)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeSourcesWithParams:@
readAttributeSourcesWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSourcesWithParamsSelector = mkSelector "readAttributeSourcesWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterPowerSourceConfiguration)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterPowerSourceConfiguration)
newSelector = mkSelector "new"

