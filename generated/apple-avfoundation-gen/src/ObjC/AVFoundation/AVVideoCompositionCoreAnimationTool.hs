{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVVideoComposition
--
-- An AVVideoComposition object represents an immutable video composition.
--
-- A video composition describes, for any time in the aggregate time range of its instructions, the number and IDs of video tracks that are to be used in order to produce a composed video frame corresponding to that time. When AVFoundation's built-in video compositor is used, the instructions an AVVideoComposition contain can specify a spatial transformation, an opacity value, and a cropping rectangle for each video source, and these can vary over time via simple linear ramping functions.
--
-- A client can implement their own custom video compositor by implementing the AVVideoCompositing protocol; a custom video compositor is provided with pixel buffers for each of its video sources during playback and other operations and can perform arbitrary graphical operations on them in order to produce visual output.
--
-- Generated bindings for @AVVideoCompositionCoreAnimationTool@.
module ObjC.AVFoundation.AVVideoCompositionCoreAnimationTool
  ( AVVideoCompositionCoreAnimationTool
  , IsAVVideoCompositionCoreAnimationTool(..)
  , videoCompositionCoreAnimationToolWithAdditionalLayer_asTrackID
  , videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer_inLayer
  , videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers_inLayer
  , videoCompositionCoreAnimationToolWithAdditionalLayer_asTrackIDSelector
  , videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer_inLayerSelector
  , videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers_inLayerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes
import ObjC.QuartzCore.Internal.Classes

-- | videoCompositionCoreAnimationToolWithAdditionalLayer:asTrackID:
--
-- Add a Core Animation layer to the video composition
--
-- Include a Core Animation layer as an individual track input in video composition.								This layer should not come from, or be added to, another layer tree.								trackID should not match any real trackID in the source. Use -[AVAsset unusedTrackID] 								to obtain a trackID that's guaranteed not to coincide with the trackID of any track of the asset.								AVVideoCompositionInstructions should reference trackID where the rendered animation should be included.								For best performance, no transform should be set in the AVVideoCompositionLayerInstruction for this trackID.								Be aware that on iOS, CALayers backing a UIView usually have their content flipped (as defined by the								-contentsAreFlipped method). It may be required to insert a CALayer with its geometryFlipped property set								to YES in the layer hierarchy to get the same result when attaching a CALayer to a AVVideoCompositionCoreAnimationTool								as when using it to back a UIView.
--
-- ObjC selector: @+ videoCompositionCoreAnimationToolWithAdditionalLayer:asTrackID:@
videoCompositionCoreAnimationToolWithAdditionalLayer_asTrackID :: IsCALayer layer => layer -> CInt -> IO (Id AVVideoCompositionCoreAnimationTool)
videoCompositionCoreAnimationToolWithAdditionalLayer_asTrackID layer trackID =
  do
    cls' <- getRequiredClass "AVVideoCompositionCoreAnimationTool"
    sendClassMessage cls' videoCompositionCoreAnimationToolWithAdditionalLayer_asTrackIDSelector (toCALayer layer) trackID

-- | videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:inLayer:
--
-- Compose the composited video frames with the Core Animation layer
--
-- Place composited video frames in videoLayer and render animationLayer 								to produce the final frame. Normally videoLayer should be in animationLayer's sublayer tree.								The animationLayer should not come from, or be added to, another layer tree.								Be aware that on iOS, CALayers backing a UIView usually have their content flipped (as defined by the								-contentsAreFlipped method). It may be required to insert a CALayer with its geometryFlipped property set								to YES in the layer hierarchy to get the same result when attaching a CALayer to a AVVideoCompositionCoreAnimationTool								as when using it to back a UIView.
--
-- ObjC selector: @+ videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:inLayer:@
videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer_inLayer :: (IsCALayer videoLayer, IsCALayer animationLayer) => videoLayer -> animationLayer -> IO (Id AVVideoCompositionCoreAnimationTool)
videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer_inLayer videoLayer animationLayer =
  do
    cls' <- getRequiredClass "AVVideoCompositionCoreAnimationTool"
    sendClassMessage cls' videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer_inLayerSelector (toCALayer videoLayer) (toCALayer animationLayer)

-- | videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers:inLayer:
--
-- Compose the composited video frames with the Core Animation layer
--
-- Duplicate the composited video frames in each videoLayer and render animationLayer 								to produce the final frame. Normally videoLayers should be in animationLayer's sublayer tree.								The animationLayer should not come from, or be added to, another layer tree.								Be aware that on iOS, CALayers backing a UIView usually have their content flipped (as defined by the								-contentsAreFlipped method). It may be required to insert a CALayer with its geometryFlipped property set								to YES in the layer hierarchy to get the same result when attaching a CALayer to a AVVideoCompositionCoreAnimationTool								as when using it to back a UIView.
--
-- ObjC selector: @+ videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers:inLayer:@
videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers_inLayer :: (IsNSArray videoLayers, IsCALayer animationLayer) => videoLayers -> animationLayer -> IO (Id AVVideoCompositionCoreAnimationTool)
videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers_inLayer videoLayers animationLayer =
  do
    cls' <- getRequiredClass "AVVideoCompositionCoreAnimationTool"
    sendClassMessage cls' videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers_inLayerSelector (toNSArray videoLayers) (toCALayer animationLayer)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @videoCompositionCoreAnimationToolWithAdditionalLayer:asTrackID:@
videoCompositionCoreAnimationToolWithAdditionalLayer_asTrackIDSelector :: Selector '[Id CALayer, CInt] (Id AVVideoCompositionCoreAnimationTool)
videoCompositionCoreAnimationToolWithAdditionalLayer_asTrackIDSelector = mkSelector "videoCompositionCoreAnimationToolWithAdditionalLayer:asTrackID:"

-- | @Selector@ for @videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:inLayer:@
videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer_inLayerSelector :: Selector '[Id CALayer, Id CALayer] (Id AVVideoCompositionCoreAnimationTool)
videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer_inLayerSelector = mkSelector "videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:inLayer:"

-- | @Selector@ for @videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers:inLayer:@
videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers_inLayerSelector :: Selector '[Id NSArray, Id CALayer] (Id AVVideoCompositionCoreAnimationTool)
videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers_inLayerSelector = mkSelector "videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers:inLayer:"

