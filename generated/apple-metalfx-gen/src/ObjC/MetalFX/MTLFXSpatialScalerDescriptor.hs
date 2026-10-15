{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTLFXSpatialScalerDescriptor@.
module ObjC.MetalFX.MTLFXSpatialScalerDescriptor
  ( MTLFXSpatialScalerDescriptor
  , IsMTLFXSpatialScalerDescriptor(..)
  , newSpatialScalerWithDevice
  , supportsDevice
  , colorTextureFormat
  , setColorTextureFormat
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
  , colorProcessingMode
  , setColorProcessingMode
  , colorProcessingModeSelector
  , colorTextureFormatSelector
  , inputHeightSelector
  , inputWidthSelector
  , newSpatialScalerWithDeviceSelector
  , outputHeightSelector
  , outputTextureFormatSelector
  , outputWidthSelector
  , setColorProcessingModeSelector
  , setColorTextureFormatSelector
  , setInputHeightSelector
  , setInputWidthSelector
  , setOutputHeightSelector
  , setOutputTextureFormatSelector
  , setOutputWidthSelector
  , supportsDeviceSelector

  -- * Enum types
  , MTLFXSpatialScalerColorProcessingMode(MTLFXSpatialScalerColorProcessingMode)
  , pattern MTLFXSpatialScalerColorProcessingModePerceptual
  , pattern MTLFXSpatialScalerColorProcessingModeLinear
  , pattern MTLFXSpatialScalerColorProcessingModeHDR

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetalFX.Internal.Classes
import ObjC.MetalFX.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- newSpatialScalerWithDevice:@
newSpatialScalerWithDevice :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> RawId -> IO RawId
newSpatialScalerWithDevice mtlfxSpatialScalerDescriptor device =
  sendOwnedMessage mtlfxSpatialScalerDescriptor newSpatialScalerWithDeviceSelector device

-- | @+ supportsDevice:@
supportsDevice :: RawId -> IO Bool
supportsDevice device =
  do
    cls' <- getRequiredClass "MTLFXSpatialScalerDescriptor"
    sendClassMessage cls' supportsDeviceSelector device

-- | @- colorTextureFormat@
colorTextureFormat :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> IO CInt
colorTextureFormat mtlfxSpatialScalerDescriptor =
  sendMessage mtlfxSpatialScalerDescriptor colorTextureFormatSelector

-- | @- setColorTextureFormat:@
setColorTextureFormat :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> CInt -> IO ()
setColorTextureFormat mtlfxSpatialScalerDescriptor value =
  sendMessage mtlfxSpatialScalerDescriptor setColorTextureFormatSelector value

-- | @- outputTextureFormat@
outputTextureFormat :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> IO CInt
outputTextureFormat mtlfxSpatialScalerDescriptor =
  sendMessage mtlfxSpatialScalerDescriptor outputTextureFormatSelector

-- | @- setOutputTextureFormat:@
setOutputTextureFormat :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> CInt -> IO ()
setOutputTextureFormat mtlfxSpatialScalerDescriptor value =
  sendMessage mtlfxSpatialScalerDescriptor setOutputTextureFormatSelector value

-- | @- inputWidth@
inputWidth :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> IO CULong
inputWidth mtlfxSpatialScalerDescriptor =
  sendMessage mtlfxSpatialScalerDescriptor inputWidthSelector

-- | @- setInputWidth:@
setInputWidth :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> CULong -> IO ()
setInputWidth mtlfxSpatialScalerDescriptor value =
  sendMessage mtlfxSpatialScalerDescriptor setInputWidthSelector value

-- | @- inputHeight@
inputHeight :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> IO CULong
inputHeight mtlfxSpatialScalerDescriptor =
  sendMessage mtlfxSpatialScalerDescriptor inputHeightSelector

-- | @- setInputHeight:@
setInputHeight :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> CULong -> IO ()
setInputHeight mtlfxSpatialScalerDescriptor value =
  sendMessage mtlfxSpatialScalerDescriptor setInputHeightSelector value

-- | @- outputWidth@
outputWidth :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> IO CULong
outputWidth mtlfxSpatialScalerDescriptor =
  sendMessage mtlfxSpatialScalerDescriptor outputWidthSelector

-- | @- setOutputWidth:@
setOutputWidth :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> CULong -> IO ()
setOutputWidth mtlfxSpatialScalerDescriptor value =
  sendMessage mtlfxSpatialScalerDescriptor setOutputWidthSelector value

-- | @- outputHeight@
outputHeight :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> IO CULong
outputHeight mtlfxSpatialScalerDescriptor =
  sendMessage mtlfxSpatialScalerDescriptor outputHeightSelector

-- | @- setOutputHeight:@
setOutputHeight :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> CULong -> IO ()
setOutputHeight mtlfxSpatialScalerDescriptor value =
  sendMessage mtlfxSpatialScalerDescriptor setOutputHeightSelector value

-- | @- colorProcessingMode@
colorProcessingMode :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> IO MTLFXSpatialScalerColorProcessingMode
colorProcessingMode mtlfxSpatialScalerDescriptor =
  sendMessage mtlfxSpatialScalerDescriptor colorProcessingModeSelector

-- | @- setColorProcessingMode:@
setColorProcessingMode :: IsMTLFXSpatialScalerDescriptor mtlfxSpatialScalerDescriptor => mtlfxSpatialScalerDescriptor -> MTLFXSpatialScalerColorProcessingMode -> IO ()
setColorProcessingMode mtlfxSpatialScalerDescriptor value =
  sendMessage mtlfxSpatialScalerDescriptor setColorProcessingModeSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @newSpatialScalerWithDevice:@
newSpatialScalerWithDeviceSelector :: Selector '[RawId] RawId
newSpatialScalerWithDeviceSelector = mkSelector "newSpatialScalerWithDevice:"

-- | @Selector@ for @supportsDevice:@
supportsDeviceSelector :: Selector '[RawId] Bool
supportsDeviceSelector = mkSelector "supportsDevice:"

-- | @Selector@ for @colorTextureFormat@
colorTextureFormatSelector :: Selector '[] CInt
colorTextureFormatSelector = mkSelector "colorTextureFormat"

-- | @Selector@ for @setColorTextureFormat:@
setColorTextureFormatSelector :: Selector '[CInt] ()
setColorTextureFormatSelector = mkSelector "setColorTextureFormat:"

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

-- | @Selector@ for @colorProcessingMode@
colorProcessingModeSelector :: Selector '[] MTLFXSpatialScalerColorProcessingMode
colorProcessingModeSelector = mkSelector "colorProcessingMode"

-- | @Selector@ for @setColorProcessingMode:@
setColorProcessingModeSelector :: Selector '[MTLFXSpatialScalerColorProcessingMode] ()
setColorProcessingModeSelector = mkSelector "setColorProcessingMode:"

