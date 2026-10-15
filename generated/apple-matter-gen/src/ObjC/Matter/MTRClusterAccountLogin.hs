{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Account Login    This cluster provides commands that facilitate user account login on a Content App or a node. For example, a Content App running on a Video Player device, which is represented as an endpoint (see [TV Architecture]), can use this cluster to help make the user account on the Content App match the user account on the Client.
--
-- Generated bindings for @MTRClusterAccountLogin@.
module ObjC.Matter.MTRClusterAccountLogin
  ( MTRClusterAccountLogin
  , IsMTRClusterAccountLogin(..)
  , initWithDevice_endpoint_queue
  , getSetupPINWithParams_expectedValues_expectedValueInterval_completionHandler
  , loginWithParams_expectedValues_expectedValueInterval_completionHandler
  , logoutWithParams_expectedValues_expectedValueInterval_completionHandler
  , logoutWithExpectedValues_expectedValueInterval_completionHandler
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , getSetupPINWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , loginWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , logoutWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , logoutWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , newSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRDevice device, IsNSObject queue) => mtrClusterAccountLogin -> device -> CUShort -> queue -> IO (Id MTRClusterAccountLogin)
initWithDevice_endpoint_queue mtrClusterAccountLogin device endpoint queue =
  sendOwnedMessage mtrClusterAccountLogin initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- getSetupPINWithParams:expectedValues:expectedValueInterval:completionHandler:@
getSetupPINWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRAccountLoginClusterGetSetupPINParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterAccountLogin -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
getSetupPINWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterAccountLogin params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterAccountLogin getSetupPINWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRAccountLoginClusterGetSetupPINParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- loginWithParams:expectedValues:expectedValueInterval:completionHandler:@
loginWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRAccountLoginClusterLoginParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterAccountLogin -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
loginWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterAccountLogin params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterAccountLogin loginWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRAccountLoginClusterLoginParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- logoutWithParams:expectedValues:expectedValueInterval:completionHandler:@
logoutWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRAccountLoginClusterLogoutParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterAccountLogin -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
logoutWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterAccountLogin params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterAccountLogin logoutWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRAccountLoginClusterLogoutParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- logoutWithExpectedValues:expectedValueInterval:completionHandler:@
logoutWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterAccountLogin -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
logoutWithExpectedValues_expectedValueInterval_completionHandler mtrClusterAccountLogin expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterAccountLogin logoutWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRReadParams params) => mtrClusterAccountLogin -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterAccountLogin params =
  sendMessage mtrClusterAccountLogin readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRReadParams params) => mtrClusterAccountLogin -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterAccountLogin params =
  sendMessage mtrClusterAccountLogin readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRReadParams params) => mtrClusterAccountLogin -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterAccountLogin params =
  sendMessage mtrClusterAccountLogin readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRReadParams params) => mtrClusterAccountLogin -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterAccountLogin params =
  sendMessage mtrClusterAccountLogin readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterAccountLogin mtrClusterAccountLogin, IsMTRReadParams params) => mtrClusterAccountLogin -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterAccountLogin params =
  sendMessage mtrClusterAccountLogin readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterAccountLogin mtrClusterAccountLogin => mtrClusterAccountLogin -> IO (Id MTRClusterAccountLogin)
init_ mtrClusterAccountLogin =
  sendOwnedMessage mtrClusterAccountLogin initSelector

-- | @+ new@
new :: IO (Id MTRClusterAccountLogin)
new  =
  do
    cls' <- getRequiredClass "MTRClusterAccountLogin"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterAccountLogin)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @getSetupPINWithParams:expectedValues:expectedValueInterval:completionHandler:@
getSetupPINWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRAccountLoginClusterGetSetupPINParams, Id NSArray, Id NSNumber, Ptr ()] ()
getSetupPINWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "getSetupPINWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @loginWithParams:expectedValues:expectedValueInterval:completionHandler:@
loginWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRAccountLoginClusterLoginParams, Id NSArray, Id NSNumber, Ptr ()] ()
loginWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "loginWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @logoutWithParams:expectedValues:expectedValueInterval:completionHandler:@
logoutWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRAccountLoginClusterLogoutParams, Id NSArray, Id NSNumber, Ptr ()] ()
logoutWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "logoutWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @logoutWithExpectedValues:expectedValueInterval:completionHandler:@
logoutWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
logoutWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "logoutWithExpectedValues:expectedValueInterval:completionHandler:"

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
initSelector :: Selector '[] (Id MTRClusterAccountLogin)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterAccountLogin)
newSelector = mkSelector "new"

