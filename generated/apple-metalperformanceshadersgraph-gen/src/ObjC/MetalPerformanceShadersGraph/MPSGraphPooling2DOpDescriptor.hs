{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphPooling2DOpDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphPooling2DOpDescriptor
  ( MPSGraphPooling2DOpDescriptor
  , IsMPSGraphPooling2DOpDescriptor(..)
  , descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout
  , descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_paddingStyle_dataLayout
  , setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottom
  , kernelWidth
  , setKernelWidth
  , kernelHeight
  , setKernelHeight
  , strideInX
  , setStrideInX
  , strideInY
  , setStrideInY
  , dilationRateInX
  , setDilationRateInX
  , dilationRateInY
  , setDilationRateInY
  , paddingLeft
  , setPaddingLeft
  , paddingRight
  , setPaddingRight
  , paddingTop
  , setPaddingTop
  , paddingBottom
  , setPaddingBottom
  , paddingStyle
  , setPaddingStyle
  , dataLayout
  , setDataLayout
  , returnIndicesMode
  , setReturnIndicesMode
  , returnIndicesDataType
  , setReturnIndicesDataType
  , ceilMode
  , setCeilMode
  , includeZeroPadToAverage
  , setIncludeZeroPadToAverage
  , ceilModeSelector
  , dataLayoutSelector
  , descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayoutSelector
  , descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_paddingStyle_dataLayoutSelector
  , dilationRateInXSelector
  , dilationRateInYSelector
  , includeZeroPadToAverageSelector
  , kernelHeightSelector
  , kernelWidthSelector
  , paddingBottomSelector
  , paddingLeftSelector
  , paddingRightSelector
  , paddingStyleSelector
  , paddingTopSelector
  , returnIndicesDataTypeSelector
  , returnIndicesModeSelector
  , setCeilModeSelector
  , setDataLayoutSelector
  , setDilationRateInXSelector
  , setDilationRateInYSelector
  , setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector
  , setIncludeZeroPadToAverageSelector
  , setKernelHeightSelector
  , setKernelWidthSelector
  , setPaddingBottomSelector
  , setPaddingLeftSelector
  , setPaddingRightSelector
  , setPaddingStyleSelector
  , setPaddingTopSelector
  , setReturnIndicesDataTypeSelector
  , setReturnIndicesModeSelector
  , setStrideInXSelector
  , setStrideInYSelector
  , strideInXSelector
  , strideInYSelector

  -- * Enum types
  , MPSDataType(MPSDataType)
  , pattern MPSDataTypeInvalid
  , pattern MPSDataTypeFloatBit
  , pattern MPSDataTypeFloat32
  , pattern MPSDataTypeFloat16
  , pattern MPSDataTypeComplexBit
  , pattern MPSDataTypeComplexFloat32
  , pattern MPSDataTypeComplexFloat16
  , pattern MPSDataTypeSignedBit
  , pattern MPSDataTypeIntBit
  , pattern MPSDataTypeInt8
  , pattern MPSDataTypeInt16
  , pattern MPSDataTypeInt32
  , pattern MPSDataTypeInt64
  , pattern MPSDataTypeUInt8
  , pattern MPSDataTypeUInt16
  , pattern MPSDataTypeUInt32
  , pattern MPSDataTypeUInt64
  , pattern MPSDataTypeAlternateEncodingBit
  , pattern MPSDataTypeBool
  , pattern MPSDataTypeNormalizedBit
  , pattern MPSDataTypeUnorm1
  , pattern MPSDataTypeUnorm8
  , MPSGraphPaddingStyle(MPSGraphPaddingStyle)
  , pattern MPSGraphPaddingStyleExplicit
  , pattern MPSGraphPaddingStyleTF_VALID
  , pattern MPSGraphPaddingStyleTF_SAME
  , pattern MPSGraphPaddingStyleExplicitOffset
  , pattern MPSGraphPaddingStyleONNX_SAME_LOWER
  , MPSGraphPoolingReturnIndicesMode(MPSGraphPoolingReturnIndicesMode)
  , pattern MPSGraphPoolingReturnIndicesNone
  , pattern MPSGraphPoolingReturnIndicesGlobalFlatten1D
  , pattern MPSGraphPoolingReturnIndicesGlobalFlatten2D
  , pattern MPSGraphPoolingReturnIndicesGlobalFlatten3D
  , pattern MPSGraphPoolingReturnIndicesGlobalFlatten4D
  , pattern MPSGraphPoolingReturnIndicesLocalFlatten1D
  , pattern MPSGraphPoolingReturnIndicesLocalFlatten2D
  , pattern MPSGraphPoolingReturnIndicesLocalFlatten3D
  , pattern MPSGraphPoolingReturnIndicesLocalFlatten4D
  , MPSGraphTensorNamedDataLayout(MPSGraphTensorNamedDataLayout)
  , pattern MPSGraphTensorNamedDataLayoutNCHW
  , pattern MPSGraphTensorNamedDataLayoutNHWC
  , pattern MPSGraphTensorNamedDataLayoutOIHW
  , pattern MPSGraphTensorNamedDataLayoutHWIO
  , pattern MPSGraphTensorNamedDataLayoutCHW
  , pattern MPSGraphTensorNamedDataLayoutHWC
  , pattern MPSGraphTensorNamedDataLayoutHW

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetalPerformanceShadersGraph.Internal.Classes
import ObjC.MetalPerformanceShadersGraph.Internal.Enums
import ObjC.MetalPerformanceShaders.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @+ descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:dilationRateInX:dilationRateInY:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:@
descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout :: CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> MPSGraphPaddingStyle -> MPSGraphTensorNamedDataLayout -> IO (Id MPSGraphPooling2DOpDescriptor)
descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout kernelWidth kernelHeight strideInX strideInY dilationRateInX dilationRateInY paddingLeft paddingRight paddingTop paddingBottom paddingStyle dataLayout =
  do
    cls' <- getRequiredClass "MPSGraphPooling2DOpDescriptor"
    sendClassMessage cls' descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayoutSelector kernelWidth kernelHeight strideInX strideInY dilationRateInX dilationRateInY paddingLeft paddingRight paddingTop paddingBottom paddingStyle dataLayout

-- | @+ descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:paddingStyle:dataLayout:@
descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_paddingStyle_dataLayout :: CULong -> CULong -> CULong -> CULong -> MPSGraphPaddingStyle -> MPSGraphTensorNamedDataLayout -> IO (Id MPSGraphPooling2DOpDescriptor)
descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_paddingStyle_dataLayout kernelWidth kernelHeight strideInX strideInY paddingStyle dataLayout =
  do
    cls' <- getRequiredClass "MPSGraphPooling2DOpDescriptor"
    sendClassMessage cls' descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_paddingStyle_dataLayoutSelector kernelWidth kernelHeight strideInX strideInY paddingStyle dataLayout

-- | @- setExplicitPaddingWithPaddingLeft:paddingRight:paddingTop:paddingBottom:@
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottom :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> CULong -> CULong -> CULong -> IO ()
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottom mpsGraphPooling2DOpDescriptor paddingLeft paddingRight paddingTop paddingBottom =
  sendMessage mpsGraphPooling2DOpDescriptor setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector paddingLeft paddingRight paddingTop paddingBottom

-- | groups
--
-- groups of the operation
--
-- ObjC selector: @- kernelWidth@
kernelWidth :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
kernelWidth mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor kernelWidthSelector

-- | groups
--
-- groups of the operation
--
-- ObjC selector: @- setKernelWidth:@
setKernelWidth :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setKernelWidth mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setKernelWidthSelector value

-- | @- kernelHeight@
kernelHeight :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
kernelHeight mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor kernelHeightSelector

-- | @- setKernelHeight:@
setKernelHeight :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setKernelHeight mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setKernelHeightSelector value

-- | @- strideInX@
strideInX :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
strideInX mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor strideInXSelector

-- | @- setStrideInX:@
setStrideInX :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setStrideInX mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setStrideInXSelector value

-- | @- strideInY@
strideInY :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
strideInY mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor strideInYSelector

-- | @- setStrideInY:@
setStrideInY :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setStrideInY mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setStrideInYSelector value

-- | @- dilationRateInX@
dilationRateInX :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
dilationRateInX mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor dilationRateInXSelector

-- | @- setDilationRateInX:@
setDilationRateInX :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setDilationRateInX mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setDilationRateInXSelector value

-- | @- dilationRateInY@
dilationRateInY :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
dilationRateInY mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor dilationRateInYSelector

-- | @- setDilationRateInY:@
setDilationRateInY :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setDilationRateInY mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setDilationRateInYSelector value

-- | @- paddingLeft@
paddingLeft :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
paddingLeft mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor paddingLeftSelector

-- | @- setPaddingLeft:@
setPaddingLeft :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setPaddingLeft mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setPaddingLeftSelector value

-- | @- paddingRight@
paddingRight :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
paddingRight mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor paddingRightSelector

-- | @- setPaddingRight:@
setPaddingRight :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setPaddingRight mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setPaddingRightSelector value

-- | @- paddingTop@
paddingTop :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
paddingTop mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor paddingTopSelector

-- | @- setPaddingTop:@
setPaddingTop :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setPaddingTop mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setPaddingTopSelector value

-- | @- paddingBottom@
paddingBottom :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO CULong
paddingBottom mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor paddingBottomSelector

-- | @- setPaddingBottom:@
setPaddingBottom :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> CULong -> IO ()
setPaddingBottom mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setPaddingBottomSelector value

-- | @- paddingStyle@
paddingStyle :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO MPSGraphPaddingStyle
paddingStyle mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor paddingStyleSelector

-- | @- setPaddingStyle:@
setPaddingStyle :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> MPSGraphPaddingStyle -> IO ()
setPaddingStyle mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setPaddingStyleSelector value

-- | @- dataLayout@
dataLayout :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO MPSGraphTensorNamedDataLayout
dataLayout mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor dataLayoutSelector

-- | @- setDataLayout:@
setDataLayout :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> MPSGraphTensorNamedDataLayout -> IO ()
setDataLayout mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setDataLayoutSelector value

-- | @- returnIndicesMode@
returnIndicesMode :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO MPSGraphPoolingReturnIndicesMode
returnIndicesMode mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor returnIndicesModeSelector

-- | @- setReturnIndicesMode:@
setReturnIndicesMode :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> MPSGraphPoolingReturnIndicesMode -> IO ()
setReturnIndicesMode mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setReturnIndicesModeSelector value

-- | @- returnIndicesDataType@
returnIndicesDataType :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO MPSDataType
returnIndicesDataType mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor returnIndicesDataTypeSelector

-- | @- setReturnIndicesDataType:@
setReturnIndicesDataType :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> MPSDataType -> IO ()
setReturnIndicesDataType mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setReturnIndicesDataTypeSelector value

-- | ceilMode
--
-- If set then the output size is computed by rounding up instead of down when              dividing by stride.              Default value:
--
-- NO
--
-- ObjC selector: @- ceilMode@
ceilMode :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO Bool
ceilMode mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor ceilModeSelector

-- | ceilMode
--
-- If set then the output size is computed by rounding up instead of down when              dividing by stride.              Default value:
--
-- NO
--
-- ObjC selector: @- setCeilMode:@
setCeilMode :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> Bool -> IO ()
setCeilMode mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setCeilModeSelector value

-- | includeZeroPadToAverage
--
-- For average pooling use a mode where samples outside the input tensor count as              zeroes in the average computation. Otherwise the result is sum over samples divided by              number of samples that didn't come from padding.              Default value:
--
-- NO
--
-- ObjC selector: @- includeZeroPadToAverage@
includeZeroPadToAverage :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> IO Bool
includeZeroPadToAverage mpsGraphPooling2DOpDescriptor =
  sendMessage mpsGraphPooling2DOpDescriptor includeZeroPadToAverageSelector

-- | includeZeroPadToAverage
--
-- For average pooling use a mode where samples outside the input tensor count as              zeroes in the average computation. Otherwise the result is sum over samples divided by              number of samples that didn't come from padding.              Default value:
--
-- NO
--
-- ObjC selector: @- setIncludeZeroPadToAverage:@
setIncludeZeroPadToAverage :: IsMPSGraphPooling2DOpDescriptor mpsGraphPooling2DOpDescriptor => mpsGraphPooling2DOpDescriptor -> Bool -> IO ()
setIncludeZeroPadToAverage mpsGraphPooling2DOpDescriptor value =
  sendMessage mpsGraphPooling2DOpDescriptor setIncludeZeroPadToAverageSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:dilationRateInX:dilationRateInY:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:@
descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayoutSelector :: Selector '[CULong, CULong, CULong, CULong, CULong, CULong, CULong, CULong, CULong, CULong, MPSGraphPaddingStyle, MPSGraphTensorNamedDataLayout] (Id MPSGraphPooling2DOpDescriptor)
descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayoutSelector = mkSelector "descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:dilationRateInX:dilationRateInY:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:"

-- | @Selector@ for @descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:paddingStyle:dataLayout:@
descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_paddingStyle_dataLayoutSelector :: Selector '[CULong, CULong, CULong, CULong, MPSGraphPaddingStyle, MPSGraphTensorNamedDataLayout] (Id MPSGraphPooling2DOpDescriptor)
descriptorWithKernelWidth_kernelHeight_strideInX_strideInY_paddingStyle_dataLayoutSelector = mkSelector "descriptorWithKernelWidth:kernelHeight:strideInX:strideInY:paddingStyle:dataLayout:"

-- | @Selector@ for @setExplicitPaddingWithPaddingLeft:paddingRight:paddingTop:paddingBottom:@
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector :: Selector '[CULong, CULong, CULong, CULong] ()
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector = mkSelector "setExplicitPaddingWithPaddingLeft:paddingRight:paddingTop:paddingBottom:"

-- | @Selector@ for @kernelWidth@
kernelWidthSelector :: Selector '[] CULong
kernelWidthSelector = mkSelector "kernelWidth"

-- | @Selector@ for @setKernelWidth:@
setKernelWidthSelector :: Selector '[CULong] ()
setKernelWidthSelector = mkSelector "setKernelWidth:"

-- | @Selector@ for @kernelHeight@
kernelHeightSelector :: Selector '[] CULong
kernelHeightSelector = mkSelector "kernelHeight"

-- | @Selector@ for @setKernelHeight:@
setKernelHeightSelector :: Selector '[CULong] ()
setKernelHeightSelector = mkSelector "setKernelHeight:"

-- | @Selector@ for @strideInX@
strideInXSelector :: Selector '[] CULong
strideInXSelector = mkSelector "strideInX"

-- | @Selector@ for @setStrideInX:@
setStrideInXSelector :: Selector '[CULong] ()
setStrideInXSelector = mkSelector "setStrideInX:"

-- | @Selector@ for @strideInY@
strideInYSelector :: Selector '[] CULong
strideInYSelector = mkSelector "strideInY"

-- | @Selector@ for @setStrideInY:@
setStrideInYSelector :: Selector '[CULong] ()
setStrideInYSelector = mkSelector "setStrideInY:"

-- | @Selector@ for @dilationRateInX@
dilationRateInXSelector :: Selector '[] CULong
dilationRateInXSelector = mkSelector "dilationRateInX"

-- | @Selector@ for @setDilationRateInX:@
setDilationRateInXSelector :: Selector '[CULong] ()
setDilationRateInXSelector = mkSelector "setDilationRateInX:"

-- | @Selector@ for @dilationRateInY@
dilationRateInYSelector :: Selector '[] CULong
dilationRateInYSelector = mkSelector "dilationRateInY"

-- | @Selector@ for @setDilationRateInY:@
setDilationRateInYSelector :: Selector '[CULong] ()
setDilationRateInYSelector = mkSelector "setDilationRateInY:"

-- | @Selector@ for @paddingLeft@
paddingLeftSelector :: Selector '[] CULong
paddingLeftSelector = mkSelector "paddingLeft"

-- | @Selector@ for @setPaddingLeft:@
setPaddingLeftSelector :: Selector '[CULong] ()
setPaddingLeftSelector = mkSelector "setPaddingLeft:"

-- | @Selector@ for @paddingRight@
paddingRightSelector :: Selector '[] CULong
paddingRightSelector = mkSelector "paddingRight"

-- | @Selector@ for @setPaddingRight:@
setPaddingRightSelector :: Selector '[CULong] ()
setPaddingRightSelector = mkSelector "setPaddingRight:"

-- | @Selector@ for @paddingTop@
paddingTopSelector :: Selector '[] CULong
paddingTopSelector = mkSelector "paddingTop"

-- | @Selector@ for @setPaddingTop:@
setPaddingTopSelector :: Selector '[CULong] ()
setPaddingTopSelector = mkSelector "setPaddingTop:"

-- | @Selector@ for @paddingBottom@
paddingBottomSelector :: Selector '[] CULong
paddingBottomSelector = mkSelector "paddingBottom"

-- | @Selector@ for @setPaddingBottom:@
setPaddingBottomSelector :: Selector '[CULong] ()
setPaddingBottomSelector = mkSelector "setPaddingBottom:"

-- | @Selector@ for @paddingStyle@
paddingStyleSelector :: Selector '[] MPSGraphPaddingStyle
paddingStyleSelector = mkSelector "paddingStyle"

-- | @Selector@ for @setPaddingStyle:@
setPaddingStyleSelector :: Selector '[MPSGraphPaddingStyle] ()
setPaddingStyleSelector = mkSelector "setPaddingStyle:"

-- | @Selector@ for @dataLayout@
dataLayoutSelector :: Selector '[] MPSGraphTensorNamedDataLayout
dataLayoutSelector = mkSelector "dataLayout"

-- | @Selector@ for @setDataLayout:@
setDataLayoutSelector :: Selector '[MPSGraphTensorNamedDataLayout] ()
setDataLayoutSelector = mkSelector "setDataLayout:"

-- | @Selector@ for @returnIndicesMode@
returnIndicesModeSelector :: Selector '[] MPSGraphPoolingReturnIndicesMode
returnIndicesModeSelector = mkSelector "returnIndicesMode"

-- | @Selector@ for @setReturnIndicesMode:@
setReturnIndicesModeSelector :: Selector '[MPSGraphPoolingReturnIndicesMode] ()
setReturnIndicesModeSelector = mkSelector "setReturnIndicesMode:"

-- | @Selector@ for @returnIndicesDataType@
returnIndicesDataTypeSelector :: Selector '[] MPSDataType
returnIndicesDataTypeSelector = mkSelector "returnIndicesDataType"

-- | @Selector@ for @setReturnIndicesDataType:@
setReturnIndicesDataTypeSelector :: Selector '[MPSDataType] ()
setReturnIndicesDataTypeSelector = mkSelector "setReturnIndicesDataType:"

-- | @Selector@ for @ceilMode@
ceilModeSelector :: Selector '[] Bool
ceilModeSelector = mkSelector "ceilMode"

-- | @Selector@ for @setCeilMode:@
setCeilModeSelector :: Selector '[Bool] ()
setCeilModeSelector = mkSelector "setCeilMode:"

-- | @Selector@ for @includeZeroPadToAverage@
includeZeroPadToAverageSelector :: Selector '[] Bool
includeZeroPadToAverageSelector = mkSelector "includeZeroPadToAverage"

-- | @Selector@ for @setIncludeZeroPadToAverage:@
setIncludeZeroPadToAverageSelector :: Selector '[Bool] ()
setIncludeZeroPadToAverageSelector = mkSelector "setIncludeZeroPadToAverage:"

