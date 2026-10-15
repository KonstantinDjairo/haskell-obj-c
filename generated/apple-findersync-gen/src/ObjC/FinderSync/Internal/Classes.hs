{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.FinderSync.Internal.Classes (
    module ObjC.FinderSync.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- FIFinderSync ----------

-- | Phantom type for @FIFinderSync@.
data FIFinderSync

instance IsObjCObject (Id FIFinderSync) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "FIFinderSync"

class IsNSObject a => IsFIFinderSync a where
  toFIFinderSync :: a -> Id FIFinderSync

instance IsFIFinderSync (Id FIFinderSync) where
  toFIFinderSync = unsafeCastId

instance IsNSObject (Id FIFinderSync) where
  toNSObject = unsafeCastId

-- ---------- FIFinderSyncController ----------

-- | Phantom type for @FIFinderSyncController@.
data FIFinderSyncController

instance IsObjCObject (Id FIFinderSyncController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "FIFinderSyncController"

class IsNSExtensionContext a => IsFIFinderSyncController a where
  toFIFinderSyncController :: a -> Id FIFinderSyncController

instance IsFIFinderSyncController (Id FIFinderSyncController) where
  toFIFinderSyncController = unsafeCastId

instance IsNSExtensionContext (Id FIFinderSyncController) where
  toNSExtensionContext = unsafeCastId

instance IsNSObject (Id FIFinderSyncController) where
  toNSObject = unsafeCastId
