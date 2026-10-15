{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRMediaPlaybackClusterSkipForwardParams@.
module ObjC.Matter.MTRMediaPlaybackClusterSkipForwardParams
  ( MTRMediaPlaybackClusterSkipForwardParams
  , IsMTRMediaPlaybackClusterSkipForwardParams(..)
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
init_ :: IsMTRMediaPlaybackClusterSkipForwardParams mtrMediaPlaybackClusterSkipForwardParams => mtrMediaPlaybackClusterSkipForwardParams -> IO (Id MTRMediaPlaybackClusterSkipForwardParams)
init_ mtrMediaPlaybackClusterSkipForwardParams =
  sendOwnedMessage mtrMediaPlaybackClusterSkipForwardParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRMediaPlaybackClusterSkipForwardParams mtrMediaPlaybackClusterSkipForwardParams => mtrMediaPlaybackClusterSkipForwardParams -> Ptr () -> IO RawId
copyWithZone mtrMediaPlaybackClusterSkipForwardParams zone =
  sendOwnedMessage mtrMediaPlaybackClusterSkipForwardParams copyWithZoneSelector zone

-- | @- deltaPositionMilliseconds@
deltaPositionMilliseconds :: IsMTRMediaPlaybackClusterSkipForwardParams mtrMediaPlaybackClusterSkipForwardParams => mtrMediaPlaybackClusterSkipForwardParams -> IO (Id NSNumber)
deltaPositionMilliseconds mtrMediaPlaybackClusterSkipForwardParams =
  sendMessage mtrMediaPlaybackClusterSkipForwardParams deltaPositionMillisecondsSelector

-- | @- setDeltaPositionMilliseconds:@
setDeltaPositionMilliseconds :: (IsMTRMediaPlaybackClusterSkipForwardParams mtrMediaPlaybackClusterSkipForwardParams, IsNSNumber value) => mtrMediaPlaybackClusterSkipForwardParams -> value -> IO ()
setDeltaPositionMilliseconds mtrMediaPlaybackClusterSkipForwardParams value =
  sendMessage mtrMediaPlaybackClusterSkipForwardParams setDeltaPositionMillisecondsSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRMediaPlaybackClusterSkipForwardParams mtrMediaPlaybackClusterSkipForwardParams => mtrMediaPlaybackClusterSkipForwardParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrMediaPlaybackClusterSkipForwardParams =
  sendMessage mtrMediaPlaybackClusterSkipForwardParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRMediaPlaybackClusterSkipForwardParams mtrMediaPlaybackClusterSkipForwardParams, IsNSNumber value) => mtrMediaPlaybackClusterSkipForwardParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrMediaPlaybackClusterSkipForwardParams value =
  sendMessage mtrMediaPlaybackClusterSkipForwardParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRMediaPlaybackClusterSkipForwardParams)
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

