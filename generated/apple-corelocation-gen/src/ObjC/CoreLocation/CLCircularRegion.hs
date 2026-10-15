{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CLCircularRegion@.
module ObjC.CoreLocation.CLCircularRegion
  ( CLCircularRegion
  , IsCLCircularRegion(..)
  , initWithCenter_radius_identifier
  , containsCoordinate
  , center
  , radius
  , centerSelector
  , containsCoordinateSelector
  , initWithCenter_radius_identifierSelector
  , radiusSelector


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

-- | @- initWithCenter:radius:identifier:@
initWithCenter_radius_identifier :: (IsCLCircularRegion clCircularRegion, IsNSString identifier) => clCircularRegion -> CLLocationCoordinate2D -> CDouble -> identifier -> IO (Id CLCircularRegion)
initWithCenter_radius_identifier clCircularRegion center radius identifier =
  sendOwnedMessage clCircularRegion initWithCenter_radius_identifierSelector center radius (toNSString identifier)

-- | @- containsCoordinate:@
containsCoordinate :: IsCLCircularRegion clCircularRegion => clCircularRegion -> CLLocationCoordinate2D -> IO Bool
containsCoordinate clCircularRegion coordinate =
  sendMessage clCircularRegion containsCoordinateSelector coordinate

-- | @- center@
center :: IsCLCircularRegion clCircularRegion => clCircularRegion -> IO CLLocationCoordinate2D
center clCircularRegion =
  sendMessage clCircularRegion centerSelector

-- | @- radius@
radius :: IsCLCircularRegion clCircularRegion => clCircularRegion -> IO CDouble
radius clCircularRegion =
  sendMessage clCircularRegion radiusSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithCenter:radius:identifier:@
initWithCenter_radius_identifierSelector :: Selector '[CLLocationCoordinate2D, CDouble, Id NSString] (Id CLCircularRegion)
initWithCenter_radius_identifierSelector = mkSelector "initWithCenter:radius:identifier:"

-- | @Selector@ for @containsCoordinate:@
containsCoordinateSelector :: Selector '[CLLocationCoordinate2D] Bool
containsCoordinateSelector = mkSelector "containsCoordinate:"

-- | @Selector@ for @center@
centerSelector :: Selector '[] CLLocationCoordinate2D
centerSelector = mkSelector "center"

-- | @Selector@ for @radius@
radiusSelector :: Selector '[] CDouble
radiusSelector = mkSelector "radius"

