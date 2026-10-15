{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Operational Credentials    This cluster is used to add or remove Operational Credentials on a Commissionee or Node, as well as manage the associated Fabrics.
--
-- Generated bindings for @MTRBaseClusterOperationalCredentials@.
module ObjC.Matter.MTRBaseClusterOperationalCredentials
  ( MTRBaseClusterOperationalCredentials
  , IsMTRBaseClusterOperationalCredentials(..)
  , initWithDevice_endpoint_queue
  , attestationRequestWithParams_completionHandler
  , certificateChainRequestWithParams_completionHandler
  , csrRequestWithParams_completionHandler
  , addNOCWithParams_completionHandler
  , updateNOCWithParams_completionHandler
  , updateFabricLabelWithParams_completionHandler
  , removeFabricWithParams_completionHandler
  , addTrustedRootCertificateWithParams_completionHandler
  , readAttributeNOCsWithParams_completionHandler
  , subscribeAttributeNOCsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeNOCsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeFabricsWithParams_completionHandler
  , subscribeAttributeFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeFabricsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSupportedFabricsWithCompletionHandler
  , subscribeAttributeSupportedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSupportedFabricsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCommissionedFabricsWithCompletionHandler
  , subscribeAttributeCommissionedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCommissionedFabricsWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeTrustedRootCertificatesWithCompletionHandler
  , subscribeAttributeTrustedRootCertificatesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeTrustedRootCertificatesWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeCurrentFabricIndexWithCompletionHandler
  , subscribeAttributeCurrentFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentFabricIndexWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeGeneratedCommandListWithCompletionHandler
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAcceptedCommandListWithCompletionHandler
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAttributeListWithCompletionHandler
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeFeatureMapWithCompletionHandler
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeClusterRevisionWithCompletionHandler
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler
  , init_
  , new
  , addNOCWithParams_completionHandlerSelector
  , addTrustedRootCertificateWithParams_completionHandlerSelector
  , attestationRequestWithParams_completionHandlerSelector
  , certificateChainRequestWithParams_completionHandlerSelector
  , csrRequestWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeCommissionedFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCommissionedFabricsWithCompletionHandlerSelector
  , readAttributeCurrentFabricIndexWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentFabricIndexWithCompletionHandlerSelector
  , readAttributeFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFabricsWithParams_completionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeNOCsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeNOCsWithParams_completionHandlerSelector
  , readAttributeSupportedFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSupportedFabricsWithCompletionHandlerSelector
  , readAttributeTrustedRootCertificatesWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeTrustedRootCertificatesWithCompletionHandlerSelector
  , removeFabricWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCommissionedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeNOCsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSupportedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeTrustedRootCertificatesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , updateFabricLabelWithParams_completionHandlerSelector
  , updateNOCWithParams_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterOperationalCredentials -> device -> CUShort -> queue -> IO (Id MTRBaseClusterOperationalCredentials)
initWithDevice_endpoint_queue mtrBaseClusterOperationalCredentials device endpoint queue =
  sendOwnedMessage mtrBaseClusterOperationalCredentials initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- attestationRequestWithParams:completionHandler:@
attestationRequestWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTROperationalCredentialsClusterAttestationRequestParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
attestationRequestWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials attestationRequestWithParams_completionHandlerSelector (toMTROperationalCredentialsClusterAttestationRequestParams params) completionHandler

-- | @- certificateChainRequestWithParams:completionHandler:@
certificateChainRequestWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTROperationalCredentialsClusterCertificateChainRequestParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
certificateChainRequestWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials certificateChainRequestWithParams_completionHandlerSelector (toMTROperationalCredentialsClusterCertificateChainRequestParams params) completionHandler

-- | @- CSRRequestWithParams:completionHandler:@
csrRequestWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTROperationalCredentialsClusterCSRRequestParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
csrRequestWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials csrRequestWithParams_completionHandlerSelector (toMTROperationalCredentialsClusterCSRRequestParams params) completionHandler

-- | @- addNOCWithParams:completionHandler:@
addNOCWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTROperationalCredentialsClusterAddNOCParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
addNOCWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials addNOCWithParams_completionHandlerSelector (toMTROperationalCredentialsClusterAddNOCParams params) completionHandler

-- | @- updateNOCWithParams:completionHandler:@
updateNOCWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTROperationalCredentialsClusterUpdateNOCParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
updateNOCWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials updateNOCWithParams_completionHandlerSelector (toMTROperationalCredentialsClusterUpdateNOCParams params) completionHandler

-- | @- updateFabricLabelWithParams:completionHandler:@
updateFabricLabelWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTROperationalCredentialsClusterUpdateFabricLabelParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
updateFabricLabelWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials updateFabricLabelWithParams_completionHandlerSelector (toMTROperationalCredentialsClusterUpdateFabricLabelParams params) completionHandler

-- | @- removeFabricWithParams:completionHandler:@
removeFabricWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTROperationalCredentialsClusterRemoveFabricParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
removeFabricWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials removeFabricWithParams_completionHandlerSelector (toMTROperationalCredentialsClusterRemoveFabricParams params) completionHandler

-- | @- addTrustedRootCertificateWithParams:completionHandler:@
addTrustedRootCertificateWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
addTrustedRootCertificateWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials addTrustedRootCertificateWithParams_completionHandlerSelector (toMTROperationalCredentialsClusterAddTrustedRootCertificateParams params) completionHandler

-- | @- readAttributeNOCsWithParams:completionHandler:@
readAttributeNOCsWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTRReadParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
readAttributeNOCsWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeNOCsWithParams_completionHandlerSelector (toMTRReadParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeNOCsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeNOCsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeNOCsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeNOCsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeNOCsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeNOCsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeNOCsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeNOCsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFabricsWithParams:completionHandler:@
readAttributeFabricsWithParams_completionHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsMTRReadParams params) => mtrBaseClusterOperationalCredentials -> params -> Ptr () -> IO ()
readAttributeFabricsWithParams_completionHandler mtrBaseClusterOperationalCredentials params completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeFabricsWithParams_completionHandlerSelector (toMTRReadParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFabricsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFabricsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFabricsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSupportedFabricsWithCompletionHandler:@
readAttributeSupportedFabricsWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeSupportedFabricsWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeSupportedFabricsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSupportedFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSupportedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSupportedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeSupportedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSupportedFabricsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSupportedFabricsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSupportedFabricsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeSupportedFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCommissionedFabricsWithCompletionHandler:@
readAttributeCommissionedFabricsWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeCommissionedFabricsWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeCommissionedFabricsWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCommissionedFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCommissionedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCommissionedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeCommissionedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCommissionedFabricsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCommissionedFabricsWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCommissionedFabricsWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeCommissionedFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeTrustedRootCertificatesWithCompletionHandler:@
readAttributeTrustedRootCertificatesWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeTrustedRootCertificatesWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeTrustedRootCertificatesWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeTrustedRootCertificatesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTrustedRootCertificatesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeTrustedRootCertificatesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeTrustedRootCertificatesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeTrustedRootCertificatesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTrustedRootCertificatesWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeTrustedRootCertificatesWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeTrustedRootCertificatesWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeCurrentFabricIndexWithCompletionHandler:@
readAttributeCurrentFabricIndexWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeCurrentFabricIndexWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeCurrentFabricIndexWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentFabricIndexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeCurrentFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentFabricIndexWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentFabricIndexWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentFabricIndexWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeCurrentFabricIndexWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterOperationalCredentials completionHandler =
  sendMessage mtrBaseClusterOperationalCredentials readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOperationalCredentials -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOperationalCredentials minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOperationalCredentials subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterOperationalCredentials mtrBaseClusterOperationalCredentials => mtrBaseClusterOperationalCredentials -> IO (Id MTRBaseClusterOperationalCredentials)
init_ mtrBaseClusterOperationalCredentials =
  sendOwnedMessage mtrBaseClusterOperationalCredentials initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterOperationalCredentials)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterOperationalCredentials"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterOperationalCredentials)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @attestationRequestWithParams:completionHandler:@
attestationRequestWithParams_completionHandlerSelector :: Selector '[Id MTROperationalCredentialsClusterAttestationRequestParams, Ptr ()] ()
attestationRequestWithParams_completionHandlerSelector = mkSelector "attestationRequestWithParams:completionHandler:"

-- | @Selector@ for @certificateChainRequestWithParams:completionHandler:@
certificateChainRequestWithParams_completionHandlerSelector :: Selector '[Id MTROperationalCredentialsClusterCertificateChainRequestParams, Ptr ()] ()
certificateChainRequestWithParams_completionHandlerSelector = mkSelector "certificateChainRequestWithParams:completionHandler:"

-- | @Selector@ for @CSRRequestWithParams:completionHandler:@
csrRequestWithParams_completionHandlerSelector :: Selector '[Id MTROperationalCredentialsClusterCSRRequestParams, Ptr ()] ()
csrRequestWithParams_completionHandlerSelector = mkSelector "CSRRequestWithParams:completionHandler:"

-- | @Selector@ for @addNOCWithParams:completionHandler:@
addNOCWithParams_completionHandlerSelector :: Selector '[Id MTROperationalCredentialsClusterAddNOCParams, Ptr ()] ()
addNOCWithParams_completionHandlerSelector = mkSelector "addNOCWithParams:completionHandler:"

-- | @Selector@ for @updateNOCWithParams:completionHandler:@
updateNOCWithParams_completionHandlerSelector :: Selector '[Id MTROperationalCredentialsClusterUpdateNOCParams, Ptr ()] ()
updateNOCWithParams_completionHandlerSelector = mkSelector "updateNOCWithParams:completionHandler:"

-- | @Selector@ for @updateFabricLabelWithParams:completionHandler:@
updateFabricLabelWithParams_completionHandlerSelector :: Selector '[Id MTROperationalCredentialsClusterUpdateFabricLabelParams, Ptr ()] ()
updateFabricLabelWithParams_completionHandlerSelector = mkSelector "updateFabricLabelWithParams:completionHandler:"

-- | @Selector@ for @removeFabricWithParams:completionHandler:@
removeFabricWithParams_completionHandlerSelector :: Selector '[Id MTROperationalCredentialsClusterRemoveFabricParams, Ptr ()] ()
removeFabricWithParams_completionHandlerSelector = mkSelector "removeFabricWithParams:completionHandler:"

-- | @Selector@ for @addTrustedRootCertificateWithParams:completionHandler:@
addTrustedRootCertificateWithParams_completionHandlerSelector :: Selector '[Id MTROperationalCredentialsClusterAddTrustedRootCertificateParams, Ptr ()] ()
addTrustedRootCertificateWithParams_completionHandlerSelector = mkSelector "addTrustedRootCertificateWithParams:completionHandler:"

-- | @Selector@ for @readAttributeNOCsWithParams:completionHandler:@
readAttributeNOCsWithParams_completionHandlerSelector :: Selector '[Id MTRReadParams, Ptr ()] ()
readAttributeNOCsWithParams_completionHandlerSelector = mkSelector "readAttributeNOCsWithParams:completionHandler:"

-- | @Selector@ for @subscribeAttributeNOCsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeNOCsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeNOCsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeNOCsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeNOCsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeNOCsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeNOCsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeNOCsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeFabricsWithParams:completionHandler:@
readAttributeFabricsWithParams_completionHandlerSelector :: Selector '[Id MTRReadParams, Ptr ()] ()
readAttributeFabricsWithParams_completionHandlerSelector = mkSelector "readAttributeFabricsWithParams:completionHandler:"

-- | @Selector@ for @subscribeAttributeFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeFabricsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeFabricsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSupportedFabricsWithCompletionHandler:@
readAttributeSupportedFabricsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSupportedFabricsWithCompletionHandlerSelector = mkSelector "readAttributeSupportedFabricsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSupportedFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSupportedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSupportedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSupportedFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSupportedFabricsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSupportedFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSupportedFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSupportedFabricsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCommissionedFabricsWithCompletionHandler:@
readAttributeCommissionedFabricsWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCommissionedFabricsWithCompletionHandlerSelector = mkSelector "readAttributeCommissionedFabricsWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCommissionedFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCommissionedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCommissionedFabricsWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCommissionedFabricsWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCommissionedFabricsWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCommissionedFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCommissionedFabricsWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCommissionedFabricsWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeTrustedRootCertificatesWithCompletionHandler:@
readAttributeTrustedRootCertificatesWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeTrustedRootCertificatesWithCompletionHandlerSelector = mkSelector "readAttributeTrustedRootCertificatesWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeTrustedRootCertificatesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeTrustedRootCertificatesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeTrustedRootCertificatesWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeTrustedRootCertificatesWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeTrustedRootCertificatesWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeTrustedRootCertificatesWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeTrustedRootCertificatesWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeTrustedRootCertificatesWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeCurrentFabricIndexWithCompletionHandler:@
readAttributeCurrentFabricIndexWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentFabricIndexWithCompletionHandlerSelector = mkSelector "readAttributeCurrentFabricIndexWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentFabricIndexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentFabricIndexWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentFabricIndexWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentFabricIndexWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentFabricIndexWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentFabricIndexWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentFabricIndexWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeGeneratedCommandListWithCompletionHandlerSelector = mkSelector "readAttributeGeneratedCommandListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAcceptedCommandListWithCompletionHandlerSelector = mkSelector "readAttributeAcceptedCommandListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAttributeListWithCompletionHandlerSelector = mkSelector "readAttributeAttributeListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeFeatureMapWithCompletionHandlerSelector = mkSelector "readAttributeFeatureMapWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeClusterRevisionWithCompletionHandlerSelector = mkSelector "readAttributeClusterRevisionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBaseClusterOperationalCredentials)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterOperationalCredentials)
newSelector = mkSelector "new"

