{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MKPointAnnotation@.
module ObjC.MapKit.MKPointAnnotation
  ( MKPointAnnotation
  , IsMKPointAnnotation(..)
  , init_
  , initWithCoordinate
  , initWithCoordinate_title_subtitle
  , coordinate
  , setCoordinate
  , coordinateSelector
  , initSelector
  , initWithCoordinateSelector
  , initWithCoordinate_title_subtitleSelector
  , setCoordinateSelector


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
init_ :: IsMKPointAnnotation mkPointAnnotation => mkPointAnnotation -> IO (Id MKPointAnnotation)
init_ mkPointAnnotation =
  sendOwnedMessage mkPointAnnotation initSelector

-- | @- initWithCoordinate:@
initWithCoordinate :: IsMKPointAnnotation mkPointAnnotation => mkPointAnnotation -> CLLocationCoordinate2D -> IO (Id MKPointAnnotation)
initWithCoordinate mkPointAnnotation coordinate =
  sendOwnedMessage mkPointAnnotation initWithCoordinateSelector coordinate

-- | @- initWithCoordinate:title:subtitle:@
initWithCoordinate_title_subtitle :: (IsMKPointAnnotation mkPointAnnotation, IsNSString title, IsNSString subtitle) => mkPointAnnotation -> CLLocationCoordinate2D -> title -> subtitle -> IO (Id MKPointAnnotation)
initWithCoordinate_title_subtitle mkPointAnnotation coordinate title subtitle =
  sendOwnedMessage mkPointAnnotation initWithCoordinate_title_subtitleSelector coordinate (toNSString title) (toNSString subtitle)

-- | @- coordinate@
coordinate :: IsMKPointAnnotation mkPointAnnotation => mkPointAnnotation -> IO CLLocationCoordinate2D
coordinate mkPointAnnotation =
  sendMessage mkPointAnnotation coordinateSelector

-- | @- setCoordinate:@
setCoordinate :: IsMKPointAnnotation mkPointAnnotation => mkPointAnnotation -> CLLocationCoordinate2D -> IO ()
setCoordinate mkPointAnnotation value =
  sendMessage mkPointAnnotation setCoordinateSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MKPointAnnotation)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithCoordinate:@
initWithCoordinateSelector :: Selector '[CLLocationCoordinate2D] (Id MKPointAnnotation)
initWithCoordinateSelector = mkSelector "initWithCoordinate:"

-- | @Selector@ for @initWithCoordinate:title:subtitle:@
initWithCoordinate_title_subtitleSelector :: Selector '[CLLocationCoordinate2D, Id NSString, Id NSString] (Id MKPointAnnotation)
initWithCoordinate_title_subtitleSelector = mkSelector "initWithCoordinate:title:subtitle:"

-- | @Selector@ for @coordinate@
coordinateSelector :: Selector '[] CLLocationCoordinate2D
coordinateSelector = mkSelector "coordinate"

-- | @Selector@ for @setCoordinate:@
setCoordinateSelector :: Selector '[CLLocationCoordinate2D] ()
setCoordinateSelector = mkSelector "setCoordinate:"

