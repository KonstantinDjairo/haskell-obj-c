{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVVideoCompositionRenderContext@.
module ObjC.AVFoundation.AVVideoCompositionRenderContext
  ( AVVideoCompositionRenderContext
  , IsAVVideoCompositionRenderContext(..)
  , newPixelBuffer
  , renderScale
  , highQualityRendering
  , videoComposition
  , highQualityRenderingSelector
  , newPixelBufferSelector
  , renderScaleSelector
  , videoCompositionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | newPixelBuffer
--
-- Vends a CVPixelBuffer to use for rendering
--
-- The buffer will have its kCVImageBufferCleanApertureKey and kCVImageBufferPixelAspectRatioKey attachments set to match the current composition processor properties.
--
-- ObjC selector: @- newPixelBuffer@
newPixelBuffer :: IsAVVideoCompositionRenderContext avVideoCompositionRenderContext => avVideoCompositionRenderContext -> IO (Ptr ())
newPixelBuffer avVideoCompositionRenderContext =
  sendOwnedMessage avVideoCompositionRenderContext newPixelBufferSelector

-- | @- renderScale@
renderScale :: IsAVVideoCompositionRenderContext avVideoCompositionRenderContext => avVideoCompositionRenderContext -> IO CFloat
renderScale avVideoCompositionRenderContext =
  sendMessage avVideoCompositionRenderContext renderScaleSelector

-- | @- highQualityRendering@
highQualityRendering :: IsAVVideoCompositionRenderContext avVideoCompositionRenderContext => avVideoCompositionRenderContext -> IO Bool
highQualityRendering avVideoCompositionRenderContext =
  sendMessage avVideoCompositionRenderContext highQualityRenderingSelector

-- | @- videoComposition@
videoComposition :: IsAVVideoCompositionRenderContext avVideoCompositionRenderContext => avVideoCompositionRenderContext -> IO (Id AVVideoComposition)
videoComposition avVideoCompositionRenderContext =
  sendMessage avVideoCompositionRenderContext videoCompositionSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @newPixelBuffer@
newPixelBufferSelector :: Selector '[] (Ptr ())
newPixelBufferSelector = mkSelector "newPixelBuffer"

-- | @Selector@ for @renderScale@
renderScaleSelector :: Selector '[] CFloat
renderScaleSelector = mkSelector "renderScale"

-- | @Selector@ for @highQualityRendering@
highQualityRenderingSelector :: Selector '[] Bool
highQualityRenderingSelector = mkSelector "highQualityRendering"

-- | @Selector@ for @videoComposition@
videoCompositionSelector :: Selector '[] (Id AVVideoComposition)
videoCompositionSelector = mkSelector "videoComposition"

