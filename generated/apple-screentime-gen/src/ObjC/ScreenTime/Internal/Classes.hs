{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.ScreenTime.Internal.Classes (
    module ObjC.ScreenTime.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- STScreenTimeConfiguration ----------

-- | Phantom type for @STScreenTimeConfiguration@.
data STScreenTimeConfiguration

instance IsObjCObject (Id STScreenTimeConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "STScreenTimeConfiguration"

class IsNSObject a => IsSTScreenTimeConfiguration a where
  toSTScreenTimeConfiguration :: a -> Id STScreenTimeConfiguration

instance IsSTScreenTimeConfiguration (Id STScreenTimeConfiguration) where
  toSTScreenTimeConfiguration = unsafeCastId

instance IsNSObject (Id STScreenTimeConfiguration) where
  toNSObject = unsafeCastId

-- ---------- STScreenTimeConfigurationObserver ----------

-- | Phantom type for @STScreenTimeConfigurationObserver@.
data STScreenTimeConfigurationObserver

instance IsObjCObject (Id STScreenTimeConfigurationObserver) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "STScreenTimeConfigurationObserver"

class IsNSObject a => IsSTScreenTimeConfigurationObserver a where
  toSTScreenTimeConfigurationObserver :: a -> Id STScreenTimeConfigurationObserver

instance IsSTScreenTimeConfigurationObserver (Id STScreenTimeConfigurationObserver) where
  toSTScreenTimeConfigurationObserver = unsafeCastId

instance IsNSObject (Id STScreenTimeConfigurationObserver) where
  toNSObject = unsafeCastId

-- ---------- STWebHistory ----------

-- | Phantom type for @STWebHistory@.
data STWebHistory

instance IsObjCObject (Id STWebHistory) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "STWebHistory"

class IsNSObject a => IsSTWebHistory a where
  toSTWebHistory :: a -> Id STWebHistory

instance IsSTWebHistory (Id STWebHistory) where
  toSTWebHistory = unsafeCastId

instance IsNSObject (Id STWebHistory) where
  toNSObject = unsafeCastId

-- ---------- STWebpageController ----------

-- | Phantom type for @STWebpageController@.
data STWebpageController

instance IsObjCObject (Id STWebpageController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "STWebpageController"

class IsNSViewController a => IsSTWebpageController a where
  toSTWebpageController :: a -> Id STWebpageController

instance IsSTWebpageController (Id STWebpageController) where
  toSTWebpageController = unsafeCastId

instance IsNSObject (Id STWebpageController) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id STWebpageController) where
  toNSResponder = unsafeCastId

instance IsNSViewController (Id STWebpageController) where
  toNSViewController = unsafeCastId
