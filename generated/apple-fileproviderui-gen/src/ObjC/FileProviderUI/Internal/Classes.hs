{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.FileProviderUI.Internal.Classes (
    module ObjC.FileProviderUI.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- FPUIActionExtensionContext ----------

-- | Phantom type for @FPUIActionExtensionContext@.
data FPUIActionExtensionContext

instance IsObjCObject (Id FPUIActionExtensionContext) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "FPUIActionExtensionContext"

class IsNSExtensionContext a => IsFPUIActionExtensionContext a where
  toFPUIActionExtensionContext :: a -> Id FPUIActionExtensionContext

instance IsFPUIActionExtensionContext (Id FPUIActionExtensionContext) where
  toFPUIActionExtensionContext = unsafeCastId

instance IsNSExtensionContext (Id FPUIActionExtensionContext) where
  toNSExtensionContext = unsafeCastId

instance IsNSObject (Id FPUIActionExtensionContext) where
  toNSObject = unsafeCastId

-- ---------- FPUIActionExtensionViewController ----------

-- | Phantom type for @FPUIActionExtensionViewController@.
data FPUIActionExtensionViewController

instance IsObjCObject (Id FPUIActionExtensionViewController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "FPUIActionExtensionViewController"

class IsNSViewController a => IsFPUIActionExtensionViewController a where
  toFPUIActionExtensionViewController :: a -> Id FPUIActionExtensionViewController

instance IsFPUIActionExtensionViewController (Id FPUIActionExtensionViewController) where
  toFPUIActionExtensionViewController = unsafeCastId

instance IsNSObject (Id FPUIActionExtensionViewController) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id FPUIActionExtensionViewController) where
  toNSResponder = unsafeCastId

instance IsNSViewController (Id FPUIActionExtensionViewController) where
  toNSViewController = unsafeCastId
