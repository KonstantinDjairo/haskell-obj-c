{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.IMServicePlugIn.Internal.Classes (
    module ObjC.IMServicePlugIn.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- IMServicePlugInMessage ----------

-- | Phantom type for @IMServicePlugInMessage@.
data IMServicePlugInMessage

instance IsObjCObject (Id IMServicePlugInMessage) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "IMServicePlugInMessage"

class IsNSObject a => IsIMServicePlugInMessage a where
  toIMServicePlugInMessage :: a -> Id IMServicePlugInMessage

instance IsIMServicePlugInMessage (Id IMServicePlugInMessage) where
  toIMServicePlugInMessage = unsafeCastId

instance IsNSObject (Id IMServicePlugInMessage) where
  toNSObject = unsafeCastId
