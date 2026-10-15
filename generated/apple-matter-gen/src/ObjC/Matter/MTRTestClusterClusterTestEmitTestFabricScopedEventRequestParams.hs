{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams@.
module ObjC.Matter.MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams
  ( MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams
  , IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams(..)
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
init_ :: IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams => mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams -> IO (Id MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams)
init_ mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams =
  sendOwnedMessage mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams => mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams copyWithZoneSelector zone

-- | @- arg1@
arg1 :: IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams => mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams -> IO (Id NSNumber)
arg1 mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams =
  sendMessage mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams arg1Selector

-- | @- setArg1:@
setArg1 :: (IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams, IsNSNumber value) => mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams -> value -> IO ()
setArg1 mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams value =
  sendMessage mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams setArg1Selector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams => mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams =
  sendMessage mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams, IsNSNumber value) => mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams value =
  sendMessage mtrTestClusterClusterTestEmitTestFabricScopedEventRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams)
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

