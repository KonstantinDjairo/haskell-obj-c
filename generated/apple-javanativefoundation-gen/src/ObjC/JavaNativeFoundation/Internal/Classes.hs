{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.JavaNativeFoundation.Internal.Classes (
    module ObjC.JavaNativeFoundation.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- JNFDefaultCoercions ----------

-- | Phantom type for @JNFDefaultCoercions@.
data JNFDefaultCoercions

instance IsObjCObject (Id JNFDefaultCoercions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JNFDefaultCoercions"

class IsNSObject a => IsJNFDefaultCoercions a where
  toJNFDefaultCoercions :: a -> Id JNFDefaultCoercions

instance IsJNFDefaultCoercions (Id JNFDefaultCoercions) where
  toJNFDefaultCoercions = unsafeCastId

instance IsNSObject (Id JNFDefaultCoercions) where
  toNSObject = unsafeCastId

-- ---------- JNFJObjectWrapper ----------

-- | Phantom type for @JNFJObjectWrapper@.
data JNFJObjectWrapper

instance IsObjCObject (Id JNFJObjectWrapper) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JNFJObjectWrapper"

class IsNSObject a => IsJNFJObjectWrapper a where
  toJNFJObjectWrapper :: a -> Id JNFJObjectWrapper

instance IsJNFJObjectWrapper (Id JNFJObjectWrapper) where
  toJNFJObjectWrapper = unsafeCastId

instance IsNSObject (Id JNFJObjectWrapper) where
  toNSObject = unsafeCastId

-- ---------- JNFRunLoop ----------

-- | Phantom type for @JNFRunLoop@.
data JNFRunLoop

instance IsObjCObject (Id JNFRunLoop) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JNFRunLoop"

class IsNSObject a => IsJNFRunLoop a where
  toJNFRunLoop :: a -> Id JNFRunLoop

instance IsJNFRunLoop (Id JNFRunLoop) where
  toJNFRunLoop = unsafeCastId

instance IsNSObject (Id JNFRunLoop) where
  toNSObject = unsafeCastId

-- ---------- JNFRunnable ----------

-- | Phantom type for @JNFRunnable@.
data JNFRunnable

instance IsObjCObject (Id JNFRunnable) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JNFRunnable"

class IsNSObject a => IsJNFRunnable a where
  toJNFRunnable :: a -> Id JNFRunnable

instance IsJNFRunnable (Id JNFRunnable) where
  toJNFRunnable = unsafeCastId

instance IsNSObject (Id JNFRunnable) where
  toNSObject = unsafeCastId

-- ---------- JNFTypeCoercer ----------

-- | Phantom type for @JNFTypeCoercer@.
data JNFTypeCoercer

instance IsObjCObject (Id JNFTypeCoercer) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JNFTypeCoercer"

class IsNSObject a => IsJNFTypeCoercer a where
  toJNFTypeCoercer :: a -> Id JNFTypeCoercer

instance IsJNFTypeCoercer (Id JNFTypeCoercer) where
  toJNFTypeCoercer = unsafeCastId

instance IsNSObject (Id JNFTypeCoercer) where
  toNSObject = unsafeCastId

-- ---------- JNFWeakJObjectWrapper ----------

-- | Phantom type for @JNFWeakJObjectWrapper@.
data JNFWeakJObjectWrapper

instance IsObjCObject (Id JNFWeakJObjectWrapper) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JNFWeakJObjectWrapper"

class IsJNFJObjectWrapper a => IsJNFWeakJObjectWrapper a where
  toJNFWeakJObjectWrapper :: a -> Id JNFWeakJObjectWrapper

instance IsJNFWeakJObjectWrapper (Id JNFWeakJObjectWrapper) where
  toJNFWeakJObjectWrapper = unsafeCastId

instance IsJNFJObjectWrapper (Id JNFWeakJObjectWrapper) where
  toJNFJObjectWrapper = unsafeCastId

instance IsNSObject (Id JNFWeakJObjectWrapper) where
  toNSObject = unsafeCastId

-- ---------- JNFException ----------

-- | Phantom type for @JNFException@.
data JNFException

instance IsObjCObject (Id JNFException) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "JNFException"

class IsNSException a => IsJNFException a where
  toJNFException :: a -> Id JNFException

instance IsJNFException (Id JNFException) where
  toJNFException = unsafeCastId

instance IsNSException (Id JNFException) where
  toNSException = unsafeCastId

instance IsNSObject (Id JNFException) where
  toNSObject = unsafeCastId
