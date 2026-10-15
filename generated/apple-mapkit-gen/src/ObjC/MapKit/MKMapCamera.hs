{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MKMapCamera@.
module ObjC.MapKit.MKMapCamera
  ( MKMapCamera
  , IsMKMapCamera(..)
  , camera
  , cameraLookingAtCenterCoordinate_fromEyeCoordinate_eyeAltitude
  , cameraLookingAtCenterCoordinate_fromDistance_pitch_heading
  , centerCoordinate
  , setCenterCoordinate
  , centerCoordinateDistance
  , setCenterCoordinateDistance
  , heading
  , setHeading
  , pitch
  , setPitch
  , altitude
  , setAltitude
  , altitudeSelector
  , cameraLookingAtCenterCoordinate_fromDistance_pitch_headingSelector
  , cameraLookingAtCenterCoordinate_fromEyeCoordinate_eyeAltitudeSelector
  , cameraSelector
  , centerCoordinateDistanceSelector
  , centerCoordinateSelector
  , headingSelector
  , pitchSelector
  , setAltitudeSelector
  , setCenterCoordinateDistanceSelector
  , setCenterCoordinateSelector
  , setHeadingSelector
  , setPitchSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MapKit.Internal.Classes
import ObjC.CoreLocation.Internal.Structs
import ObjC.Foundation.Internal.Classes

-- | @+ camera@
camera :: IO (Id MKMapCamera)
camera  =
  do
    cls' <- getRequiredClass "MKMapCamera"
    sendClassMessage cls' cameraSelector

-- | @+ cameraLookingAtCenterCoordinate:fromEyeCoordinate:eyeAltitude:@
cameraLookingAtCenterCoordinate_fromEyeCoordinate_eyeAltitude :: CLLocationCoordinate2D -> CLLocationCoordinate2D -> CDouble -> IO (Id MKMapCamera)
cameraLookingAtCenterCoordinate_fromEyeCoordinate_eyeAltitude centerCoordinate eyeCoordinate eyeAltitude =
  do
    cls' <- getRequiredClass "MKMapCamera"
    sendClassMessage cls' cameraLookingAtCenterCoordinate_fromEyeCoordinate_eyeAltitudeSelector centerCoordinate eyeCoordinate eyeAltitude

-- | @+ cameraLookingAtCenterCoordinate:fromDistance:pitch:heading:@
cameraLookingAtCenterCoordinate_fromDistance_pitch_heading :: CLLocationCoordinate2D -> CDouble -> CDouble -> CDouble -> IO (Id MKMapCamera)
cameraLookingAtCenterCoordinate_fromDistance_pitch_heading centerCoordinate distance pitch heading =
  do
    cls' <- getRequiredClass "MKMapCamera"
    sendClassMessage cls' cameraLookingAtCenterCoordinate_fromDistance_pitch_headingSelector centerCoordinate distance pitch heading

-- | @- centerCoordinate@
centerCoordinate :: IsMKMapCamera mkMapCamera => mkMapCamera -> IO CLLocationCoordinate2D
centerCoordinate mkMapCamera =
  sendMessage mkMapCamera centerCoordinateSelector

-- | @- setCenterCoordinate:@
setCenterCoordinate :: IsMKMapCamera mkMapCamera => mkMapCamera -> CLLocationCoordinate2D -> IO ()
setCenterCoordinate mkMapCamera value =
  sendMessage mkMapCamera setCenterCoordinateSelector value

-- | @- centerCoordinateDistance@
centerCoordinateDistance :: IsMKMapCamera mkMapCamera => mkMapCamera -> IO CDouble
centerCoordinateDistance mkMapCamera =
  sendMessage mkMapCamera centerCoordinateDistanceSelector

-- | @- setCenterCoordinateDistance:@
setCenterCoordinateDistance :: IsMKMapCamera mkMapCamera => mkMapCamera -> CDouble -> IO ()
setCenterCoordinateDistance mkMapCamera value =
  sendMessage mkMapCamera setCenterCoordinateDistanceSelector value

-- | @- heading@
heading :: IsMKMapCamera mkMapCamera => mkMapCamera -> IO CDouble
heading mkMapCamera =
  sendMessage mkMapCamera headingSelector

-- | @- setHeading:@
setHeading :: IsMKMapCamera mkMapCamera => mkMapCamera -> CDouble -> IO ()
setHeading mkMapCamera value =
  sendMessage mkMapCamera setHeadingSelector value

-- | @- pitch@
pitch :: IsMKMapCamera mkMapCamera => mkMapCamera -> IO CDouble
pitch mkMapCamera =
  sendMessage mkMapCamera pitchSelector

-- | @- setPitch:@
setPitch :: IsMKMapCamera mkMapCamera => mkMapCamera -> CDouble -> IO ()
setPitch mkMapCamera value =
  sendMessage mkMapCamera setPitchSelector value

-- | @- altitude@
altitude :: IsMKMapCamera mkMapCamera => mkMapCamera -> IO CDouble
altitude mkMapCamera =
  sendMessage mkMapCamera altitudeSelector

-- | @- setAltitude:@
setAltitude :: IsMKMapCamera mkMapCamera => mkMapCamera -> CDouble -> IO ()
setAltitude mkMapCamera value =
  sendMessage mkMapCamera setAltitudeSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @camera@
cameraSelector :: Selector '[] (Id MKMapCamera)
cameraSelector = mkSelector "camera"

-- | @Selector@ for @cameraLookingAtCenterCoordinate:fromEyeCoordinate:eyeAltitude:@
cameraLookingAtCenterCoordinate_fromEyeCoordinate_eyeAltitudeSelector :: Selector '[CLLocationCoordinate2D, CLLocationCoordinate2D, CDouble] (Id MKMapCamera)
cameraLookingAtCenterCoordinate_fromEyeCoordinate_eyeAltitudeSelector = mkSelector "cameraLookingAtCenterCoordinate:fromEyeCoordinate:eyeAltitude:"

-- | @Selector@ for @cameraLookingAtCenterCoordinate:fromDistance:pitch:heading:@
cameraLookingAtCenterCoordinate_fromDistance_pitch_headingSelector :: Selector '[CLLocationCoordinate2D, CDouble, CDouble, CDouble] (Id MKMapCamera)
cameraLookingAtCenterCoordinate_fromDistance_pitch_headingSelector = mkSelector "cameraLookingAtCenterCoordinate:fromDistance:pitch:heading:"

-- | @Selector@ for @centerCoordinate@
centerCoordinateSelector :: Selector '[] CLLocationCoordinate2D
centerCoordinateSelector = mkSelector "centerCoordinate"

-- | @Selector@ for @setCenterCoordinate:@
setCenterCoordinateSelector :: Selector '[CLLocationCoordinate2D] ()
setCenterCoordinateSelector = mkSelector "setCenterCoordinate:"

-- | @Selector@ for @centerCoordinateDistance@
centerCoordinateDistanceSelector :: Selector '[] CDouble
centerCoordinateDistanceSelector = mkSelector "centerCoordinateDistance"

-- | @Selector@ for @setCenterCoordinateDistance:@
setCenterCoordinateDistanceSelector :: Selector '[CDouble] ()
setCenterCoordinateDistanceSelector = mkSelector "setCenterCoordinateDistance:"

-- | @Selector@ for @heading@
headingSelector :: Selector '[] CDouble
headingSelector = mkSelector "heading"

-- | @Selector@ for @setHeading:@
setHeadingSelector :: Selector '[CDouble] ()
setHeadingSelector = mkSelector "setHeading:"

-- | @Selector@ for @pitch@
pitchSelector :: Selector '[] CDouble
pitchSelector = mkSelector "pitch"

-- | @Selector@ for @setPitch:@
setPitchSelector :: Selector '[CDouble] ()
setPitchSelector = mkSelector "setPitch:"

-- | @Selector@ for @altitude@
altitudeSelector :: Selector '[] CDouble
altitudeSelector = mkSelector "altitude"

-- | @Selector@ for @setAltitude:@
setAltitudeSelector :: Selector '[CDouble] ()
setAltitudeSelector = mkSelector "setAltitude:"

