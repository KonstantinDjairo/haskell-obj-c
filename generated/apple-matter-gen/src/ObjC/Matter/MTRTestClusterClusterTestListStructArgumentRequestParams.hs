{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestListStructArgumentRequestParams@.
module ObjC.Matter.MTRTestClusterClusterTestListStructArgumentRequestParams
  ( MTRTestClusterClusterTestListStructArgumentRequestParams
  , IsMTRTestClusterClusterTestListStructArgumentRequestParams(..)
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
init_ :: IsMTRTestClusterClusterTestListStructArgumentRequestParams mtrTestClusterClusterTestListStructArgumentRequestParams => mtrTestClusterClusterTestListStructArgumentRequestParams -> IO (Id MTRTestClusterClusterTestListStructArgumentRequestParams)
init_ mtrTestClusterClusterTestListStructArgumentRequestParams =
  sendOwnedMessage mtrTestClusterClusterTestListStructArgumentRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestListStructArgumentRequestParams mtrTestClusterClusterTestListStructArgumentRequestParams => mtrTestClusterClusterTestListStructArgumentRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestListStructArgumentRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterTestListStructArgumentRequestParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterTestListStructArgumentRequestParams mtrTestClusterClusterTestListStructArgumentRequestParams => mtrTestClusterClusterTestListStructArgumentRequestParams -> IO (Id NSArray)
arg1 mtrTestClusterClusterTestListStructArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestListStructArgumentRequestParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterTestListStructArgumentRequestParams mtrTestClusterClusterTestListStructArgumentRequestParams, IsNSArray value) => mtrTestClusterClusterTestListStructArgumentRequestParams -> value -> IO ()
setArg1 mtrTestClusterClusterTestListStructArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestListStructArgumentRequestParams setArg1Selector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestListStructArgumentRequestParams mtrTestClusterClusterTestListStructArgumentRequestParams => mtrTestClusterClusterTestListStructArgumentRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestListStructArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestListStructArgumentRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestListStructArgumentRequestParams mtrTestClusterClusterTestListStructArgumentRequestParams, IsNSNumber value) => mtrTestClusterClusterTestListStructArgumentRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestListStructArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestListStructArgumentRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestListStructArgumentRequestParams)
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

