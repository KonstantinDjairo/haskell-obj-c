{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.AdServices.Internal.Classes (
    module ObjC.AdServices.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- AAAttribution ----------

-- | AAAttribution
--
-- This class contains a method that generates a token used to obtain the app's attribution from Apple’s Attribution Server.
-- 
-- Phantom type for @AAAttribution@.
data AAAttribution

instance IsObjCObject (Id AAAttribution) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AAAttribution"

class IsNSObject a => IsAAAttribution a where
  toAAAttribution :: a -> Id AAAttribution

instance IsAAAttribution (Id AAAttribution) where
  toAAAttribution = unsafeCastId

instance IsNSObject (Id AAAttribution) where
  toNSObject = unsafeCastId
