{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams@.
module ObjC.Matter.MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams
  ( MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams
  , IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams(..)
  , init_
  , copyWithZone
  , updateToken
  , setUpdateToken
  , softwareVersion
  , setSoftwareVersion
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , setSoftwareVersionSelector
  , setTimedInvokeTimeoutMsSelector
  , setUpdateTokenSelector
  , softwareVersionSelector
  , timedInvokeTimeoutMsSelector
  , updateTokenSelector


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
init_ :: IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams => mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams -> IO (Id MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams)
init_ mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams => mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams zone =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams copyWithZoneSelector zone

-- | @- updateToken@
updateToken :: IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams => mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams -> IO (Id NSData)
updateToken mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams updateTokenSelector

-- | @- setUpdateToken:@
setUpdateToken :: (IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams, IsNSData value) => mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams -> value -> IO ()
setUpdateToken mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams setUpdateTokenSelector (toNSData value)

-- | @- softwareVersion@
softwareVersion :: IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams => mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams -> IO (Id NSNumber)
softwareVersion mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams softwareVersionSelector

-- | @- setSoftwareVersion:@
setSoftwareVersion :: (IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams -> value -> IO ()
setSoftwareVersion mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams setSoftwareVersionSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams => mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateProviderClusterNotifyUpdateAppliedParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @updateToken@
updateTokenSelector :: Selector '[] (Id NSData)
updateTokenSelector = mkSelector "updateToken"

-- | @Selector@ for @setUpdateToken:@
setUpdateTokenSelector :: Selector '[Id NSData] ()
setUpdateTokenSelector = mkSelector "setUpdateToken:"

-- | @Selector@ for @softwareVersion@
softwareVersionSelector :: Selector '[] (Id NSNumber)
softwareVersionSelector = mkSelector "softwareVersion"

-- | @Selector@ for @setSoftwareVersion:@
setSoftwareVersionSelector :: Selector '[Id NSNumber] ()
setSoftwareVersionSelector = mkSelector "setSoftwareVersion:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

