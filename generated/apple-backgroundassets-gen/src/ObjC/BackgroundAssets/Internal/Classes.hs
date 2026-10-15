{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.BackgroundAssets.Internal.Classes (
    module ObjC.BackgroundAssets.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- BAAppExtensionInfo ----------

-- | Phantom type for @BAAppExtensionInfo@.
data BAAppExtensionInfo

instance IsObjCObject (Id BAAppExtensionInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BAAppExtensionInfo"

class IsNSObject a => IsBAAppExtensionInfo a where
  toBAAppExtensionInfo :: a -> Id BAAppExtensionInfo

instance IsBAAppExtensionInfo (Id BAAppExtensionInfo) where
  toBAAppExtensionInfo = unsafeCastId

instance IsNSObject (Id BAAppExtensionInfo) where
  toNSObject = unsafeCastId

-- ---------- BADownload ----------

-- | Phantom type for @BADownload@.
data BADownload

instance IsObjCObject (Id BADownload) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BADownload"

class IsNSObject a => IsBADownload a where
  toBADownload :: a -> Id BADownload

instance IsBADownload (Id BADownload) where
  toBADownload = unsafeCastId

instance IsNSObject (Id BADownload) where
  toNSObject = unsafeCastId

-- ---------- BADownloadManager ----------

-- | Phantom type for @BADownloadManager@.
data BADownloadManager

instance IsObjCObject (Id BADownloadManager) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BADownloadManager"

class IsNSObject a => IsBADownloadManager a where
  toBADownloadManager :: a -> Id BADownloadManager

instance IsBADownloadManager (Id BADownloadManager) where
  toBADownloadManager = unsafeCastId

instance IsNSObject (Id BADownloadManager) where
  toNSObject = unsafeCastId

-- ---------- BAURLDownload ----------

-- | Phantom type for @BAURLDownload@.
data BAURLDownload

instance IsObjCObject (Id BAURLDownload) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "BAURLDownload"

class IsBADownload a => IsBAURLDownload a where
  toBAURLDownload :: a -> Id BAURLDownload

instance IsBAURLDownload (Id BAURLDownload) where
  toBAURLDownload = unsafeCastId

instance IsBADownload (Id BAURLDownload) where
  toBADownload = unsafeCastId

instance IsNSObject (Id BAURLDownload) where
  toNSObject = unsafeCastId
