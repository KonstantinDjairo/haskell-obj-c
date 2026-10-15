{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVAssetVariant
--
-- An AVAssetVariant represents a bit rate variant.				Each asset contains a collection of variants that represent a combination of audio, video, text, closed captions, and subtitles for a particular bit rate.
--
-- Generated bindings for @AVAssetVariant@.
module ObjC.AVFoundation.AVAssetVariant
  ( AVAssetVariant
  , IsAVAssetVariant(..)
  , init_
  , new
  , peakBitRate
  , averageBitRate
  , videoAttributes
  , audioAttributes
  , audioAttributesSelector
  , averageBitRateSelector
  , initSelector
  , newSelector
  , peakBitRateSelector
  , videoAttributesSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVAssetVariant avAssetVariant => avAssetVariant -> IO (Id AVAssetVariant)
init_ avAssetVariant =
  sendOwnedMessage avAssetVariant initSelector

-- | @+ new@
new :: IO (Id AVAssetVariant)
new  =
  do
    cls' <- getRequiredClass "AVAssetVariant"
    sendOwnedClassMessage cls' newSelector

-- | peakBitRate
--
-- If it is not declared, the value will be negative.
--
-- ObjC selector: @- peakBitRate@
peakBitRate :: IsAVAssetVariant avAssetVariant => avAssetVariant -> IO CDouble
peakBitRate avAssetVariant =
  sendMessage avAssetVariant peakBitRateSelector

-- | averageBitRate
--
-- If it is not declared, the value will be negative.
--
-- ObjC selector: @- averageBitRate@
averageBitRate :: IsAVAssetVariant avAssetVariant => avAssetVariant -> IO CDouble
averageBitRate avAssetVariant =
  sendMessage avAssetVariant averageBitRateSelector

-- | videoAttributes
--
-- Provides  variant's video rendition attributes. If no video attributes are declared, it will be nil.
--
-- ObjC selector: @- videoAttributes@
videoAttributes :: IsAVAssetVariant avAssetVariant => avAssetVariant -> IO (Id AVAssetVariantVideoAttributes)
videoAttributes avAssetVariant =
  sendMessage avAssetVariant videoAttributesSelector

-- | audioAttributes
--
-- Provides  variant's audio rendition attributes. If no audio attributes are declared, it will be nil.
--
-- ObjC selector: @- audioAttributes@
audioAttributes :: IsAVAssetVariant avAssetVariant => avAssetVariant -> IO (Id AVAssetVariantAudioAttributes)
audioAttributes avAssetVariant =
  sendMessage avAssetVariant audioAttributesSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVAssetVariant)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVAssetVariant)
newSelector = mkSelector "new"

-- | @Selector@ for @peakBitRate@
peakBitRateSelector :: Selector '[] CDouble
peakBitRateSelector = mkSelector "peakBitRate"

-- | @Selector@ for @averageBitRate@
averageBitRateSelector :: Selector '[] CDouble
averageBitRateSelector = mkSelector "averageBitRate"

-- | @Selector@ for @videoAttributes@
videoAttributesSelector :: Selector '[] (Id AVAssetVariantVideoAttributes)
videoAttributesSelector = mkSelector "videoAttributes"

-- | @Selector@ for @audioAttributes@
audioAttributesSelector :: Selector '[] (Id AVAssetVariantAudioAttributes)
audioAttributesSelector = mkSelector "audioAttributes"

