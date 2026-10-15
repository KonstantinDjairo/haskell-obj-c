{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFSpeechRecognitionRequest@.
module ObjC.Speech.SFSpeechRecognitionRequest
  ( SFSpeechRecognitionRequest
  , IsSFSpeechRecognitionRequest(..)
  , taskHint
  , setTaskHint
  , shouldReportPartialResults
  , setShouldReportPartialResults
  , contextualStrings
  , setContextualStrings
  , interactionIdentifier
  , setInteractionIdentifier
  , requiresOnDeviceRecognition
  , setRequiresOnDeviceRecognition
  , addsPunctuation
  , setAddsPunctuation
  , addsPunctuationSelector
  , contextualStringsSelector
  , interactionIdentifierSelector
  , requiresOnDeviceRecognitionSelector
  , setAddsPunctuationSelector
  , setContextualStringsSelector
  , setInteractionIdentifierSelector
  , setRequiresOnDeviceRecognitionSelector
  , setShouldReportPartialResultsSelector
  , setTaskHintSelector
  , shouldReportPartialResultsSelector
  , taskHintSelector

  -- * Enum types
  , SFSpeechRecognitionTaskHint(SFSpeechRecognitionTaskHint)
  , pattern SFSpeechRecognitionTaskHintUnspecified
  , pattern SFSpeechRecognitionTaskHintDictation
  , pattern SFSpeechRecognitionTaskHintSearch
  , pattern SFSpeechRecognitionTaskHintConfirmation

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Speech.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- taskHint@
taskHint :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> IO SFSpeechRecognitionTaskHint
taskHint sfSpeechRecognitionRequest =
  sendMessage sfSpeechRecognitionRequest taskHintSelector

-- | @- setTaskHint:@
setTaskHint :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> SFSpeechRecognitionTaskHint -> IO ()
setTaskHint sfSpeechRecognitionRequest value =
  sendMessage sfSpeechRecognitionRequest setTaskHintSelector value

-- | @- shouldReportPartialResults@
shouldReportPartialResults :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> IO Bool
shouldReportPartialResults sfSpeechRecognitionRequest =
  sendMessage sfSpeechRecognitionRequest shouldReportPartialResultsSelector

-- | @- setShouldReportPartialResults:@
setShouldReportPartialResults :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> Bool -> IO ()
setShouldReportPartialResults sfSpeechRecognitionRequest value =
  sendMessage sfSpeechRecognitionRequest setShouldReportPartialResultsSelector value

-- | @- contextualStrings@
contextualStrings :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> IO (Id NSArray)
contextualStrings sfSpeechRecognitionRequest =
  sendMessage sfSpeechRecognitionRequest contextualStringsSelector

-- | @- setContextualStrings:@
setContextualStrings :: (IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest, IsNSArray value) => sfSpeechRecognitionRequest -> value -> IO ()
setContextualStrings sfSpeechRecognitionRequest value =
  sendMessage sfSpeechRecognitionRequest setContextualStringsSelector (toNSArray value)

-- | @- interactionIdentifier@
interactionIdentifier :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> IO RawId
interactionIdentifier sfSpeechRecognitionRequest =
  sendMessage sfSpeechRecognitionRequest interactionIdentifierSelector

-- | @- setInteractionIdentifier:@
setInteractionIdentifier :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> RawId -> IO ()
setInteractionIdentifier sfSpeechRecognitionRequest value =
  sendMessage sfSpeechRecognitionRequest setInteractionIdentifierSelector value

-- | @- requiresOnDeviceRecognition@
requiresOnDeviceRecognition :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> IO Bool
requiresOnDeviceRecognition sfSpeechRecognitionRequest =
  sendMessage sfSpeechRecognitionRequest requiresOnDeviceRecognitionSelector

-- | @- setRequiresOnDeviceRecognition:@
setRequiresOnDeviceRecognition :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> Bool -> IO ()
setRequiresOnDeviceRecognition sfSpeechRecognitionRequest value =
  sendMessage sfSpeechRecognitionRequest setRequiresOnDeviceRecognitionSelector value

-- | @- addsPunctuation@
addsPunctuation :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> IO Bool
addsPunctuation sfSpeechRecognitionRequest =
  sendMessage sfSpeechRecognitionRequest addsPunctuationSelector

-- | @- setAddsPunctuation:@
setAddsPunctuation :: IsSFSpeechRecognitionRequest sfSpeechRecognitionRequest => sfSpeechRecognitionRequest -> Bool -> IO ()
setAddsPunctuation sfSpeechRecognitionRequest value =
  sendMessage sfSpeechRecognitionRequest setAddsPunctuationSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @taskHint@
taskHintSelector :: Selector '[] SFSpeechRecognitionTaskHint
taskHintSelector = mkSelector "taskHint"

-- | @Selector@ for @setTaskHint:@
setTaskHintSelector :: Selector '[SFSpeechRecognitionTaskHint] ()
setTaskHintSelector = mkSelector "setTaskHint:"

-- | @Selector@ for @shouldReportPartialResults@
shouldReportPartialResultsSelector :: Selector '[] Bool
shouldReportPartialResultsSelector = mkSelector "shouldReportPartialResults"

-- | @Selector@ for @setShouldReportPartialResults:@
setShouldReportPartialResultsSelector :: Selector '[Bool] ()
setShouldReportPartialResultsSelector = mkSelector "setShouldReportPartialResults:"

-- | @Selector@ for @contextualStrings@
contextualStringsSelector :: Selector '[] (Id NSArray)
contextualStringsSelector = mkSelector "contextualStrings"

-- | @Selector@ for @setContextualStrings:@
setContextualStringsSelector :: Selector '[Id NSArray] ()
setContextualStringsSelector = mkSelector "setContextualStrings:"

-- | @Selector@ for @interactionIdentifier@
interactionIdentifierSelector :: Selector '[] RawId
interactionIdentifierSelector = mkSelector "interactionIdentifier"

-- | @Selector@ for @setInteractionIdentifier:@
setInteractionIdentifierSelector :: Selector '[RawId] ()
setInteractionIdentifierSelector = mkSelector "setInteractionIdentifier:"

-- | @Selector@ for @requiresOnDeviceRecognition@
requiresOnDeviceRecognitionSelector :: Selector '[] Bool
requiresOnDeviceRecognitionSelector = mkSelector "requiresOnDeviceRecognition"

-- | @Selector@ for @setRequiresOnDeviceRecognition:@
setRequiresOnDeviceRecognitionSelector :: Selector '[Bool] ()
setRequiresOnDeviceRecognitionSelector = mkSelector "setRequiresOnDeviceRecognition:"

-- | @Selector@ for @addsPunctuation@
addsPunctuationSelector :: Selector '[] Bool
addsPunctuationSelector = mkSelector "addsPunctuation"

-- | @Selector@ for @setAddsPunctuation:@
setAddsPunctuationSelector :: Selector '[Bool] ()
setAddsPunctuationSelector = mkSelector "setAddsPunctuation:"

