{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterGetCredentialStatusParams@.
module ObjC.Matter.MTRDoorLockClusterGetCredentialStatusParams
  ( MTRDoorLockClusterGetCredentialStatusParams
  , IsMTRDoorLockClusterGetCredentialStatusParams(..)
  , init_
  , copyWithZone
  , credential
  , setCredential
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , credentialSelector
  , initSelector
  , setCredentialSelector
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
init_ :: IsMTRDoorLockClusterGetCredentialStatusParams mtrDoorLockClusterGetCredentialStatusParams => mtrDoorLockClusterGetCredentialStatusParams -> IO (Id MTRDoorLockClusterGetCredentialStatusParams)
init_ mtrDoorLockClusterGetCredentialStatusParams =
  sendOwnedMessage mtrDoorLockClusterGetCredentialStatusParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterGetCredentialStatusParams mtrDoorLockClusterGetCredentialStatusParams => mtrDoorLockClusterGetCredentialStatusParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterGetCredentialStatusParams zone =
  sendOwnedMessage mtrDoorLockClusterGetCredentialStatusParams copyWithZoneSelector zone

-- | @- credential@
credential :: IsMTRDoorLockClusterGetCredentialStatusParams mtrDoorLockClusterGetCredentialStatusParams => mtrDoorLockClusterGetCredentialStatusParams -> IO (Id MTRDoorLockClusterDlCredential)
credential mtrDoorLockClusterGetCredentialStatusParams =
  sendMessage mtrDoorLockClusterGetCredentialStatusParams credentialSelector

-- | @- setCredential:@
setCredential :: (IsMTRDoorLockClusterGetCredentialStatusParams mtrDoorLockClusterGetCredentialStatusParams, IsMTRDoorLockClusterDlCredential value) => mtrDoorLockClusterGetCredentialStatusParams -> value -> IO ()
setCredential mtrDoorLockClusterGetCredentialStatusParams value =
  sendMessage mtrDoorLockClusterGetCredentialStatusParams setCredentialSelector (toMTRDoorLockClusterDlCredential value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterGetCredentialStatusParams mtrDoorLockClusterGetCredentialStatusParams => mtrDoorLockClusterGetCredentialStatusParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterGetCredentialStatusParams =
  sendMessage mtrDoorLockClusterGetCredentialStatusParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterGetCredentialStatusParams mtrDoorLockClusterGetCredentialStatusParams, IsNSNumber value) => mtrDoorLockClusterGetCredentialStatusParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterGetCredentialStatusParams value =
  sendMessage mtrDoorLockClusterGetCredentialStatusParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterGetCredentialStatusParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @credential@
credentialSelector :: Selector '[] (Id MTRDoorLockClusterDlCredential)
credentialSelector = mkSelector "credential"

-- | @Selector@ for @setCredential:@
setCredentialSelector :: Selector '[Id MTRDoorLockClusterDlCredential] ()
setCredentialSelector = mkSelector "setCredential:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

