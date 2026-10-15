{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFTranscriptionSegment@.
module ObjC.Speech.SFTranscriptionSegment
  ( SFTranscriptionSegment
  , IsSFTranscriptionSegment(..)
  , substring
  , substringRange
  , timestamp
  , duration
  , confidence
  , alternativeSubstrings
  , voiceAnalytics
  , alternativeSubstringsSelector
  , confidenceSelector
  , durationSelector
  , substringRangeSelector
  , substringSelector
  , timestampSelector
  , voiceAnalyticsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.Foundation.Internal.Classes

-- | @- substring@
substring :: IsSFTranscriptionSegment sfTranscriptionSegment => sfTranscriptionSegment -> IO (Id NSString)
substring sfTranscriptionSegment =
  sendMessage sfTranscriptionSegment substringSelector

-- | @- substringRange@
substringRange :: IsSFTranscriptionSegment sfTranscriptionSegment => sfTranscriptionSegment -> IO NSRange
substringRange sfTranscriptionSegment =
  sendMessage sfTranscriptionSegment substringRangeSelector

-- | @- timestamp@
timestamp :: IsSFTranscriptionSegment sfTranscriptionSegment => sfTranscriptionSegment -> IO CDouble
timestamp sfTranscriptionSegment =
  sendMessage sfTranscriptionSegment timestampSelector

-- | @- duration@
duration :: IsSFTranscriptionSegment sfTranscriptionSegment => sfTranscriptionSegment -> IO CDouble
duration sfTranscriptionSegment =
  sendMessage sfTranscriptionSegment durationSelector

-- | @- confidence@
confidence :: IsSFTranscriptionSegment sfTranscriptionSegment => sfTranscriptionSegment -> IO CFloat
confidence sfTranscriptionSegment =
  sendMessage sfTranscriptionSegment confidenceSelector

-- | @- alternativeSubstrings@
alternativeSubstrings :: IsSFTranscriptionSegment sfTranscriptionSegment => sfTranscriptionSegment -> IO (Id NSArray)
alternativeSubstrings sfTranscriptionSegment =
  sendMessage sfTranscriptionSegment alternativeSubstringsSelector

-- | @- voiceAnalytics@
voiceAnalytics :: IsSFTranscriptionSegment sfTranscriptionSegment => sfTranscriptionSegment -> IO RawId
voiceAnalytics sfTranscriptionSegment =
  sendMessage sfTranscriptionSegment voiceAnalyticsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @substring@
substringSelector :: Selector '[] (Id NSString)
substringSelector = mkSelector "substring"

-- | @Selector@ for @substringRange@
substringRangeSelector :: Selector '[] NSRange
substringRangeSelector = mkSelector "substringRange"

-- | @Selector@ for @timestamp@
timestampSelector :: Selector '[] CDouble
timestampSelector = mkSelector "timestamp"

-- | @Selector@ for @duration@
durationSelector :: Selector '[] CDouble
durationSelector = mkSelector "duration"

-- | @Selector@ for @confidence@
confidenceSelector :: Selector '[] CFloat
confidenceSelector = mkSelector "confidence"

-- | @Selector@ for @alternativeSubstrings@
alternativeSubstringsSelector :: Selector '[] (Id NSArray)
alternativeSubstringsSelector = mkSelector "alternativeSubstrings"

-- | @Selector@ for @voiceAnalytics@
voiceAnalyticsSelector :: Selector '[] RawId
voiceAnalyticsSelector = mkSelector "voiceAnalytics"

