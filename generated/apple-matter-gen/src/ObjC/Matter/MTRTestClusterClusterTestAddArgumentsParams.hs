{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestAddArgumentsParams@.
module ObjC.Matter.MTRTestClusterClusterTestAddArgumentsParams
  ( MTRTestClusterClusterTestAddArgumentsParams
  , IsMTRTestClusterClusterTestAddArgumentsParams(..)
  , init_
  , copyWithZone
  , arg1
  , setArg1
  , arg2
  , setArg2
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , arg1Selector
  , arg2Selector
  , copyWithZoneSelector
  , initSelector
  , setArg1Selector
  , setArg2Selector
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
init_ :: IsMTRTestClusterClusterTestAddArgumentsParams mtrTestClusterClusterTestAddArgumentsParams => mtrTestClusterClusterTestAddArgumentsParams -> IO (Id MTRTestClusterClusterTestAddArgumentsParams)
init_ mtrTestClusterClusterTestAddArgumentsParams =
  sendOwnedMessage mtrTestClusterClusterTestAddArgumentsParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestAddArgumentsParams mtrTestClusterClusterTestAddArgumentsParams => mtrTestClusterClusterTestAddArgumentsParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestAddArgumentsParams zone =
  sendOwnedMessage mtrTestClusterClusterTestAddArgumentsParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterTestAddArgumentsParams mtrTestClusterClusterTestAddArgumentsParams => mtrTestClusterClusterTestAddArgumentsParams -> IO (Id NSNumber)
arg1 mtrTestClusterClusterTestAddArgumentsParams =
  sendMessage mtrTestClusterClusterTestAddArgumentsParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterTestAddArgumentsParams mtrTestClusterClusterTestAddArgumentsParams, IsNSNumber value) => mtrTestClusterClusterTestAddArgumentsParams -> value -> IO ()
setArg1 mtrTestClusterClusterTestAddArgumentsParams value =
  sendMessage mtrTestClusterClusterTestAddArgumentsParams setArg1Selector (toNSNumber value)

-- | @- arg2@
arg2 :: IsMTRTestClusterClusterTestAddArgumentsParams mtrTestClusterClusterTestAddArgumentsParams => mtrTestClusterClusterTestAddArgumentsParams -> IO (Id NSNumber)
arg2 mtrTestClusterClusterTestAddArgumentsParams =
  sendMessage mtrTestClusterClusterTestAddArgumentsParams arg2Selector

-- | @- setArg2:@
setArg2 :: (IsMTRTestClusterClusterTestAddArgumentsParams mtrTestClusterClusterTestAddArgumentsParams, IsNSNumber value) => mtrTestClusterClusterTestAddArgumentsParams -> value -> IO ()
setArg2 mtrTestClusterClusterTestAddArgumentsParams value =
  sendMessage mtrTestClusterClusterTestAddArgumentsParams setArg2Selector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestAddArgumentsParams mtrTestClusterClusterTestAddArgumentsParams => mtrTestClusterClusterTestAddArgumentsParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestAddArgumentsParams =
  sendMessage mtrTestClusterClusterTestAddArgumentsParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestAddArgumentsParams mtrTestClusterClusterTestAddArgumentsParams, IsNSNumber value) => mtrTestClusterClusterTestAddArgumentsParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestAddArgumentsParams value =
  sendMessage mtrTestClusterClusterTestAddArgumentsParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestAddArgumentsParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @arg1@
arg1Selector :: Selector '[] (Id NSNumber)
arg1Selector = mkSelector "arg1"

-- | @Selector@ for @setArg1:@
setArg1Selector :: Selector '[Id NSNumber] ()
setArg1Selector = mkSelector "setArg1:"

-- | @Selector@ for @arg2@
arg2Selector :: Selector '[] (Id NSNumber)
arg2Selector = mkSelector "arg2"

-- | @Selector@ for @setArg2:@
setArg2Selector :: Selector '[Id NSNumber] ()
setArg2Selector = mkSelector "setArg2:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

