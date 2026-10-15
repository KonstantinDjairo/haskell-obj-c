{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFSpeechAudioBufferRecognitionRequest@.
module ObjC.Speech.SFSpeechAudioBufferRecognitionRequest
  ( SFSpeechAudioBufferRecognitionRequest
  , IsSFSpeechAudioBufferRecognitionRequest(..)
  , appendAudioPCMBuffer
  , appendAudioSampleBuffer
  , endAudio
  , nativeAudioFormat
  , appendAudioPCMBufferSelector
  , appendAudioSampleBufferSelector
  , endAudioSelector
  , nativeAudioFormatSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.AVFAudio.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- appendAudioPCMBuffer:@
appendAudioPCMBuffer :: (IsSFSpeechAudioBufferRecognitionRequest sfSpeechAudioBufferRecognitionRequest, IsAVAudioPCMBuffer audioPCMBuffer) => sfSpeechAudioBufferRecognitionRequest -> audioPCMBuffer -> IO ()
appendAudioPCMBuffer sfSpeechAudioBufferRecognitionRequest audioPCMBuffer =
  sendMessage sfSpeechAudioBufferRecognitionRequest appendAudioPCMBufferSelector (toAVAudioPCMBuffer audioPCMBuffer)

-- | @- appendAudioSampleBuffer:@
appendAudioSampleBuffer :: IsSFSpeechAudioBufferRecognitionRequest sfSpeechAudioBufferRecognitionRequest => sfSpeechAudioBufferRecognitionRequest -> Ptr () -> IO ()
appendAudioSampleBuffer sfSpeechAudioBufferRecognitionRequest sampleBuffer =
  sendMessage sfSpeechAudioBufferRecognitionRequest appendAudioSampleBufferSelector sampleBuffer

-- | @- endAudio@
endAudio :: IsSFSpeechAudioBufferRecognitionRequest sfSpeechAudioBufferRecognitionRequest => sfSpeechAudioBufferRecognitionRequest -> IO ()
endAudio sfSpeechAudioBufferRecognitionRequest =
  sendMessage sfSpeechAudioBufferRecognitionRequest endAudioSelector

-- | @- nativeAudioFormat@
nativeAudioFormat :: IsSFSpeechAudioBufferRecognitionRequest sfSpeechAudioBufferRecognitionRequest => sfSpeechAudioBufferRecognitionRequest -> IO (Id AVAudioFormat)
nativeAudioFormat sfSpeechAudioBufferRecognitionRequest =
  sendMessage sfSpeechAudioBufferRecognitionRequest nativeAudioFormatSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @appendAudioPCMBuffer:@
appendAudioPCMBufferSelector :: Selector '[Id AVAudioPCMBuffer] ()
appendAudioPCMBufferSelector = mkSelector "appendAudioPCMBuffer:"

-- | @Selector@ for @appendAudioSampleBuffer:@
appendAudioSampleBufferSelector :: Selector '[Ptr ()] ()
appendAudioSampleBufferSelector = mkSelector "appendAudioSampleBuffer:"

-- | @Selector@ for @endAudio@
endAudioSelector :: Selector '[] ()
endAudioSelector = mkSelector "endAudio"

-- | @Selector@ for @nativeAudioFormat@
nativeAudioFormatSelector :: Selector '[] (Id AVAudioFormat)
nativeAudioFormatSelector = mkSelector "nativeAudioFormat"

