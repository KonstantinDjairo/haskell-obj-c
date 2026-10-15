{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.ExtensionKit.Internal.Classes (
    module ObjC.ExtensionKit.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- EXAppExtensionBrowserViewController ----------

-- | Phantom type for @EXAppExtensionBrowserViewController@.
data EXAppExtensionBrowserViewController

instance IsObjCObject (Id EXAppExtensionBrowserViewController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "EXAppExtensionBrowserViewController"

class IsNSViewController a => IsEXAppExtensionBrowserViewController a where
  toEXAppExtensionBrowserViewController :: a -> Id EXAppExtensionBrowserViewController

instance IsEXAppExtensionBrowserViewController (Id EXAppExtensionBrowserViewController) where
  toEXAppExtensionBrowserViewController = unsafeCastId

instance IsNSObject (Id EXAppExtensionBrowserViewController) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id EXAppExtensionBrowserViewController) where
  toNSResponder = unsafeCastId

instance IsNSViewController (Id EXAppExtensionBrowserViewController) where
  toNSViewController = unsafeCastId

-- ---------- EXHostViewController ----------

-- | Phantom type for @EXHostViewController@.
data EXHostViewController

instance IsObjCObject (Id EXHostViewController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "EXHostViewController"

class IsNSViewController a => IsEXHostViewController a where
  toEXHostViewController :: a -> Id EXHostViewController

instance IsEXHostViewController (Id EXHostViewController) where
  toEXHostViewController = unsafeCastId

instance IsNSObject (Id EXHostViewController) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id EXHostViewController) where
  toNSResponder = unsafeCastId

instance IsNSViewController (Id EXHostViewController) where
  toNSViewController = unsafeCastId
