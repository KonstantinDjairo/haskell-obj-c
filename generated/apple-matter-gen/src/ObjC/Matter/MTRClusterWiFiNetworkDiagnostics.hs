{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster WiFi Network Diagnostics    The Wi-Fi Network Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
--
-- Generated bindings for @MTRClusterWiFiNetworkDiagnostics@.
module ObjC.Matter.MTRClusterWiFiNetworkDiagnostics
  ( MTRClusterWiFiNetworkDiagnostics
  , IsMTRClusterWiFiNetworkDiagnostics(..)
  , initWithDevice_endpoint_queue
  , resetCountsWithParams_expectedValues_expectedValueInterval_completionHandler
  , resetCountsWithExpectedValues_expectedValueInterval_completionHandler
  , readAttributeBssidWithParams
  , readAttributeSecurityTypeWithParams
  , readAttributeWiFiVersionWithParams
  , readAttributeChannelNumberWithParams
  , readAttributeRssiWithParams
  , readAttributeBeaconLostCountWithParams
  , readAttributeBeaconRxCountWithParams
  , readAttributePacketMulticastRxCountWithParams
  , readAttributePacketMulticastTxCountWithParams
  , readAttributePacketUnicastRxCountWithParams
  , readAttributePacketUnicastTxCountWithParams
  , readAttributeCurrentMaxRateWithParams
  , readAttributeOverrunCountWithParams
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
  , readAttributeBeaconLostCountWithParamsSelector
  , readAttributeBeaconRxCountWithParamsSelector
  , readAttributeBssidWithParamsSelector
  , readAttributeChannelNumberWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeCurrentMaxRateWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeOverrunCountWithParamsSelector
  , readAttributePacketMulticastRxCountWithParamsSelector
  , readAttributePacketMulticastTxCountWithParamsSelector
  , readAttributePacketUnicastRxCountWithParamsSelector
  , readAttributePacketUnicastTxCountWithParamsSelector
  , readAttributeRssiWithParamsSelector
  , readAttributeSecurityTypeWithParamsSelector
  , readAttributeWiFiVersionWithParamsSelector
  , resetCountsWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , resetCountsWithParams_expectedValues_expectedValueInterval_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRDevice device, IsNSObject queue) => mtrClusterWiFiNetworkDiagnostics -> device -> CUShort -> queue -> IO (Id MTRClusterWiFiNetworkDiagnostics)
initWithDevice_endpoint_queue mtrClusterWiFiNetworkDiagnostics device endpoint queue =
  sendOwnedMessage mtrClusterWiFiNetworkDiagnostics initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- resetCountsWithParams:expectedValues:expectedValueInterval:completionHandler:@
resetCountsWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRWiFiNetworkDiagnosticsClusterResetCountsParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterWiFiNetworkDiagnostics -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
resetCountsWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterWiFiNetworkDiagnostics params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterWiFiNetworkDiagnostics resetCountsWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRWiFiNetworkDiagnosticsClusterResetCountsParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- resetCountsWithExpectedValues:expectedValueInterval:completionHandler:@
resetCountsWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterWiFiNetworkDiagnostics -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
resetCountsWithExpectedValues_expectedValueInterval_completionHandler mtrClusterWiFiNetworkDiagnostics expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterWiFiNetworkDiagnostics resetCountsWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeBssidWithParams:@
readAttributeBssidWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeBssidWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeBssidWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSecurityTypeWithParams:@
readAttributeSecurityTypeWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeSecurityTypeWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeSecurityTypeWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeWiFiVersionWithParams:@
readAttributeWiFiVersionWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeWiFiVersionWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeWiFiVersionWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeChannelNumberWithParams:@
readAttributeChannelNumberWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeChannelNumberWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeChannelNumberWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeRssiWithParams:@
readAttributeRssiWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeRssiWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeRssiWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeBeaconLostCountWithParams:@
readAttributeBeaconLostCountWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeBeaconLostCountWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeBeaconLostCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeBeaconRxCountWithParams:@
readAttributeBeaconRxCountWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeBeaconRxCountWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeBeaconRxCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePacketMulticastRxCountWithParams:@
readAttributePacketMulticastRxCountWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributePacketMulticastRxCountWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributePacketMulticastRxCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePacketMulticastTxCountWithParams:@
readAttributePacketMulticastTxCountWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributePacketMulticastTxCountWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributePacketMulticastTxCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePacketUnicastRxCountWithParams:@
readAttributePacketUnicastRxCountWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributePacketUnicastRxCountWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributePacketUnicastRxCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePacketUnicastTxCountWithParams:@
readAttributePacketUnicastTxCountWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributePacketUnicastTxCountWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributePacketUnicastTxCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCurrentMaxRateWithParams:@
readAttributeCurrentMaxRateWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeCurrentMaxRateWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeCurrentMaxRateWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeOverrunCountWithParams:@
readAttributeOverrunCountWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeOverrunCountWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeOverrunCountWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics, IsMTRReadParams params) => mtrClusterWiFiNetworkDiagnostics -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterWiFiNetworkDiagnostics params =
  sendMessage mtrClusterWiFiNetworkDiagnostics readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterWiFiNetworkDiagnostics mtrClusterWiFiNetworkDiagnostics => mtrClusterWiFiNetworkDiagnostics -> IO (Id MTRClusterWiFiNetworkDiagnostics)
init_ mtrClusterWiFiNetworkDiagnostics =
  sendOwnedMessage mtrClusterWiFiNetworkDiagnostics initSelector

-- | @+ new@
new :: IO (Id MTRClusterWiFiNetworkDiagnostics)
new  =
  do
    cls' <- getRequiredClass "MTRClusterWiFiNetworkDiagnostics"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterWiFiNetworkDiagnostics)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @resetCountsWithParams:expectedValues:expectedValueInterval:completionHandler:@
resetCountsWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRWiFiNetworkDiagnosticsClusterResetCountsParams, Id NSArray, Id NSNumber, Ptr ()] ()
resetCountsWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "resetCountsWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @resetCountsWithExpectedValues:expectedValueInterval:completionHandler:@
resetCountsWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
resetCountsWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "resetCountsWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeBssidWithParams:@
readAttributeBssidWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeBssidWithParamsSelector = mkSelector "readAttributeBssidWithParams:"

-- | @Selector@ for @readAttributeSecurityTypeWithParams:@
readAttributeSecurityTypeWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSecurityTypeWithParamsSelector = mkSelector "readAttributeSecurityTypeWithParams:"

-- | @Selector@ for @readAttributeWiFiVersionWithParams:@
readAttributeWiFiVersionWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeWiFiVersionWithParamsSelector = mkSelector "readAttributeWiFiVersionWithParams:"

-- | @Selector@ for @readAttributeChannelNumberWithParams:@
readAttributeChannelNumberWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeChannelNumberWithParamsSelector = mkSelector "readAttributeChannelNumberWithParams:"

-- | @Selector@ for @readAttributeRssiWithParams:@
readAttributeRssiWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeRssiWithParamsSelector = mkSelector "readAttributeRssiWithParams:"

-- | @Selector@ for @readAttributeBeaconLostCountWithParams:@
readAttributeBeaconLostCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeBeaconLostCountWithParamsSelector = mkSelector "readAttributeBeaconLostCountWithParams:"

-- | @Selector@ for @readAttributeBeaconRxCountWithParams:@
readAttributeBeaconRxCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeBeaconRxCountWithParamsSelector = mkSelector "readAttributeBeaconRxCountWithParams:"

-- | @Selector@ for @readAttributePacketMulticastRxCountWithParams:@
readAttributePacketMulticastRxCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePacketMulticastRxCountWithParamsSelector = mkSelector "readAttributePacketMulticastRxCountWithParams:"

-- | @Selector@ for @readAttributePacketMulticastTxCountWithParams:@
readAttributePacketMulticastTxCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePacketMulticastTxCountWithParamsSelector = mkSelector "readAttributePacketMulticastTxCountWithParams:"

-- | @Selector@ for @readAttributePacketUnicastRxCountWithParams:@
readAttributePacketUnicastRxCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePacketUnicastRxCountWithParamsSelector = mkSelector "readAttributePacketUnicastRxCountWithParams:"

-- | @Selector@ for @readAttributePacketUnicastTxCountWithParams:@
readAttributePacketUnicastTxCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePacketUnicastTxCountWithParamsSelector = mkSelector "readAttributePacketUnicastTxCountWithParams:"

-- | @Selector@ for @readAttributeCurrentMaxRateWithParams:@
readAttributeCurrentMaxRateWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentMaxRateWithParamsSelector = mkSelector "readAttributeCurrentMaxRateWithParams:"

-- | @Selector@ for @readAttributeOverrunCountWithParams:@
readAttributeOverrunCountWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeOverrunCountWithParamsSelector = mkSelector "readAttributeOverrunCountWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterWiFiNetworkDiagnostics)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterWiFiNetworkDiagnostics)
newSelector = mkSelector "new"

