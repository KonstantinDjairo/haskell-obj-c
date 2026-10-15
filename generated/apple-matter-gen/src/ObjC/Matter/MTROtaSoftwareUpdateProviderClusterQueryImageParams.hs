{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateProviderClusterQueryImageParams@.
module ObjC.Matter.MTROtaSoftwareUpdateProviderClusterQueryImageParams
  ( MTROtaSoftwareUpdateProviderClusterQueryImageParams
  , IsMTROtaSoftwareUpdateProviderClusterQueryImageParams(..)
  , init_
  , copyWithZone
  , vendorId
  , setVendorId
  , productId
  , setProductId
  , softwareVersion
  , setSoftwareVersion
  , protocolsSupported
  , setProtocolsSupported
  , hardwareVersion
  , setHardwareVersion
  , location
  , setLocation
  , requestorCanConsent
  , setRequestorCanConsent
  , metadataForProvider
  , setMetadataForProvider
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , hardwareVersionSelector
  , initSelector
  , locationSelector
  , metadataForProviderSelector
  , productIdSelector
  , protocolsSupportedSelector
  , requestorCanConsentSelector
  , setHardwareVersionSelector
  , setLocationSelector
  , setMetadataForProviderSelector
  , setProductIdSelector
  , setProtocolsSupportedSelector
  , setRequestorCanConsentSelector
  , setSoftwareVersionSelector
  , setTimedInvokeTimeoutMsSelector
  , setVendorIdSelector
  , softwareVersionSelector
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
init_ :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id MTROtaSoftwareUpdateProviderClusterQueryImageParams)
init_ mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateProviderClusterQueryImageParams zone =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams copyWithZoneSelector zone

-- | @- vendorId@
vendorId :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSNumber)
vendorId mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams vendorIdSelector

-- | @- setVendorId:@
setVendorId :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setVendorId mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setVendorIdSelector (toNSNumber value)

-- | @- productId@
productId :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSNumber)
productId mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams productIdSelector

-- | @- setProductId:@
setProductId :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setProductId mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setProductIdSelector (toNSNumber value)

-- | @- softwareVersion@
softwareVersion :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSNumber)
softwareVersion mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams softwareVersionSelector

-- | @- setSoftwareVersion:@
setSoftwareVersion :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setSoftwareVersion mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setSoftwareVersionSelector (toNSNumber value)

-- | @- protocolsSupported@
protocolsSupported :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSArray)
protocolsSupported mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams protocolsSupportedSelector

-- | @- setProtocolsSupported:@
setProtocolsSupported :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSArray value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setProtocolsSupported mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setProtocolsSupportedSelector (toNSArray value)

-- | @- hardwareVersion@
hardwareVersion :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSNumber)
hardwareVersion mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams hardwareVersionSelector

-- | @- setHardwareVersion:@
setHardwareVersion :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setHardwareVersion mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setHardwareVersionSelector (toNSNumber value)

-- | @- location@
location :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSString)
location mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams locationSelector

-- | @- setLocation:@
setLocation :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSString value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setLocation mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setLocationSelector (toNSString value)

-- | @- requestorCanConsent@
requestorCanConsent :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSNumber)
requestorCanConsent mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams requestorCanConsentSelector

-- | @- setRequestorCanConsent:@
setRequestorCanConsent :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setRequestorCanConsent mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setRequestorCanConsentSelector (toNSNumber value)

-- | @- metadataForProvider@
metadataForProvider :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSData)
metadataForProvider mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams metadataForProviderSelector

-- | @- setMetadataForProvider:@
setMetadataForProvider :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSData value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setMetadataForProvider mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setMetadataForProviderSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterQueryImageParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageParams mtrOtaSoftwareUpdateProviderClusterQueryImageParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterQueryImageParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateProviderClusterQueryImageParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @vendorId@
vendorIdSelector :: Selector '[] (Id NSNumber)
vendorIdSelector = mkSelector "vendorId"

-- | @Selector@ for @setVendorId:@
setVendorIdSelector :: Selector '[Id NSNumber] ()
setVendorIdSelector = mkSelector "setVendorId:"

-- | @Selector@ for @productId@
productIdSelector :: Selector '[] (Id NSNumber)
productIdSelector = mkSelector "productId"

-- | @Selector@ for @setProductId:@
setProductIdSelector :: Selector '[Id NSNumber] ()
setProductIdSelector = mkSelector "setProductId:"

-- | @Selector@ for @softwareVersion@
softwareVersionSelector :: Selector '[] (Id NSNumber)
softwareVersionSelector = mkSelector "softwareVersion"

-- | @Selector@ for @setSoftwareVersion:@
setSoftwareVersionSelector :: Selector '[Id NSNumber] ()
setSoftwareVersionSelector = mkSelector "setSoftwareVersion:"

-- | @Selector@ for @protocolsSupported@
protocolsSupportedSelector :: Selector '[] (Id NSArray)
protocolsSupportedSelector = mkSelector "protocolsSupported"

-- | @Selector@ for @setProtocolsSupported:@
setProtocolsSupportedSelector :: Selector '[Id NSArray] ()
setProtocolsSupportedSelector = mkSelector "setProtocolsSupported:"

-- | @Selector@ for @hardwareVersion@
hardwareVersionSelector :: Selector '[] (Id NSNumber)
hardwareVersionSelector = mkSelector "hardwareVersion"

-- | @Selector@ for @setHardwareVersion:@
setHardwareVersionSelector :: Selector '[Id NSNumber] ()
setHardwareVersionSelector = mkSelector "setHardwareVersion:"

-- | @Selector@ for @location@
locationSelector :: Selector '[] (Id NSString)
locationSelector = mkSelector "location"

-- | @Selector@ for @setLocation:@
setLocationSelector :: Selector '[Id NSString] ()
setLocationSelector = mkSelector "setLocation:"

-- | @Selector@ for @requestorCanConsent@
requestorCanConsentSelector :: Selector '[] (Id NSNumber)
requestorCanConsentSelector = mkSelector "requestorCanConsent"

-- | @Selector@ for @setRequestorCanConsent:@
setRequestorCanConsentSelector :: Selector '[Id NSNumber] ()
setRequestorCanConsentSelector = mkSelector "setRequestorCanConsent:"

-- | @Selector@ for @metadataForProvider@
metadataForProviderSelector :: Selector '[] (Id NSData)
metadataForProviderSelector = mkSelector "metadataForProvider"

-- | @Selector@ for @setMetadataForProvider:@
setMetadataForProviderSelector :: Selector '[Id NSData] ()
setMetadataForProviderSelector = mkSelector "setMetadataForProvider:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

