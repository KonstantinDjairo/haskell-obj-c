{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MKLocalPointsOfInterestRequest@.
module ObjC.MapKit.MKLocalPointsOfInterestRequest
  ( MKLocalPointsOfInterestRequest
  , IsMKLocalPointsOfInterestRequest(..)
  , init_
  , initWithCenterCoordinate_radius
  , coordinate
  , radius
  , pointOfInterestFilter
  , setPointOfInterestFilter
  , coordinateSelector
  , initSelector
  , initWithCenterCoordinate_radiusSelector
  , pointOfInterestFilterSelector
  , radiusSelector
  , setPointOfInterestFilterSelector


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

-- | @- init@
init_ :: IsMKLocalPointsOfInterestRequest mkLocalPointsOfInterestRequest => mkLocalPointsOfInterestRequest -> IO (Id MKLocalPointsOfInterestRequest)
init_ mkLocalPointsOfInterestRequest =
  sendOwnedMessage mkLocalPointsOfInterestRequest initSelector

-- | @- initWithCenterCoordinate:radius:@
initWithCenterCoordinate_radius :: IsMKLocalPointsOfInterestRequest mkLocalPointsOfInterestRequest => mkLocalPointsOfInterestRequest -> CLLocationCoordinate2D -> CDouble -> IO (Id MKLocalPointsOfInterestRequest)
initWithCenterCoordinate_radius mkLocalPointsOfInterestRequest coordinate radius =
  sendOwnedMessage mkLocalPointsOfInterestRequest initWithCenterCoordinate_radiusSelector coordinate radius

-- | @- coordinate@
coordinate :: IsMKLocalPointsOfInterestRequest mkLocalPointsOfInterestRequest => mkLocalPointsOfInterestRequest -> IO CLLocationCoordinate2D
coordinate mkLocalPointsOfInterestRequest =
  sendMessage mkLocalPointsOfInterestRequest coordinateSelector

-- | @- radius@
radius :: IsMKLocalPointsOfInterestRequest mkLocalPointsOfInterestRequest => mkLocalPointsOfInterestRequest -> IO CDouble
radius mkLocalPointsOfInterestRequest =
  sendMessage mkLocalPointsOfInterestRequest radiusSelector

-- | @- pointOfInterestFilter@
pointOfInterestFilter :: IsMKLocalPointsOfInterestRequest mkLocalPointsOfInterestRequest => mkLocalPointsOfInterestRequest -> IO (Id MKPointOfInterestFilter)
pointOfInterestFilter mkLocalPointsOfInterestRequest =
  sendMessage mkLocalPointsOfInterestRequest pointOfInterestFilterSelector

-- | @- setPointOfInterestFilter:@
setPointOfInterestFilter :: (IsMKLocalPointsOfInterestRequest mkLocalPointsOfInterestRequest, IsMKPointOfInterestFilter value) => mkLocalPointsOfInterestRequest -> value -> IO ()
setPointOfInterestFilter mkLocalPointsOfInterestRequest value =
  sendMessage mkLocalPointsOfInterestRequest setPointOfInterestFilterSelector (toMKPointOfInterestFilter value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MKLocalPointsOfInterestRequest)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithCenterCoordinate:radius:@
initWithCenterCoordinate_radiusSelector :: Selector '[CLLocationCoordinate2D, CDouble] (Id MKLocalPointsOfInterestRequest)
initWithCenterCoordinate_radiusSelector = mkSelector "initWithCenterCoordinate:radius:"

-- | @Selector@ for @coordinate@
coordinateSelector :: Selector '[] CLLocationCoordinate2D
coordinateSelector = mkSelector "coordinate"

-- | @Selector@ for @radius@
radiusSelector :: Selector '[] CDouble
radiusSelector = mkSelector "radius"

-- | @Selector@ for @pointOfInterestFilter@
pointOfInterestFilterSelector :: Selector '[] (Id MKPointOfInterestFilter)
pointOfInterestFilterSelector = mkSelector "pointOfInterestFilter"

-- | @Selector@ for @setPointOfInterestFilter:@
setPointOfInterestFilterSelector :: Selector '[Id MKPointOfInterestFilter] ()
setPointOfInterestFilterSelector = mkSelector "setPointOfInterestFilter:"

