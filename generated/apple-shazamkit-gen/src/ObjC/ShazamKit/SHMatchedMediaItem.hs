{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | @SHMatchedMediaItem@ represents metadata that has been matched against a @SHCatalog@
--
-- Extra information is presented that can only be generated from a match. The properties provided here that are not available on @SHMediaItem@ are ephemeral and can differ each time there is a match of the @SHSignature@ that this object represents
--
-- Note: @SHMatchedMediaItem@ is not intended to be subclassed
--
-- Generated bindings for @SHMatchedMediaItem@.
module ObjC.ShazamKit.SHMatchedMediaItem
  ( SHMatchedMediaItem
  , IsSHMatchedMediaItem(..)
  , frequencySkew
  , matchOffset
  , predictedCurrentMatchOffset
  , frequencySkewSelector
  , matchOffsetSelector
  , predictedCurrentMatchOffsetSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ShazamKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | The frequency difference between the reference and sample audio
--
-- A value of 0.0 indicates the matched audio at the original frequency, a value of 0.1 indicates 100hz is now 110hz
--
-- ObjC selector: @- frequencySkew@
frequencySkew :: IsSHMatchedMediaItem shMatchedMediaItem => shMatchedMediaItem -> IO CFloat
frequencySkew shMatchedMediaItem =
  sendMessage shMatchedMediaItem frequencySkewSelector

-- | The difference between the start of the reference audio and the start of the sample audio
--
-- Note: This value can be negative if the source audio starts before the reference audio
--
-- ObjC selector: @- matchOffset@
matchOffset :: IsSHMatchedMediaItem shMatchedMediaItem => shMatchedMediaItem -> IO CDouble
matchOffset shMatchedMediaItem =
  sendMessage shMatchedMediaItem matchOffsetSelector

-- | The auto updating playback position in the reference signature
--
-- ObjC selector: @- predictedCurrentMatchOffset@
predictedCurrentMatchOffset :: IsSHMatchedMediaItem shMatchedMediaItem => shMatchedMediaItem -> IO CDouble
predictedCurrentMatchOffset shMatchedMediaItem =
  sendMessage shMatchedMediaItem predictedCurrentMatchOffsetSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @frequencySkew@
frequencySkewSelector :: Selector '[] CFloat
frequencySkewSelector = mkSelector "frequencySkew"

-- | @Selector@ for @matchOffset@
matchOffsetSelector :: Selector '[] CDouble
matchOffsetSelector = mkSelector "matchOffset"

-- | @Selector@ for @predictedCurrentMatchOffset@
predictedCurrentMatchOffsetSelector :: Selector '[] CDouble
predictedCurrentMatchOffsetSelector = mkSelector "predictedCurrentMatchOffset"

