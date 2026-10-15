{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MPSGraphPooling4DOpDescriptor
--
-- Defines a 4d pooling operation
--
-- Generated bindings for @MPSGraphPooling4DOpDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphPooling4DOpDescriptor
  ( MPSGraphPooling4DOpDescriptor
  , IsMPSGraphPooling4DOpDescriptor(..)
  , descriptorWithKernelSizes_strides_dilationRates_paddingValues_paddingStyle
  , descriptorWithKernelSizes_paddingStyle
  , kernelSizes
  , setKernelSizes
  , strides
  , setStrides
  , dilationRates
  , setDilationRates
  , paddingValues
  , setPaddingValues
  , paddingStyle
  , setPaddingStyle
  , ceilMode
  , setCeilMode
  , includeZeroPadToAverage
  , setIncludeZeroPadToAverage
  , returnIndicesMode
  , setReturnIndicesMode
  , returnIndicesDataType
  , setReturnIndicesDataType
  , ceilModeSelector
  , descriptorWithKernelSizes_paddingStyleSelector
  , descriptorWithKernelSizes_strides_dilationRates_paddingValues_paddingStyleSelector
  , dilationRatesSelector
  , includeZeroPadToAverageSelector
  , kernelSizesSelector
  , paddingStyleSelector
  , paddingValuesSelector
  , returnIndicesDataTypeSelector
  , returnIndicesModeSelector
  , setCeilModeSelector
  , setDilationRatesSelector
  , setIncludeZeroPadToAverageSelector
  , setKernelSizesSelector
  , setPaddingStyleSelector
  , setPaddingValuesSelector
  , setReturnIndicesDataTypeSelector
  , setReturnIndicesModeSelector
  , setStridesSelector
  , stridesSelector

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

-- | Creates a 4d pooling descriptor with given values.
--
-- @kernelSizes@ — See corresponding property above.
--
-- @strides@ — See corresponding property above.
--
-- @dilationRates@ — See corresponding property above.
--
-- @paddingValues@ — See corresponding property above.
--
-- @paddingStyle@ — See corresponding property above.
--
-- Returns: The descriptor on autoreleasepool.
--
-- ObjC selector: @+ descriptorWithKernelSizes:strides:dilationRates:paddingValues:paddingStyle:@
descriptorWithKernelSizes_strides_dilationRates_paddingValues_paddingStyle :: (IsNSArray kernelSizes, IsNSArray strides, IsNSArray dilationRates, IsNSArray paddingValues) => kernelSizes -> strides -> dilationRates -> paddingValues -> MPSGraphPaddingStyle -> IO (Id MPSGraphPooling4DOpDescriptor)
descriptorWithKernelSizes_strides_dilationRates_paddingValues_paddingStyle kernelSizes strides dilationRates paddingValues paddingStyle =
  do
    cls' <- getRequiredClass "MPSGraphPooling4DOpDescriptor"
    sendClassMessage cls' descriptorWithKernelSizes_strides_dilationRates_paddingValues_paddingStyleSelector (toNSArray kernelSizes) (toNSArray strides) (toNSArray dilationRates) (toNSArray paddingValues) paddingStyle

-- | Creates a 4d pooling descriptor with default values.
--
-- @kernelSizes@ — See corresponding property above.
--
-- @paddingStyle@ — See corresponding property above.
--
-- Returns: The descriptor on autoreleasepool.
--
-- ObjC selector: @+ descriptorWithKernelSizes:paddingStyle:@
descriptorWithKernelSizes_paddingStyle :: IsNSArray kernelSizes => kernelSizes -> MPSGraphPaddingStyle -> IO (Id MPSGraphPooling4DOpDescriptor)
descriptorWithKernelSizes_paddingStyle kernelSizes paddingStyle =
  do
    cls' <- getRequiredClass "MPSGraphPooling4DOpDescriptor"
    sendClassMessage cls' descriptorWithKernelSizes_paddingStyleSelector (toNSArray kernelSizes) paddingStyle

-- | kernelSizes
--
-- Defines the pooling window size.              Must be four numbers, one for each spatial dimension, fastest running index last.
--
-- ObjC selector: @- kernelSizes@
kernelSizes :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO (Id NSArray)
kernelSizes mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor kernelSizesSelector

-- | kernelSizes
--
-- Defines the pooling window size.              Must be four numbers, one for each spatial dimension, fastest running index last.
--
-- ObjC selector: @- setKernelSizes:@
setKernelSizes :: (IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor, IsNSArray value) => mpsGraphPooling4DOpDescriptor -> value -> IO ()
setKernelSizes mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setKernelSizesSelector (toNSArray value)

-- | strides
--
-- Must be four numbers, one for each spatial dimension, fastest running index last.              Default value:
--
-- @[ @1, @1, @1, @1 ]
--
-- ObjC selector: @- strides@
strides :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO (Id NSArray)
strides mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor stridesSelector

-- | strides
--
-- Must be four numbers, one for each spatial dimension, fastest running index last.              Default value:
--
-- @[ @1, @1, @1, @1 ]
--
-- ObjC selector: @- setStrides:@
setStrides :: (IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor, IsNSArray value) => mpsGraphPooling4DOpDescriptor -> value -> IO ()
setStrides mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setStridesSelector (toNSArray value)

-- | dilationRates
--
-- Must be four numbers, one for each spatial dimension, fastest running index last.              Default value:
--
-- @[ @1, @1, @1, @1 ]
--
-- ObjC selector: @- dilationRates@
dilationRates :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO (Id NSArray)
dilationRates mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor dilationRatesSelector

-- | dilationRates
--
-- Must be four numbers, one for each spatial dimension, fastest running index last.              Default value:
--
-- @[ @1, @1, @1, @1 ]
--
-- ObjC selector: @- setDilationRates:@
setDilationRates :: (IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor, IsNSArray value) => mpsGraphPooling4DOpDescriptor -> value -> IO ()
setDilationRates mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setDilationRatesSelector (toNSArray value)

-- | paddingValues
--
-- Must be eight numbers, two for each spatial dimension. @paddingValues[0]@ defines the explicit padding              amount before the first spatial dimension (slowest running index of spatial dimensions),              @paddingValues[1]@ defines the padding amount after the first spatial dimension etc.              Used only when @paddingStyle = MPSGraphPaddingStyleExplicit@.              Default value:
--
-- @[ @0, @0, @0, @0, @0, @0, @0, @0 ]
--
-- ObjC selector: @- paddingValues@
paddingValues :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO (Id NSArray)
paddingValues mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor paddingValuesSelector

-- | paddingValues
--
-- Must be eight numbers, two for each spatial dimension. @paddingValues[0]@ defines the explicit padding              amount before the first spatial dimension (slowest running index of spatial dimensions),              @paddingValues[1]@ defines the padding amount after the first spatial dimension etc.              Used only when @paddingStyle = MPSGraphPaddingStyleExplicit@.              Default value:
--
-- @[ @0, @0, @0, @0, @0, @0, @0, @0 ]
--
-- ObjC selector: @- setPaddingValues:@
setPaddingValues :: (IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor, IsNSArray value) => mpsGraphPooling4DOpDescriptor -> value -> IO ()
setPaddingValues mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setPaddingValuesSelector (toNSArray value)

-- | paddingStyle
--
-- Defines what kind of padding to apply to operation.              Default value:
--
-- MPSGraphPaddingStyleExplicit
--
-- ObjC selector: @- paddingStyle@
paddingStyle :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO MPSGraphPaddingStyle
paddingStyle mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor paddingStyleSelector

-- | paddingStyle
--
-- Defines what kind of padding to apply to operation.              Default value:
--
-- MPSGraphPaddingStyleExplicit
--
-- ObjC selector: @- setPaddingStyle:@
setPaddingStyle :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> MPSGraphPaddingStyle -> IO ()
setPaddingStyle mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setPaddingStyleSelector value

-- | ceilMode
--
-- If set then the output size is computed by rounding up instead of down when              dividing by stride.              Default value:
--
-- NO
--
-- ObjC selector: @- ceilMode@
ceilMode :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO Bool
ceilMode mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor ceilModeSelector

-- | ceilMode
--
-- If set then the output size is computed by rounding up instead of down when              dividing by stride.              Default value:
--
-- NO
--
-- ObjC selector: @- setCeilMode:@
setCeilMode :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> Bool -> IO ()
setCeilMode mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setCeilModeSelector value

-- | includeZeroPadToAverage
--
-- For average pooling use a mode where samples outside the input tensor count as              zeroes in the average computation. Otherwise the result is sum over samples divided by              number of samples that didn't come from padding.              Default value:
--
-- NO
--
-- ObjC selector: @- includeZeroPadToAverage@
includeZeroPadToAverage :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO Bool
includeZeroPadToAverage mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor includeZeroPadToAverageSelector

-- | includeZeroPadToAverage
--
-- For average pooling use a mode where samples outside the input tensor count as              zeroes in the average computation. Otherwise the result is sum over samples divided by              number of samples that didn't come from padding.              Default value:
--
-- NO
--
-- ObjC selector: @- setIncludeZeroPadToAverage:@
setIncludeZeroPadToAverage :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> Bool -> IO ()
setIncludeZeroPadToAverage mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setIncludeZeroPadToAverageSelector value

-- | @- returnIndicesMode@
returnIndicesMode :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO MPSGraphPoolingReturnIndicesMode
returnIndicesMode mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor returnIndicesModeSelector

-- | @- setReturnIndicesMode:@
setReturnIndicesMode :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> MPSGraphPoolingReturnIndicesMode -> IO ()
setReturnIndicesMode mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setReturnIndicesModeSelector value

-- | @- returnIndicesDataType@
returnIndicesDataType :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> IO MPSDataType
returnIndicesDataType mpsGraphPooling4DOpDescriptor =
  sendMessage mpsGraphPooling4DOpDescriptor returnIndicesDataTypeSelector

-- | @- setReturnIndicesDataType:@
setReturnIndicesDataType :: IsMPSGraphPooling4DOpDescriptor mpsGraphPooling4DOpDescriptor => mpsGraphPooling4DOpDescriptor -> MPSDataType -> IO ()
setReturnIndicesDataType mpsGraphPooling4DOpDescriptor value =
  sendMessage mpsGraphPooling4DOpDescriptor setReturnIndicesDataTypeSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @descriptorWithKernelSizes:strides:dilationRates:paddingValues:paddingStyle:@
descriptorWithKernelSizes_strides_dilationRates_paddingValues_paddingStyleSelector :: Selector '[Id NSArray, Id NSArray, Id NSArray, Id NSArray, MPSGraphPaddingStyle] (Id MPSGraphPooling4DOpDescriptor)
descriptorWithKernelSizes_strides_dilationRates_paddingValues_paddingStyleSelector = mkSelector "descriptorWithKernelSizes:strides:dilationRates:paddingValues:paddingStyle:"

-- | @Selector@ for @descriptorWithKernelSizes:paddingStyle:@
descriptorWithKernelSizes_paddingStyleSelector :: Selector '[Id NSArray, MPSGraphPaddingStyle] (Id MPSGraphPooling4DOpDescriptor)
descriptorWithKernelSizes_paddingStyleSelector = mkSelector "descriptorWithKernelSizes:paddingStyle:"

-- | @Selector@ for @kernelSizes@
kernelSizesSelector :: Selector '[] (Id NSArray)
kernelSizesSelector = mkSelector "kernelSizes"

-- | @Selector@ for @setKernelSizes:@
setKernelSizesSelector :: Selector '[Id NSArray] ()
setKernelSizesSelector = mkSelector "setKernelSizes:"

-- | @Selector@ for @strides@
stridesSelector :: Selector '[] (Id NSArray)
stridesSelector = mkSelector "strides"

-- | @Selector@ for @setStrides:@
setStridesSelector :: Selector '[Id NSArray] ()
setStridesSelector = mkSelector "setStrides:"

-- | @Selector@ for @dilationRates@
dilationRatesSelector :: Selector '[] (Id NSArray)
dilationRatesSelector = mkSelector "dilationRates"

-- | @Selector@ for @setDilationRates:@
setDilationRatesSelector :: Selector '[Id NSArray] ()
setDilationRatesSelector = mkSelector "setDilationRates:"

-- | @Selector@ for @paddingValues@
paddingValuesSelector :: Selector '[] (Id NSArray)
paddingValuesSelector = mkSelector "paddingValues"

-- | @Selector@ for @setPaddingValues:@
setPaddingValuesSelector :: Selector '[Id NSArray] ()
setPaddingValuesSelector = mkSelector "setPaddingValues:"

-- | @Selector@ for @paddingStyle@
paddingStyleSelector :: Selector '[] MPSGraphPaddingStyle
paddingStyleSelector = mkSelector "paddingStyle"

-- | @Selector@ for @setPaddingStyle:@
setPaddingStyleSelector :: Selector '[MPSGraphPaddingStyle] ()
setPaddingStyleSelector = mkSelector "setPaddingStyle:"

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

