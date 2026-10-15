{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterClearUserParams@.
module ObjC.Matter.MTRDoorLockClusterClearUserParams
  ( MTRDoorLockClusterClearUserParams
  , IsMTRDoorLockClusterClearUserParams(..)
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
init_ :: IsMTRDoorLockClusterClearUserParams mtrDoorLockClusterClearUserParams => mtrDoorLockClusterClearUserParams -> IO (Id MTRDoorLockClusterClearUserParams)
init_ mtrDoorLockClusterClearUserParams =
  sendOwnedMessage mtrDoorLockClusterClearUserParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterClearUserParams mtrDoorLockClusterClearUserParams => mtrDoorLockClusterClearUserParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterClearUserParams zone =
  sendOwnedMessage mtrDoorLockClusterClearUserParams copyWithZoneSelector zone

-- | @- userIndex@
userIndex :: IsMTRDoorLockClusterClearUserParams mtrDoorLockClusterClearUserParams => mtrDoorLockClusterClearUserParams -> IO (Id NSNumber)
userIndex mtrDoorLockClusterClearUserParams =
  sendMessage mtrDoorLockClusterClearUserParams userIndexSelector

-- | @- setUserIndex:@
setUserIndex :: (IsMTRDoorLockClusterClearUserParams mtrDoorLockClusterClearUserParams, IsNSNumber value) => mtrDoorLockClusterClearUserParams -> value -> IO ()
setUserIndex mtrDoorLockClusterClearUserParams value =
  sendMessage mtrDoorLockClusterClearUserParams setUserIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterClearUserParams mtrDoorLockClusterClearUserParams => mtrDoorLockClusterClearUserParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterClearUserParams =
  sendMessage mtrDoorLockClusterClearUserParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterClearUserParams mtrDoorLockClusterClearUserParams, IsNSNumber value) => mtrDoorLockClusterClearUserParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterClearUserParams value =
  sendMessage mtrDoorLockClusterClearUserParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterClearUserParams)
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

