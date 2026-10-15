{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterUnlockDoorParams@.
module ObjC.Matter.MTRDoorLockClusterUnlockDoorParams
  ( MTRDoorLockClusterUnlockDoorParams
  , IsMTRDoorLockClusterUnlockDoorParams(..)
  , init_
  , copyWithZone
  , pinCode
  , setPinCode
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , pinCodeSelector
  , setPinCodeSelector
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
init_ :: IsMTRDoorLockClusterUnlockDoorParams mtrDoorLockClusterUnlockDoorParams => mtrDoorLockClusterUnlockDoorParams -> IO (Id MTRDoorLockClusterUnlockDoorParams)
init_ mtrDoorLockClusterUnlockDoorParams =
  sendOwnedMessage mtrDoorLockClusterUnlockDoorParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterUnlockDoorParams mtrDoorLockClusterUnlockDoorParams => mtrDoorLockClusterUnlockDoorParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterUnlockDoorParams zone =
  sendOwnedMessage mtrDoorLockClusterUnlockDoorParams copyWithZoneSelector zone

-- | @- pinCode@
pinCode :: IsMTRDoorLockClusterUnlockDoorParams mtrDoorLockClusterUnlockDoorParams => mtrDoorLockClusterUnlockDoorParams -> IO (Id NSData)
pinCode mtrDoorLockClusterUnlockDoorParams =
  sendMessage mtrDoorLockClusterUnlockDoorParams pinCodeSelector

-- | @- setPinCode:@
setPinCode :: (IsMTRDoorLockClusterUnlockDoorParams mtrDoorLockClusterUnlockDoorParams, IsNSData value) => mtrDoorLockClusterUnlockDoorParams -> value -> IO ()
setPinCode mtrDoorLockClusterUnlockDoorParams value =
  sendMessage mtrDoorLockClusterUnlockDoorParams setPinCodeSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterUnlockDoorParams mtrDoorLockClusterUnlockDoorParams => mtrDoorLockClusterUnlockDoorParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterUnlockDoorParams =
  sendMessage mtrDoorLockClusterUnlockDoorParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterUnlockDoorParams mtrDoorLockClusterUnlockDoorParams, IsNSNumber value) => mtrDoorLockClusterUnlockDoorParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterUnlockDoorParams value =
  sendMessage mtrDoorLockClusterUnlockDoorParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterUnlockDoorParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

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

