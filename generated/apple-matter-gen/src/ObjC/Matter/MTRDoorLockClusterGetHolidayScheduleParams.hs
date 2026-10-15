{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterGetHolidayScheduleParams@.
module ObjC.Matter.MTRDoorLockClusterGetHolidayScheduleParams
  ( MTRDoorLockClusterGetHolidayScheduleParams
  , IsMTRDoorLockClusterGetHolidayScheduleParams(..)
  , init_
  , copyWithZone
  , holidayIndex
  , setHolidayIndex
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , holidayIndexSelector
  , initSelector
  , setHolidayIndexSelector
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
init_ :: IsMTRDoorLockClusterGetHolidayScheduleParams mtrDoorLockClusterGetHolidayScheduleParams => mtrDoorLockClusterGetHolidayScheduleParams -> IO (Id MTRDoorLockClusterGetHolidayScheduleParams)
init_ mtrDoorLockClusterGetHolidayScheduleParams =
  sendOwnedMessage mtrDoorLockClusterGetHolidayScheduleParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterGetHolidayScheduleParams mtrDoorLockClusterGetHolidayScheduleParams => mtrDoorLockClusterGetHolidayScheduleParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterGetHolidayScheduleParams zone =
  sendOwnedMessage mtrDoorLockClusterGetHolidayScheduleParams copyWithZoneSelector zone

-- | @- holidayIndex@
holidayIndex :: IsMTRDoorLockClusterGetHolidayScheduleParams mtrDoorLockClusterGetHolidayScheduleParams => mtrDoorLockClusterGetHolidayScheduleParams -> IO (Id NSNumber)
holidayIndex mtrDoorLockClusterGetHolidayScheduleParams =
  sendMessage mtrDoorLockClusterGetHolidayScheduleParams holidayIndexSelector

-- | @- setHolidayIndex:@
setHolidayIndex :: (IsMTRDoorLockClusterGetHolidayScheduleParams mtrDoorLockClusterGetHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterGetHolidayScheduleParams -> value -> IO ()
setHolidayIndex mtrDoorLockClusterGetHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterGetHolidayScheduleParams setHolidayIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterGetHolidayScheduleParams mtrDoorLockClusterGetHolidayScheduleParams => mtrDoorLockClusterGetHolidayScheduleParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterGetHolidayScheduleParams =
  sendMessage mtrDoorLockClusterGetHolidayScheduleParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterGetHolidayScheduleParams mtrDoorLockClusterGetHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterGetHolidayScheduleParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterGetHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterGetHolidayScheduleParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterGetHolidayScheduleParams)
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

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

