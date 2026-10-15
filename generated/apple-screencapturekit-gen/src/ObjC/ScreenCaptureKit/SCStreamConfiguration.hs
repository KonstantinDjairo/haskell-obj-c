{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | SCStreamConfiguration
--
-- SCStreamConfiguration is an object that encapsulates the SCStream properties such as output width, height, pixelformat and others.
--
-- Generated bindings for @SCStreamConfiguration@.
module ObjC.ScreenCaptureKit.SCStreamConfiguration
  ( SCStreamConfiguration
  , IsSCStreamConfiguration(..)
  , width
  , setWidth
  , height
  , setHeight
  , pixelFormat
  , setPixelFormat
  , scalesToFit
  , setScalesToFit
  , showsCursor
  , setShowsCursor
  , backgroundColor
  , setBackgroundColor
  , queueDepth
  , setQueueDepth
  , colorMatrix
  , setColorMatrix
  , colorSpaceName
  , setColorSpaceName
  , capturesAudio
  , setCapturesAudio
  , sampleRate
  , setSampleRate
  , channelCount
  , setChannelCount
  , excludesCurrentProcessAudio
  , setExcludesCurrentProcessAudio
  , backgroundColorSelector
  , capturesAudioSelector
  , channelCountSelector
  , colorMatrixSelector
  , colorSpaceNameSelector
  , excludesCurrentProcessAudioSelector
  , heightSelector
  , pixelFormatSelector
  , queueDepthSelector
  , sampleRateSelector
  , scalesToFitSelector
  , setBackgroundColorSelector
  , setCapturesAudioSelector
  , setChannelCountSelector
  , setColorMatrixSelector
  , setColorSpaceNameSelector
  , setExcludesCurrentProcessAudioSelector
  , setHeightSelector
  , setPixelFormatSelector
  , setQueueDepthSelector
  , setSampleRateSelector
  , setScalesToFitSelector
  , setShowsCursorSelector
  , setWidthSelector
  , showsCursorSelector
  , widthSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScreenCaptureKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | SCStreamProperty for output width as measured in pixels. Default is set to 1920.
--
-- ObjC selector: @- width@
width :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO CULong
width scStreamConfiguration =
  sendMessage scStreamConfiguration widthSelector

-- | SCStreamProperty for output width as measured in pixels. Default is set to 1920.
--
-- ObjC selector: @- setWidth:@
setWidth :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> CULong -> IO ()
setWidth scStreamConfiguration value =
  sendMessage scStreamConfiguration setWidthSelector value

-- | SCStreamProperty for output height as measured in pixels. Default is set to 1080.
--
-- ObjC selector: @- height@
height :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO CULong
height scStreamConfiguration =
  sendMessage scStreamConfiguration heightSelector

-- | SCStreamProperty for output height as measured in pixels. Default is set to 1080.
--
-- ObjC selector: @- setHeight:@
setHeight :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> CULong -> IO ()
setHeight scStreamConfiguration value =
  sendMessage scStreamConfiguration setHeightSelector value

-- | SCStreamProperty for output pixel format. Supported pixel formats are: 'BGRA': Packed Little Endian ARGB8888 'l10r': Packed Little Endian ARGB2101010 '420v': 2-plane "video" range YCbCr 4:2:0 '420f': 2-plane "full" range YCbCr 4:2:0 See https://developer.apple.com/documentation/coregraphics/1455170-cgdisplaystreamcreate
--
-- ObjC selector: @- pixelFormat@
pixelFormat :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO CUInt
pixelFormat scStreamConfiguration =
  sendMessage scStreamConfiguration pixelFormatSelector

-- | SCStreamProperty for output pixel format. Supported pixel formats are: 'BGRA': Packed Little Endian ARGB8888 'l10r': Packed Little Endian ARGB2101010 '420v': 2-plane "video" range YCbCr 4:2:0 '420f': 2-plane "full" range YCbCr 4:2:0 See https://developer.apple.com/documentation/coregraphics/1455170-cgdisplaystreamcreate
--
-- ObjC selector: @- setPixelFormat:@
setPixelFormat :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> CUInt -> IO ()
setPixelFormat scStreamConfiguration value =
  sendMessage scStreamConfiguration setPixelFormatSelector value

-- | SCStreamProperty for output to be always scaled to fit into the provided width and height. For use for independent window capture. When true, the output scales up and down. When false, the output only scales down.
--
-- ObjC selector: @- scalesToFit@
scalesToFit :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO Bool
scalesToFit scStreamConfiguration =
  sendMessage scStreamConfiguration scalesToFitSelector

-- | SCStreamProperty for output to be always scaled to fit into the provided width and height. For use for independent window capture. When true, the output scales up and down. When false, the output only scales down.
--
-- ObjC selector: @- setScalesToFit:@
setScalesToFit :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> Bool -> IO ()
setScalesToFit scStreamConfiguration value =
  sendMessage scStreamConfiguration setScalesToFitSelector value

-- | SCStreamProperty that specifies whether the cursor should appear in the stream.  By default the cursor is visible.
--
-- ObjC selector: @- showsCursor@
showsCursor :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO Bool
showsCursor scStreamConfiguration =
  sendMessage scStreamConfiguration showsCursorSelector

-- | SCStreamProperty that specifies whether the cursor should appear in the stream.  By default the cursor is visible.
--
-- ObjC selector: @- setShowsCursor:@
setShowsCursor :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> Bool -> IO ()
setShowsCursor scStreamConfiguration value =
  sendMessage scStreamConfiguration setShowsCursorSelector value

-- | SCStreamProperty for background color. By default the background color is clear.
--
-- ObjC selector: @- backgroundColor@
backgroundColor :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO (Ptr ())
backgroundColor scStreamConfiguration =
  sendMessage scStreamConfiguration backgroundColorSelector

-- | SCStreamProperty for background color. By default the background color is clear.
--
-- ObjC selector: @- setBackgroundColor:@
setBackgroundColor :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> Ptr () -> IO ()
setBackgroundColor scStreamConfiguration value =
  sendMessage scStreamConfiguration setBackgroundColorSelector value

-- | SCStreamProperty that specifies the number of frames to keep in the queue.  If not set the default value is 3 frames.  Specifying more frames uses more memory, but may allow you to process frame data without stalling the display stream and should not exceed 8 frames.
--
-- ObjC selector: @- queueDepth@
queueDepth :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO CLong
queueDepth scStreamConfiguration =
  sendMessage scStreamConfiguration queueDepthSelector

-- | SCStreamProperty that specifies the number of frames to keep in the queue.  If not set the default value is 3 frames.  Specifying more frames uses more memory, but may allow you to process frame data without stalling the display stream and should not exceed 8 frames.
--
-- ObjC selector: @- setQueueDepth:@
setQueueDepth :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> CLong -> IO ()
setQueueDepth scStreamConfiguration value =
  sendMessage scStreamConfiguration setQueueDepthSelector value

-- | SCStreamProperty that specifies the YCbCr matrix applied to the output surface.  The value must be one of the strings specified in https://developer.apple.com/documentation/coregraphics/quartz_display_services/display_stream_ycbcr_to_rgb_conversion_matrix_options. Should only be used if your pixel format is 420v or 420f.
--
-- ObjC selector: @- colorMatrix@
colorMatrix :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO RawId
colorMatrix scStreamConfiguration =
  sendMessage scStreamConfiguration colorMatrixSelector

-- | SCStreamProperty that specifies the YCbCr matrix applied to the output surface.  The value must be one of the strings specified in https://developer.apple.com/documentation/coregraphics/quartz_display_services/display_stream_ycbcr_to_rgb_conversion_matrix_options. Should only be used if your pixel format is 420v or 420f.
--
-- ObjC selector: @- setColorMatrix:@
setColorMatrix :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> RawId -> IO ()
setColorMatrix scStreamConfiguration value =
  sendMessage scStreamConfiguration setColorMatrixSelector value

-- | SCStreamProperty that specifies the color space of the output buffer.  If not set the output buffer uses the same color space as the display. The value must be one of the strings specified in https://developer.apple.com/documentation/coregraphics/cgcolorspace/color_space_names.
--
-- ObjC selector: @- colorSpaceName@
colorSpaceName :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO RawId
colorSpaceName scStreamConfiguration =
  sendMessage scStreamConfiguration colorSpaceNameSelector

-- | SCStreamProperty that specifies the color space of the output buffer.  If not set the output buffer uses the same color space as the display. The value must be one of the strings specified in https://developer.apple.com/documentation/coregraphics/cgcolorspace/color_space_names.
--
-- ObjC selector: @- setColorSpaceName:@
setColorSpaceName :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> RawId -> IO ()
setColorSpaceName scStreamConfiguration value =
  sendMessage scStreamConfiguration setColorSpaceNameSelector value

-- | SCStreamProperty that specifies whether the audio will be captured.  By default audio is not captured.
--
-- ObjC selector: @- capturesAudio@
capturesAudio :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO Bool
capturesAudio scStreamConfiguration =
  sendMessage scStreamConfiguration capturesAudioSelector

-- | SCStreamProperty that specifies whether the audio will be captured.  By default audio is not captured.
--
-- ObjC selector: @- setCapturesAudio:@
setCapturesAudio :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> Bool -> IO ()
setCapturesAudio scStreamConfiguration value =
  sendMessage scStreamConfiguration setCapturesAudioSelector value

-- | SCStreamProperty to specify the sample rate for audio. Default is set to 48000.
--
-- ObjC selector: @- sampleRate@
sampleRate :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO CLong
sampleRate scStreamConfiguration =
  sendMessage scStreamConfiguration sampleRateSelector

-- | SCStreamProperty to specify the sample rate for audio. Default is set to 48000.
--
-- ObjC selector: @- setSampleRate:@
setSampleRate :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> CLong -> IO ()
setSampleRate scStreamConfiguration value =
  sendMessage scStreamConfiguration setSampleRateSelector value

-- | SCStreamProperty to specify channel count. Default is set to two.
--
-- ObjC selector: @- channelCount@
channelCount :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO CLong
channelCount scStreamConfiguration =
  sendMessage scStreamConfiguration channelCountSelector

-- | SCStreamProperty to specify channel count. Default is set to two.
--
-- ObjC selector: @- setChannelCount:@
setChannelCount :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> CLong -> IO ()
setChannelCount scStreamConfiguration value =
  sendMessage scStreamConfiguration setChannelCountSelector value

-- | SCAudioProperty whether to exclude audio from current process. Default is set to NO.
--
-- ObjC selector: @- excludesCurrentProcessAudio@
excludesCurrentProcessAudio :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> IO Bool
excludesCurrentProcessAudio scStreamConfiguration =
  sendMessage scStreamConfiguration excludesCurrentProcessAudioSelector

-- | SCAudioProperty whether to exclude audio from current process. Default is set to NO.
--
-- ObjC selector: @- setExcludesCurrentProcessAudio:@
setExcludesCurrentProcessAudio :: IsSCStreamConfiguration scStreamConfiguration => scStreamConfiguration -> Bool -> IO ()
setExcludesCurrentProcessAudio scStreamConfiguration value =
  sendMessage scStreamConfiguration setExcludesCurrentProcessAudioSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @width@
widthSelector :: Selector '[] CULong
widthSelector = mkSelector "width"

-- | @Selector@ for @setWidth:@
setWidthSelector :: Selector '[CULong] ()
setWidthSelector = mkSelector "setWidth:"

-- | @Selector@ for @height@
heightSelector :: Selector '[] CULong
heightSelector = mkSelector "height"

-- | @Selector@ for @setHeight:@
setHeightSelector :: Selector '[CULong] ()
setHeightSelector = mkSelector "setHeight:"

-- | @Selector@ for @pixelFormat@
pixelFormatSelector :: Selector '[] CUInt
pixelFormatSelector = mkSelector "pixelFormat"

-- | @Selector@ for @setPixelFormat:@
setPixelFormatSelector :: Selector '[CUInt] ()
setPixelFormatSelector = mkSelector "setPixelFormat:"

-- | @Selector@ for @scalesToFit@
scalesToFitSelector :: Selector '[] Bool
scalesToFitSelector = mkSelector "scalesToFit"

-- | @Selector@ for @setScalesToFit:@
setScalesToFitSelector :: Selector '[Bool] ()
setScalesToFitSelector = mkSelector "setScalesToFit:"

-- | @Selector@ for @showsCursor@
showsCursorSelector :: Selector '[] Bool
showsCursorSelector = mkSelector "showsCursor"

-- | @Selector@ for @setShowsCursor:@
setShowsCursorSelector :: Selector '[Bool] ()
setShowsCursorSelector = mkSelector "setShowsCursor:"

-- | @Selector@ for @backgroundColor@
backgroundColorSelector :: Selector '[] (Ptr ())
backgroundColorSelector = mkSelector "backgroundColor"

-- | @Selector@ for @setBackgroundColor:@
setBackgroundColorSelector :: Selector '[Ptr ()] ()
setBackgroundColorSelector = mkSelector "setBackgroundColor:"

-- | @Selector@ for @queueDepth@
queueDepthSelector :: Selector '[] CLong
queueDepthSelector = mkSelector "queueDepth"

-- | @Selector@ for @setQueueDepth:@
setQueueDepthSelector :: Selector '[CLong] ()
setQueueDepthSelector = mkSelector "setQueueDepth:"

-- | @Selector@ for @colorMatrix@
colorMatrixSelector :: Selector '[] RawId
colorMatrixSelector = mkSelector "colorMatrix"

-- | @Selector@ for @setColorMatrix:@
setColorMatrixSelector :: Selector '[RawId] ()
setColorMatrixSelector = mkSelector "setColorMatrix:"

-- | @Selector@ for @colorSpaceName@
colorSpaceNameSelector :: Selector '[] RawId
colorSpaceNameSelector = mkSelector "colorSpaceName"

-- | @Selector@ for @setColorSpaceName:@
setColorSpaceNameSelector :: Selector '[RawId] ()
setColorSpaceNameSelector = mkSelector "setColorSpaceName:"

-- | @Selector@ for @capturesAudio@
capturesAudioSelector :: Selector '[] Bool
capturesAudioSelector = mkSelector "capturesAudio"

-- | @Selector@ for @setCapturesAudio:@
setCapturesAudioSelector :: Selector '[Bool] ()
setCapturesAudioSelector = mkSelector "setCapturesAudio:"

-- | @Selector@ for @sampleRate@
sampleRateSelector :: Selector '[] CLong
sampleRateSelector = mkSelector "sampleRate"

-- | @Selector@ for @setSampleRate:@
setSampleRateSelector :: Selector '[CLong] ()
setSampleRateSelector = mkSelector "setSampleRate:"

-- | @Selector@ for @channelCount@
channelCountSelector :: Selector '[] CLong
channelCountSelector = mkSelector "channelCount"

-- | @Selector@ for @setChannelCount:@
setChannelCountSelector :: Selector '[CLong] ()
setChannelCountSelector = mkSelector "setChannelCount:"

-- | @Selector@ for @excludesCurrentProcessAudio@
excludesCurrentProcessAudioSelector :: Selector '[] Bool
excludesCurrentProcessAudioSelector = mkSelector "excludesCurrentProcessAudio"

-- | @Selector@ for @setExcludesCurrentProcessAudio:@
setExcludesCurrentProcessAudioSelector :: Selector '[Bool] ()
setExcludesCurrentProcessAudioSelector = mkSelector "setExcludesCurrentProcessAudio:"

