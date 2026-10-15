{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.DeviceCheck.Internal.Classes (
    module ObjC.DeviceCheck.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- DCAppAttestService ----------

-- | Phantom type for @DCAppAttestService@.
data DCAppAttestService

instance IsObjCObject (Id DCAppAttestService) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DCAppAttestService"

class IsNSObject a => IsDCAppAttestService a where
  toDCAppAttestService :: a -> Id DCAppAttestService

instance IsDCAppAttestService (Id DCAppAttestService) where
  toDCAppAttestService = unsafeCastId

instance IsNSObject (Id DCAppAttestService) where
  toNSObject = unsafeCastId

-- ---------- DCDevice ----------

-- | Phantom type for @DCDevice@.
data DCDevice

instance IsObjCObject (Id DCDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "DCDevice"

class IsNSObject a => IsDCDevice a where
  toDCDevice :: a -> Id DCDevice

instance IsDCDevice (Id DCDevice) where
  toDCDevice = unsafeCastId

instance IsNSObject (Id DCDevice) where
  toNSObject = unsafeCastId
