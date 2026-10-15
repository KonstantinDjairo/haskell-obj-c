{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Actions    This cluster provides a standardized way for a Node (typically a Bridge, but could be any Node) to expose action information.
--
-- Generated bindings for @MTRClusterActions@.
module ObjC.Matter.MTRClusterActions
  ( MTRClusterActions
  , IsMTRClusterActions(..)
  , initWithDevice_endpoint_queue
  , instantActionWithParams_expectedValues_expectedValueInterval_completionHandler
  , instantActionWithTransitionWithParams_expectedValues_expectedValueInterval_completionHandler
  , startActionWithParams_expectedValues_expectedValueInterval_completionHandler
  , startActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler
  , stopActionWithParams_expectedValues_expectedValueInterval_completionHandler
  , pauseActionWithParams_expectedValues_expectedValueInterval_completionHandler
  , pauseActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler
  , resumeActionWithParams_expectedValues_expectedValueInterval_completionHandler
  , enableActionWithParams_expectedValues_expectedValueInterval_completionHandler
  , enableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler
  , disableActionWithParams_expectedValues_expectedValueInterval_completionHandler
  , disableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeActionListWithParams
  , readAttributeEndpointListsWithParams
  , readAttributeSetupURLWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , disableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , disableActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , enableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , enableActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , instantActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , instantActionWithTransitionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , newSelector
  , pauseActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , pauseActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeActionListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeEndpointListsWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeSetupURLWithParamsSelector
  , resumeActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , startActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , startActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , stopActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterActions mtrClusterActions, IsMTRDevice device, IsNSObject queue) => mtrClusterActions -> device -> CUShort -> queue -> IO (Id MTRClusterActions)
initWithDevice_endpoint_queue mtrClusterActions device endpoint queue =
  sendOwnedMessage mtrClusterActions initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- instantActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
instantActionWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterInstantActionParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
instantActionWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions instantActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterInstantActionParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- instantActionWithTransitionWithParams:expectedValues:expectedValueInterval:completionHandler:@
instantActionWithTransitionWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterInstantActionWithTransitionParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
instantActionWithTransitionWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions instantActionWithTransitionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterInstantActionWithTransitionParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- startActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
startActionWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterStartActionParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
startActionWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions startActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterStartActionParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- startActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:@
startActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterStartActionWithDurationParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
startActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions startActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterStartActionWithDurationParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- stopActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
stopActionWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterStopActionParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
stopActionWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions stopActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterStopActionParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- pauseActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
pauseActionWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterPauseActionParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
pauseActionWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions pauseActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterPauseActionParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- pauseActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:@
pauseActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterPauseActionWithDurationParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
pauseActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions pauseActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterPauseActionWithDurationParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- resumeActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
resumeActionWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterResumeActionParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
resumeActionWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions resumeActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterResumeActionParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- enableActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
enableActionWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterEnableActionParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
enableActionWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions enableActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterEnableActionParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- enableActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:@
enableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterEnableActionWithDurationParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
enableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions enableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterEnableActionWithDurationParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- disableActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
disableActionWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterDisableActionParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
disableActionWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions disableActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterDisableActionParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- disableActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:@
disableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterActions mtrClusterActions, IsMTRActionsClusterDisableActionWithDurationParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterActions -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
disableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterActions params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterActions disableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRActionsClusterDisableActionWithDurationParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeActionListWithParams:@
readAttributeActionListWithParams :: (IsMTRClusterActions mtrClusterActions, IsMTRReadParams params) => mtrClusterActions -> params -> IO (Id NSDictionary)
readAttributeActionListWithParams mtrClusterActions params =
  sendMessage mtrClusterActions readAttributeActionListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeEndpointListsWithParams:@
readAttributeEndpointListsWithParams :: (IsMTRClusterActions mtrClusterActions, IsMTRReadParams params) => mtrClusterActions -> params -> IO (Id NSDictionary)
readAttributeEndpointListsWithParams mtrClusterActions params =
  sendMessage mtrClusterActions readAttributeEndpointListsWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSetupURLWithParams:@
readAttributeSetupURLWithParams :: (IsMTRClusterActions mtrClusterActions, IsMTRReadParams params) => mtrClusterActions -> params -> IO (Id NSDictionary)
readAttributeSetupURLWithParams mtrClusterActions params =
  sendMessage mtrClusterActions readAttributeSetupURLWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterActions mtrClusterActions, IsMTRReadParams params) => mtrClusterActions -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterActions params =
  sendMessage mtrClusterActions readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterActions mtrClusterActions, IsMTRReadParams params) => mtrClusterActions -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterActions params =
  sendMessage mtrClusterActions readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterActions mtrClusterActions, IsMTRReadParams params) => mtrClusterActions -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterActions params =
  sendMessage mtrClusterActions readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterActions mtrClusterActions, IsMTRReadParams params) => mtrClusterActions -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterActions params =
  sendMessage mtrClusterActions readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterActions mtrClusterActions, IsMTRReadParams params) => mtrClusterActions -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterActions params =
  sendMessage mtrClusterActions readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterActions mtrClusterActions => mtrClusterActions -> IO (Id MTRClusterActions)
init_ mtrClusterActions =
  sendOwnedMessage mtrClusterActions initSelector

-- | @+ new@
new :: IO (Id MTRClusterActions)
new  =
  do
    cls' <- getRequiredClass "MTRClusterActions"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterActions)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @instantActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
instantActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterInstantActionParams, Id NSArray, Id NSNumber, Ptr ()] ()
instantActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "instantActionWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @instantActionWithTransitionWithParams:expectedValues:expectedValueInterval:completionHandler:@
instantActionWithTransitionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterInstantActionWithTransitionParams, Id NSArray, Id NSNumber, Ptr ()] ()
instantActionWithTransitionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "instantActionWithTransitionWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @startActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
startActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterStartActionParams, Id NSArray, Id NSNumber, Ptr ()] ()
startActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "startActionWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @startActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:@
startActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterStartActionWithDurationParams, Id NSArray, Id NSNumber, Ptr ()] ()
startActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "startActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @stopActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
stopActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterStopActionParams, Id NSArray, Id NSNumber, Ptr ()] ()
stopActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "stopActionWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @pauseActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
pauseActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterPauseActionParams, Id NSArray, Id NSNumber, Ptr ()] ()
pauseActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "pauseActionWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @pauseActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:@
pauseActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterPauseActionWithDurationParams, Id NSArray, Id NSNumber, Ptr ()] ()
pauseActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "pauseActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @resumeActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
resumeActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterResumeActionParams, Id NSArray, Id NSNumber, Ptr ()] ()
resumeActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "resumeActionWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @enableActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
enableActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterEnableActionParams, Id NSArray, Id NSNumber, Ptr ()] ()
enableActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "enableActionWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @enableActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:@
enableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterEnableActionWithDurationParams, Id NSArray, Id NSNumber, Ptr ()] ()
enableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "enableActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @disableActionWithParams:expectedValues:expectedValueInterval:completionHandler:@
disableActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterDisableActionParams, Id NSArray, Id NSNumber, Ptr ()] ()
disableActionWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "disableActionWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @disableActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:@
disableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRActionsClusterDisableActionWithDurationParams, Id NSArray, Id NSNumber, Ptr ()] ()
disableActionWithDurationWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "disableActionWithDurationWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeActionListWithParams:@
readAttributeActionListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeActionListWithParamsSelector = mkSelector "readAttributeActionListWithParams:"

-- | @Selector@ for @readAttributeEndpointListsWithParams:@
readAttributeEndpointListsWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeEndpointListsWithParamsSelector = mkSelector "readAttributeEndpointListsWithParams:"

-- | @Selector@ for @readAttributeSetupURLWithParams:@
readAttributeSetupURLWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSetupURLWithParamsSelector = mkSelector "readAttributeSetupURLWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterActions)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterActions)
newSelector = mkSelector "new"

