{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.PushKit.Internal.Classes (
    module ObjC.PushKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- PKPushCredentials ----------

-- | Phantom type for @PKPushCredentials@.
data PKPushCredentials

instance IsObjCObject (Id PKPushCredentials) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "PKPushCredentials"

class IsNSObject a => IsPKPushCredentials a where
  toPKPushCredentials :: a -> Id PKPushCredentials

instance IsPKPushCredentials (Id PKPushCredentials) where
  toPKPushCredentials = unsafeCastId

instance IsNSObject (Id PKPushCredentials) where
  toNSObject = unsafeCastId

-- ---------- PKPushPayload ----------

-- | Phantom type for @PKPushPayload@.
data PKPushPayload

instance IsObjCObject (Id PKPushPayload) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "PKPushPayload"

class IsNSObject a => IsPKPushPayload a where
  toPKPushPayload :: a -> Id PKPushPayload

instance IsPKPushPayload (Id PKPushPayload) where
  toPKPushPayload = unsafeCastId

instance IsNSObject (Id PKPushPayload) where
  toNSObject = unsafeCastId

-- ---------- PKPushRegistry ----------

-- | PKPushRegistry
--
-- An instance of this class can be used to register for 3rd party notifications. The supported push                notification types are listed above as PKPushType constants.
-- 
-- Phantom type for @PKPushRegistry@.
data PKPushRegistry

instance IsObjCObject (Id PKPushRegistry) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "PKPushRegistry"

class IsNSObject a => IsPKPushRegistry a where
  toPKPushRegistry :: a -> Id PKPushRegistry

instance IsPKPushRegistry (Id PKPushRegistry) where
  toPKPushRegistry = unsafeCastId

instance IsNSObject (Id PKPushRegistry) where
  toNSObject = unsafeCastId
