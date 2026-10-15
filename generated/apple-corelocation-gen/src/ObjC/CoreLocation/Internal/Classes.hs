{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.CoreLocation.Internal.Classes (
    module ObjC.CoreLocation.Internal.Classes,
    module ObjC.Contacts.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Contacts.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- CLBeacon ----------

-- | Phantom type for @CLBeacon@.
data CLBeacon

instance IsObjCObject (Id CLBeacon) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLBeacon"

class IsNSObject a => IsCLBeacon a where
  toCLBeacon :: a -> Id CLBeacon

instance IsCLBeacon (Id CLBeacon) where
  toCLBeacon = unsafeCastId

instance IsNSObject (Id CLBeacon) where
  toNSObject = unsafeCastId

-- ---------- CLBeaconIdentityConstraint ----------

-- | Phantom type for @CLBeaconIdentityConstraint@.
data CLBeaconIdentityConstraint

instance IsObjCObject (Id CLBeaconIdentityConstraint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLBeaconIdentityConstraint"

class IsNSObject a => IsCLBeaconIdentityConstraint a where
  toCLBeaconIdentityConstraint :: a -> Id CLBeaconIdentityConstraint

instance IsCLBeaconIdentityConstraint (Id CLBeaconIdentityConstraint) where
  toCLBeaconIdentityConstraint = unsafeCastId

instance IsNSObject (Id CLBeaconIdentityConstraint) where
  toNSObject = unsafeCastId

-- ---------- CLFloor ----------

-- | Phantom type for @CLFloor@.
data CLFloor

instance IsObjCObject (Id CLFloor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLFloor"

class IsNSObject a => IsCLFloor a where
  toCLFloor :: a -> Id CLFloor

instance IsCLFloor (Id CLFloor) where
  toCLFloor = unsafeCastId

instance IsNSObject (Id CLFloor) where
  toNSObject = unsafeCastId

-- ---------- CLGeocoder ----------

-- | Phantom type for @CLGeocoder@.
data CLGeocoder

instance IsObjCObject (Id CLGeocoder) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLGeocoder"

class IsNSObject a => IsCLGeocoder a where
  toCLGeocoder :: a -> Id CLGeocoder

instance IsCLGeocoder (Id CLGeocoder) where
  toCLGeocoder = unsafeCastId

instance IsNSObject (Id CLGeocoder) where
  toNSObject = unsafeCastId

-- ---------- CLHeading ----------

-- | Phantom type for @CLHeading@.
data CLHeading

instance IsObjCObject (Id CLHeading) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLHeading"

class IsNSObject a => IsCLHeading a where
  toCLHeading :: a -> Id CLHeading

instance IsCLHeading (Id CLHeading) where
  toCLHeading = unsafeCastId

instance IsNSObject (Id CLHeading) where
  toNSObject = unsafeCastId

-- ---------- CLLocation ----------

-- | Phantom type for @CLLocation@.
data CLLocation

instance IsObjCObject (Id CLLocation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLLocation"

class IsNSObject a => IsCLLocation a where
  toCLLocation :: a -> Id CLLocation

instance IsCLLocation (Id CLLocation) where
  toCLLocation = unsafeCastId

instance IsNSObject (Id CLLocation) where
  toNSObject = unsafeCastId

-- ---------- CLLocationManager ----------

-- | Phantom type for @CLLocationManager@.
data CLLocationManager

instance IsObjCObject (Id CLLocationManager) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLLocationManager"

class IsNSObject a => IsCLLocationManager a where
  toCLLocationManager :: a -> Id CLLocationManager

instance IsCLLocationManager (Id CLLocationManager) where
  toCLLocationManager = unsafeCastId

instance IsNSObject (Id CLLocationManager) where
  toNSObject = unsafeCastId

-- ---------- CLLocationSourceInformation ----------

-- | Phantom type for @CLLocationSourceInformation@.
data CLLocationSourceInformation

instance IsObjCObject (Id CLLocationSourceInformation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLLocationSourceInformation"

class IsNSObject a => IsCLLocationSourceInformation a where
  toCLLocationSourceInformation :: a -> Id CLLocationSourceInformation

instance IsCLLocationSourceInformation (Id CLLocationSourceInformation) where
  toCLLocationSourceInformation = unsafeCastId

instance IsNSObject (Id CLLocationSourceInformation) where
  toNSObject = unsafeCastId

-- ---------- CLPlacemark ----------

-- | Phantom type for @CLPlacemark@.
data CLPlacemark

instance IsObjCObject (Id CLPlacemark) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLPlacemark"

class IsNSObject a => IsCLPlacemark a where
  toCLPlacemark :: a -> Id CLPlacemark

instance IsCLPlacemark (Id CLPlacemark) where
  toCLPlacemark = unsafeCastId

instance IsNSObject (Id CLPlacemark) where
  toNSObject = unsafeCastId

-- ---------- CLRegion ----------

-- | Phantom type for @CLRegion@.
data CLRegion

instance IsObjCObject (Id CLRegion) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLRegion"

class IsNSObject a => IsCLRegion a where
  toCLRegion :: a -> Id CLRegion

instance IsCLRegion (Id CLRegion) where
  toCLRegion = unsafeCastId

instance IsNSObject (Id CLRegion) where
  toNSObject = unsafeCastId

-- ---------- CLVisit ----------

-- | Phantom type for @CLVisit@.
data CLVisit

instance IsObjCObject (Id CLVisit) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLVisit"

class IsNSObject a => IsCLVisit a where
  toCLVisit :: a -> Id CLVisit

instance IsCLVisit (Id CLVisit) where
  toCLVisit = unsafeCastId

instance IsNSObject (Id CLVisit) where
  toNSObject = unsafeCastId

-- ---------- CLBeaconRegion ----------

-- | Phantom type for @CLBeaconRegion@.
data CLBeaconRegion

instance IsObjCObject (Id CLBeaconRegion) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLBeaconRegion"

class IsCLRegion a => IsCLBeaconRegion a where
  toCLBeaconRegion :: a -> Id CLBeaconRegion

instance IsCLBeaconRegion (Id CLBeaconRegion) where
  toCLBeaconRegion = unsafeCastId

instance IsCLRegion (Id CLBeaconRegion) where
  toCLRegion = unsafeCastId

instance IsNSObject (Id CLBeaconRegion) where
  toNSObject = unsafeCastId

-- ---------- CLCircularRegion ----------

-- | Phantom type for @CLCircularRegion@.
data CLCircularRegion

instance IsObjCObject (Id CLCircularRegion) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CLCircularRegion"

class IsCLRegion a => IsCLCircularRegion a where
  toCLCircularRegion :: a -> Id CLCircularRegion

instance IsCLCircularRegion (Id CLCircularRegion) where
  toCLCircularRegion = unsafeCastId

instance IsCLRegion (Id CLCircularRegion) where
  toCLRegion = unsafeCastId

instance IsNSObject (Id CLCircularRegion) where
  toNSObject = unsafeCastId
