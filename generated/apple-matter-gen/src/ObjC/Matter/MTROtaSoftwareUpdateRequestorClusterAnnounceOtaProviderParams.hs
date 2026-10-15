{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams@.
module ObjC.Matter.MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams
  ( MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams
  , IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams(..)
  , init_
  , copyWithZone
  , providerNodeId
  , setProviderNodeId
  , vendorId
  , setVendorId
  , announcementReason
  , setAnnouncementReason
  , metadataForNode
  , setMetadataForNode
  , endpoint
  , setEndpoint
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , announcementReasonSelector
  , copyWithZoneSelector
  , endpointSelector
  , initSelector
  , metadataForNodeSelector
  , providerNodeIdSelector
  , setAnnouncementReasonSelector
  , setEndpointSelector
  , setMetadataForNodeSelector
  , setProviderNodeIdSelector
  , setTimedInvokeTimeoutMsSelector
  , setVendorIdSelector
  , timedInvokeTimeoutMsSelector
  , vendorIdSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> IO (Id MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams)
init_ mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams zone =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams copyWithZoneSelector zone

-- | @- providerNodeId@
providerNodeId :: IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> IO (Id NSNumber)
providerNodeId mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams providerNodeIdSelector

-- | @- setProviderNodeId:@
setProviderNodeId :: (IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> value -> IO ()
setProviderNodeId mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams setProviderNodeIdSelector (toNSNumber value)

-- | @- vendorId@
vendorId :: IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> IO (Id NSNumber)
vendorId mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams vendorIdSelector

-- | @- setVendorId:@
setVendorId :: (IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> value -> IO ()
setVendorId mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams setVendorIdSelector (toNSNumber value)

-- | @- announcementReason@
announcementReason :: IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> IO (Id NSNumber)
announcementReason mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams announcementReasonSelector

-- | @- setAnnouncementReason:@
setAnnouncementReason :: (IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> value -> IO ()
setAnnouncementReason mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams setAnnouncementReasonSelector (toNSNumber value)

-- | @- metadataForNode@
metadataForNode :: IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> IO (Id NSData)
metadataForNode mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams metadataForNodeSelector

-- | @- setMetadataForNode:@
setMetadataForNode :: (IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams, IsNSData value) => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> value -> IO ()
setMetadataForNode mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams setMetadataForNodeSelector (toNSData value)

-- | @- endpoint@
endpoint :: IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> IO (Id NSNumber)
endpoint mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams endpointSelector

-- | @- setEndpoint:@
setEndpoint :: (IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> value -> IO ()
setEndpoint mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams setEndpointSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateRequestorClusterAnnounceOtaProviderParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @providerNodeId@
providerNodeIdSelector :: Selector '[] (Id NSNumber)
providerNodeIdSelector = mkSelector "providerNodeId"

-- | @Selector@ for @setProviderNodeId:@
setProviderNodeIdSelector :: Selector '[Id NSNumber] ()
setProviderNodeIdSelector = mkSelector "setProviderNodeId:"

-- | @Selector@ for @vendorId@
vendorIdSelector :: Selector '[] (Id NSNumber)
vendorIdSelector = mkSelector "vendorId"

-- | @Selector@ for @setVendorId:@
setVendorIdSelector :: Selector '[Id NSNumber] ()
setVendorIdSelector = mkSelector "setVendorId:"

-- | @Selector@ for @announcementReason@
announcementReasonSelector :: Selector '[] (Id NSNumber)
announcementReasonSelector = mkSelector "announcementReason"

-- | @Selector@ for @setAnnouncementReason:@
setAnnouncementReasonSelector :: Selector '[Id NSNumber] ()
setAnnouncementReasonSelector = mkSelector "setAnnouncementReason:"

-- | @Selector@ for @metadataForNode@
metadataForNodeSelector :: Selector '[] (Id NSData)
metadataForNodeSelector = mkSelector "metadataForNode"

-- | @Selector@ for @setMetadataForNode:@
setMetadataForNodeSelector :: Selector '[Id NSData] ()
setMetadataForNodeSelector = mkSelector "setMetadataForNode:"

-- | @Selector@ for @endpoint@
endpointSelector :: Selector '[] (Id NSNumber)
endpointSelector = mkSelector "endpoint"

-- | @Selector@ for @setEndpoint:@
setEndpointSelector :: Selector '[Id NSNumber] ()
setEndpointSelector = mkSelector "setEndpoint:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

