{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster AdministratorCommissioning    Commands to trigger a Node to allow a new Administrator to commission it.
--
-- Generated bindings for @MTRClusterAdministratorCommissioning@.
module ObjC.Matter.MTRClusterAdministratorCommissioning
  ( MTRClusterAdministratorCommissioning
  , IsMTRClusterAdministratorCommissioning(..)
  , initWithDevice_endpoint_queue
  , openCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandler
  , openBasicCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandler
  , revokeCommissioningWithParams_expectedValues_expectedValueInterval_completionHandler
  , revokeCommissioningWithExpectedValues_expectedValueInterval_completionHandler
  , readAttributeWindowStatusWithParams
  , readAttributeAdminFabricIndexWithParams
  , readAttributeAdminVendorIdWithParams
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
  , openBasicCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , openCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAdminFabricIndexWithParamsSelector
  , readAttributeAdminVendorIdWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributeWindowStatusWithParamsSelector
  , revokeCommissioningWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , revokeCommissioningWithParams_expectedValues_expectedValueInterval_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRDevice device, IsNSObject queue) => mtrClusterAdministratorCommissioning -> device -> CUShort -> queue -> IO (Id MTRClusterAdministratorCommissioning)
initWithDevice_endpoint_queue mtrClusterAdministratorCommissioning device endpoint queue =
  sendOwnedMessage mtrClusterAdministratorCommissioning initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- openCommissioningWindowWithParams:expectedValues:expectedValueInterval:completionHandler:@
openCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRAdministratorCommissioningClusterOpenCommissioningWindowParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterAdministratorCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
openCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterAdministratorCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterAdministratorCommissioning openCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRAdministratorCommissioningClusterOpenCommissioningWindowParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- openBasicCommissioningWindowWithParams:expectedValues:expectedValueInterval:completionHandler:@
openBasicCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterAdministratorCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
openBasicCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterAdministratorCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterAdministratorCommissioning openBasicCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- revokeCommissioningWithParams:expectedValues:expectedValueInterval:completionHandler:@
revokeCommissioningWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRAdministratorCommissioningClusterRevokeCommissioningParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterAdministratorCommissioning -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
revokeCommissioningWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterAdministratorCommissioning params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterAdministratorCommissioning revokeCommissioningWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRAdministratorCommissioningClusterRevokeCommissioningParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- revokeCommissioningWithExpectedValues:expectedValueInterval:completionHandler:@
revokeCommissioningWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterAdministratorCommissioning -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
revokeCommissioningWithExpectedValues_expectedValueInterval_completionHandler mtrClusterAdministratorCommissioning expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterAdministratorCommissioning revokeCommissioningWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeWindowStatusWithParams:@
readAttributeWindowStatusWithParams :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRReadParams params) => mtrClusterAdministratorCommissioning -> params -> IO (Id NSDictionary)
readAttributeWindowStatusWithParams mtrClusterAdministratorCommissioning params =
  sendMessage mtrClusterAdministratorCommissioning readAttributeWindowStatusWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAdminFabricIndexWithParams:@
readAttributeAdminFabricIndexWithParams :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRReadParams params) => mtrClusterAdministratorCommissioning -> params -> IO (Id NSDictionary)
readAttributeAdminFabricIndexWithParams mtrClusterAdministratorCommissioning params =
  sendMessage mtrClusterAdministratorCommissioning readAttributeAdminFabricIndexWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAdminVendorIdWithParams:@
readAttributeAdminVendorIdWithParams :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRReadParams params) => mtrClusterAdministratorCommissioning -> params -> IO (Id NSDictionary)
readAttributeAdminVendorIdWithParams mtrClusterAdministratorCommissioning params =
  sendMessage mtrClusterAdministratorCommissioning readAttributeAdminVendorIdWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRReadParams params) => mtrClusterAdministratorCommissioning -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterAdministratorCommissioning params =
  sendMessage mtrClusterAdministratorCommissioning readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRReadParams params) => mtrClusterAdministratorCommissioning -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterAdministratorCommissioning params =
  sendMessage mtrClusterAdministratorCommissioning readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRReadParams params) => mtrClusterAdministratorCommissioning -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterAdministratorCommissioning params =
  sendMessage mtrClusterAdministratorCommissioning readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRReadParams params) => mtrClusterAdministratorCommissioning -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterAdministratorCommissioning params =
  sendMessage mtrClusterAdministratorCommissioning readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning, IsMTRReadParams params) => mtrClusterAdministratorCommissioning -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterAdministratorCommissioning params =
  sendMessage mtrClusterAdministratorCommissioning readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterAdministratorCommissioning mtrClusterAdministratorCommissioning => mtrClusterAdministratorCommissioning -> IO (Id MTRClusterAdministratorCommissioning)
init_ mtrClusterAdministratorCommissioning =
  sendOwnedMessage mtrClusterAdministratorCommissioning initSelector

-- | @+ new@
new :: IO (Id MTRClusterAdministratorCommissioning)
new  =
  do
    cls' <- getRequiredClass "MTRClusterAdministratorCommissioning"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterAdministratorCommissioning)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @openCommissioningWindowWithParams:expectedValues:expectedValueInterval:completionHandler:@
openCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRAdministratorCommissioningClusterOpenCommissioningWindowParams, Id NSArray, Id NSNumber, Ptr ()] ()
openCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "openCommissioningWindowWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @openBasicCommissioningWindowWithParams:expectedValues:expectedValueInterval:completionHandler:@
openBasicCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams, Id NSArray, Id NSNumber, Ptr ()] ()
openBasicCommissioningWindowWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "openBasicCommissioningWindowWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @revokeCommissioningWithParams:expectedValues:expectedValueInterval:completionHandler:@
revokeCommissioningWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRAdministratorCommissioningClusterRevokeCommissioningParams, Id NSArray, Id NSNumber, Ptr ()] ()
revokeCommissioningWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "revokeCommissioningWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @revokeCommissioningWithExpectedValues:expectedValueInterval:completionHandler:@
revokeCommissioningWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
revokeCommissioningWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "revokeCommissioningWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeWindowStatusWithParams:@
readAttributeWindowStatusWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeWindowStatusWithParamsSelector = mkSelector "readAttributeWindowStatusWithParams:"

-- | @Selector@ for @readAttributeAdminFabricIndexWithParams:@
readAttributeAdminFabricIndexWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeAdminFabricIndexWithParamsSelector = mkSelector "readAttributeAdminFabricIndexWithParams:"

-- | @Selector@ for @readAttributeAdminVendorIdWithParams:@
readAttributeAdminVendorIdWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeAdminVendorIdWithParamsSelector = mkSelector "readAttributeAdminVendorIdWithParams:"

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
initSelector :: Selector '[] (Id MTRClusterAdministratorCommissioning)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterAdministratorCommissioning)
newSelector = mkSelector "new"

