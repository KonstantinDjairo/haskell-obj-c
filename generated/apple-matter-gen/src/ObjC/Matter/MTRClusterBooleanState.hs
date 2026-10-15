{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Boolean State    This cluster provides an interface to a boolean state called StateValue.
--
-- Generated bindings for @MTRClusterBooleanState@.
module ObjC.Matter.MTRClusterBooleanState
  ( MTRClusterBooleanState
  , IsMTRClusterBooleanState(..)
  , initWithDevice_endpoint_queue
  , readAttributeStateValueWithParams
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
  , readAttributeStateValueWithParamsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterBooleanState mtrClusterBooleanState, IsMTRDevice device, IsNSObject queue) => mtrClusterBooleanState -> device -> CUShort -> queue -> IO (Id MTRClusterBooleanState)
initWithDevice_endpoint_queue mtrClusterBooleanState device endpoint queue =
  sendOwnedMessage mtrClusterBooleanState initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- readAttributeStateValueWithParams:@
readAttributeStateValueWithParams :: (IsMTRClusterBooleanState mtrClusterBooleanState, IsMTRReadParams params) => mtrClusterBooleanState -> params -> IO (Id NSDictionary)
readAttributeStateValueWithParams mtrClusterBooleanState params =
  sendMessage mtrClusterBooleanState readAttributeStateValueWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterBooleanState mtrClusterBooleanState, IsMTRReadParams params) => mtrClusterBooleanState -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterBooleanState params =
  sendMessage mtrClusterBooleanState readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterBooleanState mtrClusterBooleanState, IsMTRReadParams params) => mtrClusterBooleanState -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterBooleanState params =
  sendMessage mtrClusterBooleanState readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterBooleanState mtrClusterBooleanState, IsMTRReadParams params) => mtrClusterBooleanState -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterBooleanState params =
  sendMessage mtrClusterBooleanState readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterBooleanState mtrClusterBooleanState, IsMTRReadParams params) => mtrClusterBooleanState -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterBooleanState params =
  sendMessage mtrClusterBooleanState readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterBooleanState mtrClusterBooleanState, IsMTRReadParams params) => mtrClusterBooleanState -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterBooleanState params =
  sendMessage mtrClusterBooleanState readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterBooleanState mtrClusterBooleanState => mtrClusterBooleanState -> IO (Id MTRClusterBooleanState)
init_ mtrClusterBooleanState =
  sendOwnedMessage mtrClusterBooleanState initSelector

-- | @+ new@
new :: IO (Id MTRClusterBooleanState)
new  =
  do
    cls' <- getRequiredClass "MTRClusterBooleanState"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterBooleanState)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @readAttributeStateValueWithParams:@
readAttributeStateValueWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeStateValueWithParamsSelector = mkSelector "readAttributeStateValueWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterBooleanState)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterBooleanState)
newSelector = mkSelector "new"

