{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.Collaboration.Internal.Classes (
    module ObjC.Collaboration.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- CBIdentity ----------

-- | Phantom type for @CBIdentity@.
data CBIdentity

instance IsObjCObject (Id CBIdentity) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CBIdentity"

class IsNSObject a => IsCBIdentity a where
  toCBIdentity :: a -> Id CBIdentity

instance IsCBIdentity (Id CBIdentity) where
  toCBIdentity = unsafeCastId

instance IsNSObject (Id CBIdentity) where
  toNSObject = unsafeCastId

-- ---------- CBIdentityAuthority ----------

-- | Phantom type for @CBIdentityAuthority@.
data CBIdentityAuthority

instance IsObjCObject (Id CBIdentityAuthority) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CBIdentityAuthority"

class IsNSObject a => IsCBIdentityAuthority a where
  toCBIdentityAuthority :: a -> Id CBIdentityAuthority

instance IsCBIdentityAuthority (Id CBIdentityAuthority) where
  toCBIdentityAuthority = unsafeCastId

instance IsNSObject (Id CBIdentityAuthority) where
  toNSObject = unsafeCastId

-- ---------- CBIdentityPicker ----------

-- | Phantom type for @CBIdentityPicker@.
data CBIdentityPicker

instance IsObjCObject (Id CBIdentityPicker) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CBIdentityPicker"

class IsNSObject a => IsCBIdentityPicker a where
  toCBIdentityPicker :: a -> Id CBIdentityPicker

instance IsCBIdentityPicker (Id CBIdentityPicker) where
  toCBIdentityPicker = unsafeCastId

instance IsNSObject (Id CBIdentityPicker) where
  toNSObject = unsafeCastId

-- ---------- CBGroupIdentity ----------

-- | Phantom type for @CBGroupIdentity@.
data CBGroupIdentity

instance IsObjCObject (Id CBGroupIdentity) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CBGroupIdentity"

class IsCBIdentity a => IsCBGroupIdentity a where
  toCBGroupIdentity :: a -> Id CBGroupIdentity

instance IsCBGroupIdentity (Id CBGroupIdentity) where
  toCBGroupIdentity = unsafeCastId

instance IsCBIdentity (Id CBGroupIdentity) where
  toCBIdentity = unsafeCastId

instance IsNSObject (Id CBGroupIdentity) where
  toNSObject = unsafeCastId

-- ---------- CBUserIdentity ----------

-- | Phantom type for @CBUserIdentity@.
data CBUserIdentity

instance IsObjCObject (Id CBUserIdentity) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CBUserIdentity"

class IsCBIdentity a => IsCBUserIdentity a where
  toCBUserIdentity :: a -> Id CBUserIdentity

instance IsCBUserIdentity (Id CBUserIdentity) where
  toCBUserIdentity = unsafeCastId

instance IsCBIdentity (Id CBUserIdentity) where
  toCBIdentity = unsafeCastId

instance IsNSObject (Id CBUserIdentity) where
  toNSObject = unsafeCastId
