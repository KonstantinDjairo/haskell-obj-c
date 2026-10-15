{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MKCircle@.
module ObjC.MapKit.MKCircle
  ( MKCircle
  , IsMKCircle(..)
  , circleWithCenterCoordinate_radius
  , coordinate
  , radius
  , circleWithCenterCoordinate_radiusSelector
  , coordinateSelector
  , radiusSelector


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

-- | @+ circleWithCenterCoordinate:radius:@
circleWithCenterCoordinate_radius :: CLLocationCoordinate2D -> CDouble -> IO (Id MKCircle)
circleWithCenterCoordinate_radius coord radius =
  do
    cls' <- getRequiredClass "MKCircle"
    sendClassMessage cls' circleWithCenterCoordinate_radiusSelector coord radius

-- | @- coordinate@
coordinate :: IsMKCircle mkCircle => mkCircle -> IO CLLocationCoordinate2D
coordinate mkCircle =
  sendMessage mkCircle coordinateSelector

-- | @- radius@
radius :: IsMKCircle mkCircle => mkCircle -> IO CDouble
radius mkCircle =
  sendMessage mkCircle radiusSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @circleWithCenterCoordinate:radius:@
circleWithCenterCoordinate_radiusSelector :: Selector '[CLLocationCoordinate2D, CDouble] (Id MKCircle)
circleWithCenterCoordinate_radiusSelector = mkSelector "circleWithCenterCoordinate:radius:"

-- | @Selector@ for @coordinate@
coordinateSelector :: Selector '[] CLLocationCoordinate2D
coordinateSelector = mkSelector "coordinate"

-- | @Selector@ for @radius@
radiusSelector :: Selector '[] CDouble
radiusSelector = mkSelector "radius"

