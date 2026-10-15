{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Groups    Attributes and commands for group configuration and manipulation.
--
-- Generated bindings for @MTRClusterGroups@.
module ObjC.Matter.MTRClusterGroups
  ( MTRClusterGroups
  , IsMTRClusterGroups(..)
  , initWithDevice_endpoint_queue
  , addGroupWithParams_expectedValues_expectedValueInterval_completionHandler
  , viewGroupWithParams_expectedValues_expectedValueInterval_completionHandler
  , getGroupMembershipWithParams_expectedValues_expectedValueInterval_completionHandler
  , removeGroupWithParams_expectedValues_expectedValueInterval_completionHandler
  , removeAllGroupsWithParams_expectedValues_expectedValueInterval_completionHandler
  , removeAllGroupsWithExpectedValues_expectedValueInterval_completionHandler
  , addGroupIfIdentifyingWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeNameSupportWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , addGroupIfIdentifyingWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , addGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , getGroupMembershipWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeNameSupportWithParamsSelector
  , removeAllGroupsWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , removeAllGroupsWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , removeGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , viewGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterGroups mtrClusterGroups, IsMTRDevice device, IsNSObject queue) => mtrClusterGroups -> device -> CUShort -> queue -> IO (Id MTRClusterGroups)
initWithDevice_endpoint_queue mtrClusterGroups device endpoint queue =
  sendOwnedMessage mtrClusterGroups initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- addGroupWithParams:expectedValues:expectedValueInterval:completionHandler:@
addGroupWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterGroups mtrClusterGroups, IsMTRGroupsClusterAddGroupParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterGroups -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
addGroupWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterGroups params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterGroups addGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRGroupsClusterAddGroupParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- viewGroupWithParams:expectedValues:expectedValueInterval:completionHandler:@
viewGroupWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterGroups mtrClusterGroups, IsMTRGroupsClusterViewGroupParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterGroups -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
viewGroupWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterGroups params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterGroups viewGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRGroupsClusterViewGroupParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- getGroupMembershipWithParams:expectedValues:expectedValueInterval:completionHandler:@
getGroupMembershipWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterGroups mtrClusterGroups, IsMTRGroupsClusterGetGroupMembershipParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterGroups -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
getGroupMembershipWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterGroups params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterGroups getGroupMembershipWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRGroupsClusterGetGroupMembershipParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- removeGroupWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeGroupWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterGroups mtrClusterGroups, IsMTRGroupsClusterRemoveGroupParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterGroups -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
removeGroupWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterGroups params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterGroups removeGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRGroupsClusterRemoveGroupParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- removeAllGroupsWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeAllGroupsWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterGroups mtrClusterGroups, IsMTRGroupsClusterRemoveAllGroupsParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterGroups -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
removeAllGroupsWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterGroups params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterGroups removeAllGroupsWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRGroupsClusterRemoveAllGroupsParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- removeAllGroupsWithExpectedValues:expectedValueInterval:completionHandler:@
removeAllGroupsWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterGroups mtrClusterGroups, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterGroups -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
removeAllGroupsWithExpectedValues_expectedValueInterval_completionHandler mtrClusterGroups expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterGroups removeAllGroupsWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- addGroupIfIdentifyingWithParams:expectedValues:expectedValueInterval:completionHandler:@
addGroupIfIdentifyingWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterGroups mtrClusterGroups, IsMTRGroupsClusterAddGroupIfIdentifyingParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterGroups -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
addGroupIfIdentifyingWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterGroups params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterGroups addGroupIfIdentifyingWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRGroupsClusterAddGroupIfIdentifyingParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeNameSupportWithParams:@
readAttributeNameSupportWithParams :: (IsMTRClusterGroups mtrClusterGroups, IsMTRReadParams params) => mtrClusterGroups -> params -> IO (Id NSDictionary)
readAttributeNameSupportWithParams mtrClusterGroups params =
  sendMessage mtrClusterGroups readAttributeNameSupportWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterGroups mtrClusterGroups, IsMTRReadParams params) => mtrClusterGroups -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterGroups params =
  sendMessage mtrClusterGroups readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterGroups mtrClusterGroups, IsMTRReadParams params) => mtrClusterGroups -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterGroups params =
  sendMessage mtrClusterGroups readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterGroups mtrClusterGroups, IsMTRReadParams params) => mtrClusterGroups -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterGroups params =
  sendMessage mtrClusterGroups readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterGroups mtrClusterGroups, IsMTRReadParams params) => mtrClusterGroups -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterGroups params =
  sendMessage mtrClusterGroups readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterGroups mtrClusterGroups, IsMTRReadParams params) => mtrClusterGroups -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterGroups params =
  sendMessage mtrClusterGroups readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterGroups mtrClusterGroups => mtrClusterGroups -> IO (Id MTRClusterGroups)
init_ mtrClusterGroups =
  sendOwnedMessage mtrClusterGroups initSelector

-- | @+ new@
new :: IO (Id MTRClusterGroups)
new  =
  do
    cls' <- getRequiredClass "MTRClusterGroups"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterGroups)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @addGroupWithParams:expectedValues:expectedValueInterval:completionHandler:@
addGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRGroupsClusterAddGroupParams, Id NSArray, Id NSNumber, Ptr ()] ()
addGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "addGroupWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @viewGroupWithParams:expectedValues:expectedValueInterval:completionHandler:@
viewGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRGroupsClusterViewGroupParams, Id NSArray, Id NSNumber, Ptr ()] ()
viewGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "viewGroupWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @getGroupMembershipWithParams:expectedValues:expectedValueInterval:completionHandler:@
getGroupMembershipWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRGroupsClusterGetGroupMembershipParams, Id NSArray, Id NSNumber, Ptr ()] ()
getGroupMembershipWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "getGroupMembershipWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @removeGroupWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRGroupsClusterRemoveGroupParams, Id NSArray, Id NSNumber, Ptr ()] ()
removeGroupWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "removeGroupWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @removeAllGroupsWithParams:expectedValues:expectedValueInterval:completionHandler:@
removeAllGroupsWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRGroupsClusterRemoveAllGroupsParams, Id NSArray, Id NSNumber, Ptr ()] ()
removeAllGroupsWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "removeAllGroupsWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @removeAllGroupsWithExpectedValues:expectedValueInterval:completionHandler:@
removeAllGroupsWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
removeAllGroupsWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "removeAllGroupsWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @addGroupIfIdentifyingWithParams:expectedValues:expectedValueInterval:completionHandler:@
addGroupIfIdentifyingWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRGroupsClusterAddGroupIfIdentifyingParams, Id NSArray, Id NSNumber, Ptr ()] ()
addGroupIfIdentifyingWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "addGroupIfIdentifyingWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeNameSupportWithParams:@
readAttributeNameSupportWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeNameSupportWithParamsSelector = mkSelector "readAttributeNameSupportWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterGroups)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterGroups)
newSelector = mkSelector "new"

