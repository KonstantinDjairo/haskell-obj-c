{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.ScriptingBridge.Internal.Classes (
    module ObjC.ScriptingBridge.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- SBObject ----------

-- | Phantom type for @SBObject@.
data SBObject

instance IsObjCObject (Id SBObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SBObject"

class IsNSObject a => IsSBObject a where
  toSBObject :: a -> Id SBObject

instance IsSBObject (Id SBObject) where
  toSBObject = unsafeCastId

instance IsNSObject (Id SBObject) where
  toNSObject = unsafeCastId

-- ---------- SBApplication ----------

-- | Phantom type for @SBApplication@.
data SBApplication

instance IsObjCObject (Id SBApplication) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SBApplication"

class IsSBObject a => IsSBApplication a where
  toSBApplication :: a -> Id SBApplication

instance IsSBApplication (Id SBApplication) where
  toSBApplication = unsafeCastId

instance IsNSObject (Id SBApplication) where
  toNSObject = unsafeCastId

instance IsSBObject (Id SBApplication) where
  toSBObject = unsafeCastId

-- ---------- SBElementArray ----------

-- | Phantom type for @SBElementArray@.
data SBElementArray

instance IsObjCObject (Id SBElementArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SBElementArray"

class IsNSMutableArray a => IsSBElementArray a where
  toSBElementArray :: a -> Id SBElementArray

instance IsSBElementArray (Id SBElementArray) where
  toSBElementArray = unsafeCastId

instance IsNSArray (Id SBElementArray) where
  toNSArray = unsafeCastId

instance IsNSMutableArray (Id SBElementArray) where
  toNSMutableArray = unsafeCastId

instance IsNSObject (Id SBElementArray) where
  toNSObject = unsafeCastId
