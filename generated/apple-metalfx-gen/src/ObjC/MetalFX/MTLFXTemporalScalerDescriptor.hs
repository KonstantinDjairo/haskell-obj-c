{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTLFXTemporalScalerDescriptor@.
module ObjC.MetalFX.MTLFXTemporalScalerDescriptor
  ( MTLFXTemporalScalerDescriptor
  , IsMTLFXTemporalScalerDescriptor(..)
  , newTemporalScalerWithDevice
  , supportsDevice
  , colorTextureFormat
  , setColorTextureFormat
  , depthTextureFormat
  , setDepthTextureFormat
  , motionTextureFormat
  , setMotionTextureFormat
  , outputTextureFormat
  , setOutputTextureFormat
  , inputWidth
  , setInputWidth
  , inputHeight
  , setInputHeight
  , outputWidth
  , setOutputWidth
  , outputHeight
  , setOutputHeight
  , autoExposureEnabled
  , setAutoExposureEnabled
  , inputContentPropertiesEnabled
  , setInputContentPropertiesEnabled
  , inputContentMinScale
  , setInputContentMinScale
  , inputContentMaxScale
  , setInputContentMaxScale
  , autoExposureEnabledSelector
  , colorTextureFormatSelector
  , depthTextureFormatSelector
  , inputContentMaxScaleSelector
  , inputContentMinScaleSelector
  , inputContentPropertiesEnabledSelector
  , inputHeightSelector
  , inputWidthSelector
  , motionTextureFormatSelector
  , newTemporalScalerWithDeviceSelector
  , outputHeightSelector
  , outputTextureFormatSelector
  , outputWidthSelector
  , setAutoExposureEnabledSelector
  , setColorTextureFormatSelector
  , setDepthTextureFormatSelector
  , setInputContentMaxScaleSelector
  , setInputContentMinScaleSelector
  , setInputContentPropertiesEnabledSelector
  , setInputHeightSelector
  , setInputWidthSelector
  , setMotionTextureFormatSelector
  , setOutputHeightSelector
  , setOutputTextureFormatSelector
  , setOutputWidthSelector
  , supportsDeviceSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetalFX.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- newTemporalScalerWithDevice:@
newTemporalScalerWithDevice :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> RawId -> IO RawId
newTemporalScalerWithDevice mtlfxTemporalScalerDescriptor device =
  sendOwnedMessage mtlfxTemporalScalerDescriptor newTemporalScalerWithDeviceSelector device

-- | @+ supportsDevice:@
supportsDevice :: RawId -> IO Bool
supportsDevice device =
  do
    cls' <- getRequiredClass "MTLFXTemporalScalerDescriptor"
    sendClassMessage cls' supportsDeviceSelector device

-- | @- colorTextureFormat@
colorTextureFormat :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CInt
colorTextureFormat mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor colorTextureFormatSelector

-- | @- setColorTextureFormat:@
setColorTextureFormat :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CInt -> IO ()
setColorTextureFormat mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setColorTextureFormatSelector value

-- | @- depthTextureFormat@
depthTextureFormat :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CInt
depthTextureFormat mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor depthTextureFormatSelector

-- | @- setDepthTextureFormat:@
setDepthTextureFormat :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CInt -> IO ()
setDepthTextureFormat mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setDepthTextureFormatSelector value

-- | @- motionTextureFormat@
motionTextureFormat :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CInt
motionTextureFormat mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor motionTextureFormatSelector

-- | @- setMotionTextureFormat:@
setMotionTextureFormat :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CInt -> IO ()
setMotionTextureFormat mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setMotionTextureFormatSelector value

-- | @- outputTextureFormat@
outputTextureFormat :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CInt
outputTextureFormat mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor outputTextureFormatSelector

-- | @- setOutputTextureFormat:@
setOutputTextureFormat :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CInt -> IO ()
setOutputTextureFormat mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setOutputTextureFormatSelector value

-- | @- inputWidth@
inputWidth :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CULong
inputWidth mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor inputWidthSelector

-- | @- setInputWidth:@
setInputWidth :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CULong -> IO ()
setInputWidth mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setInputWidthSelector value

-- | @- inputHeight@
inputHeight :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CULong
inputHeight mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor inputHeightSelector

-- | @- setInputHeight:@
setInputHeight :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CULong -> IO ()
setInputHeight mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setInputHeightSelector value

-- | @- outputWidth@
outputWidth :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CULong
outputWidth mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor outputWidthSelector

-- | @- setOutputWidth:@
setOutputWidth :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CULong -> IO ()
setOutputWidth mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setOutputWidthSelector value

-- | @- outputHeight@
outputHeight :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CULong
outputHeight mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor outputHeightSelector

-- | @- setOutputHeight:@
setOutputHeight :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CULong -> IO ()
setOutputHeight mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setOutputHeightSelector value

-- | @- autoExposureEnabled@
autoExposureEnabled :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO Bool
autoExposureEnabled mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor autoExposureEnabledSelector

-- | @- setAutoExposureEnabled:@
setAutoExposureEnabled :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> Bool -> IO ()
setAutoExposureEnabled mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setAutoExposureEnabledSelector value

-- | @- inputContentPropertiesEnabled@
inputContentPropertiesEnabled :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO Bool
inputContentPropertiesEnabled mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor inputContentPropertiesEnabledSelector

-- | @- setInputContentPropertiesEnabled:@
setInputContentPropertiesEnabled :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> Bool -> IO ()
setInputContentPropertiesEnabled mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setInputContentPropertiesEnabledSelector value

-- | @- inputContentMinScale@
inputContentMinScale :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CFloat
inputContentMinScale mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor inputContentMinScaleSelector

-- | @- setInputContentMinScale:@
setInputContentMinScale :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CFloat -> IO ()
setInputContentMinScale mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setInputContentMinScaleSelector value

-- | @- inputContentMaxScale@
inputContentMaxScale :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> IO CFloat
inputContentMaxScale mtlfxTemporalScalerDescriptor =
  sendMessage mtlfxTemporalScalerDescriptor inputContentMaxScaleSelector

-- | @- setInputContentMaxScale:@
setInputContentMaxScale :: IsMTLFXTemporalScalerDescriptor mtlfxTemporalScalerDescriptor => mtlfxTemporalScalerDescriptor -> CFloat -> IO ()
setInputContentMaxScale mtlfxTemporalScalerDescriptor value =
  sendMessage mtlfxTemporalScalerDescriptor setInputContentMaxScaleSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @newTemporalScalerWithDevice:@
newTemporalScalerWithDeviceSelector :: Selector '[RawId] RawId
newTemporalScalerWithDeviceSelector = mkSelector "newTemporalScalerWithDevice:"

-- | @Selector@ for @supportsDevice:@
supportsDeviceSelector :: Selector '[RawId] Bool
supportsDeviceSelector = mkSelector "supportsDevice:"

-- | @Selector@ for @colorTextureFormat@
colorTextureFormatSelector :: Selector '[] CInt
colorTextureFormatSelector = mkSelector "colorTextureFormat"

-- | @Selector@ for @setColorTextureFormat:@
setColorTextureFormatSelector :: Selector '[CInt] ()
setColorTextureFormatSelector = mkSelector "setColorTextureFormat:"

-- | @Selector@ for @depthTextureFormat@
depthTextureFormatSelector :: Selector '[] CInt
depthTextureFormatSelector = mkSelector "depthTextureFormat"

-- | @Selector@ for @setDepthTextureFormat:@
setDepthTextureFormatSelector :: Selector '[CInt] ()
setDepthTextureFormatSelector = mkSelector "setDepthTextureFormat:"

-- | @Selector@ for @motionTextureFormat@
motionTextureFormatSelector :: Selector '[] CInt
motionTextureFormatSelector = mkSelector "motionTextureFormat"

-- | @Selector@ for @setMotionTextureFormat:@
setMotionTextureFormatSelector :: Selector '[CInt] ()
setMotionTextureFormatSelector = mkSelector "setMotionTextureFormat:"

-- | @Selector@ for @outputTextureFormat@
outputTextureFormatSelector :: Selector '[] CInt
outputTextureFormatSelector = mkSelector "outputTextureFormat"

-- | @Selector@ for @setOutputTextureFormat:@
setOutputTextureFormatSelector :: Selector '[CInt] ()
setOutputTextureFormatSelector = mkSelector "setOutputTextureFormat:"

-- | @Selector@ for @inputWidth@
inputWidthSelector :: Selector '[] CULong
inputWidthSelector = mkSelector "inputWidth"

-- | @Selector@ for @setInputWidth:@
setInputWidthSelector :: Selector '[CULong] ()
setInputWidthSelector = mkSelector "setInputWidth:"

-- | @Selector@ for @inputHeight@
inputHeightSelector :: Selector '[] CULong
inputHeightSelector = mkSelector "inputHeight"

-- | @Selector@ for @setInputHeight:@
setInputHeightSelector :: Selector '[CULong] ()
setInputHeightSelector = mkSelector "setInputHeight:"

-- | @Selector@ for @outputWidth@
outputWidthSelector :: Selector '[] CULong
outputWidthSelector = mkSelector "outputWidth"

-- | @Selector@ for @setOutputWidth:@
setOutputWidthSelector :: Selector '[CULong] ()
setOutputWidthSelector = mkSelector "setOutputWidth:"

-- | @Selector@ for @outputHeight@
outputHeightSelector :: Selector '[] CULong
outputHeightSelector = mkSelector "outputHeight"

-- | @Selector@ for @setOutputHeight:@
setOutputHeightSelector :: Selector '[CULong] ()
setOutputHeightSelector = mkSelector "setOutputHeight:"

-- | @Selector@ for @autoExposureEnabled@
autoExposureEnabledSelector :: Selector '[] Bool
autoExposureEnabledSelector = mkSelector "autoExposureEnabled"

-- | @Selector@ for @setAutoExposureEnabled:@
setAutoExposureEnabledSelector :: Selector '[Bool] ()
setAutoExposureEnabledSelector = mkSelector "setAutoExposureEnabled:"

-- | @Selector@ for @inputContentPropertiesEnabled@
inputContentPropertiesEnabledSelector :: Selector '[] Bool
inputContentPropertiesEnabledSelector = mkSelector "inputContentPropertiesEnabled"

-- | @Selector@ for @setInputContentPropertiesEnabled:@
setInputContentPropertiesEnabledSelector :: Selector '[Bool] ()
setInputContentPropertiesEnabledSelector = mkSelector "setInputContentPropertiesEnabled:"

-- | @Selector@ for @inputContentMinScale@
inputContentMinScaleSelector :: Selector '[] CFloat
inputContentMinScaleSelector = mkSelector "inputContentMinScale"

-- | @Selector@ for @setInputContentMinScale:@
setInputContentMinScaleSelector :: Selector '[CFloat] ()
setInputContentMinScaleSelector = mkSelector "setInputContentMinScale:"

-- | @Selector@ for @inputContentMaxScale@
inputContentMaxScaleSelector :: Selector '[] CFloat
inputContentMaxScaleSelector = mkSelector "inputContentMaxScale"

-- | @Selector@ for @setInputContentMaxScale:@
setInputContentMaxScaleSelector :: Selector '[CFloat] ()
setInputContentMaxScaleSelector = mkSelector "setInputContentMaxScale:"

