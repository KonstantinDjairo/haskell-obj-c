{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterCSRResponseParams@.
module ObjC.Matter.MTROperationalCredentialsClusterCSRResponseParams
  ( MTROperationalCredentialsClusterCSRResponseParams
  , IsMTROperationalCredentialsClusterCSRResponseParams(..)
  , init_
  , copyWithZone
  , nocsrElements
  , setNocsrElements
  , attestationSignature
  , setAttestationSignature
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , attestationSignatureSelector
  , copyWithZoneSelector
  , initSelector
  , nocsrElementsSelector
  , setAttestationSignatureSelector
  , setNocsrElementsSelector
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
init_ :: IsMTROperationalCredentialsClusterCSRResponseParams mtrOperationalCredentialsClusterCSRResponseParams => mtrOperationalCredentialsClusterCSRResponseParams -> IO (Id MTROperationalCredentialsClusterCSRResponseParams)
init_ mtrOperationalCredentialsClusterCSRResponseParams =
  sendOwnedMessage mtrOperationalCredentialsClusterCSRResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterCSRResponseParams mtrOperationalCredentialsClusterCSRResponseParams => mtrOperationalCredentialsClusterCSRResponseParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterCSRResponseParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterCSRResponseParams copyWithZoneSelector zone

-- | @- nocsrElements@
nocsrElements :: IsMTROperationalCredentialsClusterCSRResponseParams mtrOperationalCredentialsClusterCSRResponseParams => mtrOperationalCredentialsClusterCSRResponseParams -> IO (Id NSData)
nocsrElements mtrOperationalCredentialsClusterCSRResponseParams =
  sendMessage mtrOperationalCredentialsClusterCSRResponseParams nocsrElementsSelector

-- | @- setNocsrElements:@
setNocsrElements :: (IsMTROperationalCredentialsClusterCSRResponseParams mtrOperationalCredentialsClusterCSRResponseParams, IsNSData value) => mtrOperationalCredentialsClusterCSRResponseParams -> value -> IO ()
setNocsrElements mtrOperationalCredentialsClusterCSRResponseParams value =
  sendMessage mtrOperationalCredentialsClusterCSRResponseParams setNocsrElementsSelector (toNSData value)

-- | @- attestationSignature@
attestationSignature :: IsMTROperationalCredentialsClusterCSRResponseParams mtrOperationalCredentialsClusterCSRResponseParams => mtrOperationalCredentialsClusterCSRResponseParams -> IO (Id NSData)
attestationSignature mtrOperationalCredentialsClusterCSRResponseParams =
  sendMessage mtrOperationalCredentialsClusterCSRResponseParams attestationSignatureSelector

-- | @- setAttestationSignature:@
setAttestationSignature :: (IsMTROperationalCredentialsClusterCSRResponseParams mtrOperationalCredentialsClusterCSRResponseParams, IsNSData value) => mtrOperationalCredentialsClusterCSRResponseParams -> value -> IO ()
setAttestationSignature mtrOperationalCredentialsClusterCSRResponseParams value =
  sendMessage mtrOperationalCredentialsClusterCSRResponseParams setAttestationSignatureSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterCSRResponseParams mtrOperationalCredentialsClusterCSRResponseParams => mtrOperationalCredentialsClusterCSRResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterCSRResponseParams =
  sendMessage mtrOperationalCredentialsClusterCSRResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterCSRResponseParams mtrOperationalCredentialsClusterCSRResponseParams, IsNSNumber value) => mtrOperationalCredentialsClusterCSRResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterCSRResponseParams value =
  sendMessage mtrOperationalCredentialsClusterCSRResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterCSRResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @nocsrElements@
nocsrElementsSelector :: Selector '[] (Id NSData)
nocsrElementsSelector = mkSelector "nocsrElements"

-- | @Selector@ for @setNocsrElements:@
setNocsrElementsSelector :: Selector '[Id NSData] ()
setNocsrElementsSelector = mkSelector "setNocsrElements:"

-- | @Selector@ for @attestationSignature@
attestationSignatureSelector :: Selector '[] (Id NSData)
attestationSignatureSelector = mkSelector "attestationSignature"

-- | @Selector@ for @setAttestationSignature:@
setAttestationSignatureSelector :: Selector '[Id NSData] ()
setAttestationSignatureSelector = mkSelector "setAttestationSignature:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

