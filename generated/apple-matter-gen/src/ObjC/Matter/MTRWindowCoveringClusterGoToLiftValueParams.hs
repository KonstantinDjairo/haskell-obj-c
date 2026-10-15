{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRWindowCoveringClusterGoToLiftValueParams@.
module ObjC.Matter.MTRWindowCoveringClusterGoToLiftValueParams
  ( MTRWindowCoveringClusterGoToLiftValueParams
  , IsMTRWindowCoveringClusterGoToLiftValueParams(..)
  , init_
  , copyWithZone
  , liftValue
  , setLiftValue
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , liftValueSelector
  , setLiftValueSelector
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
init_ :: IsMTRWindowCoveringClusterGoToLiftValueParams mtrWindowCoveringClusterGoToLiftValueParams => mtrWindowCoveringClusterGoToLiftValueParams -> IO (Id MTRWindowCoveringClusterGoToLiftValueParams)
init_ mtrWindowCoveringClusterGoToLiftValueParams =
  sendOwnedMessage mtrWindowCoveringClusterGoToLiftValueParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRWindowCoveringClusterGoToLiftValueParams mtrWindowCoveringClusterGoToLiftValueParams => mtrWindowCoveringClusterGoToLiftValueParams -> Ptr () -> IO RawId
copyWithZone mtrWindowCoveringClusterGoToLiftValueParams zone =
  sendOwnedMessage mtrWindowCoveringClusterGoToLiftValueParams copyWithZoneSelector zone

-- | @- liftValue@
liftValue :: IsMTRWindowCoveringClusterGoToLiftValueParams mtrWindowCoveringClusterGoToLiftValueParams => mtrWindowCoveringClusterGoToLiftValueParams -> IO (Id NSNumber)
liftValue mtrWindowCoveringClusterGoToLiftValueParams =
  sendMessage mtrWindowCoveringClusterGoToLiftValueParams liftValueSelector

-- | @- setLiftValue:@
setLiftValue :: (IsMTRWindowCoveringClusterGoToLiftValueParams mtrWindowCoveringClusterGoToLiftValueParams, IsNSNumber value) => mtrWindowCoveringClusterGoToLiftValueParams -> value -> IO ()
setLiftValue mtrWindowCoveringClusterGoToLiftValueParams value =
  sendMessage mtrWindowCoveringClusterGoToLiftValueParams setLiftValueSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRWindowCoveringClusterGoToLiftValueParams mtrWindowCoveringClusterGoToLiftValueParams => mtrWindowCoveringClusterGoToLiftValueParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrWindowCoveringClusterGoToLiftValueParams =
  sendMessage mtrWindowCoveringClusterGoToLiftValueParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRWindowCoveringClusterGoToLiftValueParams mtrWindowCoveringClusterGoToLiftValueParams, IsNSNumber value) => mtrWindowCoveringClusterGoToLiftValueParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrWindowCoveringClusterGoToLiftValueParams value =
  sendMessage mtrWindowCoveringClusterGoToLiftValueParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRWindowCoveringClusterGoToLiftValueParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @liftValue@
liftValueSelector :: Selector '[] (Id NSNumber)
liftValueSelector = mkSelector "liftValue"

-- | @Selector@ for @setLiftValue:@
setLiftValueSelector :: Selector '[Id NSNumber] ()
setLiftValueSelector = mkSelector "setLiftValue:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

