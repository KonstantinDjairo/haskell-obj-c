{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.NearbyInteraction.Internal.Classes (
    module ObjC.NearbyInteraction.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- NIAlgorithmConvergence ----------

-- | Phantom type for @NIAlgorithmConvergence@.
data NIAlgorithmConvergence

instance IsObjCObject (Id NIAlgorithmConvergence) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "NIAlgorithmConvergence"

class IsNSObject a => IsNIAlgorithmConvergence a where
  toNIAlgorithmConvergence :: a -> Id NIAlgorithmConvergence

instance IsNIAlgorithmConvergence (Id NIAlgorithmConvergence) where
  toNIAlgorithmConvergence = unsafeCastId

instance IsNSObject (Id NIAlgorithmConvergence) where
  toNSObject = unsafeCastId

-- ---------- NIConfiguration ----------

-- | An object to describe and configure parameters to be used in a nearby interaction session.
-- 
-- Phantom type for @NIConfiguration@.
data NIConfiguration

instance IsObjCObject (Id NIConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "NIConfiguration"

class IsNSObject a => IsNIConfiguration a where
  toNIConfiguration :: a -> Id NIConfiguration

instance IsNIConfiguration (Id NIConfiguration) where
  toNIConfiguration = unsafeCastId

instance IsNSObject (Id NIConfiguration) where
  toNSObject = unsafeCastId

-- ---------- NIDiscoveryToken ----------

-- | A type used to uniquely discover and identify a device in a nearby interaction session.
-- 
-- Phantom type for @NIDiscoveryToken@.
data NIDiscoveryToken

instance IsObjCObject (Id NIDiscoveryToken) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "NIDiscoveryToken"

class IsNSObject a => IsNIDiscoveryToken a where
  toNIDiscoveryToken :: a -> Id NIDiscoveryToken

instance IsNIDiscoveryToken (Id NIDiscoveryToken) where
  toNIDiscoveryToken = unsafeCastId

instance IsNSObject (Id NIDiscoveryToken) where
  toNSObject = unsafeCastId

-- ---------- NINearbyObject ----------

-- | A nearby object with distance and direction measurements.
-- 
-- Phantom type for @NINearbyObject@.
data NINearbyObject

instance IsObjCObject (Id NINearbyObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "NINearbyObject"

class IsNSObject a => IsNINearbyObject a where
  toNINearbyObject :: a -> Id NINearbyObject

instance IsNINearbyObject (Id NINearbyObject) where
  toNINearbyObject = unsafeCastId

instance IsNSObject (Id NINearbyObject) where
  toNSObject = unsafeCastId

-- ---------- NISession ----------

-- | Nearby interaction session.
-- 
-- Phantom type for @NISession@.
data NISession

instance IsObjCObject (Id NISession) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "NISession"

class IsNSObject a => IsNISession a where
  toNISession :: a -> Id NISession

instance IsNISession (Id NISession) where
  toNISession = unsafeCastId

instance IsNSObject (Id NISession) where
  toNSObject = unsafeCastId

-- ---------- NINearbyAccessoryConfiguration ----------

-- | A session configuration that enables interaction with supported accessories.
-- 
-- Phantom type for @NINearbyAccessoryConfiguration@.
data NINearbyAccessoryConfiguration

instance IsObjCObject (Id NINearbyAccessoryConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "NINearbyAccessoryConfiguration"

class IsNIConfiguration a => IsNINearbyAccessoryConfiguration a where
  toNINearbyAccessoryConfiguration :: a -> Id NINearbyAccessoryConfiguration

instance IsNINearbyAccessoryConfiguration (Id NINearbyAccessoryConfiguration) where
  toNINearbyAccessoryConfiguration = unsafeCastId

instance IsNIConfiguration (Id NINearbyAccessoryConfiguration) where
  toNIConfiguration = unsafeCastId

instance IsNSObject (Id NINearbyAccessoryConfiguration) where
  toNSObject = unsafeCastId

-- ---------- NINearbyPeerConfiguration ----------

-- | An object to describe and configure parameters to be used in a nearby interaction session for mutual relative positional measurements.
--
-- Devices engaged in a session run with an NINearbyPeerConfiguration are able to continuously generate positional measurements relative to one another.
-- 
-- Phantom type for @NINearbyPeerConfiguration@.
data NINearbyPeerConfiguration

instance IsObjCObject (Id NINearbyPeerConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "NINearbyPeerConfiguration"

class IsNIConfiguration a => IsNINearbyPeerConfiguration a where
  toNINearbyPeerConfiguration :: a -> Id NINearbyPeerConfiguration

instance IsNINearbyPeerConfiguration (Id NINearbyPeerConfiguration) where
  toNINearbyPeerConfiguration = unsafeCastId

instance IsNIConfiguration (Id NINearbyPeerConfiguration) where
  toNIConfiguration = unsafeCastId

instance IsNSObject (Id NINearbyPeerConfiguration) where
  toNSObject = unsafeCastId
