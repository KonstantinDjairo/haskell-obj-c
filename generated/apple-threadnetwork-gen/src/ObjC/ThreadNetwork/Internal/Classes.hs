{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.ThreadNetwork.Internal.Classes (
    module ObjC.ThreadNetwork.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- THClient ----------

-- | Phantom type for @THClient@.
data THClient

instance IsObjCObject (Id THClient) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "THClient"

class IsNSObject a => IsTHClient a where
  toTHClient :: a -> Id THClient

instance IsTHClient (Id THClient) where
  toTHClient = unsafeCastId

instance IsNSObject (Id THClient) where
  toNSObject = unsafeCastId

-- ---------- THCredentials ----------

-- | Phantom type for @THCredentials@.
data THCredentials

instance IsObjCObject (Id THCredentials) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "THCredentials"

class IsNSObject a => IsTHCredentials a where
  toTHCredentials :: a -> Id THCredentials

instance IsTHCredentials (Id THCredentials) where
  toTHCredentials = unsafeCastId

instance IsNSObject (Id THCredentials) where
  toNSObject = unsafeCastId
