{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams@.
module ObjC.Matter.MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams
  ( MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams
  , IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , delayedActionTime
  , setDelayedActionTime
  , imageURI
  , setImageURI
  , softwareVersion
  , setSoftwareVersion
  , softwareVersionString
  , setSoftwareVersionString
  , updateToken
  , setUpdateToken
  , userConsentNeeded
  , setUserConsentNeeded
  , metadataForRequestor
  , setMetadataForRequestor
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , delayedActionTimeSelector
  , imageURISelector
  , initSelector
  , metadataForRequestorSelector
  , setDelayedActionTimeSelector
  , setImageURISelector
  , setMetadataForRequestorSelector
  , setSoftwareVersionSelector
  , setSoftwareVersionStringSelector
  , setStatusSelector
  , setTimedInvokeTimeoutMsSelector
  , setUpdateTokenSelector
  , setUserConsentNeededSelector
  , softwareVersionSelector
  , softwareVersionStringSelector
  , statusSelector
  , timedInvokeTimeoutMsSelector
  , updateTokenSelector
  , userConsentNeededSelector


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
init_ :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams)
init_ mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams zone =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSNumber)
status mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setStatus mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setStatusSelector (toNSNumber value)

-- | @- delayedActionTime@
delayedActionTime :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSNumber)
delayedActionTime mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams delayedActionTimeSelector

-- | @- setDelayedActionTime:@
setDelayedActionTime :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setDelayedActionTime mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setDelayedActionTimeSelector (toNSNumber value)

-- | @- imageURI@
imageURI :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSString)
imageURI mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams imageURISelector

-- | @- setImageURI:@
setImageURI :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSString value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setImageURI mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setImageURISelector (toNSString value)

-- | @- softwareVersion@
softwareVersion :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSNumber)
softwareVersion mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams softwareVersionSelector

-- | @- setSoftwareVersion:@
setSoftwareVersion :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setSoftwareVersion mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setSoftwareVersionSelector (toNSNumber value)

-- | @- softwareVersionString@
softwareVersionString :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSString)
softwareVersionString mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams softwareVersionStringSelector

-- | @- setSoftwareVersionString:@
setSoftwareVersionString :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSString value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setSoftwareVersionString mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setSoftwareVersionStringSelector (toNSString value)

-- | @- updateToken@
updateToken :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSData)
updateToken mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams updateTokenSelector

-- | @- setUpdateToken:@
setUpdateToken :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSData value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setUpdateToken mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setUpdateTokenSelector (toNSData value)

-- | @- userConsentNeeded@
userConsentNeeded :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSNumber)
userConsentNeeded mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams userConsentNeededSelector

-- | @- setUserConsentNeeded:@
setUserConsentNeeded :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setUserConsentNeeded mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setUserConsentNeededSelector (toNSNumber value)

-- | @- metadataForRequestor@
metadataForRequestor :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSData)
metadataForRequestor mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams metadataForRequestorSelector

-- | @- setMetadataForRequestor:@
setMetadataForRequestor :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSData value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setMetadataForRequestor mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setMetadataForRequestorSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROtaSoftwareUpdateProviderClusterQueryImageResponseParams mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterQueryImageResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateProviderClusterQueryImageResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @status@
statusSelector :: Selector '[] (Id NSNumber)
statusSelector = mkSelector "status"

-- | @Selector@ for @setStatus:@
setStatusSelector :: Selector '[Id NSNumber] ()
setStatusSelector = mkSelector "setStatus:"

-- | @Selector@ for @delayedActionTime@
delayedActionTimeSelector :: Selector '[] (Id NSNumber)
delayedActionTimeSelector = mkSelector "delayedActionTime"

-- | @Selector@ for @setDelayedActionTime:@
setDelayedActionTimeSelector :: Selector '[Id NSNumber] ()
setDelayedActionTimeSelector = mkSelector "setDelayedActionTime:"

-- | @Selector@ for @imageURI@
imageURISelector :: Selector '[] (Id NSString)
imageURISelector = mkSelector "imageURI"

-- | @Selector@ for @setImageURI:@
setImageURISelector :: Selector '[Id NSString] ()
setImageURISelector = mkSelector "setImageURI:"

-- | @Selector@ for @softwareVersion@
softwareVersionSelector :: Selector '[] (Id NSNumber)
softwareVersionSelector = mkSelector "softwareVersion"

-- | @Selector@ for @setSoftwareVersion:@
setSoftwareVersionSelector :: Selector '[Id NSNumber] ()
setSoftwareVersionSelector = mkSelector "setSoftwareVersion:"

-- | @Selector@ for @softwareVersionString@
softwareVersionStringSelector :: Selector '[] (Id NSString)
softwareVersionStringSelector = mkSelector "softwareVersionString"

-- | @Selector@ for @setSoftwareVersionString:@
setSoftwareVersionStringSelector :: Selector '[Id NSString] ()
setSoftwareVersionStringSelector = mkSelector "setSoftwareVersionString:"

-- | @Selector@ for @updateToken@
updateTokenSelector :: Selector '[] (Id NSData)
updateTokenSelector = mkSelector "updateToken"

-- | @Selector@ for @setUpdateToken:@
setUpdateTokenSelector :: Selector '[Id NSData] ()
setUpdateTokenSelector = mkSelector "setUpdateToken:"

-- | @Selector@ for @userConsentNeeded@
userConsentNeededSelector :: Selector '[] (Id NSNumber)
userConsentNeededSelector = mkSelector "userConsentNeeded"

-- | @Selector@ for @setUserConsentNeeded:@
setUserConsentNeededSelector :: Selector '[Id NSNumber] ()
setUserConsentNeededSelector = mkSelector "setUserConsentNeeded:"

-- | @Selector@ for @metadataForRequestor@
metadataForRequestorSelector :: Selector '[] (Id NSData)
metadataForRequestorSelector = mkSelector "metadataForRequestor"

-- | @Selector@ for @setMetadataForRequestor:@
setMetadataForRequestorSelector :: Selector '[Id NSData] ()
setMetadataForRequestorSelector = mkSelector "setMetadataForRequestor:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

