{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestEmitTestEventRequestParams@.
module ObjC.Matter.MTRTestClusterClusterTestEmitTestEventRequestParams
  ( MTRTestClusterClusterTestEmitTestEventRequestParams
  , IsMTRTestClusterClusterTestEmitTestEventRequestParams(..)
  , init_
  , copyWithZone
  , arg1
  , setArg1
  , arg2
  , setArg2
  , arg3
  , setArg3
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , arg1Selector
  , arg2Selector
  , arg3Selector
  , copyWithZoneSelector
  , initSelector
  , setArg1Selector
  , setArg2Selector
  , setArg3Selector
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
init_ :: IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams => mtrTestClusterClusterTestEmitTestEventRequestParams -> IO (Id MTRTestClusterClusterTestEmitTestEventRequestParams)
init_ mtrTestClusterClusterTestEmitTestEventRequestParams =
  sendOwnedMessage mtrTestClusterClusterTestEmitTestEventRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams => mtrTestClusterClusterTestEmitTestEventRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestEmitTestEventRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterTestEmitTestEventRequestParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams => mtrTestClusterClusterTestEmitTestEventRequestParams -> IO (Id NSNumber)
arg1 mtrTestClusterClusterTestEmitTestEventRequestParams =
  sendMessage mtrTestClusterClusterTestEmitTestEventRequestParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams, IsNSNumber value) => mtrTestClusterClusterTestEmitTestEventRequestParams -> value -> IO ()
setArg1 mtrTestClusterClusterTestEmitTestEventRequestParams value =
  sendMessage mtrTestClusterClusterTestEmitTestEventRequestParams setArg1Selector (toNSNumber value)

-- | @- arg2@
arg2 :: IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams => mtrTestClusterClusterTestEmitTestEventRequestParams -> IO (Id NSNumber)
arg2 mtrTestClusterClusterTestEmitTestEventRequestParams =
  sendMessage mtrTestClusterClusterTestEmitTestEventRequestParams arg2Selector

-- | @- setArg2:@
setArg2 :: (IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams, IsNSNumber value) => mtrTestClusterClusterTestEmitTestEventRequestParams -> value -> IO ()
setArg2 mtrTestClusterClusterTestEmitTestEventRequestParams value =
  sendMessage mtrTestClusterClusterTestEmitTestEventRequestParams setArg2Selector (toNSNumber value)

-- | @- arg3@
arg3 :: IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams => mtrTestClusterClusterTestEmitTestEventRequestParams -> IO (Id NSNumber)
arg3 mtrTestClusterClusterTestEmitTestEventRequestParams =
  sendMessage mtrTestClusterClusterTestEmitTestEventRequestParams arg3Selector

-- | @- setArg3:@
setArg3 :: (IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams, IsNSNumber value) => mtrTestClusterClusterTestEmitTestEventRequestParams -> value -> IO ()
setArg3 mtrTestClusterClusterTestEmitTestEventRequestParams value =
  sendMessage mtrTestClusterClusterTestEmitTestEventRequestParams setArg3Selector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams => mtrTestClusterClusterTestEmitTestEventRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestEmitTestEventRequestParams =
  sendMessage mtrTestClusterClusterTestEmitTestEventRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestEmitTestEventRequestParams mtrTestClusterClusterTestEmitTestEventRequestParams, IsNSNumber value) => mtrTestClusterClusterTestEmitTestEventRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestEmitTestEventRequestParams value =
  sendMessage mtrTestClusterClusterTestEmitTestEventRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestEmitTestEventRequestParams)
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

-- | @Selector@ for @arg3@
arg3Selector :: Selector '[] (Id NSNumber)
arg3Selector = mkSelector "arg3"

-- | @Selector@ for @setArg3:@
setArg3Selector :: Selector '[Id NSNumber] ()
setArg3Selector = mkSelector "setArg3:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

