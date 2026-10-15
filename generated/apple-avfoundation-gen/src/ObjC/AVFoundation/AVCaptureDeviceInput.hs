{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCaptureDeviceInput
--
-- AVCaptureDeviceInput is a concrete subclass of AVCaptureInput that provides an interface for capturing media from an AVCaptureDevice.
--
-- Instances of AVCaptureDeviceInput are input sources for AVCaptureSession that provide media data from devices connected to the system, represented by instances of AVCaptureDevice.
--
-- Generated bindings for @AVCaptureDeviceInput@.
module ObjC.AVFoundation.AVCaptureDeviceInput
  ( AVCaptureDeviceInput
  , IsAVCaptureDeviceInput(..)
  , deviceInputWithDevice_error
  , initWithDevice_error
  , portsWithMediaType_sourceDeviceType_sourceDevicePosition
  , device
  , unifiedAutoExposureDefaultsEnabled
  , setUnifiedAutoExposureDefaultsEnabled
  , deviceInputWithDevice_errorSelector
  , deviceSelector
  , initWithDevice_errorSelector
  , portsWithMediaType_sourceDeviceType_sourceDevicePositionSelector
  , setUnifiedAutoExposureDefaultsEnabledSelector
  , unifiedAutoExposureDefaultsEnabledSelector

  -- * Enum types
  , AVCaptureDevicePosition(AVCaptureDevicePosition)
  , pattern AVCaptureDevicePositionUnspecified
  , pattern AVCaptureDevicePositionBack
  , pattern AVCaptureDevicePositionFront

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

-- | deviceInputWithDevice:error:
--
-- Returns an AVCaptureDeviceInput instance that provides media data from the given device.
--
-- @device@ — An AVCaptureDevice instance to be used for capture.
--
-- @outError@ — On return, if the given device cannot be used for capture, points to an NSError describing the problem.
--
-- Returns: An AVCaptureDeviceInput instance that provides data from the given device, or nil, if the device could not be used for capture.
--
-- This method returns an instance of AVCaptureDeviceInput that can be used to capture data from an AVCaptureDevice in an AVCaptureSession. This method attempts to open the device for capture, taking exclusive control of it if necessary. If the device cannot be opened because it is no longer available or because it is in use, for example, this method returns nil, and the optional outError parameter points to an NSError describing the problem.
--
-- ObjC selector: @+ deviceInputWithDevice:error:@
deviceInputWithDevice_error :: (IsAVCaptureDevice device, IsNSError outError) => device -> outError -> IO (Id AVCaptureDeviceInput)
deviceInputWithDevice_error device outError =
  do
    cls' <- getRequiredClass "AVCaptureDeviceInput"
    sendClassMessage cls' deviceInputWithDevice_errorSelector (toAVCaptureDevice device) (toNSError outError)

-- | initWithDevice:error:
--
-- Creates an AVCaptureDeviceInput instance that provides media data from the given device.
--
-- @device@ — An AVCaptureDevice instance to be used for capture.
--
-- @outError@ — On return, if the given device cannot be used for capture, points to an NSError describing the problem.
--
-- Returns: An AVCaptureDeviceInput instance that provides data from the given device, or nil, if the device could not be used for capture.
--
-- This method creates an instance of AVCaptureDeviceInput that can be used to capture data from an AVCaptureDevice in an AVCaptureSession. This method attempts to open the device for capture, taking exclusive control of it if necessary. If the device cannot be opened because it is no longer available or because it is in use, for example, this method returns nil, and the optional outError parameter points to an NSError describing the problem.
--
-- ObjC selector: @- initWithDevice:error:@
initWithDevice_error :: (IsAVCaptureDeviceInput avCaptureDeviceInput, IsAVCaptureDevice device, IsNSError outError) => avCaptureDeviceInput -> device -> outError -> IO (Id AVCaptureDeviceInput)
initWithDevice_error avCaptureDeviceInput device outError =
  sendOwnedMessage avCaptureDeviceInput initWithDevice_errorSelector (toAVCaptureDevice device) (toNSError outError)

-- | portsWithMediaType:sourceDeviceType:sourceDevicePosition:
--
-- An accessor method used to retrieve a virtual device's constituent device ports for use in an AVCaptureMultiCamSession.
--
-- @mediaType@ — The AVMediaType of the port for which you're searching, or nil if all media types should be considered.
--
-- @sourceDeviceType@ — The AVCaptureDeviceType of the port for which you're searching, or nil if source device type is irrelevant.
--
-- @sourceDevicePosition@ — The AVCaptureDevicePosition of the port for which you're searching. AVCaptureDevicePositionUnspecified is germane to audio devices, indicating omnidirectional audio. For other types of capture devices (e.g. cameras), AVCaptureDevicePositionUnspecified means all positions should be considered in the search.
--
-- Returns: An array of AVCaptureInputPorts satisfying the search criteria, or an empty array could be found.
--
-- When using AVCaptureMultiCamSession, multiple devices may be run simultaneously. You may also run simultaneous streams from a virtual device such as the Dual Camera. By inspecting a virtual device's constituentDevices property, you can find its underlying physical devices and, using this method, search for ports originating from one of those constituent devices. Note that the AVCaptureInput.ports array does not include constituent device ports for virtual devices. You must use this accessor method to discover the ports for which you're specifically looking. These constituent device ports may be used to make connections to outputs for use with an AVCaptureMultiCamSession. Using the Dual Camera as an example, the AVCaptureInput.ports property exposes only those ports supported by the virtual device (it switches automatically between wide and telephoto cameras according to the zoom factor). You may use this method to find the video ports for the constituentDevices.
--
-- AVCaptureInputPort *wideVideoPort = [dualCameraInput portsWithMediaType:AVMediaTypeVideo sourceDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera sourceDevicePosition:AVCaptureDevicePositionBack].firstObject;         AVCaptureInputPort *teleVideoPort = [dualCameraInput portsWithMediaType:AVMediaTypeVideo sourceDeviceType:AVCaptureDeviceTypeBuiltInTelephotoCamera sourceDevicePosition:AVCaptureDevicePositionBack].firstObject;
--
-- These ports may be used to create connections, say, to two AVCaptureVideoDataOutput instances, allowing for synchronized full frame rate delivery of both wide and telephoto streams.
--
-- As of iOS 13, constituent device ports may not be connected to AVCapturePhotoOutput instances. Clients who wish to capture multiple photos from a virtual device should use AVCapturePhotoOutput's virtualDeviceConstituentPhotoDeliveryEnabled feature.
--
-- When used in conjunction with an audio device, this method allows you to discover microphones in different AVCaptureDevicePositions. When you intend to work with an AVCaptureMultiCamSession, you may use these ports to make connections and simultaneously capture both front facing and back facing audio simultaneously to two different outputs. When used with an AVCaptureMultiCamSession, the audio device port whose sourceDevicePosition is AVCaptureDevicePositionUnspecified produces omnidirectional sound.
--
-- ObjC selector: @- portsWithMediaType:sourceDeviceType:sourceDevicePosition:@
portsWithMediaType_sourceDeviceType_sourceDevicePosition :: (IsAVCaptureDeviceInput avCaptureDeviceInput, IsNSString mediaType, IsNSString sourceDeviceType) => avCaptureDeviceInput -> mediaType -> sourceDeviceType -> AVCaptureDevicePosition -> IO (Id NSArray)
portsWithMediaType_sourceDeviceType_sourceDevicePosition avCaptureDeviceInput mediaType sourceDeviceType sourceDevicePosition =
  sendMessage avCaptureDeviceInput portsWithMediaType_sourceDeviceType_sourceDevicePositionSelector (toNSString mediaType) (toNSString sourceDeviceType) sourceDevicePosition

-- | device
--
-- The device from which the receiver provides data.
--
-- The value of this property is the AVCaptureDevice instance that was used to create the receiver.
--
-- ObjC selector: @- device@
device :: IsAVCaptureDeviceInput avCaptureDeviceInput => avCaptureDeviceInput -> IO (Id AVCaptureDevice)
device avCaptureDeviceInput =
  sendMessage avCaptureDeviceInput deviceSelector

-- | unifiedAutoExposureDefaultsEnabled
--
-- Specifies whether the source device should use the same default auto exposure behaviors for -[AVCaptureSession setSessionPreset:] and -[AVCaptureDevice setActiveFormat:].
--
-- AVCaptureDevice's activeFormat property may be set two different ways. 1) You set it directly using one of the formats in the device's -formats array, or 2) the AVCaptureSession sets it on your behalf when you set the AVCaptureSession's sessionPreset property. Depending on the device and format, the default auto exposure behavior may be configured differently when you use one method or the other, resulting in non-uniform auto exposure behavior. Auto exposure defaults include min frame rate, max frame rate, and max exposure duration. If you wish to ensure that consistent default behaviors are applied to the device regardless of the API you use to configure the activeFormat, you may set the device input's unifiedAutoExposureDefaultsEnabled property to YES. Default value for this property is NO.
--
-- Note that if you manually set the device's min frame rate, max frame rate, or max exposure duration, your custom values will override the device defaults regardless of whether you've set this property to YES.
--
-- ObjC selector: @- unifiedAutoExposureDefaultsEnabled@
unifiedAutoExposureDefaultsEnabled :: IsAVCaptureDeviceInput avCaptureDeviceInput => avCaptureDeviceInput -> IO Bool
unifiedAutoExposureDefaultsEnabled avCaptureDeviceInput =
  sendMessage avCaptureDeviceInput unifiedAutoExposureDefaultsEnabledSelector

-- | unifiedAutoExposureDefaultsEnabled
--
-- Specifies whether the source device should use the same default auto exposure behaviors for -[AVCaptureSession setSessionPreset:] and -[AVCaptureDevice setActiveFormat:].
--
-- AVCaptureDevice's activeFormat property may be set two different ways. 1) You set it directly using one of the formats in the device's -formats array, or 2) the AVCaptureSession sets it on your behalf when you set the AVCaptureSession's sessionPreset property. Depending on the device and format, the default auto exposure behavior may be configured differently when you use one method or the other, resulting in non-uniform auto exposure behavior. Auto exposure defaults include min frame rate, max frame rate, and max exposure duration. If you wish to ensure that consistent default behaviors are applied to the device regardless of the API you use to configure the activeFormat, you may set the device input's unifiedAutoExposureDefaultsEnabled property to YES. Default value for this property is NO.
--
-- Note that if you manually set the device's min frame rate, max frame rate, or max exposure duration, your custom values will override the device defaults regardless of whether you've set this property to YES.
--
-- ObjC selector: @- setUnifiedAutoExposureDefaultsEnabled:@
setUnifiedAutoExposureDefaultsEnabled :: IsAVCaptureDeviceInput avCaptureDeviceInput => avCaptureDeviceInput -> Bool -> IO ()
setUnifiedAutoExposureDefaultsEnabled avCaptureDeviceInput value =
  sendMessage avCaptureDeviceInput setUnifiedAutoExposureDefaultsEnabledSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @deviceInputWithDevice:error:@
deviceInputWithDevice_errorSelector :: Selector '[Id AVCaptureDevice, Id NSError] (Id AVCaptureDeviceInput)
deviceInputWithDevice_errorSelector = mkSelector "deviceInputWithDevice:error:"

-- | @Selector@ for @initWithDevice:error:@
initWithDevice_errorSelector :: Selector '[Id AVCaptureDevice, Id NSError] (Id AVCaptureDeviceInput)
initWithDevice_errorSelector = mkSelector "initWithDevice:error:"

-- | @Selector@ for @portsWithMediaType:sourceDeviceType:sourceDevicePosition:@
portsWithMediaType_sourceDeviceType_sourceDevicePositionSelector :: Selector '[Id NSString, Id NSString, AVCaptureDevicePosition] (Id NSArray)
portsWithMediaType_sourceDeviceType_sourceDevicePositionSelector = mkSelector "portsWithMediaType:sourceDeviceType:sourceDevicePosition:"

-- | @Selector@ for @device@
deviceSelector :: Selector '[] (Id AVCaptureDevice)
deviceSelector = mkSelector "device"

-- | @Selector@ for @unifiedAutoExposureDefaultsEnabled@
unifiedAutoExposureDefaultsEnabledSelector :: Selector '[] Bool
unifiedAutoExposureDefaultsEnabledSelector = mkSelector "unifiedAutoExposureDefaultsEnabled"

-- | @Selector@ for @setUnifiedAutoExposureDefaultsEnabled:@
setUnifiedAutoExposureDefaultsEnabledSelector :: Selector '[Bool] ()
setUnifiedAutoExposureDefaultsEnabledSelector = mkSelector "setUnifiedAutoExposureDefaultsEnabled:"

