{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Target Navigator    This cluster provides an interface for UX navigation within a set of targets on a device or endpoint.
--
-- Generated bindings for @MTRClusterTargetNavigator@.
module ObjC.Matter.MTRClusterTargetNavigator
  ( MTRClusterTargetNavigator
  , IsMTRClusterTargetNavigator(..)
  , initWithDevice_endpoint_queue
  , navigateTargetWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeTargetListWithParams
  , readAttributeCurrentTargetWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , navigateTargetWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeCurrentTargetWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeTargetListWithParamsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRDevice device, IsNSObject queue) => mtrClusterTargetNavigator -> device -> CUShort -> queue -> IO (Id MTRClusterTargetNavigator)
initWithDevice_endpoint_queue mtrClusterTargetNavigator device endpoint queue =
  sendOwnedMessage mtrClusterTargetNavigator initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- navigateTargetWithParams:expectedValues:expectedValueInterval:completionHandler:@
navigateTargetWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRTargetNavigatorClusterNavigateTargetParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterTargetNavigator -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
navigateTargetWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterTargetNavigator params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterTargetNavigator navigateTargetWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRTargetNavigatorClusterNavigateTargetParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeTargetListWithParams:@
readAttributeTargetListWithParams :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRReadParams params) => mtrClusterTargetNavigator -> params -> IO (Id NSDictionary)
readAttributeTargetListWithParams mtrClusterTargetNavigator params =
  sendMessage mtrClusterTargetNavigator readAttributeTargetListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeCurrentTargetWithParams:@
readAttributeCurrentTargetWithParams :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRReadParams params) => mtrClusterTargetNavigator -> params -> IO (Id NSDictionary)
readAttributeCurrentTargetWithParams mtrClusterTargetNavigator params =
  sendMessage mtrClusterTargetNavigator readAttributeCurrentTargetWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRReadParams params) => mtrClusterTargetNavigator -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterTargetNavigator params =
  sendMessage mtrClusterTargetNavigator readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRReadParams params) => mtrClusterTargetNavigator -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterTargetNavigator params =
  sendMessage mtrClusterTargetNavigator readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRReadParams params) => mtrClusterTargetNavigator -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterTargetNavigator params =
  sendMessage mtrClusterTargetNavigator readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRReadParams params) => mtrClusterTargetNavigator -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterTargetNavigator params =
  sendMessage mtrClusterTargetNavigator readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterTargetNavigator mtrClusterTargetNavigator, IsMTRReadParams params) => mtrClusterTargetNavigator -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterTargetNavigator params =
  sendMessage mtrClusterTargetNavigator readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterTargetNavigator mtrClusterTargetNavigator => mtrClusterTargetNavigator -> IO (Id MTRClusterTargetNavigator)
init_ mtrClusterTargetNavigator =
  sendOwnedMessage mtrClusterTargetNavigator initSelector

-- | @+ new@
new :: IO (Id MTRClusterTargetNavigator)
new  =
  do
    cls' <- getRequiredClass "MTRClusterTargetNavigator"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterTargetNavigator)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @navigateTargetWithParams:expectedValues:expectedValueInterval:completionHandler:@
navigateTargetWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRTargetNavigatorClusterNavigateTargetParams, Id NSArray, Id NSNumber, Ptr ()] ()
navigateTargetWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "navigateTargetWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeTargetListWithParams:@
readAttributeTargetListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeTargetListWithParamsSelector = mkSelector "readAttributeTargetListWithParams:"

-- | @Selector@ for @readAttributeCurrentTargetWithParams:@
readAttributeCurrentTargetWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentTargetWithParamsSelector = mkSelector "readAttributeCurrentTargetWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterTargetNavigator)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterTargetNavigator)
newSelector = mkSelector "new"

