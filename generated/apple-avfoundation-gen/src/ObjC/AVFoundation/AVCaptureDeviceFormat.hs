{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCaptureDeviceFormat
--
-- An AVCaptureDeviceFormat wraps a CMFormatDescription and other format-related information, such as min and max framerate.
--
-- An AVCaptureDevice exposes an array of formats, and its current activeFormat may be queried. The payload for the formats property is an array of AVCaptureDeviceFormat objects and the activeFormat property payload is an AVCaptureDeviceFormat. AVCaptureDeviceFormat is a thin wrapper around a CMFormatDescription, and can carry associated device format information that doesn't go in a CMFormatDescription, such as min and max frame rate. An AVCaptureDeviceFormat object is immutable. Its values do not change for the life of the object.
--
-- Generated bindings for @AVCaptureDeviceFormat@.
module ObjC.AVFoundation.AVCaptureDeviceFormat
  ( AVCaptureDeviceFormat
  , IsAVCaptureDeviceFormat(..)
  , init_
  , new
  , isVideoStabilizationModeSupported
  , mediaType
  , formatDescription
  , videoSupportedFrameRateRanges
  , videoFieldOfView
  , videoBinned
  , videoStabilizationSupported
  , videoMaxZoomFactor
  , videoZoomFactorUpscaleThreshold
  , minISO
  , maxISO
  , globalToneMappingSupported
  , videoHDRSupported
  , highPhotoQualitySupported
  , highestPhotoQualitySupported
  , autoFocusSystem
  , supportedColorSpaces
  , videoMinZoomFactorForDepthDataDelivery
  , videoMaxZoomFactorForDepthDataDelivery
  , supportedVideoZoomFactorsForDepthDataDelivery
  , supportedDepthDataFormats
  , unsupportedCaptureOutputClasses
  , supportedMaxPhotoDimensions
  , secondaryNativeResolutionZoomFactors
  , studioLightSupported
  , videoFrameRateRangeForStudioLight
  , portraitEffectSupported
  , videoFrameRateRangeForPortraitEffect
  , centerStageSupported
  , videoMinZoomFactorForCenterStage
  , videoMaxZoomFactorForCenterStage
  , videoFrameRateRangeForCenterStage
  , geometricDistortionCorrectedVideoFieldOfView
  , multiCamSupported
  , portraitEffectsMatteStillImageDeliverySupported
  , autoFocusSystemSelector
  , centerStageSupportedSelector
  , formatDescriptionSelector
  , geometricDistortionCorrectedVideoFieldOfViewSelector
  , globalToneMappingSupportedSelector
  , highPhotoQualitySupportedSelector
  , highestPhotoQualitySupportedSelector
  , initSelector
  , isVideoStabilizationModeSupportedSelector
  , maxISOSelector
  , mediaTypeSelector
  , minISOSelector
  , multiCamSupportedSelector
  , newSelector
  , portraitEffectSupportedSelector
  , portraitEffectsMatteStillImageDeliverySupportedSelector
  , secondaryNativeResolutionZoomFactorsSelector
  , studioLightSupportedSelector
  , supportedColorSpacesSelector
  , supportedDepthDataFormatsSelector
  , supportedMaxPhotoDimensionsSelector
  , supportedVideoZoomFactorsForDepthDataDeliverySelector
  , unsupportedCaptureOutputClassesSelector
  , videoBinnedSelector
  , videoFieldOfViewSelector
  , videoFrameRateRangeForCenterStageSelector
  , videoFrameRateRangeForPortraitEffectSelector
  , videoFrameRateRangeForStudioLightSelector
  , videoHDRSupportedSelector
  , videoMaxZoomFactorForCenterStageSelector
  , videoMaxZoomFactorForDepthDataDeliverySelector
  , videoMaxZoomFactorSelector
  , videoMinZoomFactorForCenterStageSelector
  , videoMinZoomFactorForDepthDataDeliverySelector
  , videoStabilizationSupportedSelector
  , videoSupportedFrameRateRangesSelector
  , videoZoomFactorUpscaleThresholdSelector

  -- * Enum types
  , AVCaptureAutoFocusSystem(AVCaptureAutoFocusSystem)
  , pattern AVCaptureAutoFocusSystemNone
  , pattern AVCaptureAutoFocusSystemContrastDetection
  , pattern AVCaptureAutoFocusSystemPhaseDetection
  , AVCaptureVideoStabilizationMode(AVCaptureVideoStabilizationMode)
  , pattern AVCaptureVideoStabilizationModeOff
  , pattern AVCaptureVideoStabilizationModeStandard
  , pattern AVCaptureVideoStabilizationModeCinematic
  , pattern AVCaptureVideoStabilizationModeCinematicExtended
  , pattern AVCaptureVideoStabilizationModeAuto

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.AVFoundation.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id AVCaptureDeviceFormat)
init_ avCaptureDeviceFormat =
  sendOwnedMessage avCaptureDeviceFormat initSelector

-- | @+ new@
new :: IO (Id AVCaptureDeviceFormat)
new  =
  do
    cls' <- getRequiredClass "AVCaptureDeviceFormat"
    sendOwnedClassMessage cls' newSelector

-- | isVideoStabilizationModeSupported
--
-- Returns whether the format supports the given video stabilization mode.
--
-- @videoStabilizationMode@ — An AVCaptureVideoStabilizationMode to be checked.
--
-- isVideoStabilizationModeSupported: returns a boolean value indicating whether the format can be stabilized using the given mode with -[AVCaptureConnection setPreferredVideoStabilizationMode:].
--
-- ObjC selector: @- isVideoStabilizationModeSupported:@
isVideoStabilizationModeSupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> AVCaptureVideoStabilizationMode -> IO Bool
isVideoStabilizationModeSupported avCaptureDeviceFormat videoStabilizationMode =
  sendMessage avCaptureDeviceFormat isVideoStabilizationModeSupportedSelector videoStabilizationMode

-- | mediaType
--
-- An NSString describing the media type of an AVCaptureDevice active or supported format.
--
-- Supported mediaTypes are listed in AVMediaFormat.h. This is a read-only property. The caller assumes no ownership of the returned value and should not CFRelease it.
--
-- ObjC selector: @- mediaType@
mediaType :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id NSString)
mediaType avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat mediaTypeSelector

-- | formatDescription
--
-- A CMFormatDescription describing an AVCaptureDevice active or supported format.
--
-- A CMFormatDescription describing an AVCaptureDevice active or supported format. This is a read-only property. The caller assumes no ownership of the returned value and should not CFRelease it.
--
-- ObjC selector: @- formatDescription@
formatDescription :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO RawId
formatDescription avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat formatDescriptionSelector

-- | videoSupportedFrameRateRanges
--
-- A property indicating the format's supported frame rate ranges.
--
-- videoSupportedFrameRateRanges is an array of AVFrameRateRange objects, one for each of the format's supported video frame rate ranges.
--
-- ObjC selector: @- videoSupportedFrameRateRanges@
videoSupportedFrameRateRanges :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id NSArray)
videoSupportedFrameRateRanges avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoSupportedFrameRateRangesSelector

-- | videoFieldOfView
--
-- A property indicating the format's horizontal field of view.
--
-- videoFieldOfView is a float value indicating the receiver's field of view in degrees. If field of view is unknown, a value of 0 is returned.
--
-- ObjC selector: @- videoFieldOfView@
videoFieldOfView :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CFloat
videoFieldOfView avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoFieldOfViewSelector

-- | videoBinned
--
-- A property indicating whether the format is binned.
--
-- videoBinned is a BOOL indicating whether the format is a binned format. Binning is a pixel-combining process which can result in greater low light sensitivity at the cost of reduced resolution.
--
-- ObjC selector: @- videoBinned@
videoBinned :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
videoBinned avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoBinnedSelector

-- | videoStabilizationSupported
--
-- A property indicating whether the format supports video stabilization.
--
-- videoStabilizationSupported is a BOOL indicating whether the format can be stabilized using AVCaptureConnection -setEnablesVideoStabilizationWhenAvailable. This property is deprecated. Use isVideoStabilizationModeSupported: instead.
--
-- ObjC selector: @- videoStabilizationSupported@
videoStabilizationSupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
videoStabilizationSupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoStabilizationSupportedSelector

-- | videoMaxZoomFactor
--
-- Indicates the maximum zoom factor available for the AVCaptureDevice's videoZoomFactor property.
--
-- If the device's videoZoomFactor property is assigned a larger value, an NSRangeException will be thrown. A maximum zoom factor of 1 indicates no zoom is available.
--
-- ObjC selector: @- videoMaxZoomFactor@
videoMaxZoomFactor :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CDouble
videoMaxZoomFactor avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoMaxZoomFactorSelector

-- | videoZoomFactorUpscaleThreshold
--
-- Indicates the value of AVCaptureDevice's videoZoomFactor property at which the image output begins to require upscaling.
--
-- In some cases the image sensor's dimensions are larger than the dimensions reported by the video AVCaptureDeviceFormat. As long as the sensor crop is larger than the reported dimensions of the AVCaptureDeviceFormat, the image will be downscaled. Setting videoZoomFactor to the value of videoZoomFactorUpscalingThreshold will provide a center crop of the sensor image data without any scaling. If a greater zoom factor is used, then the sensor data will be upscaled to the device format's dimensions.
--
-- ObjC selector: @- videoZoomFactorUpscaleThreshold@
videoZoomFactorUpscaleThreshold :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CDouble
videoZoomFactorUpscaleThreshold avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoZoomFactorUpscaleThresholdSelector

-- | minISO
--
-- A float indicating the minimum supported exposure ISO value.
--
-- This read-only property indicates the minimum supported exposure ISO value.
--
-- ObjC selector: @- minISO@
minISO :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CFloat
minISO avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat minISOSelector

-- | maxISO
--
-- An float indicating the maximum supported exposure ISO value.
--
-- This read-only property indicates the maximum supported exposure ISO value.
--
-- ObjC selector: @- maxISO@
maxISO :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CFloat
maxISO avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat maxISOSelector

-- | globalToneMappingSupported
--
-- A property indicating whether the format supports global tone mapping.
--
-- globalToneMappingSupported is a BOOL indicating whether the format supports global tone mapping. See AVCaptureDevice's globalToneMappingEnabled property.
--
-- ObjC selector: @- globalToneMappingSupported@
globalToneMappingSupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
globalToneMappingSupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat globalToneMappingSupportedSelector

-- | videoHDRSupported
--
-- A property indicating whether the format supports high dynamic range streaming.
--
-- videoHDRSupported is a BOOL indicating whether the format supports high dynamic range streaming, also known as Extended Dynamic Range (EDR). When enabled, the device streams at twice the published frame rate, capturing an under-exposed frame and correctly exposed frame for each frame time at the published rate. Portions of the under-exposed frame are combined with the correctly exposed frame to recover detail in darker areas of the scene. EDR is a separate and distinct feature from 10-bit HDR video (first seen in 2020 iPhones). 10-bit formats with HLG BT2020 color space have greater dynamic range by virtue of their expanded bit depth and HLG transfer function, and when captured in movies, contain Dolby Vision metadata. They are, in effect, "always on" HDR. And thus the videoHDRSupported property is always NO for 10-bit formats only supporting HLG BT2020 colorspace, since HDR cannot be enabled or disabled. To enable videoHDR (EDR), set the AVCaptureDevice.videoHDREnabled property.
--
-- ObjC selector: @- videoHDRSupported@
videoHDRSupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
videoHDRSupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoHDRSupportedSelector

-- | highPhotoQualitySupported
--
-- A boolean value specifying whether this format supports high photo quality when selecting an AVCapturePhotoQualityPrioritization of .balanced or .quality.
--
-- If an AVCaptureDeviceFormat's highPhotoQualitySupported property is YES, the format produces higher image quality when selecting .balanced or .quality AVCapturePhotoQualityPrioritization compared to .speed. Such formats adhere to the following rules:        - Photo requests with a prioritization of .speed produce the fastest image result (suitable for burst captures).        - Photo requests with a prioritization of .balanced produce higher image quality without dropping frames if a video recording is underway.        - Photo requests with a prioritization of .quality produce high image quality and may cause frame drops if a video recording is underway. For maximum backward compatibility, photo requests on high photo quality formats set to .quality only cause video frame drops if your app is linked on or after iOS 15.    Formats that don't support high photo quality produce the same image quality whether you select .speed, .balanced, or .quality. Note that high photo quality is only attainable when using the AVCapturePhotoOutput with these supported formats.
--
-- ObjC selector: @- highPhotoQualitySupported@
highPhotoQualitySupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
highPhotoQualitySupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat highPhotoQualitySupportedSelector

-- | highestPhotoQualitySupported
--
-- A boolean value specifying whether this format supports the highest possible photo quality that can be delivered on the current platform.
--
-- Of the many formats supported by an AVCaptureDevice, only a few of them are designated as "photo" formats which can produce the highest possible quality, such as still image stabilization and Live Photos. If you intend to connect an AVCaptureDeviceInput to an AVCapturePhotoOutput and receive the best possible images, you should ensure that you are either using the AVCaptureSessionPresetPhoto as your preset, or if using the parallel AVCaptureDevice activeFormat API, select as your activeFormat one for which this property is YES.
--
-- ObjC selector: @- highestPhotoQualitySupported@
highestPhotoQualitySupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
highestPhotoQualitySupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat highestPhotoQualitySupportedSelector

-- | autoFocusSystem
--
-- A property indicating the autofocus system.
--
-- This read-only property indicates the autofocus system.
--
-- ObjC selector: @- autoFocusSystem@
autoFocusSystem :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO AVCaptureAutoFocusSystem
autoFocusSystem avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat autoFocusSystemSelector

-- | supportedColorSpaces
--
-- A property indicating the receiver's supported color spaces.
--
-- This read-only property indicates the receiver's supported color spaces as an array of AVCaptureColorSpace constants sorted from narrow to wide color.
--
-- ObjC selector: @- supportedColorSpaces@
supportedColorSpaces :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id NSArray)
supportedColorSpaces avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat supportedColorSpacesSelector

-- | videoMinZoomFactorForDepthDataDelivery
--
-- A deprecated property. Please use supportedVideoZoomFactorsForDepthDataDelivery instead
--
-- ObjC selector: @- videoMinZoomFactorForDepthDataDelivery@
videoMinZoomFactorForDepthDataDelivery :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CDouble
videoMinZoomFactorForDepthDataDelivery avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoMinZoomFactorForDepthDataDeliverySelector

-- | videoMaxZoomFactorForDepthDataDelivery
--
-- A deprecated property. Please use supportedVideoZoomFactorsForDepthDataDelivery instead
--
-- ObjC selector: @- videoMaxZoomFactorForDepthDataDelivery@
videoMaxZoomFactorForDepthDataDelivery :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CDouble
videoMaxZoomFactorForDepthDataDelivery avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoMaxZoomFactorForDepthDataDeliverySelector

-- | supportedVideoZoomFactorsForDepthDataDelivery
--
-- Indicates the sorted zoom factors available for the AVCaptureDevice's videoZoomFactor property when delivering depth data to one or more outputs.
--
-- Virtual devices support limited zoom factors when delivering depth data to any output. If this device format has no -supportedDepthDataFormats, this property returns an empty array.
--
-- ObjC selector: @- supportedVideoZoomFactorsForDepthDataDelivery@
supportedVideoZoomFactorsForDepthDataDelivery :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id NSArray)
supportedVideoZoomFactorsForDepthDataDelivery avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat supportedVideoZoomFactorsForDepthDataDeliverySelector

-- | supportedDepthDataFormats
--
-- Indicates this format's companion depth data formats.
--
-- If no depth data formats are supported by the receiver, an empty array is returned. On virtual devices, the supportedDepthDataFormats list items always match the aspect ratio of their paired video format. When the receiver is set as the device's activeFormat, you may set the device's activeDepthDataFormat to one of these supported depth data formats.
--
-- ObjC selector: @- supportedDepthDataFormats@
supportedDepthDataFormats :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id NSArray)
supportedDepthDataFormats avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat supportedDepthDataFormatsSelector

-- | unsupportedCaptureOutputClasses
--
-- A property indicating AVCaptureOutput subclasses the receiver does not support.
--
-- As a rule, AVCaptureDeviceFormats of a given mediaType are available for use with all AVCaptureOutputs that accept that media type, but there are exceptions. For instance, on apps linked against iOS versions earlier than 12.0, the photo resolution video formats may not be used as sources for AVCaptureMovieFileOutput due to bandwidth limitations. On DualCamera devices, AVCaptureDepthDataOutput is not supported when outputting full resolution (i.e. 12 MP) video due to bandwidth limitations. In order to stream depth data plus video data from a photo format, ensure that your AVCaptureVideoDataOutput's deliversPreviewSizedOutputBuffers property is set to YES. Likewise, to stream depth data while capturing video to a movie file using AVCaptureMovieFileOutput, call -[AVCaptureSession setSessionPreset:AVCaptureSessionPresetPhoto]. When using the photo preset, video is captured at preview resolution rather than the full sensor resolution.
--
-- ObjC selector: @- unsupportedCaptureOutputClasses@
unsupportedCaptureOutputClasses :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id NSArray)
unsupportedCaptureOutputClasses avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat unsupportedCaptureOutputClassesSelector

-- | supportedMaxPhotoDimensions
--
-- This property lists all of the supported maximum photo dimensions for this format. The array contains CMVideoDimensions structs encoded as NSValues.
--
-- Enumerate all supported resolution settings for which this format may be configured to capture photos. Use these values to set AVCapturePhotoOutput.maxPhotoDimensions and AVCapturePhotoSettings.maxPhotoDimensions.
--
-- ObjC selector: @- supportedMaxPhotoDimensions@
supportedMaxPhotoDimensions :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id NSArray)
supportedMaxPhotoDimensions avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat supportedMaxPhotoDimensionsSelector

-- | secondaryNativeResolutionZoomFactors
--
-- Indicates zoom factors at which this device transitions to secondary native resolution modes.
--
-- Devices with this property have the means to switch their pixel sampling mode on the fly to produce a high-fidelity, non-upsampled images at a fixed zoom factor beyond 1.0x.
--
-- ObjC selector: @- secondaryNativeResolutionZoomFactors@
secondaryNativeResolutionZoomFactors :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id NSArray)
secondaryNativeResolutionZoomFactors avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat secondaryNativeResolutionZoomFactorsSelector

-- | studioLightSupported
--
-- Indicates whether the format supports the Studio Light feature.
--
-- This property returns YES if the format supports Studio Light (artificial re-lighting of the subject's face). See +AVCaptureDevice.studioLightEnabled.
--
-- ObjC selector: @- studioLightSupported@
studioLightSupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
studioLightSupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat studioLightSupportedSelector

-- | videoFrameRateRangeForStudioLight
--
-- Indicates the minimum / maximum frame rates available when studioLight is YES.
--
-- Devices may support a limited frame rate range when Studio Light is active. If this device format does not support Studio Light, this property returns nil.
--
-- ObjC selector: @- videoFrameRateRangeForStudioLight@
videoFrameRateRangeForStudioLight :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id AVFrameRateRange)
videoFrameRateRangeForStudioLight avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoFrameRateRangeForStudioLightSelector

-- | portraitEffectSupported
--
-- Indicates whether the format supports the Portrait Effect feature.
--
-- This property returns YES if the format supports Portrait Effect, the application of a shallow depth of field effect to objects in the background. See +AVCaptureDevice.portraitEffectEnabled for a detailed discussion.
--
-- ObjC selector: @- portraitEffectSupported@
portraitEffectSupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
portraitEffectSupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat portraitEffectSupportedSelector

-- | videoFrameRateRangeForPortraitEffect
--
-- Indicates the minimum / maximum frame rates available when portraitEffectActive is YES.
--
-- Devices may support a limited frame rate range when Portrait Effect is active. If this device format does not support Portrait Effect, this property returns nil.
--
-- ObjC selector: @- videoFrameRateRangeForPortraitEffect@
videoFrameRateRangeForPortraitEffect :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id AVFrameRateRange)
videoFrameRateRangeForPortraitEffect avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoFrameRateRangeForPortraitEffectSelector

-- | centerStageSupported
--
-- Indicates whether the format supports the Center Stage feature.
--
-- This property returns YES if the format supports "Center Stage", which automatically adjusts the camera to keep people optimally framed within the field of view. See +AVCaptureDevice.centerStageEnabled for a detailed discussion.
--
-- ObjC selector: @- centerStageSupported@
centerStageSupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
centerStageSupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat centerStageSupportedSelector

-- | videoMinZoomFactorForCenterStage
--
-- Indicates the minimum zoom factor available for the AVCaptureDevice's videoZoomFactor property when centerStageActive is YES.
--
-- Devices support a limited zoom range when Center Stage is active. If this device format does not support Center Stage, this property returns 1.0.
--
-- ObjC selector: @- videoMinZoomFactorForCenterStage@
videoMinZoomFactorForCenterStage :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CDouble
videoMinZoomFactorForCenterStage avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoMinZoomFactorForCenterStageSelector

-- | videoMaxZoomFactorForCenterStage
--
-- Indicates the maximum zoom factor available for the AVCaptureDevice's videoZoomFactor property when centerStageActive is YES.
--
-- Devices support a limited zoom range when Center Stage is active. If this device format does not support Center Stage, this property returns videoMaxZoomFactor.
--
-- ObjC selector: @- videoMaxZoomFactorForCenterStage@
videoMaxZoomFactorForCenterStage :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CDouble
videoMaxZoomFactorForCenterStage avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoMaxZoomFactorForCenterStageSelector

-- | videoFrameRateRangeForCenterStage
--
-- Indicates the minimum / maximum frame rates available when centerStageActive is YES.
--
-- Devices may support a limited frame rate range when Center Stage is active. If this device format does not support Center Stage, this property returns nil.
--
-- ObjC selector: @- videoFrameRateRangeForCenterStage@
videoFrameRateRangeForCenterStage :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO (Id AVFrameRateRange)
videoFrameRateRangeForCenterStage avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat videoFrameRateRangeForCenterStageSelector

-- | geometricDistortionCorrectedVideoFieldOfView
--
-- A property indicating the format's horizontal field of view post geometric distortion correction.
--
-- If the receiver's AVCaptureDevice does not support GDC, geometricDistortionCorrectedVideoFieldOfView matches the videoFieldOfView property.
--
-- ObjC selector: @- geometricDistortionCorrectedVideoFieldOfView@
geometricDistortionCorrectedVideoFieldOfView :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO CFloat
geometricDistortionCorrectedVideoFieldOfView avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat geometricDistortionCorrectedVideoFieldOfViewSelector

-- | multiCamSupported
--
-- A property indicating whether this format is supported in an AVCaptureMultiCamSession.
--
-- When using an AVCaptureSession (single camera capture), any of the formats in the device's -formats array may be set as the -activeFormat. However, when used with an AVCaptureMultiCamSession, the device's -activeFormat may only be set to one of the formats for which multiCamSupported answers YES. This limited subset of capture formats are known to run sustainably in a multi camera capture scenario.
--
-- ObjC selector: @- multiCamSupported@
multiCamSupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
multiCamSupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat multiCamSupportedSelector

-- | @- portraitEffectsMatteStillImageDeliverySupported@
portraitEffectsMatteStillImageDeliverySupported :: IsAVCaptureDeviceFormat avCaptureDeviceFormat => avCaptureDeviceFormat -> IO Bool
portraitEffectsMatteStillImageDeliverySupported avCaptureDeviceFormat =
  sendMessage avCaptureDeviceFormat portraitEffectsMatteStillImageDeliverySupportedSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVCaptureDeviceFormat)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVCaptureDeviceFormat)
newSelector = mkSelector "new"

-- | @Selector@ for @isVideoStabilizationModeSupported:@
isVideoStabilizationModeSupportedSelector :: Selector '[AVCaptureVideoStabilizationMode] Bool
isVideoStabilizationModeSupportedSelector = mkSelector "isVideoStabilizationModeSupported:"

-- | @Selector@ for @mediaType@
mediaTypeSelector :: Selector '[] (Id NSString)
mediaTypeSelector = mkSelector "mediaType"

-- | @Selector@ for @formatDescription@
formatDescriptionSelector :: Selector '[] RawId
formatDescriptionSelector = mkSelector "formatDescription"

-- | @Selector@ for @videoSupportedFrameRateRanges@
videoSupportedFrameRateRangesSelector :: Selector '[] (Id NSArray)
videoSupportedFrameRateRangesSelector = mkSelector "videoSupportedFrameRateRanges"

-- | @Selector@ for @videoFieldOfView@
videoFieldOfViewSelector :: Selector '[] CFloat
videoFieldOfViewSelector = mkSelector "videoFieldOfView"

-- | @Selector@ for @videoBinned@
videoBinnedSelector :: Selector '[] Bool
videoBinnedSelector = mkSelector "videoBinned"

-- | @Selector@ for @videoStabilizationSupported@
videoStabilizationSupportedSelector :: Selector '[] Bool
videoStabilizationSupportedSelector = mkSelector "videoStabilizationSupported"

-- | @Selector@ for @videoMaxZoomFactor@
videoMaxZoomFactorSelector :: Selector '[] CDouble
videoMaxZoomFactorSelector = mkSelector "videoMaxZoomFactor"

-- | @Selector@ for @videoZoomFactorUpscaleThreshold@
videoZoomFactorUpscaleThresholdSelector :: Selector '[] CDouble
videoZoomFactorUpscaleThresholdSelector = mkSelector "videoZoomFactorUpscaleThreshold"

-- | @Selector@ for @minISO@
minISOSelector :: Selector '[] CFloat
minISOSelector = mkSelector "minISO"

-- | @Selector@ for @maxISO@
maxISOSelector :: Selector '[] CFloat
maxISOSelector = mkSelector "maxISO"

-- | @Selector@ for @globalToneMappingSupported@
globalToneMappingSupportedSelector :: Selector '[] Bool
globalToneMappingSupportedSelector = mkSelector "globalToneMappingSupported"

-- | @Selector@ for @videoHDRSupported@
videoHDRSupportedSelector :: Selector '[] Bool
videoHDRSupportedSelector = mkSelector "videoHDRSupported"

-- | @Selector@ for @highPhotoQualitySupported@
highPhotoQualitySupportedSelector :: Selector '[] Bool
highPhotoQualitySupportedSelector = mkSelector "highPhotoQualitySupported"

-- | @Selector@ for @highestPhotoQualitySupported@
highestPhotoQualitySupportedSelector :: Selector '[] Bool
highestPhotoQualitySupportedSelector = mkSelector "highestPhotoQualitySupported"

-- | @Selector@ for @autoFocusSystem@
autoFocusSystemSelector :: Selector '[] AVCaptureAutoFocusSystem
autoFocusSystemSelector = mkSelector "autoFocusSystem"

-- | @Selector@ for @supportedColorSpaces@
supportedColorSpacesSelector :: Selector '[] (Id NSArray)
supportedColorSpacesSelector = mkSelector "supportedColorSpaces"

-- | @Selector@ for @videoMinZoomFactorForDepthDataDelivery@
videoMinZoomFactorForDepthDataDeliverySelector :: Selector '[] CDouble
videoMinZoomFactorForDepthDataDeliverySelector = mkSelector "videoMinZoomFactorForDepthDataDelivery"

-- | @Selector@ for @videoMaxZoomFactorForDepthDataDelivery@
videoMaxZoomFactorForDepthDataDeliverySelector :: Selector '[] CDouble
videoMaxZoomFactorForDepthDataDeliverySelector = mkSelector "videoMaxZoomFactorForDepthDataDelivery"

-- | @Selector@ for @supportedVideoZoomFactorsForDepthDataDelivery@
supportedVideoZoomFactorsForDepthDataDeliverySelector :: Selector '[] (Id NSArray)
supportedVideoZoomFactorsForDepthDataDeliverySelector = mkSelector "supportedVideoZoomFactorsForDepthDataDelivery"

-- | @Selector@ for @supportedDepthDataFormats@
supportedDepthDataFormatsSelector :: Selector '[] (Id NSArray)
supportedDepthDataFormatsSelector = mkSelector "supportedDepthDataFormats"

-- | @Selector@ for @unsupportedCaptureOutputClasses@
unsupportedCaptureOutputClassesSelector :: Selector '[] (Id NSArray)
unsupportedCaptureOutputClassesSelector = mkSelector "unsupportedCaptureOutputClasses"

-- | @Selector@ for @supportedMaxPhotoDimensions@
supportedMaxPhotoDimensionsSelector :: Selector '[] (Id NSArray)
supportedMaxPhotoDimensionsSelector = mkSelector "supportedMaxPhotoDimensions"

-- | @Selector@ for @secondaryNativeResolutionZoomFactors@
secondaryNativeResolutionZoomFactorsSelector :: Selector '[] (Id NSArray)
secondaryNativeResolutionZoomFactorsSelector = mkSelector "secondaryNativeResolutionZoomFactors"

-- | @Selector@ for @studioLightSupported@
studioLightSupportedSelector :: Selector '[] Bool
studioLightSupportedSelector = mkSelector "studioLightSupported"

-- | @Selector@ for @videoFrameRateRangeForStudioLight@
videoFrameRateRangeForStudioLightSelector :: Selector '[] (Id AVFrameRateRange)
videoFrameRateRangeForStudioLightSelector = mkSelector "videoFrameRateRangeForStudioLight"

-- | @Selector@ for @portraitEffectSupported@
portraitEffectSupportedSelector :: Selector '[] Bool
portraitEffectSupportedSelector = mkSelector "portraitEffectSupported"

-- | @Selector@ for @videoFrameRateRangeForPortraitEffect@
videoFrameRateRangeForPortraitEffectSelector :: Selector '[] (Id AVFrameRateRange)
videoFrameRateRangeForPortraitEffectSelector = mkSelector "videoFrameRateRangeForPortraitEffect"

-- | @Selector@ for @centerStageSupported@
centerStageSupportedSelector :: Selector '[] Bool
centerStageSupportedSelector = mkSelector "centerStageSupported"

-- | @Selector@ for @videoMinZoomFactorForCenterStage@
videoMinZoomFactorForCenterStageSelector :: Selector '[] CDouble
videoMinZoomFactorForCenterStageSelector = mkSelector "videoMinZoomFactorForCenterStage"

-- | @Selector@ for @videoMaxZoomFactorForCenterStage@
videoMaxZoomFactorForCenterStageSelector :: Selector '[] CDouble
videoMaxZoomFactorForCenterStageSelector = mkSelector "videoMaxZoomFactorForCenterStage"

-- | @Selector@ for @videoFrameRateRangeForCenterStage@
videoFrameRateRangeForCenterStageSelector :: Selector '[] (Id AVFrameRateRange)
videoFrameRateRangeForCenterStageSelector = mkSelector "videoFrameRateRangeForCenterStage"

-- | @Selector@ for @geometricDistortionCorrectedVideoFieldOfView@
geometricDistortionCorrectedVideoFieldOfViewSelector :: Selector '[] CFloat
geometricDistortionCorrectedVideoFieldOfViewSelector = mkSelector "geometricDistortionCorrectedVideoFieldOfView"

-- | @Selector@ for @multiCamSupported@
multiCamSupportedSelector :: Selector '[] Bool
multiCamSupportedSelector = mkSelector "multiCamSupported"

-- | @Selector@ for @portraitEffectsMatteStillImageDeliverySupported@
portraitEffectsMatteStillImageDeliverySupportedSelector :: Selector '[] Bool
portraitEffectsMatteStillImageDeliverySupportedSelector = mkSelector "portraitEffectsMatteStillImageDeliverySupported"

