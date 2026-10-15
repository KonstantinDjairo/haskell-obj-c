{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.LinkPresentation.Internal.Classes (
    module ObjC.LinkPresentation.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- LPLinkMetadata ----------

-- | An LPLinkMetadata object contains metadata about a URL.
-- 
-- Phantom type for @LPLinkMetadata@.
data LPLinkMetadata

instance IsObjCObject (Id LPLinkMetadata) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "LPLinkMetadata"

class IsNSObject a => IsLPLinkMetadata a where
  toLPLinkMetadata :: a -> Id LPLinkMetadata

instance IsLPLinkMetadata (Id LPLinkMetadata) where
  toLPLinkMetadata = unsafeCastId

instance IsNSObject (Id LPLinkMetadata) where
  toNSObject = unsafeCastId

-- ---------- LPMetadataProvider ----------

-- | An LPMetadataProvider object retrieves metadata for a given URL.
--
-- An instance of LPMetadataProvider can only be asked to retrieve metadata once; a new instance should be created for each request.
--
-- A client must have the com.apple.security.network.client entitlement in order to be able to use LPMetadataProvider for remote URLs.
--
-- See: @LPLinkMetadata@
-- 
-- Phantom type for @LPMetadataProvider@.
data LPMetadataProvider

instance IsObjCObject (Id LPMetadataProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "LPMetadataProvider"

class IsNSObject a => IsLPMetadataProvider a where
  toLPMetadataProvider :: a -> Id LPMetadataProvider

instance IsLPMetadataProvider (Id LPMetadataProvider) where
  toLPMetadataProvider = unsafeCastId

instance IsNSObject (Id LPMetadataProvider) where
  toNSObject = unsafeCastId

-- ---------- LPLinkView ----------

-- | Phantom type for @LPLinkView@.
data LPLinkView

instance IsObjCObject (Id LPLinkView) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "LPLinkView"

class IsNSView a => IsLPLinkView a where
  toLPLinkView :: a -> Id LPLinkView

instance IsLPLinkView (Id LPLinkView) where
  toLPLinkView = unsafeCastId

instance IsNSObject (Id LPLinkView) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id LPLinkView) where
  toNSResponder = unsafeCastId

instance IsNSView (Id LPLinkView) where
  toNSView = unsafeCastId
