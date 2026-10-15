{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCaptureOutput
--
-- AVCaptureOutput is an abstract class that defines an interface for an output destination of an AVCaptureSession.
--
-- AVCaptureOutput provides an abstract interface for connecting capture output destinations, such as files and video previews, to an AVCaptureSession.
--
-- An AVCaptureOutput can have multiple connections represented by AVCaptureConnection objects, one for each stream of media that it receives from an AVCaptureInput. An AVCaptureOutput does not have any connections when it is first created. When an output is added to an AVCaptureSession, connections are created that map media data from that session's inputs to its outputs.
--
-- Concrete AVCaptureOutput instances can be added to an AVCaptureSession using the -[AVCaptureSession addOutput:] and -[AVCaptureSession addOutputWithNoConnections:] methods.
--
-- Generated bindings for @AVCaptureOutput@.
module ObjC.AVFoundation.AVCaptureOutput
  ( AVCaptureOutput
  , IsAVCaptureOutput(..)
  , init_
  , new
  , connectionWithMediaType
  , transformedMetadataObjectForMetadataObject_connection
  , connections
  , connectionWithMediaTypeSelector
  , connectionsSelector
  , initSelector
  , newSelector
  , transformedMetadataObjectForMetadataObject_connectionSelector


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
init_ :: IsAVCaptureOutput avCaptureOutput => avCaptureOutput -> IO (Id AVCaptureOutput)
init_ avCaptureOutput =
  sendOwnedMessage avCaptureOutput initSelector

-- | @+ new@
new :: IO (Id AVCaptureOutput)
new  =
  do
    cls' <- getRequiredClass "AVCaptureOutput"
    sendOwnedClassMessage cls' newSelector

-- | connectionWithMediaType:
--
-- Returns the first connection in the connections array with an inputPort of the specified mediaType.
--
-- @mediaType@ — An AVMediaType constant from AVMediaFormat.h, e.g. AVMediaTypeVideo.
--
-- This convenience method returns the first AVCaptureConnection in the receiver's connections array that has an AVCaptureInputPort of the specified mediaType. If no connection with the specified mediaType is found, nil is returned.
--
-- ObjC selector: @- connectionWithMediaType:@
connectionWithMediaType :: (IsAVCaptureOutput avCaptureOutput, IsNSString mediaType) => avCaptureOutput -> mediaType -> IO (Id AVCaptureConnection)
connectionWithMediaType avCaptureOutput mediaType =
  sendMessage avCaptureOutput connectionWithMediaTypeSelector (toNSString mediaType)

-- | transformedMetadataObjectForMetadataObject:connection:
--
-- Converts an AVMetadataObject's visual properties to the receiver's coordinates.
--
-- @metadataObject@ — An AVMetadataObject originating from the same AVCaptureInput as the receiver.
--
-- @connection@ — The receiver's connection whose AVCaptureInput matches that of the metadata object to be converted.
--
-- Returns: An AVMetadataObject whose properties are in output coordinates.
--
-- AVMetadataObject bounds may be expressed as a rect where {0,0} represents the top left of the picture area, and {1,1} represents the bottom right on an unrotated picture. Face metadata objects likewise express yaw and roll angles with respect to an unrotated picture. -transformedMetadataObjectForMetadataObject:connection: converts the visual properties in the coordinate space of the supplied AVMetadataObject to the coordinate space of the receiver. The conversion takes orientation, mirroring, and scaling into consideration. If the provided metadata object originates from an input source other than the preview layer's, nil will be returned.
--
-- If an AVCaptureVideoDataOutput instance's connection's videoOrientation or videoMirrored properties are set to non-default values, the output applies the desired mirroring and orientation by physically rotating and or flipping sample buffers as they pass through it. AVCaptureStillImageOutput, on the other hand, does not physically rotate its buffers. It attaches an appropriate kCGImagePropertyOrientation number to captured still image buffers (see ImageIO/CGImageProperties.h) indicating how the image should be displayed on playback. Likewise, AVCaptureMovieFileOutput does not physically apply orientation/mirroring to its sample buffers -- it uses a QuickTime track matrix to indicate how the buffers should be rotated and/or flipped on playback.
--
-- transformedMetadataObjectForMetadataObject:connection: alters the visual properties of the provided metadata object to match the physical rotation / mirroring of the sample buffers provided by the receiver through the indicated connection. I.e., for video data output, adjusted metadata object coordinates are rotated/mirrored. For still image and movie file output, they are not.
--
-- ObjC selector: @- transformedMetadataObjectForMetadataObject:connection:@
transformedMetadataObjectForMetadataObject_connection :: (IsAVCaptureOutput avCaptureOutput, IsAVMetadataObject metadataObject, IsAVCaptureConnection connection) => avCaptureOutput -> metadataObject -> connection -> IO (Id AVMetadataObject)
transformedMetadataObjectForMetadataObject_connection avCaptureOutput metadataObject connection =
  sendMessage avCaptureOutput transformedMetadataObjectForMetadataObject_connectionSelector (toAVMetadataObject metadataObject) (toAVCaptureConnection connection)

-- | connections
--
-- The connections that describe the flow of media data to the receiver from AVCaptureInputs.
--
-- The value of this property is an NSArray of AVCaptureConnection objects, each describing the mapping between the receiver and the AVCaptureInputPorts of one or more AVCaptureInputs.
--
-- ObjC selector: @- connections@
connections :: IsAVCaptureOutput avCaptureOutput => avCaptureOutput -> IO (Id NSArray)
connections avCaptureOutput =
  sendMessage avCaptureOutput connectionsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVCaptureOutput)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVCaptureOutput)
newSelector = mkSelector "new"

-- | @Selector@ for @connectionWithMediaType:@
connectionWithMediaTypeSelector :: Selector '[Id NSString] (Id AVCaptureConnection)
connectionWithMediaTypeSelector = mkSelector "connectionWithMediaType:"

-- | @Selector@ for @transformedMetadataObjectForMetadataObject:connection:@
transformedMetadataObjectForMetadataObject_connectionSelector :: Selector '[Id AVMetadataObject, Id AVCaptureConnection] (Id AVMetadataObject)
transformedMetadataObjectForMetadataObject_connectionSelector = mkSelector "transformedMetadataObjectForMetadataObject:connection:"

-- | @Selector@ for @connections@
connectionsSelector :: Selector '[] (Id NSArray)
connectionsSelector = mkSelector "connections"

