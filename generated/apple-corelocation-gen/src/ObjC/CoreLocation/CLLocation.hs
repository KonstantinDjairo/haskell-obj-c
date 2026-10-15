{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CLLocation@.
module ObjC.CoreLocation.CLLocation
  ( CLLocation
  , IsCLLocation(..)
  , initWithLatitude_longitude
  , initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp
  , initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_speed_timestamp
  , initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp
  , initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_sourceInfo
  , getDistanceFrom
  , distanceFromLocation
  , coordinate
  , altitude
  , ellipsoidalAltitude
  , horizontalAccuracy
  , verticalAccuracy
  , course
  , courseAccuracy
  , speed
  , speedAccuracy
  , timestamp
  , floor_
  , sourceInformation
  , altitudeSelector
  , coordinateSelector
  , courseAccuracySelector
  , courseSelector
  , distanceFromLocationSelector
  , ellipsoidalAltitudeSelector
  , floorSelector
  , getDistanceFromSelector
  , horizontalAccuracySelector
  , initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestampSelector
  , initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_sourceInfoSelector
  , initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_speed_timestampSelector
  , initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestampSelector
  , initWithLatitude_longitudeSelector
  , sourceInformationSelector
  , speedAccuracySelector
  , speedSelector
  , timestampSelector
  , verticalAccuracySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreLocation.Internal.Classes
import ObjC.CoreLocation.Internal.Structs
import ObjC.Foundation.Internal.Classes

-- | @- initWithLatitude:longitude:@
initWithLatitude_longitude :: IsCLLocation clLocation => clLocation -> CDouble -> CDouble -> IO (Id CLLocation)
initWithLatitude_longitude clLocation latitude longitude =
  sendOwnedMessage clLocation initWithLatitude_longitudeSelector latitude longitude

-- | @- initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:@
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp :: (IsCLLocation clLocation, IsNSDate timestamp) => clLocation -> CLLocationCoordinate2D -> CDouble -> CDouble -> CDouble -> timestamp -> IO (Id CLLocation)
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp clLocation coordinate altitude hAccuracy vAccuracy timestamp =
  sendOwnedMessage clLocation initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestampSelector coordinate altitude hAccuracy vAccuracy (toNSDate timestamp)

-- | @- initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:speed:timestamp:@
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_speed_timestamp :: (IsCLLocation clLocation, IsNSDate timestamp) => clLocation -> CLLocationCoordinate2D -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> timestamp -> IO (Id CLLocation)
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_speed_timestamp clLocation coordinate altitude hAccuracy vAccuracy course speed timestamp =
  sendOwnedMessage clLocation initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_speed_timestampSelector coordinate altitude hAccuracy vAccuracy course speed (toNSDate timestamp)

-- | @- initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:timestamp:@
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp :: (IsCLLocation clLocation, IsNSDate timestamp) => clLocation -> CLLocationCoordinate2D -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> timestamp -> IO (Id CLLocation)
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp clLocation coordinate altitude hAccuracy vAccuracy course courseAccuracy speed speedAccuracy timestamp =
  sendOwnedMessage clLocation initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestampSelector coordinate altitude hAccuracy vAccuracy course courseAccuracy speed speedAccuracy (toNSDate timestamp)

-- | @- initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:timestamp:sourceInfo:@
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_sourceInfo :: (IsCLLocation clLocation, IsNSDate timestamp, IsCLLocationSourceInformation sourceInfo) => clLocation -> CLLocationCoordinate2D -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> timestamp -> sourceInfo -> IO (Id CLLocation)
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_sourceInfo clLocation coordinate altitude hAccuracy vAccuracy course courseAccuracy speed speedAccuracy timestamp sourceInfo =
  sendOwnedMessage clLocation initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_sourceInfoSelector coordinate altitude hAccuracy vAccuracy course courseAccuracy speed speedAccuracy (toNSDate timestamp) (toCLLocationSourceInformation sourceInfo)

-- | @- getDistanceFrom:@
getDistanceFrom :: IsCLLocation clLocation => clLocation -> Const (Id CLLocation) -> IO CDouble
getDistanceFrom clLocation location =
  sendMessage clLocation getDistanceFromSelector location

-- | @- distanceFromLocation:@
distanceFromLocation :: IsCLLocation clLocation => clLocation -> Const (Id CLLocation) -> IO CDouble
distanceFromLocation clLocation location =
  sendMessage clLocation distanceFromLocationSelector location

-- | @- coordinate@
coordinate :: IsCLLocation clLocation => clLocation -> IO CLLocationCoordinate2D
coordinate clLocation =
  sendMessage clLocation coordinateSelector

-- | @- altitude@
altitude :: IsCLLocation clLocation => clLocation -> IO CDouble
altitude clLocation =
  sendMessage clLocation altitudeSelector

-- | @- ellipsoidalAltitude@
ellipsoidalAltitude :: IsCLLocation clLocation => clLocation -> IO CDouble
ellipsoidalAltitude clLocation =
  sendMessage clLocation ellipsoidalAltitudeSelector

-- | @- horizontalAccuracy@
horizontalAccuracy :: IsCLLocation clLocation => clLocation -> IO CDouble
horizontalAccuracy clLocation =
  sendMessage clLocation horizontalAccuracySelector

-- | @- verticalAccuracy@
verticalAccuracy :: IsCLLocation clLocation => clLocation -> IO CDouble
verticalAccuracy clLocation =
  sendMessage clLocation verticalAccuracySelector

-- | @- course@
course :: IsCLLocation clLocation => clLocation -> IO CDouble
course clLocation =
  sendMessage clLocation courseSelector

-- | @- courseAccuracy@
courseAccuracy :: IsCLLocation clLocation => clLocation -> IO CDouble
courseAccuracy clLocation =
  sendMessage clLocation courseAccuracySelector

-- | @- speed@
speed :: IsCLLocation clLocation => clLocation -> IO CDouble
speed clLocation =
  sendMessage clLocation speedSelector

-- | @- speedAccuracy@
speedAccuracy :: IsCLLocation clLocation => clLocation -> IO CDouble
speedAccuracy clLocation =
  sendMessage clLocation speedAccuracySelector

-- | @- timestamp@
timestamp :: IsCLLocation clLocation => clLocation -> IO (Id NSDate)
timestamp clLocation =
  sendMessage clLocation timestampSelector

-- | @- floor@
floor_ :: IsCLLocation clLocation => clLocation -> IO (Id CLFloor)
floor_ clLocation =
  sendMessage clLocation floorSelector

-- | @- sourceInformation@
sourceInformation :: IsCLLocation clLocation => clLocation -> IO (Id CLLocationSourceInformation)
sourceInformation clLocation =
  sendMessage clLocation sourceInformationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithLatitude:longitude:@
initWithLatitude_longitudeSelector :: Selector '[CDouble, CDouble] (Id CLLocation)
initWithLatitude_longitudeSelector = mkSelector "initWithLatitude:longitude:"

-- | @Selector@ for @initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:@
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestampSelector :: Selector '[CLLocationCoordinate2D, CDouble, CDouble, CDouble, Id NSDate] (Id CLLocation)
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestampSelector = mkSelector "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:"

-- | @Selector@ for @initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:speed:timestamp:@
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_speed_timestampSelector :: Selector '[CLLocationCoordinate2D, CDouble, CDouble, CDouble, CDouble, CDouble, Id NSDate] (Id CLLocation)
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_speed_timestampSelector = mkSelector "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:speed:timestamp:"

-- | @Selector@ for @initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:timestamp:@
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestampSelector :: Selector '[CLLocationCoordinate2D, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, Id NSDate] (Id CLLocation)
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestampSelector = mkSelector "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:timestamp:"

-- | @Selector@ for @initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:timestamp:sourceInfo:@
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_sourceInfoSelector :: Selector '[CLLocationCoordinate2D, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, Id NSDate, Id CLLocationSourceInformation] (Id CLLocation)
initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_sourceInfoSelector = mkSelector "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:timestamp:sourceInfo:"

-- | @Selector@ for @getDistanceFrom:@
getDistanceFromSelector :: Selector '[Const (Id CLLocation)] CDouble
getDistanceFromSelector = mkSelector "getDistanceFrom:"

-- | @Selector@ for @distanceFromLocation:@
distanceFromLocationSelector :: Selector '[Const (Id CLLocation)] CDouble
distanceFromLocationSelector = mkSelector "distanceFromLocation:"

-- | @Selector@ for @coordinate@
coordinateSelector :: Selector '[] CLLocationCoordinate2D
coordinateSelector = mkSelector "coordinate"

-- | @Selector@ for @altitude@
altitudeSelector :: Selector '[] CDouble
altitudeSelector = mkSelector "altitude"

-- | @Selector@ for @ellipsoidalAltitude@
ellipsoidalAltitudeSelector :: Selector '[] CDouble
ellipsoidalAltitudeSelector = mkSelector "ellipsoidalAltitude"

-- | @Selector@ for @horizontalAccuracy@
horizontalAccuracySelector :: Selector '[] CDouble
horizontalAccuracySelector = mkSelector "horizontalAccuracy"

-- | @Selector@ for @verticalAccuracy@
verticalAccuracySelector :: Selector '[] CDouble
verticalAccuracySelector = mkSelector "verticalAccuracy"

-- | @Selector@ for @course@
courseSelector :: Selector '[] CDouble
courseSelector = mkSelector "course"

-- | @Selector@ for @courseAccuracy@
courseAccuracySelector :: Selector '[] CDouble
courseAccuracySelector = mkSelector "courseAccuracy"

-- | @Selector@ for @speed@
speedSelector :: Selector '[] CDouble
speedSelector = mkSelector "speed"

-- | @Selector@ for @speedAccuracy@
speedAccuracySelector :: Selector '[] CDouble
speedAccuracySelector = mkSelector "speedAccuracy"

-- | @Selector@ for @timestamp@
timestampSelector :: Selector '[] (Id NSDate)
timestampSelector = mkSelector "timestamp"

-- | @Selector@ for @floor@
floorSelector :: Selector '[] (Id CLFloor)
floorSelector = mkSelector "floor"

-- | @Selector@ for @sourceInformation@
sourceInformationSelector :: Selector '[] (Id CLLocationSourceInformation)
sourceInformationSelector = mkSelector "sourceInformation"

