{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFVoiceAnalytics@.
module ObjC.Speech.SFVoiceAnalytics
  ( SFVoiceAnalytics
  , IsSFVoiceAnalytics(..)
  , jitter
  , shimmer
  , pitch
  , voicing
  , jitterSelector
  , pitchSelector
  , shimmerSelector
  , voicingSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- jitter@
jitter :: IsSFVoiceAnalytics sfVoiceAnalytics => sfVoiceAnalytics -> IO (Id SFAcousticFeature)
jitter sfVoiceAnalytics =
  sendMessage sfVoiceAnalytics jitterSelector

-- | @- shimmer@
shimmer :: IsSFVoiceAnalytics sfVoiceAnalytics => sfVoiceAnalytics -> IO (Id SFAcousticFeature)
shimmer sfVoiceAnalytics =
  sendMessage sfVoiceAnalytics shimmerSelector

-- | @- pitch@
pitch :: IsSFVoiceAnalytics sfVoiceAnalytics => sfVoiceAnalytics -> IO (Id SFAcousticFeature)
pitch sfVoiceAnalytics =
  sendMessage sfVoiceAnalytics pitchSelector

-- | @- voicing@
voicing :: IsSFVoiceAnalytics sfVoiceAnalytics => sfVoiceAnalytics -> IO (Id SFAcousticFeature)
voicing sfVoiceAnalytics =
  sendMessage sfVoiceAnalytics voicingSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @jitter@
jitterSelector :: Selector '[] (Id SFAcousticFeature)
jitterSelector = mkSelector "jitter"

-- | @Selector@ for @shimmer@
shimmerSelector :: Selector '[] (Id SFAcousticFeature)
shimmerSelector = mkSelector "shimmer"

-- | @Selector@ for @pitch@
pitchSelector :: Selector '[] (Id SFAcousticFeature)
pitchSelector = mkSelector "pitch"

-- | @Selector@ for @voicing@
voicingSelector :: Selector '[] (Id SFAcousticFeature)
voicingSelector = mkSelector "voicing"

