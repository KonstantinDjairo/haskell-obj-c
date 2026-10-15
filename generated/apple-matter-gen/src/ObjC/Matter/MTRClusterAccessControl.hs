{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Access Control    The Access Control Cluster exposes a data model view of a      Node's Access Control List (ACL), which codifies the rules used to manage      and enforce Access Control for the Node's endpoints and their associated      cluster instances.
--
-- Generated bindings for @MTRClusterAccessControl@.
module ObjC.Matter.MTRClusterAccessControl
  ( MTRClusterAccessControl
  , IsMTRClusterAccessControl(..)
  , initWithDevice_endpoint_queue
  , readAttributeAclWithParams
  , writeAttributeAclWithValue_expectedValueInterval
  , writeAttributeAclWithValue_expectedValueInterval_params
  , readAttributeExtensionWithParams
  , writeAttributeExtensionWithValue_expectedValueInterval
  , writeAttributeExtensionWithValue_expectedValueInterval_params
  , readAttributeSubjectsPerAccessControlEntryWithParams
  , readAttributeTargetsPerAccessControlEntryWithParams
  , readAttributeAccessControlEntriesPerFabricWithParams
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
  , readAttributeAccessControlEntriesPerFabricWithParamsSelector
  , readAttributeAclWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeExtensionWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeSubjectsPerAccessControlEntryWithParamsSelector
  , readAttributeTargetsPerAccessControlEntryWithParamsSelector
  , writeAttributeAclWithValue_expectedValueIntervalSelector
  , writeAttributeAclWithValue_expectedValueInterval_paramsSelector
  , writeAttributeExtensionWithValue_expectedValueIntervalSelector
  , writeAttributeExtensionWithValue_expectedValueInterval_paramsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRDevice device, IsNSObject queue) => mtrClusterAccessControl -> device -> CUShort -> queue -> IO (Id MTRClusterAccessControl)
initWithDevice_endpoint_queue mtrClusterAccessControl device endpoint queue =
  sendOwnedMessage mtrClusterAccessControl initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- readAttributeAclWithParams:@
readAttributeAclWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeAclWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeAclWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeAclWithValue:expectedValueInterval:@
writeAttributeAclWithValue_expectedValueInterval :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterAccessControl -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeAclWithValue_expectedValueInterval mtrClusterAccessControl dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterAccessControl writeAttributeAclWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeAclWithValue:expectedValueInterval:params:@
writeAttributeAclWithValue_expectedValueInterval_params :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterAccessControl -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeAclWithValue_expectedValueInterval_params mtrClusterAccessControl dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterAccessControl writeAttributeAclWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeExtensionWithParams:@
readAttributeExtensionWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeExtensionWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeExtensionWithParamsSelector (toMTRReadParams params)

-- | @- writeAttributeExtensionWithValue:expectedValueInterval:@
writeAttributeExtensionWithValue_expectedValueInterval :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs) => mtrClusterAccessControl -> dataValueDictionary -> expectedValueIntervalMs -> IO ()
writeAttributeExtensionWithValue_expectedValueInterval mtrClusterAccessControl dataValueDictionary expectedValueIntervalMs =
  sendMessage mtrClusterAccessControl writeAttributeExtensionWithValue_expectedValueIntervalSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs)

-- | @- writeAttributeExtensionWithValue:expectedValueInterval:params:@
writeAttributeExtensionWithValue_expectedValueInterval_params :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsNSDictionary dataValueDictionary, IsNSNumber expectedValueIntervalMs, IsMTRWriteParams params) => mtrClusterAccessControl -> dataValueDictionary -> expectedValueIntervalMs -> params -> IO ()
writeAttributeExtensionWithValue_expectedValueInterval_params mtrClusterAccessControl dataValueDictionary expectedValueIntervalMs params =
  sendMessage mtrClusterAccessControl writeAttributeExtensionWithValue_expectedValueInterval_paramsSelector (toNSDictionary dataValueDictionary) (toNSNumber expectedValueIntervalMs) (toMTRWriteParams params)

-- | @- readAttributeSubjectsPerAccessControlEntryWithParams:@
readAttributeSubjectsPerAccessControlEntryWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeSubjectsPerAccessControlEntryWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeSubjectsPerAccessControlEntryWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeTargetsPerAccessControlEntryWithParams:@
readAttributeTargetsPerAccessControlEntryWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeTargetsPerAccessControlEntryWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeTargetsPerAccessControlEntryWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAccessControlEntriesPerFabricWithParams:@
readAttributeAccessControlEntriesPerFabricWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeAccessControlEntriesPerFabricWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeAccessControlEntriesPerFabricWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterAccessControl mtrClusterAccessControl, IsMTRReadParams params) => mtrClusterAccessControl -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterAccessControl params =
  sendMessage mtrClusterAccessControl readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterAccessControl mtrClusterAccessControl => mtrClusterAccessControl -> IO (Id MTRClusterAccessControl)
init_ mtrClusterAccessControl =
  sendOwnedMessage mtrClusterAccessControl initSelector

-- | @+ new@
new :: IO (Id MTRClusterAccessControl)
new  =
  do
    cls' <- getRequiredClass "MTRClusterAccessControl"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterAccessControl)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeAclWithParams:@
readAttributeAclWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeAclWithParamsSelector = mkSelector "readAttributeAclWithParams:"

-- | @Selector@ for @writeAttributeAclWithValue:expectedValueInterval:@
writeAttributeAclWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeAclWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeAclWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeAclWithValue:expectedValueInterval:params:@
writeAttributeAclWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeAclWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeAclWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeExtensionWithParams:@
readAttributeExtensionWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeExtensionWithParamsSelector = mkSelector "readAttributeExtensionWithParams:"

-- | @Selector@ for @writeAttributeExtensionWithValue:expectedValueInterval:@
writeAttributeExtensionWithValue_expectedValueIntervalSelector :: Selector '[Id NSDictionary, Id NSNumber] ()
writeAttributeExtensionWithValue_expectedValueIntervalSelector = mkSelector "writeAttributeExtensionWithValue:expectedValueInterval:"

-- | @Selector@ for @writeAttributeExtensionWithValue:expectedValueInterval:params:@
writeAttributeExtensionWithValue_expectedValueInterval_paramsSelector :: Selector '[Id NSDictionary, Id NSNumber, Id MTRWriteParams] ()
writeAttributeExtensionWithValue_expectedValueInterval_paramsSelector = mkSelector "writeAttributeExtensionWithValue:expectedValueInterval:params:"

-- | @Selector@ for @readAttributeSubjectsPerAccessControlEntryWithParams:@
readAttributeSubjectsPerAccessControlEntryWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSubjectsPerAccessControlEntryWithParamsSelector = mkSelector "readAttributeSubjectsPerAccessControlEntryWithParams:"

-- | @Selector@ for @readAttributeTargetsPerAccessControlEntryWithParams:@
readAttributeTargetsPerAccessControlEntryWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeTargetsPerAccessControlEntryWithParamsSelector = mkSelector "readAttributeTargetsPerAccessControlEntryWithParams:"

-- | @Selector@ for @readAttributeAccessControlEntriesPerFabricWithParams:@
readAttributeAccessControlEntriesPerFabricWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeAccessControlEntriesPerFabricWithParamsSelector = mkSelector "readAttributeAccessControlEntriesPerFabricWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterAccessControl)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterAccessControl)
newSelector = mkSelector "new"

