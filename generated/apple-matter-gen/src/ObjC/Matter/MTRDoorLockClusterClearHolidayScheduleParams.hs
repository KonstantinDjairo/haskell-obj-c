{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterClearHolidayScheduleParams@.
module ObjC.Matter.MTRDoorLockClusterClearHolidayScheduleParams
  ( MTRDoorLockClusterClearHolidayScheduleParams
  , IsMTRDoorLockClusterClearHolidayScheduleParams(..)
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
init_ :: IsMTRDoorLockClusterClearHolidayScheduleParams mtrDoorLockClusterClearHolidayScheduleParams => mtrDoorLockClusterClearHolidayScheduleParams -> IO (Id MTRDoorLockClusterClearHolidayScheduleParams)
init_ mtrDoorLockClusterClearHolidayScheduleParams =
  sendOwnedMessage mtrDoorLockClusterClearHolidayScheduleParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterClearHolidayScheduleParams mtrDoorLockClusterClearHolidayScheduleParams => mtrDoorLockClusterClearHolidayScheduleParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterClearHolidayScheduleParams zone =
  sendOwnedMessage mtrDoorLockClusterClearHolidayScheduleParams copyWithZoneSelector zone

-- | @- holidayIndex@
holidayIndex :: IsMTRDoorLockClusterClearHolidayScheduleParams mtrDoorLockClusterClearHolidayScheduleParams => mtrDoorLockClusterClearHolidayScheduleParams -> IO (Id NSNumber)
holidayIndex mtrDoorLockClusterClearHolidayScheduleParams =
  sendMessage mtrDoorLockClusterClearHolidayScheduleParams holidayIndexSelector

-- | @- setHolidayIndex:@
setHolidayIndex :: (IsMTRDoorLockClusterClearHolidayScheduleParams mtrDoorLockClusterClearHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterClearHolidayScheduleParams -> value -> IO ()
setHolidayIndex mtrDoorLockClusterClearHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterClearHolidayScheduleParams setHolidayIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterClearHolidayScheduleParams mtrDoorLockClusterClearHolidayScheduleParams => mtrDoorLockClusterClearHolidayScheduleParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterClearHolidayScheduleParams =
  sendMessage mtrDoorLockClusterClearHolidayScheduleParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterClearHolidayScheduleParams mtrDoorLockClusterClearHolidayScheduleParams, IsNSNumber value) => mtrDoorLockClusterClearHolidayScheduleParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterClearHolidayScheduleParams value =
  sendMessage mtrDoorLockClusterClearHolidayScheduleParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterClearHolidayScheduleParams)
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

