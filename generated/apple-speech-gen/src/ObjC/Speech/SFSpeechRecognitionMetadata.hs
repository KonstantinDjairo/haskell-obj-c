{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFSpeechRecognitionMetadata@.
module ObjC.Speech.SFSpeechRecognitionMetadata
  ( SFSpeechRecognitionMetadata
  , IsSFSpeechRecognitionMetadata(..)
  , speakingRate
  , averagePauseDuration
  , speechStartTimestamp
  , speechDuration
  , voiceAnalytics
  , averagePauseDurationSelector
  , speakingRateSelector
  , speechDurationSelector
  , speechStartTimestampSelector
  , voiceAnalyticsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- speakingRate@
speakingRate :: IsSFSpeechRecognitionMetadata sfSpeechRecognitionMetadata => sfSpeechRecognitionMetadata -> IO CDouble
speakingRate sfSpeechRecognitionMetadata =
  sendMessage sfSpeechRecognitionMetadata speakingRateSelector

-- | @- averagePauseDuration@
averagePauseDuration :: IsSFSpeechRecognitionMetadata sfSpeechRecognitionMetadata => sfSpeechRecognitionMetadata -> IO CDouble
averagePauseDuration sfSpeechRecognitionMetadata =
  sendMessage sfSpeechRecognitionMetadata averagePauseDurationSelector

-- | @- speechStartTimestamp@
speechStartTimestamp :: IsSFSpeechRecognitionMetadata sfSpeechRecognitionMetadata => sfSpeechRecognitionMetadata -> IO CDouble
speechStartTimestamp sfSpeechRecognitionMetadata =
  sendMessage sfSpeechRecognitionMetadata speechStartTimestampSelector

-- | @- speechDuration@
speechDuration :: IsSFSpeechRecognitionMetadata sfSpeechRecognitionMetadata => sfSpeechRecognitionMetadata -> IO CDouble
speechDuration sfSpeechRecognitionMetadata =
  sendMessage sfSpeechRecognitionMetadata speechDurationSelector

-- | @- voiceAnalytics@
voiceAnalytics :: IsSFSpeechRecognitionMetadata sfSpeechRecognitionMetadata => sfSpeechRecognitionMetadata -> IO (Id SFVoiceAnalytics)
voiceAnalytics sfSpeechRecognitionMetadata =
  sendMessage sfSpeechRecognitionMetadata voiceAnalyticsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @speakingRate@
speakingRateSelector :: Selector '[] CDouble
speakingRateSelector = mkSelector "speakingRate"

-- | @Selector@ for @averagePauseDuration@
averagePauseDurationSelector :: Selector '[] CDouble
averagePauseDurationSelector = mkSelector "averagePauseDuration"

-- | @Selector@ for @speechStartTimestamp@
speechStartTimestampSelector :: Selector '[] CDouble
speechStartTimestampSelector = mkSelector "speechStartTimestamp"

-- | @Selector@ for @speechDuration@
speechDurationSelector :: Selector '[] CDouble
speechDurationSelector = mkSelector "speechDuration"

-- | @Selector@ for @voiceAnalytics@
voiceAnalyticsSelector :: Selector '[] (Id SFVoiceAnalytics)
voiceAnalyticsSelector = mkSelector "voiceAnalytics"

