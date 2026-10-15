{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterSetCredentialResponseParams@.
module ObjC.Matter.MTRDoorLockClusterSetCredentialResponseParams
  ( MTRDoorLockClusterSetCredentialResponseParams
  , IsMTRDoorLockClusterSetCredentialResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , userIndex
  , setUserIndex
  , nextCredentialIndex
  , setNextCredentialIndex
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , nextCredentialIndexSelector
  , setNextCredentialIndexSelector
  , setStatusSelector
  , setTimedInvokeTimeoutMsSelector
  , setUserIndexSelector
  , statusSelector
  , timedInvokeTimeoutMsSelector
  , userIndexSelector


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
init_ :: IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams => mtrDoorLockClusterSetCredentialResponseParams -> IO (Id MTRDoorLockClusterSetCredentialResponseParams)
init_ mtrDoorLockClusterSetCredentialResponseParams =
  sendOwnedMessage mtrDoorLockClusterSetCredentialResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams => mtrDoorLockClusterSetCredentialResponseParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterSetCredentialResponseParams zone =
  sendOwnedMessage mtrDoorLockClusterSetCredentialResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams => mtrDoorLockClusterSetCredentialResponseParams -> IO (Id NSNumber)
status mtrDoorLockClusterSetCredentialResponseParams =
  sendMessage mtrDoorLockClusterSetCredentialResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialResponseParams -> value -> IO ()
setStatus mtrDoorLockClusterSetCredentialResponseParams value =
  sendMessage mtrDoorLockClusterSetCredentialResponseParams setStatusSelector (toNSNumber value)

-- | @- userIndex@
userIndex :: IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams => mtrDoorLockClusterSetCredentialResponseParams -> IO (Id NSNumber)
userIndex mtrDoorLockClusterSetCredentialResponseParams =
  sendMessage mtrDoorLockClusterSetCredentialResponseParams userIndexSelector

-- | @- setUserIndex:@
setUserIndex :: (IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialResponseParams -> value -> IO ()
setUserIndex mtrDoorLockClusterSetCredentialResponseParams value =
  sendMessage mtrDoorLockClusterSetCredentialResponseParams setUserIndexSelector (toNSNumber value)

-- | @- nextCredentialIndex@
nextCredentialIndex :: IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams => mtrDoorLockClusterSetCredentialResponseParams -> IO (Id NSNumber)
nextCredentialIndex mtrDoorLockClusterSetCredentialResponseParams =
  sendMessage mtrDoorLockClusterSetCredentialResponseParams nextCredentialIndexSelector

-- | @- setNextCredentialIndex:@
setNextCredentialIndex :: (IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialResponseParams -> value -> IO ()
setNextCredentialIndex mtrDoorLockClusterSetCredentialResponseParams value =
  sendMessage mtrDoorLockClusterSetCredentialResponseParams setNextCredentialIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams => mtrDoorLockClusterSetCredentialResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterSetCredentialResponseParams =
  sendMessage mtrDoorLockClusterSetCredentialResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterSetCredentialResponseParams mtrDoorLockClusterSetCredentialResponseParams, IsNSNumber value) => mtrDoorLockClusterSetCredentialResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterSetCredentialResponseParams value =
  sendMessage mtrDoorLockClusterSetCredentialResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterSetCredentialResponseParams)
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

-- | @Selector@ for @userIndex@
userIndexSelector :: Selector '[] (Id NSNumber)
userIndexSelector = mkSelector "userIndex"

-- | @Selector@ for @setUserIndex:@
setUserIndexSelector :: Selector '[Id NSNumber] ()
setUserIndexSelector = mkSelector "setUserIndex:"

-- | @Selector@ for @nextCredentialIndex@
nextCredentialIndexSelector :: Selector '[] (Id NSNumber)
nextCredentialIndexSelector = mkSelector "nextCredentialIndex"

-- | @Selector@ for @setNextCredentialIndex:@
setNextCredentialIndexSelector :: Selector '[Id NSNumber] ()
setNextCredentialIndexSelector = mkSelector "setNextCredentialIndex:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

