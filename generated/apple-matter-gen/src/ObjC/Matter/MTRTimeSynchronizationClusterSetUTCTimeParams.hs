{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTimeSynchronizationClusterSetUtcTimeParams@.
module ObjC.Matter.MTRTimeSynchronizationClusterSetUtcTimeParams
  ( MTRTimeSynchronizationClusterSetUtcTimeParams
  , IsMTRTimeSynchronizationClusterSetUtcTimeParams(..)
  , init_
  , copyWithZone
  , utcTime
  , setUtcTime
  , granularity
  , setGranularity
  , timeSource
  , setTimeSource
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , granularitySelector
  , initSelector
  , setGranularitySelector
  , setTimeSourceSelector
  , setTimedInvokeTimeoutMsSelector
  , setUtcTimeSelector
  , timeSourceSelector
  , timedInvokeTimeoutMsSelector
  , utcTimeSelector


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
init_ :: IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams => mtrTimeSynchronizationClusterSetUtcTimeParams -> IO (Id MTRTimeSynchronizationClusterSetUtcTimeParams)
init_ mtrTimeSynchronizationClusterSetUtcTimeParams =
  sendOwnedMessage mtrTimeSynchronizationClusterSetUtcTimeParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams => mtrTimeSynchronizationClusterSetUtcTimeParams -> Ptr () -> IO RawId
copyWithZone mtrTimeSynchronizationClusterSetUtcTimeParams zone =
  sendOwnedMessage mtrTimeSynchronizationClusterSetUtcTimeParams copyWithZoneSelector zone

-- | @- utcTime@
utcTime :: IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams => mtrTimeSynchronizationClusterSetUtcTimeParams -> IO (Id NSNumber)
utcTime mtrTimeSynchronizationClusterSetUtcTimeParams =
  sendMessage mtrTimeSynchronizationClusterSetUtcTimeParams utcTimeSelector

-- | @- setUtcTime:@
setUtcTime :: (IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams, IsNSNumber value) => mtrTimeSynchronizationClusterSetUtcTimeParams -> value -> IO ()
setUtcTime mtrTimeSynchronizationClusterSetUtcTimeParams value =
  sendMessage mtrTimeSynchronizationClusterSetUtcTimeParams setUtcTimeSelector (toNSNumber value)

-- | @- granularity@
granularity :: IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams => mtrTimeSynchronizationClusterSetUtcTimeParams -> IO (Id NSNumber)
granularity mtrTimeSynchronizationClusterSetUtcTimeParams =
  sendMessage mtrTimeSynchronizationClusterSetUtcTimeParams granularitySelector

-- | @- setGranularity:@
setGranularity :: (IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams, IsNSNumber value) => mtrTimeSynchronizationClusterSetUtcTimeParams -> value -> IO ()
setGranularity mtrTimeSynchronizationClusterSetUtcTimeParams value =
  sendMessage mtrTimeSynchronizationClusterSetUtcTimeParams setGranularitySelector (toNSNumber value)

-- | @- timeSource@
timeSource :: IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams => mtrTimeSynchronizationClusterSetUtcTimeParams -> IO (Id NSNumber)
timeSource mtrTimeSynchronizationClusterSetUtcTimeParams =
  sendMessage mtrTimeSynchronizationClusterSetUtcTimeParams timeSourceSelector

-- | @- setTimeSource:@
setTimeSource :: (IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams, IsNSNumber value) => mtrTimeSynchronizationClusterSetUtcTimeParams -> value -> IO ()
setTimeSource mtrTimeSynchronizationClusterSetUtcTimeParams value =
  sendMessage mtrTimeSynchronizationClusterSetUtcTimeParams setTimeSourceSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams => mtrTimeSynchronizationClusterSetUtcTimeParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTimeSynchronizationClusterSetUtcTimeParams =
  sendMessage mtrTimeSynchronizationClusterSetUtcTimeParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTimeSynchronizationClusterSetUtcTimeParams mtrTimeSynchronizationClusterSetUtcTimeParams, IsNSNumber value) => mtrTimeSynchronizationClusterSetUtcTimeParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTimeSynchronizationClusterSetUtcTimeParams value =
  sendMessage mtrTimeSynchronizationClusterSetUtcTimeParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTimeSynchronizationClusterSetUtcTimeParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @utcTime@
utcTimeSelector :: Selector '[] (Id NSNumber)
utcTimeSelector = mkSelector "utcTime"

-- | @Selector@ for @setUtcTime:@
setUtcTimeSelector :: Selector '[Id NSNumber] ()
setUtcTimeSelector = mkSelector "setUtcTime:"

-- | @Selector@ for @granularity@
granularitySelector :: Selector '[] (Id NSNumber)
granularitySelector = mkSelector "granularity"

-- | @Selector@ for @setGranularity:@
setGranularitySelector :: Selector '[Id NSNumber] ()
setGranularitySelector = mkSelector "setGranularity:"

-- | @Selector@ for @timeSource@
timeSourceSelector :: Selector '[] (Id NSNumber)
timeSourceSelector = mkSelector "timeSource"

-- | @Selector@ for @setTimeSource:@
setTimeSourceSelector :: Selector '[Id NSNumber] ()
setTimeSourceSelector = mkSelector "setTimeSource:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

