{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCaptureVideoPreviewLayer
--
-- A CoreAnimation layer subclass for previewing the visual output of an AVCaptureSession.
--
-- An AVCaptureVideoPreviewLayer instance is a subclass of CALayer and is therefore suitable for insertion in a layer hierarchy as part of a graphical interface. One creates an AVCaptureVideoPreviewLayer instance with the capture session to be previewed, using +layerWithSession: or -initWithSession:. Using the "videoGravity" property, one can influence how content is viewed relative to the layer bounds. On some hardware configurations, the orientation of the layer can be manipulated using "orientation" and "mirrored".
--
-- Generated bindings for @AVCaptureVideoPreviewLayer@.
module ObjC.AVFoundation.AVCaptureVideoPreviewLayer
  ( AVCaptureVideoPreviewLayer
  , IsAVCaptureVideoPreviewLayer(..)
  , layerWithSession
  , initWithSession
  , layerWithSessionWithNoConnection
  , initWithSessionWithNoConnection
  , setSessionWithNoConnection
  , transformedMetadataObjectForMetadataObject
  , session
  , setSession
  , connection
  , videoGravity
  , setVideoGravity
  , previewing
  , orientationSupported
  , orientation
  , setOrientation
  , mirroringSupported
  , automaticallyAdjustsMirroring
  , setAutomaticallyAdjustsMirroring
  , mirrored
  , setMirrored
  , automaticallyAdjustsMirroringSelector
  , connectionSelector
  , initWithSessionSelector
  , initWithSessionWithNoConnectionSelector
  , layerWithSessionSelector
  , layerWithSessionWithNoConnectionSelector
  , mirroredSelector
  , mirroringSupportedSelector
  , orientationSelector
  , orientationSupportedSelector
  , previewingSelector
  , sessionSelector
  , setAutomaticallyAdjustsMirroringSelector
  , setMirroredSelector
  , setOrientationSelector
  , setSessionSelector
  , setSessionWithNoConnectionSelector
  , setVideoGravitySelector
  , transformedMetadataObjectForMetadataObjectSelector
  , videoGravitySelector

  -- * Enum types
  , AVCaptureVideoOrientation(AVCaptureVideoOrientation)
  , pattern AVCaptureVideoOrientationPortrait
  , pattern AVCaptureVideoOrientationPortraitUpsideDown
  , pattern AVCaptureVideoOrientationLandscapeRight
  , pattern AVCaptureVideoOrientationLandscapeLeft

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
import ObjC.QuartzCore.Internal.Classes

-- | layerWithSession:
--
-- Creates an AVCaptureVideoPreviewLayer for previewing the visual output of the specified AVCaptureSession.
--
-- @session@ — The AVCaptureSession instance to be previewed.
--
-- Returns: A newly initialized AVCaptureVideoPreviewLayer instance.
--
-- ObjC selector: @+ layerWithSession:@
layerWithSession :: IsAVCaptureSession session => session -> IO (Id AVCaptureVideoPreviewLayer)
layerWithSession session =
  do
    cls' <- getRequiredClass "AVCaptureVideoPreviewLayer"
    sendClassMessage cls' layerWithSessionSelector (toAVCaptureSession session)

-- | initWithSession:
--
-- Creates an AVCaptureVideoPreviewLayer for previewing the visual output of the specified AVCaptureSession.
--
-- @session@ — The AVCaptureSession instance to be previewed.
--
-- Returns: A newly initialized AVCaptureVideoPreviewLayer instance.
--
-- ObjC selector: @- initWithSession:@
initWithSession :: (IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer, IsAVCaptureSession session) => avCaptureVideoPreviewLayer -> session -> IO (Id AVCaptureVideoPreviewLayer)
initWithSession avCaptureVideoPreviewLayer session =
  sendOwnedMessage avCaptureVideoPreviewLayer initWithSessionSelector (toAVCaptureSession session)

-- | layerWithSessionWithNoConnection:
--
-- Creates an AVCaptureVideoPreviewLayer for previewing the visual output of the specified AVCaptureSession, but creates no connections to any of the session's eligible video inputs. Only use this initializer if you intend to manually form a connection between a desired AVCaptureInputPort and the receiver using AVCaptureSession's -addConnection: method.
--
-- @session@ — The AVCaptureSession instance to be previewed.
--
-- Returns: A newly initialized AVCaptureVideoPreviewLayer instance.
--
-- ObjC selector: @+ layerWithSessionWithNoConnection:@
layerWithSessionWithNoConnection :: IsAVCaptureSession session => session -> IO (Id AVCaptureVideoPreviewLayer)
layerWithSessionWithNoConnection session =
  do
    cls' <- getRequiredClass "AVCaptureVideoPreviewLayer"
    sendClassMessage cls' layerWithSessionWithNoConnectionSelector (toAVCaptureSession session)

-- | initWithSessionWithNoConnection:
--
-- Creates an AVCaptureVideoPreviewLayer for previewing the visual output of the specified AVCaptureSession, but creates no connections to any of the session's eligible video inputs. Only use this initializer if you intend to manually form a connection between a desired AVCaptureInputPort and the receiver using AVCaptureSession's -addConnection: method.
--
-- @session@ — The AVCaptureSession instance to be previewed.
--
-- Returns: A newly initialized AVCaptureVideoPreviewLayer instance.
--
-- ObjC selector: @- initWithSessionWithNoConnection:@
initWithSessionWithNoConnection :: (IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer, IsAVCaptureSession session) => avCaptureVideoPreviewLayer -> session -> IO (Id AVCaptureVideoPreviewLayer)
initWithSessionWithNoConnection avCaptureVideoPreviewLayer session =
  sendOwnedMessage avCaptureVideoPreviewLayer initWithSessionWithNoConnectionSelector (toAVCaptureSession session)

-- | method setSessionWithNoConnection:
--
-- Attaches the receiver to a given session without implicitly forming a connection to the first eligible video AVCaptureInputPort. Only use this setter if you intend to manually form a connection between a desired AVCaptureInputPort and the receiver using AVCaptureSession's -addConnection: method.
--
-- The session is retained by the preview layer.
--
-- ObjC selector: @- setSessionWithNoConnection:@
setSessionWithNoConnection :: (IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer, IsAVCaptureSession session) => avCaptureVideoPreviewLayer -> session -> IO ()
setSessionWithNoConnection avCaptureVideoPreviewLayer session =
  sendMessage avCaptureVideoPreviewLayer setSessionWithNoConnectionSelector (toAVCaptureSession session)

-- | transformedMetadataObjectForMetadataObject:
--
-- Converts an AVMetadataObject's visual properties to layer coordinates.
--
-- @metadataObject@ — An AVMetadataObject originating from the same AVCaptureInput as the preview layer.
--
-- Returns: An AVMetadataObject whose properties are in layer coordinates.
--
-- AVMetadataObject bounds may be expressed as a rect where {0,0} represents the top left of the picture area, and {1,1} represents the bottom right on an unrotated picture. Face metadata objects likewise express yaw and roll angles with respect to an unrotated picture. -transformedMetadataObjectForMetadataObject: converts the visual properties in the coordinate space of the supplied AVMetadataObject to the coordinate space of the receiver. The conversion takes orientation, mirroring, layer bounds and videoGravity into consideration. If the provided metadata object originates from an input source other than the preview layer's, nil will be returned.
--
-- ObjC selector: @- transformedMetadataObjectForMetadataObject:@
transformedMetadataObjectForMetadataObject :: (IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer, IsAVMetadataObject metadataObject) => avCaptureVideoPreviewLayer -> metadataObject -> IO (Id AVMetadataObject)
transformedMetadataObjectForMetadataObject avCaptureVideoPreviewLayer metadataObject =
  sendMessage avCaptureVideoPreviewLayer transformedMetadataObjectForMetadataObjectSelector (toAVMetadataObject metadataObject)

-- | session
--
-- The AVCaptureSession instance being previewed by the receiver.
--
-- The session is retained by the preview layer.
--
-- ObjC selector: @- session@
session :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO (Id AVCaptureSession)
session avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer sessionSelector

-- | session
--
-- The AVCaptureSession instance being previewed by the receiver.
--
-- The session is retained by the preview layer.
--
-- ObjC selector: @- setSession:@
setSession :: (IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer, IsAVCaptureSession value) => avCaptureVideoPreviewLayer -> value -> IO ()
setSession avCaptureVideoPreviewLayer value =
  sendMessage avCaptureVideoPreviewLayer setSessionSelector (toAVCaptureSession value)

-- | connection
--
-- The AVCaptureConnection instance describing the AVCaptureInputPort to which the receiver is connected.
--
-- When calling initWithSession: or setSession: with a valid AVCaptureSession instance, a connection is formed to the first eligible video AVCaptureInput. If the receiver is detached from a session, the connection property becomes nil.
--
-- ObjC selector: @- connection@
connection :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO (Id AVCaptureConnection)
connection avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer connectionSelector

-- | videoGravity
--
-- A string defining how the video is displayed within an AVCaptureVideoPreviewLayer bounds rect.
--
-- Options are AVLayerVideoGravityResize, AVLayerVideoGravityResizeAspect and AVLayerVideoGravityResizeAspectFill. AVLayerVideoGravityResizeAspect is default. See <AVFoundation/AVAnimation.h> for a description of these options.
--
-- ObjC selector: @- videoGravity@
videoGravity :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO (Id NSString)
videoGravity avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer videoGravitySelector

-- | videoGravity
--
-- A string defining how the video is displayed within an AVCaptureVideoPreviewLayer bounds rect.
--
-- Options are AVLayerVideoGravityResize, AVLayerVideoGravityResizeAspect and AVLayerVideoGravityResizeAspectFill. AVLayerVideoGravityResizeAspect is default. See <AVFoundation/AVAnimation.h> for a description of these options.
--
-- ObjC selector: @- setVideoGravity:@
setVideoGravity :: (IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer, IsNSString value) => avCaptureVideoPreviewLayer -> value -> IO ()
setVideoGravity avCaptureVideoPreviewLayer value =
  sendMessage avCaptureVideoPreviewLayer setVideoGravitySelector (toNSString value)

-- | previewing
--
-- A BOOL value indicating whether the receiver is currently rendering video frames from its source.
--
-- An AVCaptureVideoPreviewLayer begins previewing when -[AVCaptureSession startRunning] is called. When associated with an AVCaptureMultiCamSession, all video preview layers are guaranteed to be previewing by the time the blocking call to -startRunning or -commitConfiguration returns. While a session is running, you may enable or disable a video preview layer's connection to re-start or stop the flow of video to the layer. Once you've set enabled to YES, you can observe this property changing from NO to YES and synchronize any UI to take place precisely when the video resumes rendering to the video preview layer.
--
-- ObjC selector: @- previewing@
previewing :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO Bool
previewing avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer previewingSelector

-- | orientationSupported
--
-- Specifies whether or not the preview layer supports orientation.
--
-- Changes in orientation are not supported on all hardware configurations. An application should check the value of "orientationSupported" before attempting to manipulate the orientation of the receiver. This property is deprecated. Use AVCaptureConnection's -isVideoOrientationSupported instead.
--
-- ObjC selector: @- orientationSupported@
orientationSupported :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO Bool
orientationSupported avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer orientationSupportedSelector

-- | orientation
--
-- Specifies the orientation of the preview layer.
--
-- AVCaptureVideoOrientation and its constants are defined in AVCaptureSession.h. The value of "orientationSupported" must be YES in order to set "orientation". An exception will be raised if this requirement is ignored. This property is deprecated. Use AVCaptureConnection's -videoOrientation instead.
--
-- ObjC selector: @- orientation@
orientation :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO AVCaptureVideoOrientation
orientation avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer orientationSelector

-- | orientation
--
-- Specifies the orientation of the preview layer.
--
-- AVCaptureVideoOrientation and its constants are defined in AVCaptureSession.h. The value of "orientationSupported" must be YES in order to set "orientation". An exception will be raised if this requirement is ignored. This property is deprecated. Use AVCaptureConnection's -videoOrientation instead.
--
-- ObjC selector: @- setOrientation:@
setOrientation :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> AVCaptureVideoOrientation -> IO ()
setOrientation avCaptureVideoPreviewLayer value =
  sendMessage avCaptureVideoPreviewLayer setOrientationSelector value

-- | mirroringSupported
--
-- Specifies whether or not the preview layer supports mirroring.
--
-- Mirroring is not supported on all hardware configurations. An application should check the value of "mirroringSupported" before attempting to manipulate mirroring on the receiver. This property is deprecated. Use AVCaptureConnection's -isVideoMirroringSupported instead.
--
-- ObjC selector: @- mirroringSupported@
mirroringSupported :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO Bool
mirroringSupported avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer mirroringSupportedSelector

-- | automaticallyAdjustsMirroring
--
-- Specifies whether or not the value of "mirrored" can change based on configuration of the session.
--
-- For some session configurations, preview will be mirrored by default. When the value of this property is YES, the value of "mirrored" may change depending on the configuration of the session, for example after switching to a different AVCaptureDeviceInput. The default value is YES. This property is deprecated. Use AVCaptureConnection's -automaticallyAdjustsVideoMirroring instead.
--
-- ObjC selector: @- automaticallyAdjustsMirroring@
automaticallyAdjustsMirroring :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO Bool
automaticallyAdjustsMirroring avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer automaticallyAdjustsMirroringSelector

-- | automaticallyAdjustsMirroring
--
-- Specifies whether or not the value of "mirrored" can change based on configuration of the session.
--
-- For some session configurations, preview will be mirrored by default. When the value of this property is YES, the value of "mirrored" may change depending on the configuration of the session, for example after switching to a different AVCaptureDeviceInput. The default value is YES. This property is deprecated. Use AVCaptureConnection's -automaticallyAdjustsVideoMirroring instead.
--
-- ObjC selector: @- setAutomaticallyAdjustsMirroring:@
setAutomaticallyAdjustsMirroring :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> Bool -> IO ()
setAutomaticallyAdjustsMirroring avCaptureVideoPreviewLayer value =
  sendMessage avCaptureVideoPreviewLayer setAutomaticallyAdjustsMirroringSelector value

-- | mirrored
--
-- Specifies whether or not the preview is flipped over a vertical axis.
--
-- For most applications, it is unnecessary to manipulate preview mirroring manually if "automaticallyAdjustsMirroring" is set to YES. The value of "automaticallyAdjustsMirroring" must be NO in order to set "mirrored". The value of "mirroringSupported" must be YES in order to set "mirrored". An exception will be raised if the value of "mirrored" is mutated without respecting these requirements. This property is deprecated. Use AVCaptureConnection's -videoMirrored instead.
--
-- ObjC selector: @- mirrored@
mirrored :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> IO Bool
mirrored avCaptureVideoPreviewLayer =
  sendMessage avCaptureVideoPreviewLayer mirroredSelector

-- | mirrored
--
-- Specifies whether or not the preview is flipped over a vertical axis.
--
-- For most applications, it is unnecessary to manipulate preview mirroring manually if "automaticallyAdjustsMirroring" is set to YES. The value of "automaticallyAdjustsMirroring" must be NO in order to set "mirrored". The value of "mirroringSupported" must be YES in order to set "mirrored". An exception will be raised if the value of "mirrored" is mutated without respecting these requirements. This property is deprecated. Use AVCaptureConnection's -videoMirrored instead.
--
-- ObjC selector: @- setMirrored:@
setMirrored :: IsAVCaptureVideoPreviewLayer avCaptureVideoPreviewLayer => avCaptureVideoPreviewLayer -> Bool -> IO ()
setMirrored avCaptureVideoPreviewLayer value =
  sendMessage avCaptureVideoPreviewLayer setMirroredSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @layerWithSession:@
layerWithSessionSelector :: Selector '[Id AVCaptureSession] (Id AVCaptureVideoPreviewLayer)
layerWithSessionSelector = mkSelector "layerWithSession:"

-- | @Selector@ for @initWithSession:@
initWithSessionSelector :: Selector '[Id AVCaptureSession] (Id AVCaptureVideoPreviewLayer)
initWithSessionSelector = mkSelector "initWithSession:"

-- | @Selector@ for @layerWithSessionWithNoConnection:@
layerWithSessionWithNoConnectionSelector :: Selector '[Id AVCaptureSession] (Id AVCaptureVideoPreviewLayer)
layerWithSessionWithNoConnectionSelector = mkSelector "layerWithSessionWithNoConnection:"

-- | @Selector@ for @initWithSessionWithNoConnection:@
initWithSessionWithNoConnectionSelector :: Selector '[Id AVCaptureSession] (Id AVCaptureVideoPreviewLayer)
initWithSessionWithNoConnectionSelector = mkSelector "initWithSessionWithNoConnection:"

-- | @Selector@ for @setSessionWithNoConnection:@
setSessionWithNoConnectionSelector :: Selector '[Id AVCaptureSession] ()
setSessionWithNoConnectionSelector = mkSelector "setSessionWithNoConnection:"

-- | @Selector@ for @transformedMetadataObjectForMetadataObject:@
transformedMetadataObjectForMetadataObjectSelector :: Selector '[Id AVMetadataObject] (Id AVMetadataObject)
transformedMetadataObjectForMetadataObjectSelector = mkSelector "transformedMetadataObjectForMetadataObject:"

-- | @Selector@ for @session@
sessionSelector :: Selector '[] (Id AVCaptureSession)
sessionSelector = mkSelector "session"

-- | @Selector@ for @setSession:@
setSessionSelector :: Selector '[Id AVCaptureSession] ()
setSessionSelector = mkSelector "setSession:"

-- | @Selector@ for @connection@
connectionSelector :: Selector '[] (Id AVCaptureConnection)
connectionSelector = mkSelector "connection"

-- | @Selector@ for @videoGravity@
videoGravitySelector :: Selector '[] (Id NSString)
videoGravitySelector = mkSelector "videoGravity"

-- | @Selector@ for @setVideoGravity:@
setVideoGravitySelector :: Selector '[Id NSString] ()
setVideoGravitySelector = mkSelector "setVideoGravity:"

-- | @Selector@ for @previewing@
previewingSelector :: Selector '[] Bool
previewingSelector = mkSelector "previewing"

-- | @Selector@ for @orientationSupported@
orientationSupportedSelector :: Selector '[] Bool
orientationSupportedSelector = mkSelector "orientationSupported"

-- | @Selector@ for @orientation@
orientationSelector :: Selector '[] AVCaptureVideoOrientation
orientationSelector = mkSelector "orientation"

-- | @Selector@ for @setOrientation:@
setOrientationSelector :: Selector '[AVCaptureVideoOrientation] ()
setOrientationSelector = mkSelector "setOrientation:"

-- | @Selector@ for @mirroringSupported@
mirroringSupportedSelector :: Selector '[] Bool
mirroringSupportedSelector = mkSelector "mirroringSupported"

-- | @Selector@ for @automaticallyAdjustsMirroring@
automaticallyAdjustsMirroringSelector :: Selector '[] Bool
automaticallyAdjustsMirroringSelector = mkSelector "automaticallyAdjustsMirroring"

-- | @Selector@ for @setAutomaticallyAdjustsMirroring:@
setAutomaticallyAdjustsMirroringSelector :: Selector '[Bool] ()
setAutomaticallyAdjustsMirroringSelector = mkSelector "setAutomaticallyAdjustsMirroring:"

-- | @Selector@ for @mirrored@
mirroredSelector :: Selector '[] Bool
mirroredSelector = mkSelector "mirrored"

-- | @Selector@ for @setMirrored:@
setMirroredSelector :: Selector '[Bool] ()
setMirroredSelector = mkSelector "setMirrored:"

