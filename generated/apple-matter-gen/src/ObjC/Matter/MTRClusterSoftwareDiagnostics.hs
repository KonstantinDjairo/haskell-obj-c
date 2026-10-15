{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Software Diagnostics    The Software Diagnostics Cluster provides a means to acquire standardized diagnostics metrics that MAY be used by a Node to assist a user or Administrative Node in diagnosing potential problems.
--
-- Generated bindings for @MTRClusterSoftwareDiagnostics@.
module ObjC.Matter.MTRClusterSoftwareDiagnostics
  ( MTRClusterSoftwareDiagnostics
  , IsMTRClusterSoftwareDiagnostics(..)
  , initWithDevice_endpoint_queue
  , resetWatermarksWithParams_expectedValues_expectedValueInterval_completionHandler
  , resetWatermarksWithExpectedValues_expectedValueInterval_completionHandler
  , readAttributeThreadMetricsWithParams
  , readAttributeCurrentHeapFreeWithParams
  , readAttributeCurrentHeapUsedWithParams
  , readAttributeCurrentHeapHighWatermarkWithParams
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
  , readAttributeCurrentHeapFreeWithParamsSelector
  , readAttributeCurrentHeapHighWatermarkWithParamsSelector
  , readAttributeCurrentHeapUsedWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeThreadMetricsWithParamsSelector
  , resetWatermarksWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , resetWatermarksWithParams_expectedValues_expectedValueInterval_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRDevice device, IsNSObject queue) => mtrClusterSoftwareDiagnostics -> device -> CUShort -> queue -> IO (Id MTRClusterSoftwareDiagnostics)
initWithDevice_endpoint_queue mtrClusterSoftwareDiagnostics device endpoint queue =
  sendOwnedMessage mtrClusterSoftwareDiagnostics initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- resetWatermarksWithParams:expectedValues:expectedValueInterval:completionHandler:@
resetWatermarksWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRSoftwareDiagnosticsClusterResetWatermarksParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterSoftwareDiagnostics -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
resetWatermarksWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterSoftwareDiagnostics params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterSoftwareDiagnostics resetWatermarksWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRSoftwareDiagnosticsClusterResetWatermarksParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- resetWatermarksWithExpectedValues:expectedValueInterval:completionHandler:@
resetWatermarksWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterSoftwareDiagnostics -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
resetWatermarksWithExpectedValues_expectedValueInterval_completionHandler mtrClusterSoftwareDiagnostics expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterSoftwareDiagnostics resetWatermarksWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeThreadMetricsWithParams:@
readAttributeThreadMetricsWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeThreadMetricsWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeThreadMetricsWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCurrentHeapFreeWithParams:@
readAttributeCurrentHeapFreeWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeCurrentHeapFreeWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeCurrentHeapFreeWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCurrentHeapUsedWithParams:@
readAttributeCurrentHeapUsedWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeCurrentHeapUsedWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeCurrentHeapUsedWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCurrentHeapHighWatermarkWithParams:@
readAttributeCurrentHeapHighWatermarkWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeCurrentHeapHighWatermarkWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeCurrentHeapHighWatermarkWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics, IsMTRReadParams params) => mtrClusterSoftwareDiagnostics -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterSoftwareDiagnostics params =
  sendMessage mtrClusterSoftwareDiagnostics readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterSoftwareDiagnostics mtrClusterSoftwareDiagnostics => mtrClusterSoftwareDiagnostics -> IO (Id MTRClusterSoftwareDiagnostics)
init_ mtrClusterSoftwareDiagnostics =
  sendOwnedMessage mtrClusterSoftwareDiagnostics initSelector

-- | @+ new@
new :: IO (Id MTRClusterSoftwareDiagnostics)
new  =
  do
    cls' <- getRequiredClass "MTRClusterSoftwareDiagnostics"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterSoftwareDiagnostics)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @resetWatermarksWithParams:expectedValues:expectedValueInterval:completionHandler:@
resetWatermarksWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRSoftwareDiagnosticsClusterResetWatermarksParams, Id NSArray, Id NSNumber, Ptr ()] ()
resetWatermarksWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "resetWatermarksWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @resetWatermarksWithExpectedValues:expectedValueInterval:completionHandler:@
resetWatermarksWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
resetWatermarksWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "resetWatermarksWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeThreadMetricsWithParams:@
readAttributeThreadMetricsWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeThreadMetricsWithParamsSelector = mkSelector "readAttributeThreadMetricsWithParams:"

-- | @Selector@ for @readAttributeCurrentHeapFreeWithParams:@
readAttributeCurrentHeapFreeWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentHeapFreeWithParamsSelector = mkSelector "readAttributeCurrentHeapFreeWithParams:"

-- | @Selector@ for @readAttributeCurrentHeapUsedWithParams:@
readAttributeCurrentHeapUsedWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentHeapUsedWithParamsSelector = mkSelector "readAttributeCurrentHeapUsedWithParams:"

-- | @Selector@ for @readAttributeCurrentHeapHighWatermarkWithParams:@
readAttributeCurrentHeapHighWatermarkWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentHeapHighWatermarkWithParamsSelector = mkSelector "readAttributeCurrentHeapHighWatermarkWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterSoftwareDiagnostics)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterSoftwareDiagnostics)
newSelector = mkSelector "new"

