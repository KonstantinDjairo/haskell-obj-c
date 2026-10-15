{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestListNestedStructListArgumentRequestParams@.
module ObjC.Matter.MTRTestClusterClusterTestListNestedStructListArgumentRequestParams
  ( MTRTestClusterClusterTestListNestedStructListArgumentRequestParams
  , IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams(..)
  , init_
  , copyWithZone
  , arg1
  , setArg1
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , arg1Selector
  , copyWithZoneSelector
  , initSelector
  , setArg1Selector
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
init_ :: IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams mtrTestClusterClusterTestListNestedStructListArgumentRequestParams => mtrTestClusterClusterTestListNestedStructListArgumentRequestParams -> IO (Id MTRTestClusterClusterTestListNestedStructListArgumentRequestParams)
init_ mtrTestClusterClusterTestListNestedStructListArgumentRequestParams =
  sendOwnedMessage mtrTestClusterClusterTestListNestedStructListArgumentRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams mtrTestClusterClusterTestListNestedStructListArgumentRequestParams => mtrTestClusterClusterTestListNestedStructListArgumentRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestListNestedStructListArgumentRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterTestListNestedStructListArgumentRequestParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams mtrTestClusterClusterTestListNestedStructListArgumentRequestParams => mtrTestClusterClusterTestListNestedStructListArgumentRequestParams -> IO (Id NSArray)
arg1 mtrTestClusterClusterTestListNestedStructListArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestListNestedStructListArgumentRequestParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams mtrTestClusterClusterTestListNestedStructListArgumentRequestParams, IsNSArray value) => mtrTestClusterClusterTestListNestedStructListArgumentRequestParams -> value -> IO ()
setArg1 mtrTestClusterClusterTestListNestedStructListArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestListNestedStructListArgumentRequestParams setArg1Selector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams mtrTestClusterClusterTestListNestedStructListArgumentRequestParams => mtrTestClusterClusterTestListNestedStructListArgumentRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestListNestedStructListArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestListNestedStructListArgumentRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestListNestedStructListArgumentRequestParams mtrTestClusterClusterTestListNestedStructListArgumentRequestParams, IsNSNumber value) => mtrTestClusterClusterTestListNestedStructListArgumentRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestListNestedStructListArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestListNestedStructListArgumentRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestListNestedStructListArgumentRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @arg1@
arg1Selector :: Selector '[] (Id NSArray)
arg1Selector = mkSelector "arg1"

-- | @Selector@ for @setArg1:@
setArg1Selector :: Selector '[Id NSArray] ()
setArg1Selector = mkSelector "setArg1:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

