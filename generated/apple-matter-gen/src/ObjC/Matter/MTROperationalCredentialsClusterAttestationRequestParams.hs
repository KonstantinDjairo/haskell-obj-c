{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterAttestationRequestParams@.
module ObjC.Matter.MTROperationalCredentialsClusterAttestationRequestParams
  ( MTROperationalCredentialsClusterAttestationRequestParams
  , IsMTROperationalCredentialsClusterAttestationRequestParams(..)
  , init_
  , copyWithZone
  , attestationNonce
  , setAttestationNonce
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , attestationNonceSelector
  , copyWithZoneSelector
  , initSelector
  , setAttestationNonceSelector
  , setTimedInvokeTimeoutMsSelector
  , timedInvokeTimeoutMsSelector


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
init_ :: IsMTROperationalCredentialsClusterAttestationRequestParams mtrOperationalCredentialsClusterAttestationRequestParams => mtrOperationalCredentialsClusterAttestationRequestParams -> IO (Id MTROperationalCredentialsClusterAttestationRequestParams)
init_ mtrOperationalCredentialsClusterAttestationRequestParams =
  sendOwnedMessage mtrOperationalCredentialsClusterAttestationRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterAttestationRequestParams mtrOperationalCredentialsClusterAttestationRequestParams => mtrOperationalCredentialsClusterAttestationRequestParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterAttestationRequestParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterAttestationRequestParams copyWithZoneSelector zone

-- | @- attestationNonce@
attestationNonce :: IsMTROperationalCredentialsClusterAttestationRequestParams mtrOperationalCredentialsClusterAttestationRequestParams => mtrOperationalCredentialsClusterAttestationRequestParams -> IO (Id NSData)
attestationNonce mtrOperationalCredentialsClusterAttestationRequestParams =
  sendMessage mtrOperationalCredentialsClusterAttestationRequestParams attestationNonceSelector

-- | @- setAttestationNonce:@
setAttestationNonce :: (IsMTROperationalCredentialsClusterAttestationRequestParams mtrOperationalCredentialsClusterAttestationRequestParams, IsNSData value) => mtrOperationalCredentialsClusterAttestationRequestParams -> value -> IO ()
setAttestationNonce mtrOperationalCredentialsClusterAttestationRequestParams value =
  sendMessage mtrOperationalCredentialsClusterAttestationRequestParams setAttestationNonceSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterAttestationRequestParams mtrOperationalCredentialsClusterAttestationRequestParams => mtrOperationalCredentialsClusterAttestationRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterAttestationRequestParams =
  sendMessage mtrOperationalCredentialsClusterAttestationRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterAttestationRequestParams mtrOperationalCredentialsClusterAttestationRequestParams, IsNSNumber value) => mtrOperationalCredentialsClusterAttestationRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterAttestationRequestParams value =
  sendMessage mtrOperationalCredentialsClusterAttestationRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterAttestationRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @attestationNonce@
attestationNonceSelector :: Selector '[] (Id NSData)
attestationNonceSelector = mkSelector "attestationNonce"

-- | @Selector@ for @setAttestationNonce:@
setAttestationNonceSelector :: Selector '[Id NSData] ()
setAttestationNonceSelector = mkSelector "setAttestationNonce:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

