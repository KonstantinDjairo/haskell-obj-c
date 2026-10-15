{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFTranscription@.
module ObjC.Speech.SFTranscription
  ( SFTranscription
  , IsSFTranscription(..)
  , formattedString
  , segments
  , speakingRate
  , averagePauseDuration
  , averagePauseDurationSelector
  , formattedStringSelector
  , segmentsSelector
  , speakingRateSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- formattedString@
formattedString :: IsSFTranscription sfTranscription => sfTranscription -> IO (Id NSString)
formattedString sfTranscription =
  sendMessage sfTranscription formattedStringSelector

-- | @- segments@
segments :: IsSFTranscription sfTranscription => sfTranscription -> IO (Id NSArray)
segments sfTranscription =
  sendMessage sfTranscription segmentsSelector

-- | @- speakingRate@
speakingRate :: IsSFTranscription sfTranscription => sfTranscription -> IO CDouble
speakingRate sfTranscription =
  sendMessage sfTranscription speakingRateSelector

-- | @- averagePauseDuration@
averagePauseDuration :: IsSFTranscription sfTranscription => sfTranscription -> IO CDouble
averagePauseDuration sfTranscription =
  sendMessage sfTranscription averagePauseDurationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @formattedString@
formattedStringSelector :: Selector '[] (Id NSString)
formattedStringSelector = mkSelector "formattedString"

-- | @Selector@ for @segments@
segmentsSelector :: Selector '[] (Id NSArray)
segmentsSelector = mkSelector "segments"

-- | @Selector@ for @speakingRate@
speakingRateSelector :: Selector '[] CDouble
speakingRateSelector = mkSelector "speakingRate"

-- | @Selector@ for @averagePauseDuration@
averagePauseDurationSelector :: Selector '[] CDouble
averagePauseDurationSelector = mkSelector "averagePauseDuration"

