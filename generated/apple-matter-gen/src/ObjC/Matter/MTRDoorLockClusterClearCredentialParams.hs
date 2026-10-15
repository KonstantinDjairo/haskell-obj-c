{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterClearCredentialParams@.
module ObjC.Matter.MTRDoorLockClusterClearCredentialParams
  ( MTRDoorLockClusterClearCredentialParams
  , IsMTRDoorLockClusterClearCredentialParams(..)
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
init_ :: IsMTRDoorLockClusterClearCredentialParams mtrDoorLockClusterClearCredentialParams => mtrDoorLockClusterClearCredentialParams -> IO (Id MTRDoorLockClusterClearCredentialParams)
init_ mtrDoorLockClusterClearCredentialParams =
  sendOwnedMessage mtrDoorLockClusterClearCredentialParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterClearCredentialParams mtrDoorLockClusterClearCredentialParams => mtrDoorLockClusterClearCredentialParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterClearCredentialParams zone =
  sendOwnedMessage mtrDoorLockClusterClearCredentialParams copyWithZoneSelector zone

-- | @- credential@
credential :: IsMTRDoorLockClusterClearCredentialParams mtrDoorLockClusterClearCredentialParams => mtrDoorLockClusterClearCredentialParams -> IO (Id MTRDoorLockClusterDlCredential)
credential mtrDoorLockClusterClearCredentialParams =
  sendMessage mtrDoorLockClusterClearCredentialParams credentialSelector

-- | @- setCredential:@
setCredential :: (IsMTRDoorLockClusterClearCredentialParams mtrDoorLockClusterClearCredentialParams, IsMTRDoorLockClusterDlCredential value) => mtrDoorLockClusterClearCredentialParams -> value -> IO ()
setCredential mtrDoorLockClusterClearCredentialParams value =
  sendMessage mtrDoorLockClusterClearCredentialParams setCredentialSelector (toMTRDoorLockClusterDlCredential value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterClearCredentialParams mtrDoorLockClusterClearCredentialParams => mtrDoorLockClusterClearCredentialParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterClearCredentialParams =
  sendMessage mtrDoorLockClusterClearCredentialParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterClearCredentialParams mtrDoorLockClusterClearCredentialParams, IsNSNumber value) => mtrDoorLockClusterClearCredentialParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterClearCredentialParams value =
  sendMessage mtrDoorLockClusterClearCredentialParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterClearCredentialParams)
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

