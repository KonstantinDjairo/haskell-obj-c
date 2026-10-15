{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.ScreenSaver.Internal.Classes (
    module ObjC.ScreenSaver.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- ScreenSaverDefaults ----------

-- | Phantom type for @ScreenSaverDefaults@.
data ScreenSaverDefaults

instance IsObjCObject (Id ScreenSaverDefaults) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ScreenSaverDefaults"

class IsNSUserDefaults a => IsScreenSaverDefaults a where
  toScreenSaverDefaults :: a -> Id ScreenSaverDefaults

instance IsScreenSaverDefaults (Id ScreenSaverDefaults) where
  toScreenSaverDefaults = unsafeCastId

instance IsNSObject (Id ScreenSaverDefaults) where
  toNSObject = unsafeCastId

instance IsNSUserDefaults (Id ScreenSaverDefaults) where
  toNSUserDefaults = unsafeCastId

-- ---------- ScreenSaverView ----------

-- | Phantom type for @ScreenSaverView@.
data ScreenSaverView

instance IsObjCObject (Id ScreenSaverView) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ScreenSaverView"

class IsNSView a => IsScreenSaverView a where
  toScreenSaverView :: a -> Id ScreenSaverView

instance IsScreenSaverView (Id ScreenSaverView) where
  toScreenSaverView = unsafeCastId

instance IsNSObject (Id ScreenSaverView) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id ScreenSaverView) where
  toNSResponder = unsafeCastId

instance IsNSView (Id ScreenSaverView) where
  toNSView = unsafeCastId
