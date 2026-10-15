{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.ScreenCaptureKit.Internal.Classes (
    module ObjC.ScreenCaptureKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- SCContentFilter ----------

-- | SCContentFilter
--
-- SCContentFilter is a object that determines the exact content to be captured in the SCStream. It can be filtered through displays, windows, excluded windows or applications.
-- 
-- Phantom type for @SCContentFilter@.
data SCContentFilter

instance IsObjCObject (Id SCContentFilter) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SCContentFilter"

class IsNSObject a => IsSCContentFilter a where
  toSCContentFilter :: a -> Id SCContentFilter

instance IsSCContentFilter (Id SCContentFilter) where
  toSCContentFilter = unsafeCastId

instance IsNSObject (Id SCContentFilter) where
  toNSObject = unsafeCastId

-- ---------- SCDisplay ----------

-- | Phantom type for @SCDisplay@.
data SCDisplay

instance IsObjCObject (Id SCDisplay) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SCDisplay"

class IsNSObject a => IsSCDisplay a where
  toSCDisplay :: a -> Id SCDisplay

instance IsSCDisplay (Id SCDisplay) where
  toSCDisplay = unsafeCastId

instance IsNSObject (Id SCDisplay) where
  toNSObject = unsafeCastId

-- ---------- SCRunningApplication ----------

-- | Phantom type for @SCRunningApplication@.
data SCRunningApplication

instance IsObjCObject (Id SCRunningApplication) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SCRunningApplication"

class IsNSObject a => IsSCRunningApplication a where
  toSCRunningApplication :: a -> Id SCRunningApplication

instance IsSCRunningApplication (Id SCRunningApplication) where
  toSCRunningApplication = unsafeCastId

instance IsNSObject (Id SCRunningApplication) where
  toNSObject = unsafeCastId

-- ---------- SCShareableContent ----------

-- | Phantom type for @SCShareableContent@.
data SCShareableContent

instance IsObjCObject (Id SCShareableContent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SCShareableContent"

class IsNSObject a => IsSCShareableContent a where
  toSCShareableContent :: a -> Id SCShareableContent

instance IsSCShareableContent (Id SCShareableContent) where
  toSCShareableContent = unsafeCastId

instance IsNSObject (Id SCShareableContent) where
  toNSObject = unsafeCastId

-- ---------- SCStream ----------

-- | Phantom type for @SCStream@.
data SCStream

instance IsObjCObject (Id SCStream) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SCStream"

class IsNSObject a => IsSCStream a where
  toSCStream :: a -> Id SCStream

instance IsSCStream (Id SCStream) where
  toSCStream = unsafeCastId

instance IsNSObject (Id SCStream) where
  toNSObject = unsafeCastId

-- ---------- SCStreamConfiguration ----------

-- | SCStreamConfiguration
--
-- SCStreamConfiguration is an object that encapsulates the SCStream properties such as output width, height, pixelformat and others.
-- 
-- Phantom type for @SCStreamConfiguration@.
data SCStreamConfiguration

instance IsObjCObject (Id SCStreamConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SCStreamConfiguration"

class IsNSObject a => IsSCStreamConfiguration a where
  toSCStreamConfiguration :: a -> Id SCStreamConfiguration

instance IsSCStreamConfiguration (Id SCStreamConfiguration) where
  toSCStreamConfiguration = unsafeCastId

instance IsNSObject (Id SCStreamConfiguration) where
  toNSObject = unsafeCastId

-- ---------- SCWindow ----------

-- | Phantom type for @SCWindow@.
data SCWindow

instance IsObjCObject (Id SCWindow) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SCWindow"

class IsNSObject a => IsSCWindow a where
  toSCWindow :: a -> Id SCWindow

instance IsSCWindow (Id SCWindow) where
  toSCWindow = unsafeCastId

instance IsNSObject (Id SCWindow) where
  toNSObject = unsafeCastId
