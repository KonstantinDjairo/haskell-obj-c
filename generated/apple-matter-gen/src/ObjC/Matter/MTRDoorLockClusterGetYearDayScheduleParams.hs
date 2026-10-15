{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterGetYearDayScheduleParams@.
module ObjC.Matter.MTRDoorLockClusterGetYearDayScheduleParams
  ( MTRDoorLockClusterGetYearDayScheduleParams
  , IsMTRDoorLockClusterGetYearDayScheduleParams(..)
  , init_
  , copyWithZone
  , yearDayIndex
  , setYearDayIndex
  , userIndex
  , setUserIndex
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , setTimedInvokeTimeoutMsSelector
  , setUserIndexSelector
  , setYearDayIndexSelector
  , timedInvokeTimeoutMsSelector
  , userIndexSelector
  , yearDayIndexSelector


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
init_ :: IsMTRDoorLockClusterGetYearDayScheduleParams mtrDoorLockClusterGetYearDayScheduleParams => mtrDoorLockClusterGetYearDayScheduleParams -> IO (Id MTRDoorLockClusterGetYearDayScheduleParams)
init_ mtrDoorLockClusterGetYearDayScheduleParams =
  sendOwnedMessage mtrDoorLockClusterGetYearDayScheduleParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterGetYearDayScheduleParams mtrDoorLockClusterGetYearDayScheduleParams => mtrDoorLockClusterGetYearDayScheduleParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterGetYearDayScheduleParams zone =
  sendOwnedMessage mtrDoorLockClusterGetYearDayScheduleParams copyWithZoneSelector zone

-- | @- yearDayIndex@
yearDayIndex :: IsMTRDoorLockClusterGetYearDayScheduleParams mtrDoorLockClusterGetYearDayScheduleParams => mtrDoorLockClusterGetYearDayScheduleParams -> IO (Id NSNumber)
yearDayIndex mtrDoorLockClusterGetYearDayScheduleParams =
  sendMessage mtrDoorLockClusterGetYearDayScheduleParams yearDayIndexSelector

-- | @- setYearDayIndex:@
setYearDayIndex :: (IsMTRDoorLockClusterGetYearDayScheduleParams mtrDoorLockClusterGetYearDayScheduleParams, IsNSNumber value) => mtrDoorLockClusterGetYearDayScheduleParams -> value -> IO ()
setYearDayIndex mtrDoorLockClusterGetYearDayScheduleParams value =
  sendMessage mtrDoorLockClusterGetYearDayScheduleParams setYearDayIndexSelector (toNSNumber value)

-- | @- userIndex@
userIndex :: IsMTRDoorLockClusterGetYearDayScheduleParams mtrDoorLockClusterGetYearDayScheduleParams => mtrDoorLockClusterGetYearDayScheduleParams -> IO (Id NSNumber)
userIndex mtrDoorLockClusterGetYearDayScheduleParams =
  sendMessage mtrDoorLockClusterGetYearDayScheduleParams userIndexSelector

-- | @- setUserIndex:@
setUserIndex :: (IsMTRDoorLockClusterGetYearDayScheduleParams mtrDoorLockClusterGetYearDayScheduleParams, IsNSNumber value) => mtrDoorLockClusterGetYearDayScheduleParams -> value -> IO ()
setUserIndex mtrDoorLockClusterGetYearDayScheduleParams value =
  sendMessage mtrDoorLockClusterGetYearDayScheduleParams setUserIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterGetYearDayScheduleParams mtrDoorLockClusterGetYearDayScheduleParams => mtrDoorLockClusterGetYearDayScheduleParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterGetYearDayScheduleParams =
  sendMessage mtrDoorLockClusterGetYearDayScheduleParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterGetYearDayScheduleParams mtrDoorLockClusterGetYearDayScheduleParams, IsNSNumber value) => mtrDoorLockClusterGetYearDayScheduleParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterGetYearDayScheduleParams value =
  sendMessage mtrDoorLockClusterGetYearDayScheduleParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterGetYearDayScheduleParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @yearDayIndex@
yearDayIndexSelector :: Selector '[] (Id NSNumber)
yearDayIndexSelector = mkSelector "yearDayIndex"

-- | @Selector@ for @setYearDayIndex:@
setYearDayIndexSelector :: Selector '[Id NSNumber] ()
setYearDayIndexSelector = mkSelector "setYearDayIndex:"

-- | @Selector@ for @userIndex@
userIndexSelector :: Selector '[] (Id NSNumber)
userIndexSelector = mkSelector "userIndex"

-- | @Selector@ for @setUserIndex:@
setUserIndexSelector :: Selector '[Id NSNumber] ()
setUserIndexSelector = mkSelector "setUserIndex:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

