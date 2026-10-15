{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterAttestationResponseParams@.
module ObjC.Matter.MTROperationalCredentialsClusterAttestationResponseParams
  ( MTROperationalCredentialsClusterAttestationResponseParams
  , IsMTROperationalCredentialsClusterAttestationResponseParams(..)
  , init_
  , copyWithZone
  , attestationElements
  , setAttestationElements
  , signature
  , setSignature
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , attestationElementsSelector
  , copyWithZoneSelector
  , initSelector
  , setAttestationElementsSelector
  , setSignatureSelector
  , setTimedInvokeTimeoutMsSelector
  , signatureSelector
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
init_ :: IsMTROperationalCredentialsClusterAttestationResponseParams mtrOperationalCredentialsClusterAttestationResponseParams => mtrOperationalCredentialsClusterAttestationResponseParams -> IO (Id MTROperationalCredentialsClusterAttestationResponseParams)
init_ mtrOperationalCredentialsClusterAttestationResponseParams =
  sendOwnedMessage mtrOperationalCredentialsClusterAttestationResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterAttestationResponseParams mtrOperationalCredentialsClusterAttestationResponseParams => mtrOperationalCredentialsClusterAttestationResponseParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterAttestationResponseParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterAttestationResponseParams copyWithZoneSelector zone

-- | @- attestationElements@
attestationElements :: IsMTROperationalCredentialsClusterAttestationResponseParams mtrOperationalCredentialsClusterAttestationResponseParams => mtrOperationalCredentialsClusterAttestationResponseParams -> IO (Id NSData)
attestationElements mtrOperationalCredentialsClusterAttestationResponseParams =
  sendMessage mtrOperationalCredentialsClusterAttestationResponseParams attestationElementsSelector

-- | @- setAttestationElements:@
setAttestationElements :: (IsMTROperationalCredentialsClusterAttestationResponseParams mtrOperationalCredentialsClusterAttestationResponseParams, IsNSData value) => mtrOperationalCredentialsClusterAttestationResponseParams -> value -> IO ()
setAttestationElements mtrOperationalCredentialsClusterAttestationResponseParams value =
  sendMessage mtrOperationalCredentialsClusterAttestationResponseParams setAttestationElementsSelector (toNSData value)

-- | @- signature@
signature :: IsMTROperationalCredentialsClusterAttestationResponseParams mtrOperationalCredentialsClusterAttestationResponseParams => mtrOperationalCredentialsClusterAttestationResponseParams -> IO (Id NSData)
signature mtrOperationalCredentialsClusterAttestationResponseParams =
  sendMessage mtrOperationalCredentialsClusterAttestationResponseParams signatureSelector

-- | @- setSignature:@
setSignature :: (IsMTROperationalCredentialsClusterAttestationResponseParams mtrOperationalCredentialsClusterAttestationResponseParams, IsNSData value) => mtrOperationalCredentialsClusterAttestationResponseParams -> value -> IO ()
setSignature mtrOperationalCredentialsClusterAttestationResponseParams value =
  sendMessage mtrOperationalCredentialsClusterAttestationResponseParams setSignatureSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterAttestationResponseParams mtrOperationalCredentialsClusterAttestationResponseParams => mtrOperationalCredentialsClusterAttestationResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterAttestationResponseParams =
  sendMessage mtrOperationalCredentialsClusterAttestationResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterAttestationResponseParams mtrOperationalCredentialsClusterAttestationResponseParams, IsNSNumber value) => mtrOperationalCredentialsClusterAttestationResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterAttestationResponseParams value =
  sendMessage mtrOperationalCredentialsClusterAttestationResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterAttestationResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @attestationElements@
attestationElementsSelector :: Selector '[] (Id NSData)
attestationElementsSelector = mkSelector "attestationElements"

-- | @Selector@ for @setAttestationElements:@
setAttestationElementsSelector :: Selector '[Id NSData] ()
setAttestationElementsSelector = mkSelector "setAttestationElements:"

-- | @Selector@ for @signature@
signatureSelector :: Selector '[] (Id NSData)
signatureSelector = mkSelector "signature"

-- | @Selector@ for @setSignature:@
setSignatureSelector :: Selector '[Id NSData] ()
setSignatureSelector = mkSelector "setSignature:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

