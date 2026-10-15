{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DDMatchCalendarEvent@.
module ObjC.DataDetection.DDMatchCalendarEvent
  ( DDMatchCalendarEvent
  , IsDDMatchCalendarEvent(..)
  , allDay
  , startDate
  , startTimeZone
  , endDate
  , endTimeZone
  , allDaySelector
  , endDateSelector
  , endTimeZoneSelector
  , startDateSelector
  , startTimeZoneSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DataDetection.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- allDay@
allDay :: IsDDMatchCalendarEvent ddMatchCalendarEvent => ddMatchCalendarEvent -> IO Bool
allDay ddMatchCalendarEvent =
  sendMessage ddMatchCalendarEvent allDaySelector

-- | @- startDate@
startDate :: IsDDMatchCalendarEvent ddMatchCalendarEvent => ddMatchCalendarEvent -> IO (Id NSDate)
startDate ddMatchCalendarEvent =
  sendMessage ddMatchCalendarEvent startDateSelector

-- | @- startTimeZone@
startTimeZone :: IsDDMatchCalendarEvent ddMatchCalendarEvent => ddMatchCalendarEvent -> IO (Id NSTimeZone)
startTimeZone ddMatchCalendarEvent =
  sendMessage ddMatchCalendarEvent startTimeZoneSelector

-- | @- endDate@
endDate :: IsDDMatchCalendarEvent ddMatchCalendarEvent => ddMatchCalendarEvent -> IO (Id NSDate)
endDate ddMatchCalendarEvent =
  sendMessage ddMatchCalendarEvent endDateSelector

-- | @- endTimeZone@
endTimeZone :: IsDDMatchCalendarEvent ddMatchCalendarEvent => ddMatchCalendarEvent -> IO (Id NSTimeZone)
endTimeZone ddMatchCalendarEvent =
  sendMessage ddMatchCalendarEvent endTimeZoneSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @allDay@
allDaySelector :: Selector '[] Bool
allDaySelector = mkSelector "allDay"

-- | @Selector@ for @startDate@
startDateSelector :: Selector '[] (Id NSDate)
startDateSelector = mkSelector "startDate"

-- | @Selector@ for @startTimeZone@
startTimeZoneSelector :: Selector '[] (Id NSTimeZone)
startTimeZoneSelector = mkSelector "startTimeZone"

-- | @Selector@ for @endDate@
endDateSelector :: Selector '[] (Id NSDate)
endDateSelector = mkSelector "endDate"

-- | @Selector@ for @endTimeZone@
endTimeZoneSelector :: Selector '[] (Id NSTimeZone)
endTimeZoneSelector = mkSelector "endTimeZone"

