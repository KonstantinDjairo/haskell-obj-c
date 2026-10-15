{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster General Diagnostics    The General Diagnostics Cluster, along with other diagnostics clusters, provide a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
--
-- Generated bindings for @MTRClusterGeneralDiagnostics@.
module ObjC.Matter.MTRClusterGeneralDiagnostics
  ( MTRClusterGeneralDiagnostics
  , IsMTRClusterGeneralDiagnostics(..)
  , initWithDevice_endpoint_queue
  , testEventTriggerWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeNetworkInterfacesWithParams
  , readAttributeRebootCountWithParams
  , readAttributeUpTimeWithParams
  , readAttributeTotalOperationalHoursWithParams
  , readAttributeBootReasonsWithParams
  , readAttributeActiveHardwareFaultsWithParams
  , readAttributeActiveRadioFaultsWithParams
  , readAttributeActiveNetworkFaultsWithParams
  , readAttributeTestEventTriggersEnabledWithParams
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
  , readAttributeActiveHardwareFaultsWithParamsSelector
  , readAttributeActiveNetworkFaultsWithParamsSelector
  , readAttributeActiveRadioFaultsWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeBootReasonsWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeNetworkInterfacesWithParamsSelector
  , readAttributeRebootCountWithParamsSelector
  , readAttributeTestEventTriggersEnabledWithParamsSelector
  , readAttributeTotalOperationalHoursWithParamsSelector
  , readAttributeUpTimeWithParamsSelector
  , testEventTriggerWithParams_expectedValues_expectedValueInterval_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRDevice device, IsNSObject queue) => mtrClusterGeneralDiagnostics -> device -> CUShort -> queue -> IO (Id MTRClusterGeneralDiagnostics)
initWithDevice_endpoint_queue mtrClusterGeneralDiagnostics device endpoint queue =
  sendOwnedMessage mtrClusterGeneralDiagnostics initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- testEventTriggerWithParams:expectedValues:expectedValueInterval:completionHandler:@
testEventTriggerWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRGeneralDiagnosticsClusterTestEventTriggerParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterGeneralDiagnostics -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
testEventTriggerWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterGeneralDiagnostics params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterGeneralDiagnostics testEventTriggerWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRGeneralDiagnosticsClusterTestEventTriggerParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeNetworkInterfacesWithParams:@
readAttributeNetworkInterfacesWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeNetworkInterfacesWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeNetworkInterfacesWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeRebootCountWithParams:@
readAttributeRebootCountWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeRebootCountWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeRebootCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeUpTimeWithParams:@
readAttributeUpTimeWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeUpTimeWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeUpTimeWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeTotalOperationalHoursWithParams:@
readAttributeTotalOperationalHoursWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeTotalOperationalHoursWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeTotalOperationalHoursWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeBootReasonsWithParams:@
readAttributeBootReasonsWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeBootReasonsWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeBootReasonsWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeActiveHardwareFaultsWithParams:@
readAttributeActiveHardwareFaultsWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeActiveHardwareFaultsWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeActiveHardwareFaultsWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeActiveRadioFaultsWithParams:@
readAttributeActiveRadioFaultsWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeActiveRadioFaultsWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeActiveRadioFaultsWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeActiveNetworkFaultsWithParams:@
readAttributeActiveNetworkFaultsWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeActiveNetworkFaultsWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeActiveNetworkFaultsWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeTestEventTriggersEnabledWithParams:@
readAttributeTestEventTriggersEnabledWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeTestEventTriggersEnabledWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeTestEventTriggersEnabledWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics, IsMTRReadParams params) => mtrClusterGeneralDiagnostics -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterGeneralDiagnostics params =
  sendMessage mtrClusterGeneralDiagnostics readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterGeneralDiagnostics mtrClusterGeneralDiagnostics => mtrClusterGeneralDiagnostics -> IO (Id MTRClusterGeneralDiagnostics)
init_ mtrClusterGeneralDiagnostics =
  sendOwnedMessage mtrClusterGeneralDiagnostics initSelector

-- | @+ new@
new :: IO (Id MTRClusterGeneralDiagnostics)
new  =
  do
    cls' <- getRequiredClass "MTRClusterGeneralDiagnostics"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterGeneralDiagnostics)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @testEventTriggerWithParams:expectedValues:expectedValueInterval:completionHandler:@
testEventTriggerWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRGeneralDiagnosticsClusterTestEventTriggerParams, Id NSArray, Id NSNumber, Ptr ()] ()
testEventTriggerWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "testEventTriggerWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeNetworkInterfacesWithParams:@
readAttributeNetworkInterfacesWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeNetworkInterfacesWithParamsSelector = mkSelector "readAttributeNetworkInterfacesWithParams:"

-- | @Selector@ for @readAttributeRebootCountWithParams:@
readAttributeRebootCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeRebootCountWithParamsSelector = mkSelector "readAttributeRebootCountWithParams:"

-- | @Selector@ for @readAttributeUpTimeWithParams:@
readAttributeUpTimeWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeUpTimeWithParamsSelector = mkSelector "readAttributeUpTimeWithParams:"

-- | @Selector@ for @readAttributeTotalOperationalHoursWithParams:@
readAttributeTotalOperationalHoursWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeTotalOperationalHoursWithParamsSelector = mkSelector "readAttributeTotalOperationalHoursWithParams:"

-- | @Selector@ for @readAttributeBootReasonsWithParams:@
readAttributeBootReasonsWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeBootReasonsWithParamsSelector = mkSelector "readAttributeBootReasonsWithParams:"

-- | @Selector@ for @readAttributeActiveHardwareFaultsWithParams:@
readAttributeActiveHardwareFaultsWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeActiveHardwareFaultsWithParamsSelector = mkSelector "readAttributeActiveHardwareFaultsWithParams:"

-- | @Selector@ for @readAttributeActiveRadioFaultsWithParams:@
readAttributeActiveRadioFaultsWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeActiveRadioFaultsWithParamsSelector = mkSelector "readAttributeActiveRadioFaultsWithParams:"

-- | @Selector@ for @readAttributeActiveNetworkFaultsWithParams:@
readAttributeActiveNetworkFaultsWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeActiveNetworkFaultsWithParamsSelector = mkSelector "readAttributeActiveNetworkFaultsWithParams:"

-- | @Selector@ for @readAttributeTestEventTriggersEnabledWithParams:@
readAttributeTestEventTriggersEnabledWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeTestEventTriggersEnabledWithParamsSelector = mkSelector "readAttributeTestEventTriggersEnabledWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterGeneralDiagnostics)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterGeneralDiagnostics)
newSelector = mkSelector "new"

