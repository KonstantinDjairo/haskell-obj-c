{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVVideoCompositionRenderContext
--
-- The AVVideoCompositionRenderContext class defines the context within which custom compositors render new output pixels buffers.
--
-- An instance of AVVideoCompositionRenderContext provides size and scaling information and offers a service for efficiently providing pixel buffers from a managed pool of buffers.
--
-- Generated bindings for @AVVideoComposition@.
module ObjC.AVFoundation.AVVideoComposition
  ( AVVideoComposition
  , IsAVVideoComposition(..)
  , videoCompositionWithPropertiesOfAsset
  , videoCompositionWithPropertiesOfAsset_completionHandler
  , videoCompositionWithAsset_applyingCIFiltersWithHandler
  , videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler
  , customVideoCompositorClass
  , sourceTrackIDForFrameTiming
  , renderScale
  , instructions
  , animationTool
  , sourceSampleDataTrackIDs
  , colorPrimaries
  , colorYCbCrMatrix
  , colorTransferFunction
  , animationToolSelector
  , colorPrimariesSelector
  , colorTransferFunctionSelector
  , colorYCbCrMatrixSelector
  , customVideoCompositorClassSelector
  , instructionsSelector
  , renderScaleSelector
  , sourceSampleDataTrackIDsSelector
  , sourceTrackIDForFrameTimingSelector
  , videoCompositionWithAsset_applyingCIFiltersWithHandlerSelector
  , videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandlerSelector
  , videoCompositionWithPropertiesOfAssetSelector
  , videoCompositionWithPropertiesOfAsset_completionHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | videoCompositionWithPropertiesOfAsset:
--
-- Returns a new instance of AVVideoComposition with values and instructions suitable for presenting the video tracks of the specified asset according to its temporal and geometric properties and those of its tracks.
--
-- @asset@ — An instance of AVAsset. Ensure that the duration and tracks properties of the asset are already loaded before invoking this method.
--
-- Returns: An instance of AVVideoComposition.
--
-- The returned AVVideoComposition will have instructions that respect the spatial properties and timeRanges of the specified asset's video tracks.   It will also have the following values for its properties:
--
-- - If the asset has exactly one video track, the original timing of the source video track will be used. If the asset has more than one video track, and the nominal frame rate of any of video tracks is known, the reciprocal of the greatest known nominalFrameRate will be used as the value of frameDuration. Otherwise, a default framerate of 30fps is used.   	- If the specified asset is an instance of AVComposition, the renderSize will be set to the naturalSize of the AVComposition; otherwise the renderSize will be set to a value that encompasses all of the asset's video tracks.   	- A renderScale of 1.0.   	- A nil animationTool.
--
-- If the specified asset has no video tracks, this method will return an AVVideoComposition instance with an empty collection of instructions.
--
-- ObjC selector: @+ videoCompositionWithPropertiesOfAsset:@
videoCompositionWithPropertiesOfAsset :: IsAVAsset asset => asset -> IO (Id AVVideoComposition)
videoCompositionWithPropertiesOfAsset asset =
  do
    cls' <- getRequiredClass "AVVideoComposition"
    sendClassMessage cls' videoCompositionWithPropertiesOfAssetSelector (toAVAsset asset)

-- | videoCompositionWithPropertiesOfAsset:completionHandler:
--
-- Vends a new instance of AVVideoComposition with values and instructions suitable for presenting the video tracks of the specified asset according to its temporal and geometric properties and those of its tracks.
--
-- @asset@ — An instance of AVAsset.
--
-- @completionHandler@ — A block that is invoked when the new video composition has finished being created.  If the @videoComposition@ parameter is nil, the @error@ parameter describes the failure that occurred.
--
-- The new AVVideoComposition will have instructions that respect the spatial properties and timeRanges of the specified asset's video tracks.	It will also have the following values for its properties:
--
-- - If the asset has exactly one video track, the original timing of the source video track will be used. If the asset has more than one video track, and the nominal frame rate of any of video tracks is known, the reciprocal of the greatest known nominalFrameRate will be used as the value of frameDuration. Otherwise, a default framerate of 30fps is used.		- If the specified asset is an instance of AVComposition, the renderSize will be set to the naturalSize of the AVComposition; otherwise the renderSize will be set to a value that encompasses all of the asset's video tracks.		- A renderScale of 1.0.		- A nil animationTool.
--
-- If the specified asset has no video tracks, this method will return an AVVideoComposition instance with an empty collection of instructions.
--
-- ObjC selector: @+ videoCompositionWithPropertiesOfAsset:completionHandler:@
videoCompositionWithPropertiesOfAsset_completionHandler :: IsAVAsset asset => asset -> Ptr () -> IO ()
videoCompositionWithPropertiesOfAsset_completionHandler asset completionHandler =
  do
    cls' <- getRequiredClass "AVVideoComposition"
    sendClassMessage cls' videoCompositionWithPropertiesOfAsset_completionHandlerSelector (toAVAsset asset) completionHandler

-- | videoCompositionWithAsset:applyingCIFiltersWithHandler:
--
-- Returns a new instance of AVVideoComposition with values and instructions that will apply the specified handler block to video frames represented as instances of CIImage.
--
-- @asset@ — An instance of AVAsset. For best performance, ensure that the duration and tracks properties of the asset are already loaded before invoking this method.
--
-- Returns: An instance of AVVideoComposition.
--
-- The returned AVVideoComposition will cause the specified handler block to be called to filter each frame of the asset's first enabled video track. The handler block should use the properties of the provided AVAsynchronousCIImageFilteringRequest and respond using finishWithImage:context: with a "filtered" new CIImage (or the provided source image for no affect). In the event of an error, respond to the request using finishWithError:. The error can be observed via AVPlayerItemFailedToPlayToEndTimeNotification, see AVPlayerItemFailedToPlayToEndTimeErrorKey in notification payload.
--
-- NOTE: The returned AVVideoComposition's properties are private and support only CIFilter-based operations. Mutations are not supported, either in the values of properties of the AVVideoComposition itself or in its private instructions. If rotations or other transformations are desired, they must be accomplished via the application of CIFilters during the execution of your specified handler.
--
-- The video composition will also have the following values for its properties:
--
-- - The original timing of the asset's first enabled video track will be used.		- A renderSize that encompasses the asset's first enabled video track respecting the track's preferredTransform.		- A renderScale of 1.0.
--
-- The default CIContext has the following properties:
--
-- - iOS: Device RGB color space		- OS X: sRGB color space
--
-- Example usage:
--
-- playerItem.videoComposition = [AVVideoComposition videoCompositionWithAsset:srcAsset applyingCIFiltersWithHandler:			^(AVAsynchronousCIImageFilteringRequest *request)			{				NSError *err = nil;				CIImage *filtered = myRenderer(request, &err);				if (filtered)					[request finishWithImage:filtered context:nil];				else					[request finishWithError:err];			}];
--
-- ObjC selector: @+ videoCompositionWithAsset:applyingCIFiltersWithHandler:@
videoCompositionWithAsset_applyingCIFiltersWithHandler :: IsAVAsset asset => asset -> Ptr () -> IO (Id AVVideoComposition)
videoCompositionWithAsset_applyingCIFiltersWithHandler asset applier =
  do
    cls' <- getRequiredClass "AVVideoComposition"
    sendClassMessage cls' videoCompositionWithAsset_applyingCIFiltersWithHandlerSelector (toAVAsset asset) applier

-- | videoCompositionWithAsset:applyingCIFiltersWithHandler:completionHandler:
--
-- Vends a new instance of AVVideoComposition with values and instructions that will apply the specified handler block to video frames represented as instances of CIImage.
--
-- @asset@ — An instance of AVAsset.
--
-- @completionHandler@ — A block that is invoked when the new video composition has finished being created.  If the @videoComposition@ parameter is nil, the @error@ parameter describes the failure that occurred.
--
-- The new AVVideoComposition will cause the specified handler block to be called to filter each frame of the asset's first enabled video track. The handler block should use the properties of the provided AVAsynchronousCIImageFilteringRequest and respond using finishWithImage:context: with a "filtered" new CIImage (or the provided source image for no affect). In the event of an error, respond to the request using finishWithError:. The error can be observed via AVPlayerItemFailedToPlayToEndTimeNotification, see AVPlayerItemFailedToPlayToEndTimeErrorKey in notification payload.
--
-- NOTE: The returned AVVideoComposition's properties are private and support only CIFilter-based operations. Mutations are not supported, either in the values of properties of the AVVideoComposition itself or in its private instructions. If rotations or other transformations are desired, they must be accomplished via the application of CIFilters during the execution of your specified handler.
--
-- The video composition will also have the following values for its properties:
--
-- - The original timing of the asset's first enabled video track will be used.		- A renderSize that encompasses the asset's first enabled video track respecting the track's preferredTransform.		- A renderScale of 1.0.
--
-- The default CIContext has the following properties:
--
-- - iOS: Device RGB color space		- OS X: sRGB color space
--
-- Example usage:
--
-- [AVVideoComposition videoCompositionWithAsset:srcAsset applyingCIFiltersWithHandler:			^(AVAsynchronousCIImageFilteringRequest *request)			{				NSError *err = nil;				CIImage *filtered = myRenderer(request, &err);				if (filtered)					[request finishWithImage:filtered context:nil];				else					[request finishWithError:err];			} completionHandler:			^(AVVideoComposition * _Nullable videoComposition, NSError * _Nullable error)			{				if (videoComposition != nil) {					playerItem.videoComposition = videoComposition				else {					// handle error			}];
--
-- ObjC selector: @+ videoCompositionWithAsset:applyingCIFiltersWithHandler:completionHandler:@
videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler :: IsAVAsset asset => asset -> Ptr () -> Ptr () -> IO ()
videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler asset applier completionHandler =
  do
    cls' <- getRequiredClass "AVVideoComposition"
    sendClassMessage cls' videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandlerSelector (toAVAsset asset) applier completionHandler

-- | @- customVideoCompositorClass@
customVideoCompositorClass :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO Class
customVideoCompositorClass avVideoComposition =
  sendMessage avVideoComposition customVideoCompositorClassSelector

-- | @- sourceTrackIDForFrameTiming@
sourceTrackIDForFrameTiming :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO CInt
sourceTrackIDForFrameTiming avVideoComposition =
  sendMessage avVideoComposition sourceTrackIDForFrameTimingSelector

-- | @- renderScale@
renderScale :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO CFloat
renderScale avVideoComposition =
  sendMessage avVideoComposition renderScaleSelector

-- | @- instructions@
instructions :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO (Id NSArray)
instructions avVideoComposition =
  sendMessage avVideoComposition instructionsSelector

-- | @- animationTool@
animationTool :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO (Id AVVideoCompositionCoreAnimationTool)
animationTool avVideoComposition =
  sendMessage avVideoComposition animationToolSelector

-- | @- sourceSampleDataTrackIDs@
sourceSampleDataTrackIDs :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO (Id NSArray)
sourceSampleDataTrackIDs avVideoComposition =
  sendMessage avVideoComposition sourceSampleDataTrackIDsSelector

-- | @- colorPrimaries@
colorPrimaries :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO (Id NSString)
colorPrimaries avVideoComposition =
  sendMessage avVideoComposition colorPrimariesSelector

-- | @- colorYCbCrMatrix@
colorYCbCrMatrix :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO (Id NSString)
colorYCbCrMatrix avVideoComposition =
  sendMessage avVideoComposition colorYCbCrMatrixSelector

-- | @- colorTransferFunction@
colorTransferFunction :: IsAVVideoComposition avVideoComposition => avVideoComposition -> IO (Id NSString)
colorTransferFunction avVideoComposition =
  sendMessage avVideoComposition colorTransferFunctionSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @videoCompositionWithPropertiesOfAsset:@
videoCompositionWithPropertiesOfAssetSelector :: Selector '[Id AVAsset] (Id AVVideoComposition)
videoCompositionWithPropertiesOfAssetSelector = mkSelector "videoCompositionWithPropertiesOfAsset:"

-- | @Selector@ for @videoCompositionWithPropertiesOfAsset:completionHandler:@
videoCompositionWithPropertiesOfAsset_completionHandlerSelector :: Selector '[Id AVAsset, Ptr ()] ()
videoCompositionWithPropertiesOfAsset_completionHandlerSelector = mkSelector "videoCompositionWithPropertiesOfAsset:completionHandler:"

-- | @Selector@ for @videoCompositionWithAsset:applyingCIFiltersWithHandler:@
videoCompositionWithAsset_applyingCIFiltersWithHandlerSelector :: Selector '[Id AVAsset, Ptr ()] (Id AVVideoComposition)
videoCompositionWithAsset_applyingCIFiltersWithHandlerSelector = mkSelector "videoCompositionWithAsset:applyingCIFiltersWithHandler:"

-- | @Selector@ for @videoCompositionWithAsset:applyingCIFiltersWithHandler:completionHandler:@
videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandlerSelector :: Selector '[Id AVAsset, Ptr (), Ptr ()] ()
videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandlerSelector = mkSelector "videoCompositionWithAsset:applyingCIFiltersWithHandler:completionHandler:"

-- | @Selector@ for @customVideoCompositorClass@
customVideoCompositorClassSelector :: Selector '[] Class
customVideoCompositorClassSelector = mkSelector "customVideoCompositorClass"

-- | @Selector@ for @sourceTrackIDForFrameTiming@
sourceTrackIDForFrameTimingSelector :: Selector '[] CInt
sourceTrackIDForFrameTimingSelector = mkSelector "sourceTrackIDForFrameTiming"

-- | @Selector@ for @renderScale@
renderScaleSelector :: Selector '[] CFloat
renderScaleSelector = mkSelector "renderScale"

-- | @Selector@ for @instructions@
instructionsSelector :: Selector '[] (Id NSArray)
instructionsSelector = mkSelector "instructions"

-- | @Selector@ for @animationTool@
animationToolSelector :: Selector '[] (Id AVVideoCompositionCoreAnimationTool)
animationToolSelector = mkSelector "animationTool"

-- | @Selector@ for @sourceSampleDataTrackIDs@
sourceSampleDataTrackIDsSelector :: Selector '[] (Id NSArray)
sourceSampleDataTrackIDsSelector = mkSelector "sourceSampleDataTrackIDs"

-- | @Selector@ for @colorPrimaries@
colorPrimariesSelector :: Selector '[] (Id NSString)
colorPrimariesSelector = mkSelector "colorPrimaries"

-- | @Selector@ for @colorYCbCrMatrix@
colorYCbCrMatrixSelector :: Selector '[] (Id NSString)
colorYCbCrMatrixSelector = mkSelector "colorYCbCrMatrix"

-- | @Selector@ for @colorTransferFunction@
colorTransferFunctionSelector :: Selector '[] (Id NSString)
colorTransferFunctionSelector = mkSelector "colorTransferFunction"

