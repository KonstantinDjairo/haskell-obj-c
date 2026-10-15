{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterGetUserParams@.
module ObjC.Matter.MTRDoorLockClusterGetUserParams
  ( MTRDoorLockClusterGetUserParams
  , IsMTRDoorLockClusterGetUserParams(..)
  , init_
  , copyWithZone
  , userIndex
  , setUserIndex
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , setTimedInvokeTimeoutMsSelector
  , setUserIndexSelector
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
init_ :: IsMTRDoorLockClusterGetUserParams mtrDoorLockClusterGetUserParams => mtrDoorLockClusterGetUserParams -> IO (Id MTRDoorLockClusterGetUserParams)
init_ mtrDoorLockClusterGetUserParams =
  sendOwnedMessage mtrDoorLockClusterGetUserParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterGetUserParams mtrDoorLockClusterGetUserParams => mtrDoorLockClusterGetUserParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterGetUserParams zone =
  sendOwnedMessage mtrDoorLockClusterGetUserParams copyWithZoneSelector zone

-- | @- userIndex@
userIndex :: IsMTRDoorLockClusterGetUserParams mtrDoorLockClusterGetUserParams => mtrDoorLockClusterGetUserParams -> IO (Id NSNumber)
userIndex mtrDoorLockClusterGetUserParams =
  sendMessage mtrDoorLockClusterGetUserParams userIndexSelector

-- | @- setUserIndex:@
setUserIndex :: (IsMTRDoorLockClusterGetUserParams mtrDoorLockClusterGetUserParams, IsNSNumber value) => mtrDoorLockClusterGetUserParams -> value -> IO ()
setUserIndex mtrDoorLockClusterGetUserParams value =
  sendMessage mtrDoorLockClusterGetUserParams setUserIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterGetUserParams mtrDoorLockClusterGetUserParams => mtrDoorLockClusterGetUserParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterGetUserParams =
  sendMessage mtrDoorLockClusterGetUserParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterGetUserParams mtrDoorLockClusterGetUserParams, IsNSNumber value) => mtrDoorLockClusterGetUserParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterGetUserParams value =
  sendMessage mtrDoorLockClusterGetUserParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterGetUserParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @userIndex@
userIndexSelector :: Selector '[] (Id NSNumber)
userIndexSelector = mkSelector "userIndex"

-- | @Selector@ for @setUserIndex:@
setUserIndexSelector :: Selector '[Id NSNumber] ()
setUserIndexSelector = mkSelector "setUserIndex:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

