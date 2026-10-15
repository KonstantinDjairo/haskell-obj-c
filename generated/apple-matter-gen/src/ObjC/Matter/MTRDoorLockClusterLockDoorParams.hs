{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterLockDoorParams@.
module ObjC.Matter.MTRDoorLockClusterLockDoorParams
  ( MTRDoorLockClusterLockDoorParams
  , IsMTRDoorLockClusterLockDoorParams(..)
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
init_ :: IsMTRDoorLockClusterLockDoorParams mtrDoorLockClusterLockDoorParams => mtrDoorLockClusterLockDoorParams -> IO (Id MTRDoorLockClusterLockDoorParams)
init_ mtrDoorLockClusterLockDoorParams =
  sendOwnedMessage mtrDoorLockClusterLockDoorParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterLockDoorParams mtrDoorLockClusterLockDoorParams => mtrDoorLockClusterLockDoorParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterLockDoorParams zone =
  sendOwnedMessage mtrDoorLockClusterLockDoorParams copyWithZoneSelector zone

-- | @- pinCode@
pinCode :: IsMTRDoorLockClusterLockDoorParams mtrDoorLockClusterLockDoorParams => mtrDoorLockClusterLockDoorParams -> IO (Id NSData)
pinCode mtrDoorLockClusterLockDoorParams =
  sendMessage mtrDoorLockClusterLockDoorParams pinCodeSelector

-- | @- setPinCode:@
setPinCode :: (IsMTRDoorLockClusterLockDoorParams mtrDoorLockClusterLockDoorParams, IsNSData value) => mtrDoorLockClusterLockDoorParams -> value -> IO ()
setPinCode mtrDoorLockClusterLockDoorParams value =
  sendMessage mtrDoorLockClusterLockDoorParams setPinCodeSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterLockDoorParams mtrDoorLockClusterLockDoorParams => mtrDoorLockClusterLockDoorParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterLockDoorParams =
  sendMessage mtrDoorLockClusterLockDoorParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterLockDoorParams mtrDoorLockClusterLockDoorParams, IsNSNumber value) => mtrDoorLockClusterLockDoorParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterLockDoorParams value =
  sendMessage mtrDoorLockClusterLockDoorParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterLockDoorParams)
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

