{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRMediaPlaybackClusterSkipBackwardParams@.
module ObjC.Matter.MTRMediaPlaybackClusterSkipBackwardParams
  ( MTRMediaPlaybackClusterSkipBackwardParams
  , IsMTRMediaPlaybackClusterSkipBackwardParams(..)
  , init_
  , copyWithZone
  , deltaPositionMilliseconds
  , setDeltaPositionMilliseconds
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , deltaPositionMillisecondsSelector
  , initSelector
  , setDeltaPositionMillisecondsSelector
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
init_ :: IsMTRMediaPlaybackClusterSkipBackwardParams mtrMediaPlaybackClusterSkipBackwardParams => mtrMediaPlaybackClusterSkipBackwardParams -> IO (Id MTRMediaPlaybackClusterSkipBackwardParams)
init_ mtrMediaPlaybackClusterSkipBackwardParams =
  sendOwnedMessage mtrMediaPlaybackClusterSkipBackwardParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRMediaPlaybackClusterSkipBackwardParams mtrMediaPlaybackClusterSkipBackwardParams => mtrMediaPlaybackClusterSkipBackwardParams -> Ptr () -> IO RawId
copyWithZone mtrMediaPlaybackClusterSkipBackwardParams zone =
  sendOwnedMessage mtrMediaPlaybackClusterSkipBackwardParams copyWithZoneSelector zone

-- | @- deltaPositionMilliseconds@
deltaPositionMilliseconds :: IsMTRMediaPlaybackClusterSkipBackwardParams mtrMediaPlaybackClusterSkipBackwardParams => mtrMediaPlaybackClusterSkipBackwardParams -> IO (Id NSNumber)
deltaPositionMilliseconds mtrMediaPlaybackClusterSkipBackwardParams =
  sendMessage mtrMediaPlaybackClusterSkipBackwardParams deltaPositionMillisecondsSelector

-- | @- setDeltaPositionMilliseconds:@
setDeltaPositionMilliseconds :: (IsMTRMediaPlaybackClusterSkipBackwardParams mtrMediaPlaybackClusterSkipBackwardParams, IsNSNumber value) => mtrMediaPlaybackClusterSkipBackwardParams -> value -> IO ()
setDeltaPositionMilliseconds mtrMediaPlaybackClusterSkipBackwardParams value =
  sendMessage mtrMediaPlaybackClusterSkipBackwardParams setDeltaPositionMillisecondsSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRMediaPlaybackClusterSkipBackwardParams mtrMediaPlaybackClusterSkipBackwardParams => mtrMediaPlaybackClusterSkipBackwardParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrMediaPlaybackClusterSkipBackwardParams =
  sendMessage mtrMediaPlaybackClusterSkipBackwardParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRMediaPlaybackClusterSkipBackwardParams mtrMediaPlaybackClusterSkipBackwardParams, IsNSNumber value) => mtrMediaPlaybackClusterSkipBackwardParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrMediaPlaybackClusterSkipBackwardParams value =
  sendMessage mtrMediaPlaybackClusterSkipBackwardParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRMediaPlaybackClusterSkipBackwardParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @deltaPositionMilliseconds@
deltaPositionMillisecondsSelector :: Selector '[] (Id NSNumber)
deltaPositionMillisecondsSelector = mkSelector "deltaPositionMilliseconds"

-- | @Selector@ for @setDeltaPositionMilliseconds:@
setDeltaPositionMillisecondsSelector :: Selector '[Id NSNumber] ()
setDeltaPositionMillisecondsSelector = mkSelector "setDeltaPositionMilliseconds:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

