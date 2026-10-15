{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFSpeechRecognitionResult@.
module ObjC.Speech.SFSpeechRecognitionResult
  ( SFSpeechRecognitionResult
  , IsSFSpeechRecognitionResult(..)
  , bestTranscription
  , transcriptions
  , final
  , speechRecognitionMetadata
  , bestTranscriptionSelector
  , finalSelector
  , speechRecognitionMetadataSelector
  , transcriptionsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- bestTranscription@
bestTranscription :: IsSFSpeechRecognitionResult sfSpeechRecognitionResult => sfSpeechRecognitionResult -> IO (Id SFTranscription)
bestTranscription sfSpeechRecognitionResult =
  sendMessage sfSpeechRecognitionResult bestTranscriptionSelector

-- | @- transcriptions@
transcriptions :: IsSFSpeechRecognitionResult sfSpeechRecognitionResult => sfSpeechRecognitionResult -> IO (Id NSArray)
transcriptions sfSpeechRecognitionResult =
  sendMessage sfSpeechRecognitionResult transcriptionsSelector

-- | @- final@
final :: IsSFSpeechRecognitionResult sfSpeechRecognitionResult => sfSpeechRecognitionResult -> IO Bool
final sfSpeechRecognitionResult =
  sendMessage sfSpeechRecognitionResult finalSelector

-- | @- speechRecognitionMetadata@
speechRecognitionMetadata :: IsSFSpeechRecognitionResult sfSpeechRecognitionResult => sfSpeechRecognitionResult -> IO (Id SFSpeechRecognitionMetadata)
speechRecognitionMetadata sfSpeechRecognitionResult =
  sendMessage sfSpeechRecognitionResult speechRecognitionMetadataSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @bestTranscription@
bestTranscriptionSelector :: Selector '[] (Id SFTranscription)
bestTranscriptionSelector = mkSelector "bestTranscription"

-- | @Selector@ for @transcriptions@
transcriptionsSelector :: Selector '[] (Id NSArray)
transcriptionsSelector = mkSelector "transcriptions"

-- | @Selector@ for @final@
finalSelector :: Selector '[] Bool
finalSelector = mkSelector "final"

-- | @Selector@ for @speechRecognitionMetadata@
speechRecognitionMetadataSelector :: Selector '[] (Id SFSpeechRecognitionMetadata)
speechRecognitionMetadataSelector = mkSelector "speechRecognitionMetadata"

