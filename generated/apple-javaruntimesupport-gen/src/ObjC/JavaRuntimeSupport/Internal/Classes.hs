{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.JavaRuntimeSupport.Internal.Classes (
    module ObjC.JavaRuntimeSupport.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- JRSAppKitAWT ----------

-- | Phantom type for @JRSAppKitAWT@.
data JRSAppKitAWT

instance IsObjCObject (Id JRSAppKitAWT) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JRSAppKitAWT"

class IsNSObject a => IsJRSAppKitAWT a where
  toJRSAppKitAWT :: a -> Id JRSAppKitAWT

instance IsJRSAppKitAWT (Id JRSAppKitAWT) where
  toJRSAppKitAWT = unsafeCastId

instance IsNSObject (Id JRSAppKitAWT) where
  toNSObject = unsafeCastId

-- ---------- JRSDrag ----------

-- | Phantom type for @JRSDrag@.
data JRSDrag

instance IsObjCObject (Id JRSDrag) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JRSDrag"

class IsNSObject a => IsJRSDrag a where
  toJRSDrag :: a -> Id JRSDrag

instance IsJRSDrag (Id JRSDrag) where
  toJRSDrag = unsafeCastId

instance IsNSObject (Id JRSDrag) where
  toNSObject = unsafeCastId

-- ---------- JRSInputMethodController ----------

-- | Phantom type for @JRSInputMethodController@.
data JRSInputMethodController

instance IsObjCObject (Id JRSInputMethodController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JRSInputMethodController"

class IsNSObject a => IsJRSInputMethodController a where
  toJRSInputMethodController :: a -> Id JRSInputMethodController

instance IsJRSInputMethodController (Id JRSInputMethodController) where
  toJRSInputMethodController = unsafeCastId

instance IsNSObject (Id JRSInputMethodController) where
  toNSObject = unsafeCastId

-- ---------- JRSRenderServer ----------

-- | Phantom type for @JRSRenderServer@.
data JRSRenderServer

instance IsObjCObject (Id JRSRenderServer) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JRSRenderServer"

class IsNSObject a => IsJRSRenderServer a where
  toJRSRenderServer :: a -> Id JRSRenderServer

instance IsJRSRenderServer (Id JRSRenderServer) where
  toJRSRenderServer = unsafeCastId

instance IsNSObject (Id JRSRenderServer) where
  toNSObject = unsafeCastId

-- ---------- JRSSecurity ----------

-- | Phantom type for @JRSSecurity@.
data JRSSecurity

instance IsObjCObject (Id JRSSecurity) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JRSSecurity"

class IsNSObject a => IsJRSSecurity a where
  toJRSSecurity :: a -> Id JRSSecurity

instance IsJRSSecurity (Id JRSSecurity) where
  toJRSSecurity = unsafeCastId

instance IsNSObject (Id JRSSecurity) where
  toNSObject = unsafeCastId

-- ---------- JRSSymbolicator ----------

-- | Phantom type for @JRSSymbolicator@.
data JRSSymbolicator

instance IsObjCObject (Id JRSSymbolicator) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JRSSymbolicator"

class IsNSObject a => IsJRSSymbolicator a where
  toJRSSymbolicator :: a -> Id JRSSymbolicator

instance IsJRSSymbolicator (Id JRSSymbolicator) where
  toJRSSymbolicator = unsafeCastId

instance IsNSObject (Id JRSSymbolicator) where
  toNSObject = unsafeCastId
