{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestNotHandledParams@.
module ObjC.Matter.MTRTestClusterClusterTestNotHandledParams
  ( MTRTestClusterClusterTestNotHandledParams
  , IsMTRTestClusterClusterTestNotHandledParams(..)
  , init_
  , copyWithZone
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
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
init_ :: IsMTRTestClusterClusterTestNotHandledParams mtrTestClusterClusterTestNotHandledParams => mtrTestClusterClusterTestNotHandledParams -> IO (Id MTRTestClusterClusterTestNotHandledParams)
init_ mtrTestClusterClusterTestNotHandledParams =
  sendOwnedMessage mtrTestClusterClusterTestNotHandledParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestNotHandledParams mtrTestClusterClusterTestNotHandledParams => mtrTestClusterClusterTestNotHandledParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestNotHandledParams zone =
  sendOwnedMessage mtrTestClusterClusterTestNotHandledParams copyWithZoneSelector zone

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestNotHandledParams mtrTestClusterClusterTestNotHandledParams => mtrTestClusterClusterTestNotHandledParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestNotHandledParams =
  sendMessage mtrTestClusterClusterTestNotHandledParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestNotHandledParams mtrTestClusterClusterTestNotHandledParams, IsNSNumber value) => mtrTestClusterClusterTestNotHandledParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestNotHandledParams value =
  sendMessage mtrTestClusterClusterTestNotHandledParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestNotHandledParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

