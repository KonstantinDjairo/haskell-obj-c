{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRWindowCoveringClusterGoToTiltValueParams@.
module ObjC.Matter.MTRWindowCoveringClusterGoToTiltValueParams
  ( MTRWindowCoveringClusterGoToTiltValueParams
  , IsMTRWindowCoveringClusterGoToTiltValueParams(..)
  , init_
  , copyWithZone
  , tiltValue
  , setTiltValue
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , setTiltValueSelector
  , setTimedInvokeTimeoutMsSelector
  , tiltValueSelector
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
init_ :: IsMTRWindowCoveringClusterGoToTiltValueParams mtrWindowCoveringClusterGoToTiltValueParams => mtrWindowCoveringClusterGoToTiltValueParams -> IO (Id MTRWindowCoveringClusterGoToTiltValueParams)
init_ mtrWindowCoveringClusterGoToTiltValueParams =
  sendOwnedMessage mtrWindowCoveringClusterGoToTiltValueParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRWindowCoveringClusterGoToTiltValueParams mtrWindowCoveringClusterGoToTiltValueParams => mtrWindowCoveringClusterGoToTiltValueParams -> Ptr () -> IO RawId
copyWithZone mtrWindowCoveringClusterGoToTiltValueParams zone =
  sendOwnedMessage mtrWindowCoveringClusterGoToTiltValueParams copyWithZoneSelector zone

-- | @- tiltValue@
tiltValue :: IsMTRWindowCoveringClusterGoToTiltValueParams mtrWindowCoveringClusterGoToTiltValueParams => mtrWindowCoveringClusterGoToTiltValueParams -> IO (Id NSNumber)
tiltValue mtrWindowCoveringClusterGoToTiltValueParams =
  sendMessage mtrWindowCoveringClusterGoToTiltValueParams tiltValueSelector

-- | @- setTiltValue:@
setTiltValue :: (IsMTRWindowCoveringClusterGoToTiltValueParams mtrWindowCoveringClusterGoToTiltValueParams, IsNSNumber value) => mtrWindowCoveringClusterGoToTiltValueParams -> value -> IO ()
setTiltValue mtrWindowCoveringClusterGoToTiltValueParams value =
  sendMessage mtrWindowCoveringClusterGoToTiltValueParams setTiltValueSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRWindowCoveringClusterGoToTiltValueParams mtrWindowCoveringClusterGoToTiltValueParams => mtrWindowCoveringClusterGoToTiltValueParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrWindowCoveringClusterGoToTiltValueParams =
  sendMessage mtrWindowCoveringClusterGoToTiltValueParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRWindowCoveringClusterGoToTiltValueParams mtrWindowCoveringClusterGoToTiltValueParams, IsNSNumber value) => mtrWindowCoveringClusterGoToTiltValueParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrWindowCoveringClusterGoToTiltValueParams value =
  sendMessage mtrWindowCoveringClusterGoToTiltValueParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRWindowCoveringClusterGoToTiltValueParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @tiltValue@
tiltValueSelector :: Selector '[] (Id NSNumber)
tiltValueSelector = mkSelector "tiltValue"

-- | @Selector@ for @setTiltValue:@
setTiltValueSelector :: Selector '[Id NSNumber] ()
setTiltValueSelector = mkSelector "setTiltValue:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

