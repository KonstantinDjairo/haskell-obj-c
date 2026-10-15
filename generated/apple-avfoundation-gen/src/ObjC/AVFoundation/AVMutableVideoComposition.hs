{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVMutableVideoComposition@.
module ObjC.AVFoundation.AVMutableVideoComposition
  ( AVMutableVideoComposition
  , IsAVMutableVideoComposition(..)
  , videoComposition
  , videoCompositionWithPropertiesOfAsset
  , videoCompositionWithPropertiesOfAsset_completionHandler
  , videoCompositionWithPropertiesOfAsset_prototypeInstruction
  , videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandler
  , videoCompositionWithAsset_applyingCIFiltersWithHandler
  , videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler
  , customVideoCompositorClass
  , setCustomVideoCompositorClass
  , sourceTrackIDForFrameTiming
  , setSourceTrackIDForFrameTiming
  , renderScale
  , setRenderScale
  , instructions
  , setInstructions
  , animationTool
  , setAnimationTool
  , sourceSampleDataTrackIDs
  , setSourceSampleDataTrackIDs
  , colorPrimaries
  , setColorPrimaries
  , colorYCbCrMatrix
  , setColorYCbCrMatrix
  , colorTransferFunction
  , setColorTransferFunction
  , animationToolSelector
  , colorPrimariesSelector
  , colorTransferFunctionSelector
  , colorYCbCrMatrixSelector
  , customVideoCompositorClassSelector
  , instructionsSelector
  , renderScaleSelector
  , setAnimationToolSelector
  , setColorPrimariesSelector
  , setColorTransferFunctionSelector
  , setColorYCbCrMatrixSelector
  , setCustomVideoCompositorClassSelector
  , setInstructionsSelector
  , setRenderScaleSelector
  , setSourceSampleDataTrackIDsSelector
  , setSourceTrackIDForFrameTimingSelector
  , sourceSampleDataTrackIDsSelector
  , sourceTrackIDForFrameTimingSelector
  , videoCompositionSelector
  , videoCompositionWithAsset_applyingCIFiltersWithHandlerSelector
  , videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandlerSelector
  , videoCompositionWithPropertiesOfAssetSelector
  , videoCompositionWithPropertiesOfAsset_completionHandlerSelector
  , videoCompositionWithPropertiesOfAsset_prototypeInstructionSelector
  , videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ videoComposition@
videoComposition :: IO (Id AVMutableVideoComposition)
videoComposition  =
  do
    cls' <- getRequiredClass "AVMutableVideoComposition"
    sendClassMessage cls' videoCompositionSelector

-- | videoCompositionWithPropertiesOfAsset:
--
-- Returns a new instance of AVMutableVideoComposition with values and instructions suitable for presenting the video tracks of the specified asset according to its temporal and geometric properties and those of its tracks.
--
-- @asset@ — An instance of AVAsset. For best performance, ensure that the duration and tracks properties of the asset are already loaded before invoking this method.
--
-- Returns: An instance of AVMutableVideoComposition.
--
-- The returned AVMutableVideoComposition will have instructions that respect the spatial properties and timeRanges of the specified asset's video tracks. The client can set sourceTrackIDForFrameTiming to kCMPersistentTrackID_Invalid and frameDuration to an appropriate value in order to specify the maximum output frame rate independent of the source track timing.   It will also have the following values for its properties:
--
-- - If the asset has exactly one video track, the original timing of the source video track will be used. If the asset has more than one video track, and the nominal frame rate of any of video tracks is known, the reciprocal of the greatest known nominalFrameRate will be used as the value of frameDuration. Otherwise, a default framerate of 30fps is used.   	- If the specified asset is an instance of AVComposition, the renderSize will be set to the naturalSize of the AVComposition; otherwise the renderSize will be set to a value that encompasses all of the asset's video tracks.   	- A renderScale of 1.0.   	- A nil animationTool.
--
-- If the specified asset has no video tracks, this method will return an AVMutableVideoComposition instance with an empty collection of instructions.
--
-- ObjC selector: @+ videoCompositionWithPropertiesOfAsset:@
videoCompositionWithPropertiesOfAsset :: IsAVAsset asset => asset -> IO (Id AVMutableVideoComposition)
videoCompositionWithPropertiesOfAsset asset =
  do
    cls' <- getRequiredClass "AVMutableVideoComposition"
    sendClassMessage cls' videoCompositionWithPropertiesOfAssetSelector (toAVAsset asset)

-- | videoCompositionWithPropertiesOfAsset:completionHandler:
--
-- Vends a new instance of AVMutableVideoComposition with values and instructions suitable for presenting the video tracks of the specified asset according to its temporal and geometric properties and those of its tracks.
--
-- @asset@ — An instance of AVAsset.
--
-- @completionHandler@ — A block that is invoked when the new video composition has finished being created.  If the @videoComposition@ parameter is nil, the @error@ parameter describes the failure that occurred.
--
-- The new AVMutableVideoComposition will have instructions that respect the spatial properties and timeRanges of the specified asset's video tracks. The client can set sourceTrackIDForFrameTiming to kCMPersistentTrackID_Invalid and frameDuration to an appropriate value in order to specify the maximum output frame rate independent of the source track timing.   It will also have the following values for its properties:
--
-- - If the asset has exactly one video track, the original timing of the source video track will be used. If the asset has more than one video track, and the nominal frame rate of any of video tracks is known, the reciprocal of the greatest known nominalFrameRate will be used as the value of frameDuration. Otherwise, a default framerate of 30fps is used.	- If the specified asset is an instance of AVComposition, the renderSize will be set to the naturalSize of the AVComposition; otherwise the renderSize will be set to a value that encompasses all of the asset's video tracks.	- A renderScale of 1.0.	- A nil animationTool.
--
-- If the specified asset has no video tracks, this method will return an AVMutableVideoComposition instance with an empty collection of instructions.
--
-- ObjC selector: @+ videoCompositionWithPropertiesOfAsset:completionHandler:@
videoCompositionWithPropertiesOfAsset_completionHandler :: IsAVAsset asset => asset -> Ptr () -> IO ()
videoCompositionWithPropertiesOfAsset_completionHandler asset completionHandler =
  do
    cls' <- getRequiredClass "AVMutableVideoComposition"
    sendClassMessage cls' videoCompositionWithPropertiesOfAsset_completionHandlerSelector (toAVAsset asset) completionHandler

-- | videoCompositionWithPropertiesOfAsset:prototypeInstruction:
--
-- Returns a new instance of AVMutableVideoComposition with values and instructions suitable for presenting the video tracks of the specified asset according to its temporal and geometric properties and those of its tracks, and also overrides default properties with those from a prototypeInstruction.
--
-- @asset@ — An instance of AVAsset. For best performance, ensure that the duration and tracks properties of the asset are already loaded before invoking this method.
--
-- @prototypeInstruction@ — Custom instructions that the client can choose to override.
--
-- Returns: An instance of AVMutableVideoComposition.
--
-- Also see videoCompositionWithPropertiesOfAsset:.   The returned AVVideoComposition will have instructions that respect the spatial properties and timeRanges of the specified asset's video tracks. Anything not pertaining to spatial layout and timing, such as background color for their composition or post-processing behaviors, is eligible to be specified via a prototype instruction.   Example: To add a background color,   myPrototypeInstruction = [[AVMutableVideoCompositionInstruction alloc] init];   myPrototypeInstruction.backgroundColor = myCGColorRef; // Do not use constant CGColorRef colors here.   myVideoComposition = [AVVideoComposition videoCompositionWithPropertiesOfAsset:myAsset prototypeInstruction:myPrototypeInstruction];
--
-- ObjC selector: @+ videoCompositionWithPropertiesOfAsset:prototypeInstruction:@
videoCompositionWithPropertiesOfAsset_prototypeInstruction :: (IsAVAsset asset, IsAVVideoCompositionInstruction prototypeInstruction) => asset -> prototypeInstruction -> IO (Id AVMutableVideoComposition)
videoCompositionWithPropertiesOfAsset_prototypeInstruction asset prototypeInstruction =
  do
    cls' <- getRequiredClass "AVMutableVideoComposition"
    sendClassMessage cls' videoCompositionWithPropertiesOfAsset_prototypeInstructionSelector (toAVAsset asset) (toAVVideoCompositionInstruction prototypeInstruction)

-- | videoCompositionWithPropertiesOfAsset:prototypeInstruction:completionHandler:
--
-- Vends a new instance of AVMutableVideoComposition with values and instructions suitable for presenting the video tracks of the specified asset according to its temporal and geometric properties and those of its tracks, and also overrides default properties with those from a prototypeInstruction.
--
-- @asset@ — An instance of AVAsset.
--
-- @prototypeInstruction@ — Custom instructions that the client can choose to override.
--
-- @completionHandler@ — A block that is invoked when the new video composition has finished being created.  If the @videoComposition@ parameter is nil, the @error@ parameter describes the failure that occurred.
--
-- Also see videoCompositionWithPropertiesOfAsset:completionHandler:.	The new AVMutableVideoComposition will have instructions that respect the spatial properties and timeRanges of the specified asset's video tracks. Anything not pertaining to spatial layout and timing, such as background color for their composition or post-processing behaviors, is eligible to be specified via a prototype instruction.	Example: To add a background color,		myPrototypeInstruction = [[AVMutableVideoCompositionInstruction alloc] init];		myPrototypeInstruction.backgroundColor = myCGColorRef; // Do not use constant CGColorRef colors here.		myVideoComposition = [AVVideoComposition videoCompositionWithPropertiesOfAsset:myAsset prototypeInstruction:myPrototypeInstruction completionHandler:^(AVMutableVideoComposition * _Nullable myVideoComposition, NSError * _Nullable error) {			if (myVideoComposition != nil) {				// use myVideoComposition			}			else {				// handle error			}		}];
--
-- ObjC selector: @+ videoCompositionWithPropertiesOfAsset:prototypeInstruction:completionHandler:@
videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandler :: (IsAVAsset asset, IsAVVideoCompositionInstruction prototypeInstruction) => asset -> prototypeInstruction -> Ptr () -> IO ()
videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandler asset prototypeInstruction completionHandler =
  do
    cls' <- getRequiredClass "AVMutableVideoComposition"
    sendClassMessage cls' videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandlerSelector (toAVAsset asset) (toAVVideoCompositionInstruction prototypeInstruction) completionHandler

-- | videoCompositionWithAsset:applyingCIFiltersWithHandler:
--
-- Returns a new instance of AVMutableVideoComposition with values and instructions that will apply the specified handler block to video frames represented as instances of CIImage.
--
-- @asset@ — An instance of AVAsset. For best performance, ensure that the duration and tracks properties of the asset are already loaded before invoking this method.
--
-- Returns: An instance of AVMutableVideoComposition.
--
-- The returned AVMutableVideoComposition will cause the specified handler block to be called to filter each frame of the asset's first enabled video track. The handler block should use the properties of the provided AVAsynchronousCIImageFilteringRequest and respond using finishWithImage:context: with a "filtered" new CIImage (or the provided source image for no affect). In the event of an error, respond to the request using finishWithError:. The error can be observed via AVPlayerItemFailedToPlayToEndTimeNotification, see AVPlayerItemFailedToPlayToEndTimeErrorKey in notification payload. The client can set sourceTrackIDForFrameTiming to kCMPersistentTrackID_Invalid and frameDuration to an appropriate value in order to specify the maximum output frame rate independent of the source track timing.
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
-- playerItem.videoComposition = [AVMutableVideoComposition videoCompositionWithAsset:srcAsset applyingCIFiltersWithHandler:			^(AVAsynchronousCIImageFilteringRequest *request)			{				NSError *err = nil;				CIImage *filtered = myRenderer(request, &err);				if (filtered)					[request finishWithImage:filtered context:nil];				else					[request finishWithError:err];			}];
--
-- ObjC selector: @+ videoCompositionWithAsset:applyingCIFiltersWithHandler:@
videoCompositionWithAsset_applyingCIFiltersWithHandler :: IsAVAsset asset => asset -> Ptr () -> IO (Id AVMutableVideoComposition)
videoCompositionWithAsset_applyingCIFiltersWithHandler asset applier =
  do
    cls' <- getRequiredClass "AVMutableVideoComposition"
    sendClassMessage cls' videoCompositionWithAsset_applyingCIFiltersWithHandlerSelector (toAVAsset asset) applier

-- | videoCompositionWithAsset:applyingCIFiltersWithHandler:completionHandler:
--
-- Vends a new instance of AVMutableVideoComposition with values and instructions that will apply the specified handler block to video frames represented as instances of CIImage.
--
-- @asset@ — An instance of AVAsset.
--
-- @completionHandler@ — A block that is invoked when the new video composition has finished being created.  If the @videoComposition@ parameter is nil, the @error@ parameter describes the failure that occurred.
--
-- The new AVMutableVideoComposition will cause the specified handler block to be called to filter each frame of the asset's first enabled video track. The handler block should use the properties of the provided AVAsynchronousCIImageFilteringRequest and respond using finishWithImage:context: with a "filtered" new CIImage (or the provided source image for no affect). In the event of an error, respond to the request using finishWithError:. The error can be observed via AVPlayerItemFailedToPlayToEndTimeNotification, see AVPlayerItemFailedToPlayToEndTimeErrorKey in notification payload. The client can set sourceTrackIDForFrameTiming to kCMPersistentTrackID_Invalid and frameDuration to an appropriate value in order to specify the maximum output frame rate independent of the source track timing.
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
-- [AVMutableVideoComposition videoCompositionWithAsset:srcAsset applyingCIFiltersWithHandler:			^(AVAsynchronousCIImageFilteringRequest *request)			{				NSError *err = nil;				CIImage *filtered = myRenderer(request, &err);				if (filtered)					[request finishWithImage:filtered context:nil];				else					[request finishWithError:err];			} completionHandler:			^(AVMutableVideoComposition * _Nullable videoComposition, NSError * _Nullable error)			{				if (videoComposition != nil) {					playerItem.videoComposition = videoComposition				else {					// handle error			}];
--
-- ObjC selector: @+ videoCompositionWithAsset:applyingCIFiltersWithHandler:completionHandler:@
videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler :: IsAVAsset asset => asset -> Ptr () -> Ptr () -> IO ()
videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler asset applier completionHandler =
  do
    cls' <- getRequiredClass "AVMutableVideoComposition"
    sendClassMessage cls' videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandlerSelector (toAVAsset asset) applier completionHandler

-- | @- customVideoCompositorClass@
customVideoCompositorClass :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO Class
customVideoCompositorClass avMutableVideoComposition =
  sendMessage avMutableVideoComposition customVideoCompositorClassSelector

-- | @- setCustomVideoCompositorClass:@
setCustomVideoCompositorClass :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> Class -> IO ()
setCustomVideoCompositorClass avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setCustomVideoCompositorClassSelector value

-- | @- sourceTrackIDForFrameTiming@
sourceTrackIDForFrameTiming :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO CInt
sourceTrackIDForFrameTiming avMutableVideoComposition =
  sendMessage avMutableVideoComposition sourceTrackIDForFrameTimingSelector

-- | @- setSourceTrackIDForFrameTiming:@
setSourceTrackIDForFrameTiming :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> CInt -> IO ()
setSourceTrackIDForFrameTiming avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setSourceTrackIDForFrameTimingSelector value

-- | @- renderScale@
renderScale :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO CFloat
renderScale avMutableVideoComposition =
  sendMessage avMutableVideoComposition renderScaleSelector

-- | @- setRenderScale:@
setRenderScale :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> CFloat -> IO ()
setRenderScale avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setRenderScaleSelector value

-- | @- instructions@
instructions :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO (Id NSArray)
instructions avMutableVideoComposition =
  sendMessage avMutableVideoComposition instructionsSelector

-- | @- setInstructions:@
setInstructions :: (IsAVMutableVideoComposition avMutableVideoComposition, IsNSArray value) => avMutableVideoComposition -> value -> IO ()
setInstructions avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setInstructionsSelector (toNSArray value)

-- | @- animationTool@
animationTool :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO (Id AVVideoCompositionCoreAnimationTool)
animationTool avMutableVideoComposition =
  sendMessage avMutableVideoComposition animationToolSelector

-- | @- setAnimationTool:@
setAnimationTool :: (IsAVMutableVideoComposition avMutableVideoComposition, IsAVVideoCompositionCoreAnimationTool value) => avMutableVideoComposition -> value -> IO ()
setAnimationTool avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setAnimationToolSelector (toAVVideoCompositionCoreAnimationTool value)

-- | @- sourceSampleDataTrackIDs@
sourceSampleDataTrackIDs :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO (Id NSArray)
sourceSampleDataTrackIDs avMutableVideoComposition =
  sendMessage avMutableVideoComposition sourceSampleDataTrackIDsSelector

-- | @- setSourceSampleDataTrackIDs:@
setSourceSampleDataTrackIDs :: (IsAVMutableVideoComposition avMutableVideoComposition, IsNSArray value) => avMutableVideoComposition -> value -> IO ()
setSourceSampleDataTrackIDs avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setSourceSampleDataTrackIDsSelector (toNSArray value)

-- | @- colorPrimaries@
colorPrimaries :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO (Id NSString)
colorPrimaries avMutableVideoComposition =
  sendMessage avMutableVideoComposition colorPrimariesSelector

-- | @- setColorPrimaries:@
setColorPrimaries :: (IsAVMutableVideoComposition avMutableVideoComposition, IsNSString value) => avMutableVideoComposition -> value -> IO ()
setColorPrimaries avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setColorPrimariesSelector (toNSString value)

-- | @- colorYCbCrMatrix@
colorYCbCrMatrix :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO (Id NSString)
colorYCbCrMatrix avMutableVideoComposition =
  sendMessage avMutableVideoComposition colorYCbCrMatrixSelector

-- | @- setColorYCbCrMatrix:@
setColorYCbCrMatrix :: (IsAVMutableVideoComposition avMutableVideoComposition, IsNSString value) => avMutableVideoComposition -> value -> IO ()
setColorYCbCrMatrix avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setColorYCbCrMatrixSelector (toNSString value)

-- | @- colorTransferFunction@
colorTransferFunction :: IsAVMutableVideoComposition avMutableVideoComposition => avMutableVideoComposition -> IO (Id NSString)
colorTransferFunction avMutableVideoComposition =
  sendMessage avMutableVideoComposition colorTransferFunctionSelector

-- | @- setColorTransferFunction:@
setColorTransferFunction :: (IsAVMutableVideoComposition avMutableVideoComposition, IsNSString value) => avMutableVideoComposition -> value -> IO ()
setColorTransferFunction avMutableVideoComposition value =
  sendMessage avMutableVideoComposition setColorTransferFunctionSelector (toNSString value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @videoComposition@
videoCompositionSelector :: Selector '[] (Id AVMutableVideoComposition)
videoCompositionSelector = mkSelector "videoComposition"

-- | @Selector@ for @videoCompositionWithPropertiesOfAsset:@
videoCompositionWithPropertiesOfAssetSelector :: Selector '[Id AVAsset] (Id AVMutableVideoComposition)
videoCompositionWithPropertiesOfAssetSelector = mkSelector "videoCompositionWithPropertiesOfAsset:"

-- | @Selector@ for @videoCompositionWithPropertiesOfAsset:completionHandler:@
videoCompositionWithPropertiesOfAsset_completionHandlerSelector :: Selector '[Id AVAsset, Ptr ()] ()
videoCompositionWithPropertiesOfAsset_completionHandlerSelector = mkSelector "videoCompositionWithPropertiesOfAsset:completionHandler:"

-- | @Selector@ for @videoCompositionWithPropertiesOfAsset:prototypeInstruction:@
videoCompositionWithPropertiesOfAsset_prototypeInstructionSelector :: Selector '[Id AVAsset, Id AVVideoCompositionInstruction] (Id AVMutableVideoComposition)
videoCompositionWithPropertiesOfAsset_prototypeInstructionSelector = mkSelector "videoCompositionWithPropertiesOfAsset:prototypeInstruction:"

-- | @Selector@ for @videoCompositionWithPropertiesOfAsset:prototypeInstruction:completionHandler:@
videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandlerSelector :: Selector '[Id AVAsset, Id AVVideoCompositionInstruction, Ptr ()] ()
videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandlerSelector = mkSelector "videoCompositionWithPropertiesOfAsset:prototypeInstruction:completionHandler:"

-- | @Selector@ for @videoCompositionWithAsset:applyingCIFiltersWithHandler:@
videoCompositionWithAsset_applyingCIFiltersWithHandlerSelector :: Selector '[Id AVAsset, Ptr ()] (Id AVMutableVideoComposition)
videoCompositionWithAsset_applyingCIFiltersWithHandlerSelector = mkSelector "videoCompositionWithAsset:applyingCIFiltersWithHandler:"

-- | @Selector@ for @videoCompositionWithAsset:applyingCIFiltersWithHandler:completionHandler:@
videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandlerSelector :: Selector '[Id AVAsset, Ptr (), Ptr ()] ()
videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandlerSelector = mkSelector "videoCompositionWithAsset:applyingCIFiltersWithHandler:completionHandler:"

-- | @Selector@ for @customVideoCompositorClass@
customVideoCompositorClassSelector :: Selector '[] Class
customVideoCompositorClassSelector = mkSelector "customVideoCompositorClass"

-- | @Selector@ for @setCustomVideoCompositorClass:@
setCustomVideoCompositorClassSelector :: Selector '[Class] ()
setCustomVideoCompositorClassSelector = mkSelector "setCustomVideoCompositorClass:"

-- | @Selector@ for @sourceTrackIDForFrameTiming@
sourceTrackIDForFrameTimingSelector :: Selector '[] CInt
sourceTrackIDForFrameTimingSelector = mkSelector "sourceTrackIDForFrameTiming"

-- | @Selector@ for @setSourceTrackIDForFrameTiming:@
setSourceTrackIDForFrameTimingSelector :: Selector '[CInt] ()
setSourceTrackIDForFrameTimingSelector = mkSelector "setSourceTrackIDForFrameTiming:"

-- | @Selector@ for @renderScale@
renderScaleSelector :: Selector '[] CFloat
renderScaleSelector = mkSelector "renderScale"

-- | @Selector@ for @setRenderScale:@
setRenderScaleSelector :: Selector '[CFloat] ()
setRenderScaleSelector = mkSelector "setRenderScale:"

-- | @Selector@ for @instructions@
instructionsSelector :: Selector '[] (Id NSArray)
instructionsSelector = mkSelector "instructions"

-- | @Selector@ for @setInstructions:@
setInstructionsSelector :: Selector '[Id NSArray] ()
setInstructionsSelector = mkSelector "setInstructions:"

-- | @Selector@ for @animationTool@
animationToolSelector :: Selector '[] (Id AVVideoCompositionCoreAnimationTool)
animationToolSelector = mkSelector "animationTool"

-- | @Selector@ for @setAnimationTool:@
setAnimationToolSelector :: Selector '[Id AVVideoCompositionCoreAnimationTool] ()
setAnimationToolSelector = mkSelector "setAnimationTool:"

-- | @Selector@ for @sourceSampleDataTrackIDs@
sourceSampleDataTrackIDsSelector :: Selector '[] (Id NSArray)
sourceSampleDataTrackIDsSelector = mkSelector "sourceSampleDataTrackIDs"

-- | @Selector@ for @setSourceSampleDataTrackIDs:@
setSourceSampleDataTrackIDsSelector :: Selector '[Id NSArray] ()
setSourceSampleDataTrackIDsSelector = mkSelector "setSourceSampleDataTrackIDs:"

-- | @Selector@ for @colorPrimaries@
colorPrimariesSelector :: Selector '[] (Id NSString)
colorPrimariesSelector = mkSelector "colorPrimaries"

-- | @Selector@ for @setColorPrimaries:@
setColorPrimariesSelector :: Selector '[Id NSString] ()
setColorPrimariesSelector = mkSelector "setColorPrimaries:"

-- | @Selector@ for @colorYCbCrMatrix@
colorYCbCrMatrixSelector :: Selector '[] (Id NSString)
colorYCbCrMatrixSelector = mkSelector "colorYCbCrMatrix"

-- | @Selector@ for @setColorYCbCrMatrix:@
setColorYCbCrMatrixSelector :: Selector '[Id NSString] ()
setColorYCbCrMatrixSelector = mkSelector "setColorYCbCrMatrix:"

-- | @Selector@ for @colorTransferFunction@
colorTransferFunctionSelector :: Selector '[] (Id NSString)
colorTransferFunctionSelector = mkSelector "colorTransferFunction"

-- | @Selector@ for @setColorTransferFunction:@
setColorTransferFunctionSelector :: Selector '[Id NSString] ()
setColorTransferFunctionSelector = mkSelector "setColorTransferFunction:"

