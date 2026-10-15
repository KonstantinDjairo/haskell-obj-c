{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterSetHolidayScheduleParams@.
module ObjC.Matter.MTRDoorLockClusterSetHolidayScheduleParams
  ( MTRDoorLockClusterSetHolidayScheduleParams
  , IsMTRDoorLockClusterSetHolidayScheduleParams(..)
  , init_
  , copyWithZone
  , holidayIndex
  , setHolidayIndex
  , localStartTime
  , setLocalStartTime
  , localEndTime
  , setLocalEndTime
  , operatingMode
  , setOperatingMode
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , holidayIndexSelector
  , initSelector
  , localEndTimeSelector
  , localStartTimeSelector
  , operatingModeSelector
  , setHolidayIndexSelector
  , setLocalEndTimeSelector
  , setLocalStartTimeSelector
  , setOperatingModeSelector
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
init_ :: IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams => mtrDoorLockClusterSetHolidayScheduleParams -> IO (Id MTRDoorLockClusterSetHolidayScheduleParams)
init_ mtrDoorLockClusterSetHolidayScheduleParams =
  sendOwnedMessage mtrDoorLockClusterSetHolidayScheduleParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams => mtrDoorLockClusterSetHolidayScheduleParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterSetHolidayScheduleParams zone =
  sendOwnedMessage mtrDoorLockClusterSetHolidayScheduleParams copyWithZoneSelector zone

-- | @- holidayIndex@
holidayIndex :: IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams => mtrDoorLockClusterSetHolidayScheduleParams -> IO (Id NSNumber)
holidayIndex mtrDoorLockClusterSetHolidayScheduleParams =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams holidayIndexSelector

-- | @- setHolidayIndex:@
setHolidayIndex :: (IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterSetHolidayScheduleParams -> value -> IO ()
setHolidayIndex mtrDoorLockClusterSetHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams setHolidayIndexSelector (toNSNumber value)

-- | @- localStartTime@
localStartTime :: IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams => mtrDoorLockClusterSetHolidayScheduleParams -> IO (Id NSNumber)
localStartTime mtrDoorLockClusterSetHolidayScheduleParams =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams localStartTimeSelector

-- | @- setLocalStartTime:@
setLocalStartTime :: (IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterSetHolidayScheduleParams -> value -> IO ()
setLocalStartTime mtrDoorLockClusterSetHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams setLocalStartTimeSelector (toNSNumber value)

-- | @- localEndTime@
localEndTime :: IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams => mtrDoorLockClusterSetHolidayScheduleParams -> IO (Id NSNumber)
localEndTime mtrDoorLockClusterSetHolidayScheduleParams =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams localEndTimeSelector

-- | @- setLocalEndTime:@
setLocalEndTime :: (IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterSetHolidayScheduleParams -> value -> IO ()
setLocalEndTime mtrDoorLockClusterSetHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams setLocalEndTimeSelector (toNSNumber value)

-- | @- operatingMode@
operatingMode :: IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams => mtrDoorLockClusterSetHolidayScheduleParams -> IO (Id NSNumber)
operatingMode mtrDoorLockClusterSetHolidayScheduleParams =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams operatingModeSelector

-- | @- setOperatingMode:@
setOperatingMode :: (IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterSetHolidayScheduleParams -> value -> IO ()
setOperatingMode mtrDoorLockClusterSetHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams setOperatingModeSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams => mtrDoorLockClusterSetHolidayScheduleParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterSetHolidayScheduleParams =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterSetHolidayScheduleParams mtrDoorLockClusterSetHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterSetHolidayScheduleParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterSetHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterSetHolidayScheduleParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterSetHolidayScheduleParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @holidayIndex@
holidayIndexSelector :: Selector '[] (Id NSNumber)
holidayIndexSelector = mkSelector "holidayIndex"

-- | @Selector@ for @setHolidayIndex:@
setHolidayIndexSelector :: Selector '[Id NSNumber] ()
setHolidayIndexSelector = mkSelector "setHolidayIndex:"

-- | @Selector@ for @localStartTime@
localStartTimeSelector :: Selector '[] (Id NSNumber)
localStartTimeSelector = mkSelector "localStartTime"

-- | @Selector@ for @setLocalStartTime:@
setLocalStartTimeSelector :: Selector '[Id NSNumber] ()
setLocalStartTimeSelector = mkSelector "setLocalStartTime:"

-- | @Selector@ for @localEndTime@
localEndTimeSelector :: Selector '[] (Id NSNumber)
localEndTimeSelector = mkSelector "localEndTime"

-- | @Selector@ for @setLocalEndTime:@
setLocalEndTimeSelector :: Selector '[Id NSNumber] ()
setLocalEndTimeSelector = mkSelector "setLocalEndTime:"

-- | @Selector@ for @operatingMode@
operatingModeSelector :: Selector '[] (Id NSNumber)
operatingModeSelector = mkSelector "operatingMode"

-- | @Selector@ for @setOperatingMode:@
setOperatingModeSelector :: Selector '[Id NSNumber] ()
setOperatingModeSelector = mkSelector "setOperatingMode:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

