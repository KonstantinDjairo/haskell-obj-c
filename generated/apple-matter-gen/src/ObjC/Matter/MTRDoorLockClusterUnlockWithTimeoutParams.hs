{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterUnlockWithTimeoutParams@.
module ObjC.Matter.MTRDoorLockClusterUnlockWithTimeoutParams
  ( MTRDoorLockClusterUnlockWithTimeoutParams
  , IsMTRDoorLockClusterUnlockWithTimeoutParams(..)
  , init_
  , copyWithZone
  , timeout
  , setTimeout
  , pinCode
  , setPinCode
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , pinCodeSelector
  , setPinCodeSelector
  , setTimedInvokeTimeoutMsSelector
  , setTimeoutSelector
  , timedInvokeTimeoutMsSelector
  , timeoutSelector


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
init_ :: IsMTRDoorLockClusterUnlockWithTimeoutParams mtrDoorLockClusterUnlockWithTimeoutParams => mtrDoorLockClusterUnlockWithTimeoutParams -> IO (Id MTRDoorLockClusterUnlockWithTimeoutParams)
init_ mtrDoorLockClusterUnlockWithTimeoutParams =
  sendOwnedMessage mtrDoorLockClusterUnlockWithTimeoutParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterUnlockWithTimeoutParams mtrDoorLockClusterUnlockWithTimeoutParams => mtrDoorLockClusterUnlockWithTimeoutParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterUnlockWithTimeoutParams zone =
  sendOwnedMessage mtrDoorLockClusterUnlockWithTimeoutParams copyWithZoneSelector zone

-- | @- timeout@
timeout :: IsMTRDoorLockClusterUnlockWithTimeoutParams mtrDoorLockClusterUnlockWithTimeoutParams => mtrDoorLockClusterUnlockWithTimeoutParams -> IO (Id NSNumber)
timeout mtrDoorLockClusterUnlockWithTimeoutParams =
  sendMessage mtrDoorLockClusterUnlockWithTimeoutParams timeoutSelector

-- | @- setTimeout:@
setTimeout :: (IsMTRDoorLockClusterUnlockWithTimeoutParams mtrDoorLockClusterUnlockWithTimeoutParams, IsNSNumber value) => mtrDoorLockClusterUnlockWithTimeoutParams -> value -> IO ()
setTimeout mtrDoorLockClusterUnlockWithTimeoutParams value =
  sendMessage mtrDoorLockClusterUnlockWithTimeoutParams setTimeoutSelector (toNSNumber value)

-- | @- pinCode@
pinCode :: IsMTRDoorLockClusterUnlockWithTimeoutParams mtrDoorLockClusterUnlockWithTimeoutParams => mtrDoorLockClusterUnlockWithTimeoutParams -> IO (Id NSData)
pinCode mtrDoorLockClusterUnlockWithTimeoutParams =
  sendMessage mtrDoorLockClusterUnlockWithTimeoutParams pinCodeSelector

-- | @- setPinCode:@
setPinCode :: (IsMTRDoorLockClusterUnlockWithTimeoutParams mtrDoorLockClusterUnlockWithTimeoutParams, IsNSData value) => mtrDoorLockClusterUnlockWithTimeoutParams -> value -> IO ()
setPinCode mtrDoorLockClusterUnlockWithTimeoutParams value =
  sendMessage mtrDoorLockClusterUnlockWithTimeoutParams setPinCodeSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterUnlockWithTimeoutParams mtrDoorLockClusterUnlockWithTimeoutParams => mtrDoorLockClusterUnlockWithTimeoutParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterUnlockWithTimeoutParams =
  sendMessage mtrDoorLockClusterUnlockWithTimeoutParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterUnlockWithTimeoutParams mtrDoorLockClusterUnlockWithTimeoutParams, IsNSNumber value) => mtrDoorLockClusterUnlockWithTimeoutParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterUnlockWithTimeoutParams value =
  sendMessage mtrDoorLockClusterUnlockWithTimeoutParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterUnlockWithTimeoutParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @timeout@
timeoutSelector :: Selector '[] (Id NSNumber)
timeoutSelector = mkSelector "timeout"

-- | @Selector@ for @setTimeout:@
setTimeoutSelector :: Selector '[Id NSNumber] ()
setTimeoutSelector = mkSelector "setTimeout:"

-- | @Selector@ for @pinCode@
pinCodeSelector :: Selector '[] (Id NSData)
pinCodeSelector = mkSelector "pinCode"

-- | @Selector@ for @setPinCode:@
setPinCodeSelector :: Selector '[Id NSData] ()
setPinCodeSelector = mkSelector "setPinCode:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

