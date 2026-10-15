{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.DataDetection.Internal.Classes (
    module ObjC.DataDetection.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- DDMatch ----------

-- | Phantom type for @DDMatch@.
data DDMatch

instance IsObjCObject (Id DDMatch) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatch"

class IsNSObject a => IsDDMatch a where
  toDDMatch :: a -> Id DDMatch

instance IsDDMatch (Id DDMatch) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatch) where
  toNSObject = unsafeCastId

-- ---------- DDMatchCalendarEvent ----------

-- | Phantom type for @DDMatchCalendarEvent@.
data DDMatchCalendarEvent

instance IsObjCObject (Id DDMatchCalendarEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatchCalendarEvent"

class IsDDMatch a => IsDDMatchCalendarEvent a where
  toDDMatchCalendarEvent :: a -> Id DDMatchCalendarEvent

instance IsDDMatchCalendarEvent (Id DDMatchCalendarEvent) where
  toDDMatchCalendarEvent = unsafeCastId

instance IsDDMatch (Id DDMatchCalendarEvent) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatchCalendarEvent) where
  toNSObject = unsafeCastId

-- ---------- DDMatchEmailAddress ----------

-- | Phantom type for @DDMatchEmailAddress@.
data DDMatchEmailAddress

instance IsObjCObject (Id DDMatchEmailAddress) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatchEmailAddress"

class IsDDMatch a => IsDDMatchEmailAddress a where
  toDDMatchEmailAddress :: a -> Id DDMatchEmailAddress

instance IsDDMatchEmailAddress (Id DDMatchEmailAddress) where
  toDDMatchEmailAddress = unsafeCastId

instance IsDDMatch (Id DDMatchEmailAddress) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatchEmailAddress) where
  toNSObject = unsafeCastId

-- ---------- DDMatchFlightNumber ----------

-- | Phantom type for @DDMatchFlightNumber@.
data DDMatchFlightNumber

instance IsObjCObject (Id DDMatchFlightNumber) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatchFlightNumber"

class IsDDMatch a => IsDDMatchFlightNumber a where
  toDDMatchFlightNumber :: a -> Id DDMatchFlightNumber

instance IsDDMatchFlightNumber (Id DDMatchFlightNumber) where
  toDDMatchFlightNumber = unsafeCastId

instance IsDDMatch (Id DDMatchFlightNumber) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatchFlightNumber) where
  toNSObject = unsafeCastId

-- ---------- DDMatchLink ----------

-- | Phantom type for @DDMatchLink@.
data DDMatchLink

instance IsObjCObject (Id DDMatchLink) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatchLink"

class IsDDMatch a => IsDDMatchLink a where
  toDDMatchLink :: a -> Id DDMatchLink

instance IsDDMatchLink (Id DDMatchLink) where
  toDDMatchLink = unsafeCastId

instance IsDDMatch (Id DDMatchLink) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatchLink) where
  toNSObject = unsafeCastId

-- ---------- DDMatchMoneyAmount ----------

-- | Phantom type for @DDMatchMoneyAmount@.
data DDMatchMoneyAmount

instance IsObjCObject (Id DDMatchMoneyAmount) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatchMoneyAmount"

class IsDDMatch a => IsDDMatchMoneyAmount a where
  toDDMatchMoneyAmount :: a -> Id DDMatchMoneyAmount

instance IsDDMatchMoneyAmount (Id DDMatchMoneyAmount) where
  toDDMatchMoneyAmount = unsafeCastId

instance IsDDMatch (Id DDMatchMoneyAmount) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatchMoneyAmount) where
  toNSObject = unsafeCastId

-- ---------- DDMatchPhoneNumber ----------

-- | Phantom type for @DDMatchPhoneNumber@.
data DDMatchPhoneNumber

instance IsObjCObject (Id DDMatchPhoneNumber) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatchPhoneNumber"

class IsDDMatch a => IsDDMatchPhoneNumber a where
  toDDMatchPhoneNumber :: a -> Id DDMatchPhoneNumber

instance IsDDMatchPhoneNumber (Id DDMatchPhoneNumber) where
  toDDMatchPhoneNumber = unsafeCastId

instance IsDDMatch (Id DDMatchPhoneNumber) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatchPhoneNumber) where
  toNSObject = unsafeCastId

-- ---------- DDMatchPostalAddress ----------

-- | Phantom type for @DDMatchPostalAddress@.
data DDMatchPostalAddress

instance IsObjCObject (Id DDMatchPostalAddress) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatchPostalAddress"

class IsDDMatch a => IsDDMatchPostalAddress a where
  toDDMatchPostalAddress :: a -> Id DDMatchPostalAddress

instance IsDDMatchPostalAddress (Id DDMatchPostalAddress) where
  toDDMatchPostalAddress = unsafeCastId

instance IsDDMatch (Id DDMatchPostalAddress) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatchPostalAddress) where
  toNSObject = unsafeCastId

-- ---------- DDMatchShipmentTrackingNumber ----------

-- | Phantom type for @DDMatchShipmentTrackingNumber@.
data DDMatchShipmentTrackingNumber

instance IsObjCObject (Id DDMatchShipmentTrackingNumber) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DDMatchShipmentTrackingNumber"

class IsDDMatch a => IsDDMatchShipmentTrackingNumber a where
  toDDMatchShipmentTrackingNumber :: a -> Id DDMatchShipmentTrackingNumber

instance IsDDMatchShipmentTrackingNumber (Id DDMatchShipmentTrackingNumber) where
  toDDMatchShipmentTrackingNumber = unsafeCastId

instance IsDDMatch (Id DDMatchShipmentTrackingNumber) where
  toDDMatch = unsafeCastId

instance IsNSObject (Id DDMatchShipmentTrackingNumber) where
  toNSObject = unsafeCastId
