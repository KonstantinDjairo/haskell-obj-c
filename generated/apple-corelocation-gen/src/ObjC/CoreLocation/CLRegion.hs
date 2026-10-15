{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CLRegion@.
module ObjC.CoreLocation.CLRegion
  ( CLRegion
  , IsCLRegion(..)
  , initCircularRegionWithCenter_radius_identifier
  , containsCoordinate
  , center
  , radius
  , identifier
  , notifyOnEntry
  , setNotifyOnEntry
  , notifyOnExit
  , setNotifyOnExit
  , centerSelector
  , containsCoordinateSelector
  , identifierSelector
  , initCircularRegionWithCenter_radius_identifierSelector
  , notifyOnEntrySelector
  , notifyOnExitSelector
  , radiusSelector
  , setNotifyOnEntrySelector
  , setNotifyOnExitSelector


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

-- | @- initCircularRegionWithCenter:radius:identifier:@
initCircularRegionWithCenter_radius_identifier :: (IsCLRegion clRegion, IsNSString identifier) => clRegion -> CLLocationCoordinate2D -> CDouble -> identifier -> IO (Id CLRegion)
initCircularRegionWithCenter_radius_identifier clRegion center radius identifier =
  sendOwnedMessage clRegion initCircularRegionWithCenter_radius_identifierSelector center radius (toNSString identifier)

-- | @- containsCoordinate:@
containsCoordinate :: IsCLRegion clRegion => clRegion -> CLLocationCoordinate2D -> IO Bool
containsCoordinate clRegion coordinate =
  sendMessage clRegion containsCoordinateSelector coordinate

-- | @- center@
center :: IsCLRegion clRegion => clRegion -> IO CLLocationCoordinate2D
center clRegion =
  sendMessage clRegion centerSelector

-- | @- radius@
radius :: IsCLRegion clRegion => clRegion -> IO CDouble
radius clRegion =
  sendMessage clRegion radiusSelector

-- | @- identifier@
identifier :: IsCLRegion clRegion => clRegion -> IO (Id NSString)
identifier clRegion =
  sendMessage clRegion identifierSelector

-- | @- notifyOnEntry@
notifyOnEntry :: IsCLRegion clRegion => clRegion -> IO Bool
notifyOnEntry clRegion =
  sendMessage clRegion notifyOnEntrySelector

-- | @- setNotifyOnEntry:@
setNotifyOnEntry :: IsCLRegion clRegion => clRegion -> Bool -> IO ()
setNotifyOnEntry clRegion value =
  sendMessage clRegion setNotifyOnEntrySelector value

-- | @- notifyOnExit@
notifyOnExit :: IsCLRegion clRegion => clRegion -> IO Bool
notifyOnExit clRegion =
  sendMessage clRegion notifyOnExitSelector

-- | @- setNotifyOnExit:@
setNotifyOnExit :: IsCLRegion clRegion => clRegion -> Bool -> IO ()
setNotifyOnExit clRegion value =
  sendMessage clRegion setNotifyOnExitSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initCircularRegionWithCenter:radius:identifier:@
initCircularRegionWithCenter_radius_identifierSelector :: Selector '[CLLocationCoordinate2D, CDouble, Id NSString] (Id CLRegion)
initCircularRegionWithCenter_radius_identifierSelector = mkSelector "initCircularRegionWithCenter:radius:identifier:"

-- | @Selector@ for @containsCoordinate:@
containsCoordinateSelector :: Selector '[CLLocationCoordinate2D] Bool
containsCoordinateSelector = mkSelector "containsCoordinate:"

-- | @Selector@ for @center@
centerSelector :: Selector '[] CLLocationCoordinate2D
centerSelector = mkSelector "center"

-- | @Selector@ for @radius@
radiusSelector :: Selector '[] CDouble
radiusSelector = mkSelector "radius"

-- | @Selector@ for @identifier@
identifierSelector :: Selector '[] (Id NSString)
identifierSelector = mkSelector "identifier"

-- | @Selector@ for @notifyOnEntry@
notifyOnEntrySelector :: Selector '[] Bool
notifyOnEntrySelector = mkSelector "notifyOnEntry"

-- | @Selector@ for @setNotifyOnEntry:@
setNotifyOnEntrySelector :: Selector '[Bool] ()
setNotifyOnEntrySelector = mkSelector "setNotifyOnEntry:"

-- | @Selector@ for @notifyOnExit@
notifyOnExitSelector :: Selector '[] Bool
notifyOnExitSelector = mkSelector "notifyOnExit"

-- | @Selector@ for @setNotifyOnExit:@
setNotifyOnExitSelector :: Selector '[Bool] ()
setNotifyOnExitSelector = mkSelector "setNotifyOnExit:"

