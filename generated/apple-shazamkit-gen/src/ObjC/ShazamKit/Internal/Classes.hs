{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.ShazamKit.Internal.Classes (
    module ObjC.ShazamKit.Internal.Classes,
    module ObjC.AVFAudio.Internal.Classes,
    module ObjC.AVFoundation.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AVFAudio.Internal.Classes
import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- SHCatalog ----------

-- | An abstract base class for storing signatures
--
-- You should not create instances of this class directly, instead use subclasses to provide the functionality that you need
-- 
-- Phantom type for @SHCatalog@.
data SHCatalog

instance IsObjCObject (Id SHCatalog) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHCatalog"

class IsNSObject a => IsSHCatalog a where
  toSHCatalog :: a -> Id SHCatalog

instance IsSHCatalog (Id SHCatalog) where
  toSHCatalog = unsafeCastId

instance IsNSObject (Id SHCatalog) where
  toNSObject = unsafeCastId

-- ---------- SHMatch ----------

-- | A @SHMatch@ indicates that a Signature matched a reference Signature in the target @SHCatalog@
--
-- A @SHSignature@ can match many reference Signatures in a catalog and in turn a Signature can map to many @SHMediaItem.@ Therefore a match encapsulates the query signature and all of the various @SHMediaItem@ it matched
--
-- Note: @SHMatch@ is not intended to be subclassed
-- 
-- Phantom type for @SHMatch@.
data SHMatch

instance IsObjCObject (Id SHMatch) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHMatch"

class IsNSObject a => IsSHMatch a where
  toSHMatch :: a -> Id SHMatch

instance IsSHMatch (Id SHMatch) where
  toSHMatch = unsafeCastId

instance IsNSObject (Id SHMatch) where
  toNSObject = unsafeCastId

-- ---------- SHMediaItem ----------

-- | @SHMediaItem@ represents metadata associated with a @SHSignature@
--
-- A @SHMediaItem@ is used in two distinct ways     1. As the base class of a @SHMatchedMediaItem,@ and therefore as the result of a match     2. As a way of associating metadata with reference signatures in a @SHCustomCatalog@
--
-- A SHMediaItem contains no required fields and may be entirely blank, they can also contain custom data set with custom keys when making a @SHCustomCatalog.@
--
-- Note: @SHMediaItem@  is not intended to be subclassed further.
-- 
-- Phantom type for @SHMediaItem@.
data SHMediaItem

instance IsObjCObject (Id SHMediaItem) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHMediaItem"

class IsNSObject a => IsSHMediaItem a where
  toSHMediaItem :: a -> Id SHMediaItem

instance IsSHMediaItem (Id SHMediaItem) where
  toSHMediaItem = unsafeCastId

instance IsNSObject (Id SHMediaItem) where
  toNSObject = unsafeCastId

-- ---------- SHMediaLibrary ----------

-- | @SHMediaLibrary@ represents the user's synced Shazam library.
--
-- You can add new @SHMediaItem@ instances to the user's library. Before using any @SHMediaLibrary@ method, you must obtain permission from the user to use their Media Library by calling - [MPMediaLibrary requestAuthorization:].
-- 
-- Phantom type for @SHMediaLibrary@.
data SHMediaLibrary

instance IsObjCObject (Id SHMediaLibrary) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHMediaLibrary"

class IsNSObject a => IsSHMediaLibrary a where
  toSHMediaLibrary :: a -> Id SHMediaLibrary

instance IsSHMediaLibrary (Id SHMediaLibrary) where
  toSHMediaLibrary = unsafeCastId

instance IsNSObject (Id SHMediaLibrary) where
  toNSObject = unsafeCastId

-- ---------- SHRange ----------

-- | A half-open interval from a lower bound up to, but not including, an upper bound.
-- 
-- Phantom type for @SHRange@.
data SHRange

instance IsObjCObject (Id SHRange) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHRange"

class IsNSObject a => IsSHRange a where
  toSHRange :: a -> Id SHRange

instance IsSHRange (Id SHRange) where
  toSHRange = unsafeCastId

instance IsNSObject (Id SHRange) where
  toNSObject = unsafeCastId

-- ---------- SHSession ----------

-- | A @SHSession@ matches instances of @SHSignature@ against a @SHCatalog@
--
-- A @SHSession@ can be used in two distinct ways to match against a @SHCatalog@
--
-- 1. Pass a @SHSignature@ to the -[SHSession matchSignature:] method and respond to matches sent to the delegate      There is a 1 to 1 relationship between calls to this method and calls to the delegate 2. Pass a continuous stream of @AVAudioPCMBuffer@ to the -[SHSession matchStreamingBuffer:atTime:] method, matches are sent to the delegate.        ShazamKit will convert the buffers in SHSignature objects internally and perform matches against the @SHCatalog.@ The details of how the matching        is performed is an implementation detail and is subject to change. As such there will be many callbacks to the delegate per stream of audio, and the same match        may be reported multiple times in succession.
-- 
-- Phantom type for @SHSession@.
data SHSession

instance IsObjCObject (Id SHSession) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHSession"

class IsNSObject a => IsSHSession a where
  toSHSession :: a -> Id SHSession

instance IsSHSession (Id SHSession) where
  toSHSession = unsafeCastId

instance IsNSObject (Id SHSession) where
  toNSObject = unsafeCastId

-- ---------- SHSignature ----------

-- | The @SHSignature@ class is an opaque data container that can be used to store recognition data.
--
-- Signatures are a compact lossy representation of the original audio. The original audio cannot be recreated from a Signature, there exists only enough data to confirm that the signature matches a certain piece of audio when it is also converted into a Signature. It is similar in utility to a hashing function.
--
-- Signatures can be matched against any type of audio not just music. The only requirement for a match is that the reference and query Signatures both contain the exact same pre recorded audio e.g. a live rendition of a song will not match against a studio recorded performance of the same piece.
--
-- There are exceptions to the requirement for exactly matching audio, a signature is robust against slight changes in frequency and speed.
--
-- Note: @SHSignature@ is not intended to be subclassed
-- 
-- Phantom type for @SHSignature@.
data SHSignature

instance IsObjCObject (Id SHSignature) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHSignature"

class IsNSObject a => IsSHSignature a where
  toSHSignature :: a -> Id SHSignature

instance IsSHSignature (Id SHSignature) where
  toSHSignature = unsafeCastId

instance IsNSObject (Id SHSignature) where
  toNSObject = unsafeCastId

-- ---------- SHSignatureGenerator ----------

-- | @SHSignatureGenerator@ provides a way to convert audio data into instances of @SHSignature@
-- 
-- Phantom type for @SHSignatureGenerator@.
data SHSignatureGenerator

instance IsObjCObject (Id SHSignatureGenerator) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHSignatureGenerator"

class IsNSObject a => IsSHSignatureGenerator a where
  toSHSignatureGenerator :: a -> Id SHSignatureGenerator

instance IsSHSignatureGenerator (Id SHSignatureGenerator) where
  toSHSignatureGenerator = unsafeCastId

instance IsNSObject (Id SHSignatureGenerator) where
  toNSObject = unsafeCastId

-- ---------- SHCustomCatalog ----------

-- | Configure a custom catalog of @SHSignature@ objects to match against
--
-- Use a custom catalog if you intend to search against reference signatures that you have provided yourself. All matches will be performed locally on the device against the signatures added to this Catalog. @SHMediaItem@ can be built using custom data that will be returned when a match is made. Once this catalog has been built it can be written to disk and loaded again at a later date.
-- 
-- Phantom type for @SHCustomCatalog@.
data SHCustomCatalog

instance IsObjCObject (Id SHCustomCatalog) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHCustomCatalog"

class IsSHCatalog a => IsSHCustomCatalog a where
  toSHCustomCatalog :: a -> Id SHCustomCatalog

instance IsSHCustomCatalog (Id SHCustomCatalog) where
  toSHCustomCatalog = unsafeCastId

instance IsNSObject (Id SHCustomCatalog) where
  toNSObject = unsafeCastId

instance IsSHCatalog (Id SHCustomCatalog) where
  toSHCatalog = unsafeCastId

-- ---------- SHMatchedMediaItem ----------

-- | @SHMatchedMediaItem@ represents metadata that has been matched against a @SHCatalog@
--
-- Extra information is presented that can only be generated from a match. The properties provided here that are not available on @SHMediaItem@ are ephemeral and can differ each time there is a match of the @SHSignature@ that this object represents
--
-- Note: @SHMatchedMediaItem@ is not intended to be subclassed
-- 
-- Phantom type for @SHMatchedMediaItem@.
data SHMatchedMediaItem

instance IsObjCObject (Id SHMatchedMediaItem) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SHMatchedMediaItem"

class IsSHMediaItem a => IsSHMatchedMediaItem a where
  toSHMatchedMediaItem :: a -> Id SHMatchedMediaItem

instance IsSHMatchedMediaItem (Id SHMatchedMediaItem) where
  toSHMatchedMediaItem = unsafeCastId

instance IsNSObject (Id SHMatchedMediaItem) where
  toNSObject = unsafeCastId

instance IsSHMediaItem (Id SHMatchedMediaItem) where
  toSHMediaItem = unsafeCastId
