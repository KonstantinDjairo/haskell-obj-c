{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.AVRouting.Internal.Classes (
    module ObjC.AVRouting.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- AVCustomDeviceRoute ----------

-- | AVCustomDeviceRoute
--
-- This class represents a custom device route.
--
-- Clients can use the receiver's networkEndpoint or bluetoothIdentifier to establish a connection to the device.                Usually, either the network endpoint or the Bluetooth identifier will be nil, depending on what type of device it is.                In certain scenarios both can be non-nil, in which case the client can decide which one to use.
-- 
-- Phantom type for @AVCustomDeviceRoute@.
data AVCustomDeviceRoute

instance IsObjCObject (Id AVCustomDeviceRoute) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AVCustomDeviceRoute"

class IsNSObject a => IsAVCustomDeviceRoute a where
  toAVCustomDeviceRoute :: a -> Id AVCustomDeviceRoute

instance IsAVCustomDeviceRoute (Id AVCustomDeviceRoute) where
  toAVCustomDeviceRoute = unsafeCastId

instance IsNSObject (Id AVCustomDeviceRoute) where
  toNSObject = unsafeCastId

-- ---------- AVCustomRoutingActionItem ----------

-- | AVCustomRoutingActionItem
--
-- AVCustomRoutingActionItem objects can be created by 3rd parties to inject custom action items into the route picker.
--
-- An item can be any action the app wants to provide as menu items besides the discovered routes.    Tapping on the custom items dismisses the picker and invokes a callback to the app telling it which item was tapped. (See -[AVCustomRoutingController customRoutingController:didSelectItem:])
-- 
-- Phantom type for @AVCustomRoutingActionItem@.
data AVCustomRoutingActionItem

instance IsObjCObject (Id AVCustomRoutingActionItem) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AVCustomRoutingActionItem"

class IsNSObject a => IsAVCustomRoutingActionItem a where
  toAVCustomRoutingActionItem :: a -> Id AVCustomRoutingActionItem

instance IsAVCustomRoutingActionItem (Id AVCustomRoutingActionItem) where
  toAVCustomRoutingActionItem = unsafeCastId

instance IsNSObject (Id AVCustomRoutingActionItem) where
  toNSObject = unsafeCastId

-- ---------- AVCustomRoutingController ----------

-- | AVCustomRoutingController
--
-- When a user selects / deselects a 3rd party device in the route picker, this class delegates the activation / deactivation of that device to the client of this class via AVCustomRoutingEvents.
--
-- This class also informs the client which routes have been previously authorized, allowing them to reconnect if appropriate.
-- 
-- Phantom type for @AVCustomRoutingController@.
data AVCustomRoutingController

instance IsObjCObject (Id AVCustomRoutingController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AVCustomRoutingController"

class IsNSObject a => IsAVCustomRoutingController a where
  toAVCustomRoutingController :: a -> Id AVCustomRoutingController

instance IsAVCustomRoutingController (Id AVCustomRoutingController) where
  toAVCustomRoutingController = unsafeCastId

instance IsNSObject (Id AVCustomRoutingController) where
  toNSObject = unsafeCastId

-- ---------- AVCustomRoutingEvent ----------

-- | AVCustomRoutingEvent
--
-- This class represents an event that occurs on a route.
--
-- Depending on the reason for the event, clients are expected to establish or tear down the connection to the given route.
-- 
-- Phantom type for @AVCustomRoutingEvent@.
data AVCustomRoutingEvent

instance IsObjCObject (Id AVCustomRoutingEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AVCustomRoutingEvent"

class IsNSObject a => IsAVCustomRoutingEvent a where
  toAVCustomRoutingEvent :: a -> Id AVCustomRoutingEvent

instance IsAVCustomRoutingEvent (Id AVCustomRoutingEvent) where
  toAVCustomRoutingEvent = unsafeCastId

instance IsNSObject (Id AVCustomRoutingEvent) where
  toNSObject = unsafeCastId

-- ---------- AVCustomRoutingPartialIP ----------

-- | AVCustomRoutingPartialIP
--
-- Represents a full or partial IP address. To be used in conjunction with AVCustomRoutingController.knownRouteIPs
-- 
-- Phantom type for @AVCustomRoutingPartialIP@.
data AVCustomRoutingPartialIP

instance IsObjCObject (Id AVCustomRoutingPartialIP) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AVCustomRoutingPartialIP"

class IsNSObject a => IsAVCustomRoutingPartialIP a where
  toAVCustomRoutingPartialIP :: a -> Id AVCustomRoutingPartialIP

instance IsAVCustomRoutingPartialIP (Id AVCustomRoutingPartialIP) where
  toAVCustomRoutingPartialIP = unsafeCastId

instance IsNSObject (Id AVCustomRoutingPartialIP) where
  toNSObject = unsafeCastId
