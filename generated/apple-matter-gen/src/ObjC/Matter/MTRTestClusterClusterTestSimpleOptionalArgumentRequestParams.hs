{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams@.
module ObjC.Matter.MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams
  ( MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams
  , IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams(..)
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
init_ :: IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams => mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams -> IO (Id MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams)
init_ mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams =
  sendOwnedMessage mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams => mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams => mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams -> IO (Id NSNumber)
arg1 mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams, IsNSNumber value) => mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams -> value -> IO ()
setArg1 mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams setArg1Selector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams => mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams =
  sendMessage mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestSimpleOptionalArgumentRequestParams mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams, IsNSNumber value) => mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams value =
  sendMessage mtrTestClusterClusterTestSimpleOptionalArgumentRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestSimpleOptionalArgumentRequestParams)
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

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

