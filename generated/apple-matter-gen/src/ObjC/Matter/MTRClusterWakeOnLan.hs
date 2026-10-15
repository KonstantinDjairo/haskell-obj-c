{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Wake on LAN    This cluster provides an interface for managing low power mode on a device that supports the Wake On LAN protocol.
--
-- Generated bindings for @MTRClusterWakeOnLan@.
module ObjC.Matter.MTRClusterWakeOnLan
  ( MTRClusterWakeOnLan
  , IsMTRClusterWakeOnLan(..)
  , initWithDevice_endpoint_queue
  , readAttributeMACAddressWithParams
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
  , readAttributeMACAddressWithParamsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterWakeOnLan mtrClusterWakeOnLan, IsMTRDevice device, IsNSObject queue) => mtrClusterWakeOnLan -> device -> CUShort -> queue -> IO (Id MTRClusterWakeOnLan)
initWithDevice_endpoint_queue mtrClusterWakeOnLan device endpoint queue =
  sendOwnedMessage mtrClusterWakeOnLan initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- readAttributeMACAddressWithParams:@
readAttributeMACAddressWithParams :: (IsMTRClusterWakeOnLan mtrClusterWakeOnLan, IsMTRReadParams params) => mtrClusterWakeOnLan -> params -> IO (Id NSDictionary)
readAttributeMACAddressWithParams mtrClusterWakeOnLan params =
  sendMessage mtrClusterWakeOnLan readAttributeMACAddressWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterWakeOnLan mtrClusterWakeOnLan, IsMTRReadParams params) => mtrClusterWakeOnLan -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterWakeOnLan params =
  sendMessage mtrClusterWakeOnLan readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterWakeOnLan mtrClusterWakeOnLan, IsMTRReadParams params) => mtrClusterWakeOnLan -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterWakeOnLan params =
  sendMessage mtrClusterWakeOnLan readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterWakeOnLan mtrClusterWakeOnLan, IsMTRReadParams params) => mtrClusterWakeOnLan -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterWakeOnLan params =
  sendMessage mtrClusterWakeOnLan readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterWakeOnLan mtrClusterWakeOnLan, IsMTRReadParams params) => mtrClusterWakeOnLan -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterWakeOnLan params =
  sendMessage mtrClusterWakeOnLan readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterWakeOnLan mtrClusterWakeOnLan, IsMTRReadParams params) => mtrClusterWakeOnLan -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterWakeOnLan params =
  sendMessage mtrClusterWakeOnLan readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterWakeOnLan mtrClusterWakeOnLan => mtrClusterWakeOnLan -> IO (Id MTRClusterWakeOnLan)
init_ mtrClusterWakeOnLan =
  sendOwnedMessage mtrClusterWakeOnLan initSelector

-- | @+ new@
new :: IO (Id MTRClusterWakeOnLan)
new  =
  do
    cls' <- getRequiredClass "MTRClusterWakeOnLan"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterWakeOnLan)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeMACAddressWithParams:@
readAttributeMACAddressWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeMACAddressWithParamsSelector = mkSelector "readAttributeMACAddressWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterWakeOnLan)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterWakeOnLan)
newSelector = mkSelector "new"

