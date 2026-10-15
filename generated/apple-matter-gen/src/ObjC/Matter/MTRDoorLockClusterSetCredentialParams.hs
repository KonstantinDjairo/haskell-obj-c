{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterSetCredentialParams@.
module ObjC.Matter.MTRDoorLockClusterSetCredentialParams
  ( MTRDoorLockClusterSetCredentialParams
  , IsMTRDoorLockClusterSetCredentialParams(..)
  , init_
  , copyWithZone
  , operationType
  , setOperationType
  , credential
  , setCredential
  , credentialData
  , setCredentialData
  , userIndex
  , setUserIndex
  , userStatus
  , setUserStatus
  , userType
  , setUserType
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , credentialDataSelector
  , credentialSelector
  , initSelector
  , operationTypeSelector
  , setCredentialDataSelector
  , setCredentialSelector
  , setOperationTypeSelector
  , setTimedInvokeTimeoutMsSelector
  , setUserIndexSelector
  , setUserStatusSelector
  , setUserTypeSelector
  , timedInvokeTimeoutMsSelector
  , userIndexSelector
  , userStatusSelector
  , userTypeSelector


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
init_ :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> IO (Id MTRDoorLockClusterSetCredentialParams)
init_ mtrDoorLockClusterSetCredentialParams =
  sendOwnedMessage mtrDoorLockClusterSetCredentialParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterSetCredentialParams zone =
  sendOwnedMessage mtrDoorLockClusterSetCredentialParams copyWithZoneSelector zone

-- | @- operationType@
operationType :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> IO (Id NSNumber)
operationType mtrDoorLockClusterSetCredentialParams =
  sendMessage mtrDoorLockClusterSetCredentialParams operationTypeSelector

-- | @- setOperationType:@
setOperationType :: (IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialParams -> value -> IO ()
setOperationType mtrDoorLockClusterSetCredentialParams value =
  sendMessage mtrDoorLockClusterSetCredentialParams setOperationTypeSelector (toNSNumber value)

-- | @- credential@
credential :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> IO (Id MTRDoorLockClusterDlCredential)
credential mtrDoorLockClusterSetCredentialParams =
  sendMessage mtrDoorLockClusterSetCredentialParams credentialSelector

-- | @- setCredential:@
setCredential :: (IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams, IsMTRDoorLockClusterDlCredential value) => mtrDoorLockClusterSetCredentialParams -> value -> IO ()
setCredential mtrDoorLockClusterSetCredentialParams value =
  sendMessage mtrDoorLockClusterSetCredentialParams setCredentialSelector (toMTRDoorLockClusterDlCredential value)

-- | @- credentialData@
credentialData :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> IO (Id NSData)
credentialData mtrDoorLockClusterSetCredentialParams =
  sendMessage mtrDoorLockClusterSetCredentialParams credentialDataSelector

-- | @- setCredentialData:@
setCredentialData :: (IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams, IsNSData value) => mtrDoorLockClusterSetCredentialParams -> value -> IO ()
setCredentialData mtrDoorLockClusterSetCredentialParams value =
  sendMessage mtrDoorLockClusterSetCredentialParams setCredentialDataSelector (toNSData value)

-- | @- userIndex@
userIndex :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> IO (Id NSNumber)
userIndex mtrDoorLockClusterSetCredentialParams =
  sendMessage mtrDoorLockClusterSetCredentialParams userIndexSelector

-- | @- setUserIndex:@
setUserIndex :: (IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialParams -> value -> IO ()
setUserIndex mtrDoorLockClusterSetCredentialParams value =
  sendMessage mtrDoorLockClusterSetCredentialParams setUserIndexSelector (toNSNumber value)

-- | @- userStatus@
userStatus :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> IO (Id NSNumber)
userStatus mtrDoorLockClusterSetCredentialParams =
  sendMessage mtrDoorLockClusterSetCredentialParams userStatusSelector

-- | @- setUserStatus:@
setUserStatus :: (IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialParams -> value -> IO ()
setUserStatus mtrDoorLockClusterSetCredentialParams value =
  sendMessage mtrDoorLockClusterSetCredentialParams setUserStatusSelector (toNSNumber value)

-- | @- userType@
userType :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> IO (Id NSNumber)
userType mtrDoorLockClusterSetCredentialParams =
  sendMessage mtrDoorLockClusterSetCredentialParams userTypeSelector

-- | @- setUserType:@
setUserType :: (IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialParams -> value -> IO ()
setUserType mtrDoorLockClusterSetCredentialParams value =
  sendMessage mtrDoorLockClusterSetCredentialParams setUserTypeSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams => mtrDoorLockClusterSetCredentialParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterSetCredentialParams =
  sendMessage mtrDoorLockClusterSetCredentialParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterSetCredentialParams mtrDoorLockClusterSetCredentialParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterSetCredentialParams value =
  sendMessage mtrDoorLockClusterSetCredentialParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterSetCredentialParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @operationType@
operationTypeSelector :: Selector '[] (Id NSNumber)
operationTypeSelector = mkSelector "operationType"

-- | @Selector@ for @setOperationType:@
setOperationTypeSelector :: Selector '[Id NSNumber] ()
setOperationTypeSelector = mkSelector "setOperationType:"

-- | @Selector@ for @credential@
credentialSelector :: Selector '[] (Id MTRDoorLockClusterDlCredential)
credentialSelector = mkSelector "credential"

-- | @Selector@ for @setCredential:@
setCredentialSelector :: Selector '[Id MTRDoorLockClusterDlCredential] ()
setCredentialSelector = mkSelector "setCredential:"

-- | @Selector@ for @credentialData@
credentialDataSelector :: Selector '[] (Id NSData)
credentialDataSelector = mkSelector "credentialData"

-- | @Selector@ for @setCredentialData:@
setCredentialDataSelector :: Selector '[Id NSData] ()
setCredentialDataSelector = mkSelector "setCredentialData:"

-- | @Selector@ for @userIndex@
userIndexSelector :: Selector '[] (Id NSNumber)
userIndexSelector = mkSelector "userIndex"

-- | @Selector@ for @setUserIndex:@
setUserIndexSelector :: Selector '[Id NSNumber] ()
setUserIndexSelector = mkSelector "setUserIndex:"

-- | @Selector@ for @userStatus@
userStatusSelector :: Selector '[] (Id NSNumber)
userStatusSelector = mkSelector "userStatus"

-- | @Selector@ for @setUserStatus:@
setUserStatusSelector :: Selector '[Id NSNumber] ()
setUserStatusSelector = mkSelector "setUserStatus:"

-- | @Selector@ for @userType@
userTypeSelector :: Selector '[] (Id NSNumber)
userTypeSelector = mkSelector "userType"

-- | @Selector@ for @setUserType:@
setUserTypeSelector :: Selector '[Id NSNumber] ()
setUserTypeSelector = mkSelector "setUserType:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

