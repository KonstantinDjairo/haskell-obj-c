{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestNestedStructArgumentRequestParams@.
module ObjC.Matter.MTRTestClusterClusterTestNestedStructArgumentRequestParams
  ( MTRTestClusterClusterTestNestedStructArgumentRequestParams
  , IsMTRTestClusterClusterTestNestedStructArgumentRequestParams(..)
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
init_ :: IsMTRTestClusterClusterTestNestedStructArgumentRequestParams mtrTestClusterClusterTestNestedStructArgumentRequestParams => mtrTestClusterClusterTestNestedStructArgumentRequestParams -> IO (Id MTRTestClusterClusterTestNestedStructArgumentRequestParams)
init_ mtrTestClusterClusterTestNestedStructArgumentRequestParams =
  sendOwnedMessage mtrTestClusterClusterTestNestedStructArgumentRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestNestedStructArgumentRequestParams mtrTestClusterClusterTestNestedStructArgumentRequestParams => mtrTestClusterClusterTestNestedStructArgumentRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestNestedStructArgumentRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterTestNestedStructArgumentRequestParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterTestNestedStructArgumentRequestParams mtrTestClusterClusterTestNestedStructArgumentRequestParams => mtrTestClusterClusterTestNestedStructArgumentRequestParams -> IO (Id MTRTestClusterClusterNestedStruct)
arg1 mtrTestClusterClusterTestNestedStructArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestNestedStructArgumentRequestParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterTestNestedStructArgumentRequestParams mtrTestClusterClusterTestNestedStructArgumentRequestParams, IsMTRTestClusterClusterNestedStruct value) => mtrTestClusterClusterTestNestedStructArgumentRequestParams -> value -> IO ()
setArg1 mtrTestClusterClusterTestNestedStructArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestNestedStructArgumentRequestParams setArg1Selector (toMTRTestClusterClusterNestedStruct value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestNestedStructArgumentRequestParams mtrTestClusterClusterTestNestedStructArgumentRequestParams => mtrTestClusterClusterTestNestedStructArgumentRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestNestedStructArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestNestedStructArgumentRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestNestedStructArgumentRequestParams mtrTestClusterClusterTestNestedStructArgumentRequestParams, IsNSNumber value) => mtrTestClusterClusterTestNestedStructArgumentRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestNestedStructArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestNestedStructArgumentRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestNestedStructArgumentRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @arg1@
arg1Selector :: Selector '[] (Id MTRTestClusterClusterNestedStruct)
arg1Selector = mkSelector "arg1"

-- | @Selector@ for @setArg1:@
setArg1Selector :: Selector '[Id MTRTestClusterClusterNestedStruct] ()
setArg1Selector = mkSelector "setArg1:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

