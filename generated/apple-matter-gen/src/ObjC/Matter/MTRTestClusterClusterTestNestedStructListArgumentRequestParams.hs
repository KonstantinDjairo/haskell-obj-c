{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestNestedStructListArgumentRequestParams@.
module ObjC.Matter.MTRTestClusterClusterTestNestedStructListArgumentRequestParams
  ( MTRTestClusterClusterTestNestedStructListArgumentRequestParams
  , IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams(..)
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
init_ :: IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams mtrTestClusterClusterTestNestedStructListArgumentRequestParams => mtrTestClusterClusterTestNestedStructListArgumentRequestParams -> IO (Id MTRTestClusterClusterTestNestedStructListArgumentRequestParams)
init_ mtrTestClusterClusterTestNestedStructListArgumentRequestParams =
  sendOwnedMessage mtrTestClusterClusterTestNestedStructListArgumentRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams mtrTestClusterClusterTestNestedStructListArgumentRequestParams => mtrTestClusterClusterTestNestedStructListArgumentRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestNestedStructListArgumentRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterTestNestedStructListArgumentRequestParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams mtrTestClusterClusterTestNestedStructListArgumentRequestParams => mtrTestClusterClusterTestNestedStructListArgumentRequestParams -> IO (Id MTRTestClusterClusterNestedStructList)
arg1 mtrTestClusterClusterTestNestedStructListArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestNestedStructListArgumentRequestParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams mtrTestClusterClusterTestNestedStructListArgumentRequestParams, IsMTRTestClusterClusterNestedStructList value) => mtrTestClusterClusterTestNestedStructListArgumentRequestParams -> value -> IO ()
setArg1 mtrTestClusterClusterTestNestedStructListArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestNestedStructListArgumentRequestParams setArg1Selector (toMTRTestClusterClusterNestedStructList value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams mtrTestClusterClusterTestNestedStructListArgumentRequestParams => mtrTestClusterClusterTestNestedStructListArgumentRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestNestedStructListArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestNestedStructListArgumentRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestNestedStructListArgumentRequestParams mtrTestClusterClusterTestNestedStructListArgumentRequestParams, IsNSNumber value) => mtrTestClusterClusterTestNestedStructListArgumentRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestNestedStructListArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestNestedStructListArgumentRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestNestedStructListArgumentRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @arg1@
arg1Selector :: Selector '[] (Id MTRTestClusterClusterNestedStructList)
arg1Selector = mkSelector "arg1"

-- | @Selector@ for @setArg1:@
setArg1Selector :: Selector '[Id MTRTestClusterClusterNestedStructList] ()
setArg1Selector = mkSelector "setArg1:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

