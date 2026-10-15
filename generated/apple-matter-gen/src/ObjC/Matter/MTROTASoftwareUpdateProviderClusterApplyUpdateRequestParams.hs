{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams@.
module ObjC.Matter.MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams
  ( MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams
  , IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams(..)
  , init_
  , copyWithZone
  , updateToken
  , setUpdateToken
  , newVersion
  , setNewVersion
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , newVersionSelector
  , setNewVersionSelector
  , setTimedInvokeTimeoutMsSelector
  , setUpdateTokenSelector
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
init_ :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams -> IO (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams)
init_ mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams zone =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams copyWithZoneSelector zone

-- | @- updateToken@
updateToken :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams -> IO (Id NSData)
updateToken mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams updateTokenSelector

-- | @- setUpdateToken:@
setUpdateToken :: (IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams, IsNSData value) => mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams -> value -> IO ()
setUpdateToken mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams setUpdateTokenSelector (toNSData value)

-- | @- newVersion@
newVersion :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams -> IO (Id NSNumber)
newVersion mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams newVersionSelector

-- | @- setNewVersion:@
setNewVersion :: (IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams -> value -> IO ()
setNewVersion mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams setNewVersionSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateRequestParams)
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

-- | @Selector@ for @newVersion@
newVersionSelector :: Selector '[] (Id NSNumber)
newVersionSelector = mkSelector "newVersion"

-- | @Selector@ for @setNewVersion:@
setNewVersionSelector :: Selector '[Id NSNumber] ()
setNewVersionSelector = mkSelector "setNewVersion:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

