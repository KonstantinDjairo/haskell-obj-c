{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterSimpleStructEchoRequestParams@.
module ObjC.Matter.MTRTestClusterClusterSimpleStructEchoRequestParams
  ( MTRTestClusterClusterSimpleStructEchoRequestParams
  , IsMTRTestClusterClusterSimpleStructEchoRequestParams(..)
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
init_ :: IsMTRTestClusterClusterSimpleStructEchoRequestParams mtrTestClusterClusterSimpleStructEchoRequestParams => mtrTestClusterClusterSimpleStructEchoRequestParams -> IO (Id MTRTestClusterClusterSimpleStructEchoRequestParams)
init_ mtrTestClusterClusterSimpleStructEchoRequestParams =
  sendOwnedMessage mtrTestClusterClusterSimpleStructEchoRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterSimpleStructEchoRequestParams mtrTestClusterClusterSimpleStructEchoRequestParams => mtrTestClusterClusterSimpleStructEchoRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterSimpleStructEchoRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterSimpleStructEchoRequestParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterSimpleStructEchoRequestParams mtrTestClusterClusterSimpleStructEchoRequestParams => mtrTestClusterClusterSimpleStructEchoRequestParams -> IO (Id MTRTestClusterClusterSimpleStruct)
arg1 mtrTestClusterClusterSimpleStructEchoRequestParams =
  sendMessage mtrTestClusterClusterSimpleStructEchoRequestParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterSimpleStructEchoRequestParams mtrTestClusterClusterSimpleStructEchoRequestParams, IsMTRTestClusterClusterSimpleStruct value) => mtrTestClusterClusterSimpleStructEchoRequestParams -> value -> IO ()
setArg1 mtrTestClusterClusterSimpleStructEchoRequestParams value =
  sendMessage mtrTestClusterClusterSimpleStructEchoRequestParams setArg1Selector (toMTRTestClusterClusterSimpleStruct value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterSimpleStructEchoRequestParams mtrTestClusterClusterSimpleStructEchoRequestParams => mtrTestClusterClusterSimpleStructEchoRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterSimpleStructEchoRequestParams =
  sendMessage mtrTestClusterClusterSimpleStructEchoRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterSimpleStructEchoRequestParams mtrTestClusterClusterSimpleStructEchoRequestParams, IsNSNumber value) => mtrTestClusterClusterSimpleStructEchoRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterSimpleStructEchoRequestParams value =
  sendMessage mtrTestClusterClusterSimpleStructEchoRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterSimpleStructEchoRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @arg1@
arg1Selector :: Selector '[] (Id MTRTestClusterClusterSimpleStruct)
arg1Selector = mkSelector "arg1"

-- | @Selector@ for @setArg1:@
setArg1Selector :: Selector '[Id MTRTestClusterClusterSimpleStruct] ()
setArg1Selector = mkSelector "setArg1:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

