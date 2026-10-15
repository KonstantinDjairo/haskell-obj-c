{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.SystemExtensions.Internal.Classes (
    module ObjC.SystemExtensions.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- OSSystemExtensionManager ----------

-- | Phantom type for @OSSystemExtensionManager@.
data OSSystemExtensionManager

instance IsObjCObject (Id OSSystemExtensionManager) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "OSSystemExtensionManager"

class IsNSObject a => IsOSSystemExtensionManager a where
  toOSSystemExtensionManager :: a -> Id OSSystemExtensionManager

instance IsOSSystemExtensionManager (Id OSSystemExtensionManager) where
  toOSSystemExtensionManager = unsafeCastId

instance IsNSObject (Id OSSystemExtensionManager) where
  toNSObject = unsafeCastId

-- ---------- OSSystemExtensionProperties ----------

-- | Phantom type for @OSSystemExtensionProperties@.
data OSSystemExtensionProperties

instance IsObjCObject (Id OSSystemExtensionProperties) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "OSSystemExtensionProperties"

class IsNSObject a => IsOSSystemExtensionProperties a where
  toOSSystemExtensionProperties :: a -> Id OSSystemExtensionProperties

instance IsOSSystemExtensionProperties (Id OSSystemExtensionProperties) where
  toOSSystemExtensionProperties = unsafeCastId

instance IsNSObject (Id OSSystemExtensionProperties) where
  toNSObject = unsafeCastId

-- ---------- OSSystemExtensionRequest ----------

-- | Phantom type for @OSSystemExtensionRequest@.
data OSSystemExtensionRequest

instance IsObjCObject (Id OSSystemExtensionRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "OSSystemExtensionRequest"

class IsNSObject a => IsOSSystemExtensionRequest a where
  toOSSystemExtensionRequest :: a -> Id OSSystemExtensionRequest

instance IsOSSystemExtensionRequest (Id OSSystemExtensionRequest) where
  toOSSystemExtensionRequest = unsafeCastId

instance IsNSObject (Id OSSystemExtensionRequest) where
  toNSObject = unsafeCastId
