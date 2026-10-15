{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.Speech.Internal.Classes (
    module ObjC.Speech.Internal.Classes,
    module ObjC.AVFAudio.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AVFAudio.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- SFAcousticFeature ----------

-- | Phantom type for @SFAcousticFeature@.
data SFAcousticFeature

instance IsObjCObject (Id SFAcousticFeature) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFAcousticFeature"

class IsNSObject a => IsSFAcousticFeature a where
  toSFAcousticFeature :: a -> Id SFAcousticFeature

instance IsSFAcousticFeature (Id SFAcousticFeature) where
  toSFAcousticFeature = unsafeCastId

instance IsNSObject (Id SFAcousticFeature) where
  toNSObject = unsafeCastId

-- ---------- SFSpeechRecognitionMetadata ----------

-- | Phantom type for @SFSpeechRecognitionMetadata@.
data SFSpeechRecognitionMetadata

instance IsObjCObject (Id SFSpeechRecognitionMetadata) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFSpeechRecognitionMetadata"

class IsNSObject a => IsSFSpeechRecognitionMetadata a where
  toSFSpeechRecognitionMetadata :: a -> Id SFSpeechRecognitionMetadata

instance IsSFSpeechRecognitionMetadata (Id SFSpeechRecognitionMetadata) where
  toSFSpeechRecognitionMetadata = unsafeCastId

instance IsNSObject (Id SFSpeechRecognitionMetadata) where
  toNSObject = unsafeCastId

-- ---------- SFSpeechRecognitionRequest ----------

-- | Phantom type for @SFSpeechRecognitionRequest@.
data SFSpeechRecognitionRequest

instance IsObjCObject (Id SFSpeechRecognitionRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFSpeechRecognitionRequest"

class IsNSObject a => IsSFSpeechRecognitionRequest a where
  toSFSpeechRecognitionRequest :: a -> Id SFSpeechRecognitionRequest

instance IsSFSpeechRecognitionRequest (Id SFSpeechRecognitionRequest) where
  toSFSpeechRecognitionRequest = unsafeCastId

instance IsNSObject (Id SFSpeechRecognitionRequest) where
  toNSObject = unsafeCastId

-- ---------- SFSpeechRecognitionResult ----------

-- | Phantom type for @SFSpeechRecognitionResult@.
data SFSpeechRecognitionResult

instance IsObjCObject (Id SFSpeechRecognitionResult) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFSpeechRecognitionResult"

class IsNSObject a => IsSFSpeechRecognitionResult a where
  toSFSpeechRecognitionResult :: a -> Id SFSpeechRecognitionResult

instance IsSFSpeechRecognitionResult (Id SFSpeechRecognitionResult) where
  toSFSpeechRecognitionResult = unsafeCastId

instance IsNSObject (Id SFSpeechRecognitionResult) where
  toNSObject = unsafeCastId

-- ---------- SFSpeechRecognitionTask ----------

-- | Phantom type for @SFSpeechRecognitionTask@.
data SFSpeechRecognitionTask

instance IsObjCObject (Id SFSpeechRecognitionTask) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFSpeechRecognitionTask"

class IsNSObject a => IsSFSpeechRecognitionTask a where
  toSFSpeechRecognitionTask :: a -> Id SFSpeechRecognitionTask

instance IsSFSpeechRecognitionTask (Id SFSpeechRecognitionTask) where
  toSFSpeechRecognitionTask = unsafeCastId

instance IsNSObject (Id SFSpeechRecognitionTask) where
  toNSObject = unsafeCastId

-- ---------- SFSpeechRecognizer ----------

-- | Phantom type for @SFSpeechRecognizer@.
data SFSpeechRecognizer

instance IsObjCObject (Id SFSpeechRecognizer) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFSpeechRecognizer"

class IsNSObject a => IsSFSpeechRecognizer a where
  toSFSpeechRecognizer :: a -> Id SFSpeechRecognizer

instance IsSFSpeechRecognizer (Id SFSpeechRecognizer) where
  toSFSpeechRecognizer = unsafeCastId

instance IsNSObject (Id SFSpeechRecognizer) where
  toNSObject = unsafeCastId

-- ---------- SFTranscription ----------

-- | Phantom type for @SFTranscription@.
data SFTranscription

instance IsObjCObject (Id SFTranscription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFTranscription"

class IsNSObject a => IsSFTranscription a where
  toSFTranscription :: a -> Id SFTranscription

instance IsSFTranscription (Id SFTranscription) where
  toSFTranscription = unsafeCastId

instance IsNSObject (Id SFTranscription) where
  toNSObject = unsafeCastId

-- ---------- SFTranscriptionSegment ----------

-- | Phantom type for @SFTranscriptionSegment@.
data SFTranscriptionSegment

instance IsObjCObject (Id SFTranscriptionSegment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFTranscriptionSegment"

class IsNSObject a => IsSFTranscriptionSegment a where
  toSFTranscriptionSegment :: a -> Id SFTranscriptionSegment

instance IsSFTranscriptionSegment (Id SFTranscriptionSegment) where
  toSFTranscriptionSegment = unsafeCastId

instance IsNSObject (Id SFTranscriptionSegment) where
  toNSObject = unsafeCastId

-- ---------- SFVoiceAnalytics ----------

-- | Phantom type for @SFVoiceAnalytics@.
data SFVoiceAnalytics

instance IsObjCObject (Id SFVoiceAnalytics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFVoiceAnalytics"

class IsNSObject a => IsSFVoiceAnalytics a where
  toSFVoiceAnalytics :: a -> Id SFVoiceAnalytics

instance IsSFVoiceAnalytics (Id SFVoiceAnalytics) where
  toSFVoiceAnalytics = unsafeCastId

instance IsNSObject (Id SFVoiceAnalytics) where
  toNSObject = unsafeCastId

-- ---------- SFSpeechAudioBufferRecognitionRequest ----------

-- | Phantom type for @SFSpeechAudioBufferRecognitionRequest@.
data SFSpeechAudioBufferRecognitionRequest

instance IsObjCObject (Id SFSpeechAudioBufferRecognitionRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFSpeechAudioBufferRecognitionRequest"

class IsSFSpeechRecognitionRequest a => IsSFSpeechAudioBufferRecognitionRequest a where
  toSFSpeechAudioBufferRecognitionRequest :: a -> Id SFSpeechAudioBufferRecognitionRequest

instance IsSFSpeechAudioBufferRecognitionRequest (Id SFSpeechAudioBufferRecognitionRequest) where
  toSFSpeechAudioBufferRecognitionRequest = unsafeCastId

instance IsNSObject (Id SFSpeechAudioBufferRecognitionRequest) where
  toNSObject = unsafeCastId

instance IsSFSpeechRecognitionRequest (Id SFSpeechAudioBufferRecognitionRequest) where
  toSFSpeechRecognitionRequest = unsafeCastId

-- ---------- SFSpeechURLRecognitionRequest ----------

-- | Phantom type for @SFSpeechURLRecognitionRequest@.
data SFSpeechURLRecognitionRequest

instance IsObjCObject (Id SFSpeechURLRecognitionRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SFSpeechURLRecognitionRequest"

class IsSFSpeechRecognitionRequest a => IsSFSpeechURLRecognitionRequest a where
  toSFSpeechURLRecognitionRequest :: a -> Id SFSpeechURLRecognitionRequest

instance IsSFSpeechURLRecognitionRequest (Id SFSpeechURLRecognitionRequest) where
  toSFSpeechURLRecognitionRequest = unsafeCastId

instance IsNSObject (Id SFSpeechURLRecognitionRequest) where
  toNSObject = unsafeCastId

instance IsSFSpeechRecognitionRequest (Id SFSpeechURLRecognitionRequest) where
  toSFSpeechRecognitionRequest = unsafeCastId
