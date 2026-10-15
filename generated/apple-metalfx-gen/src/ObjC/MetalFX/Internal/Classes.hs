{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.MetalFX.Internal.Classes (
    module ObjC.MetalFX.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- MTLFXSpatialScalerDescriptor ----------

-- | Phantom type for @MTLFXSpatialScalerDescriptor@.
data MTLFXSpatialScalerDescriptor

instance IsObjCObject (Id MTLFXSpatialScalerDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFXSpatialScalerDescriptor"

class IsNSObject a => IsMTLFXSpatialScalerDescriptor a where
  toMTLFXSpatialScalerDescriptor :: a -> Id MTLFXSpatialScalerDescriptor

instance IsMTLFXSpatialScalerDescriptor (Id MTLFXSpatialScalerDescriptor) where
  toMTLFXSpatialScalerDescriptor = unsafeCastId

instance IsNSObject (Id MTLFXSpatialScalerDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLFXTemporalScalerDescriptor ----------

-- | Phantom type for @MTLFXTemporalScalerDescriptor@.
data MTLFXTemporalScalerDescriptor

instance IsObjCObject (Id MTLFXTemporalScalerDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFXTemporalScalerDescriptor"

class IsNSObject a => IsMTLFXTemporalScalerDescriptor a where
  toMTLFXTemporalScalerDescriptor :: a -> Id MTLFXTemporalScalerDescriptor

instance IsMTLFXTemporalScalerDescriptor (Id MTLFXTemporalScalerDescriptor) where
  toMTLFXTemporalScalerDescriptor = unsafeCastId

instance IsNSObject (Id MTLFXTemporalScalerDescriptor) where
  toNSObject = unsafeCastId
