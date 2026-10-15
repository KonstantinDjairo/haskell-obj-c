{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphStencilOpDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphStencilOpDescriptor
  ( MPSGraphStencilOpDescriptor
  , IsMPSGraphStencilOpDescriptor(..)
  , descriptorWithReductionMode_offsets_strides_dilationRates_explicitPadding_boundaryMode_paddingStyle_paddingConstant
  , descriptorWithOffsets_explicitPadding
  , descriptorWithExplicitPadding
  , descriptorWithPaddingStyle
  , reductionMode
  , setReductionMode
  , offsets
  , setOffsets
  , strides
  , setStrides
  , dilationRates
  , setDilationRates
  , explicitPadding
  , setExplicitPadding
  , boundaryMode
  , setBoundaryMode
  , paddingStyle
  , setPaddingStyle
  , paddingConstant
  , setPaddingConstant
  , boundaryModeSelector
  , descriptorWithExplicitPaddingSelector
  , descriptorWithOffsets_explicitPaddingSelector
  , descriptorWithPaddingStyleSelector
  , descriptorWithReductionMode_offsets_strides_dilationRates_explicitPadding_boundaryMode_paddingStyle_paddingConstantSelector
  , dilationRatesSelector
  , explicitPaddingSelector
  , offsetsSelector
  , paddingConstantSelector
  , paddingStyleSelector
  , reductionModeSelector
  , setBoundaryModeSelector
  , setDilationRatesSelector
  , setExplicitPaddingSelector
  , setOffsetsSelector
  , setPaddingConstantSelector
  , setPaddingStyleSelector
  , setReductionModeSelector
  , setStridesSelector
  , stridesSelector

  -- * Enum types
  , MPSGraphPaddingMode(MPSGraphPaddingMode)
  , pattern MPSGraphPaddingModeConstant
  , pattern MPSGraphPaddingModeReflect
  , pattern MPSGraphPaddingModeSymmetric
  , pattern MPSGraphPaddingModeClampToEdge
  , pattern MPSGraphPaddingModeZero
  , pattern MPSGraphPaddingModePeriodic
  , pattern MPSGraphPaddingModeAntiPeriodic
  , MPSGraphPaddingStyle(MPSGraphPaddingStyle)
  , pattern MPSGraphPaddingStyleExplicit
  , pattern MPSGraphPaddingStyleTF_VALID
  , pattern MPSGraphPaddingStyleTF_SAME
  , pattern MPSGraphPaddingStyleExplicitOffset
  , pattern MPSGraphPaddingStyleONNX_SAME_LOWER
  , MPSGraphReductionMode(MPSGraphReductionMode)
  , pattern MPSGraphReductionModeMin
  , pattern MPSGraphReductionModeMax
  , pattern MPSGraphReductionModeSum
  , pattern MPSGraphReductionModeProduct
  , pattern MPSGraphReductionModeArgumentMin
  , pattern MPSGraphReductionModeArgumentMax

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetalPerformanceShadersGraph.Internal.Classes
import ObjC.MetalPerformanceShadersGraph.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | stencil operation descriptor
--
-- @reductionMode@ — Reduction operation used to combine the source with weights. Defaults to Sum.
--
-- @offsets@ — Array of length 4 that determines where to start reading the @input@ from.                                  Only used when paddingStyle is MPSGraphPaddingStylExplicitOffset. Defaults to 0.
--
-- @strides@ — Array of length 4 that determines strides for the window of the weights Tensor. Defaults to 1.
--
-- @dilationRates@ — Array of length 4 that determines dilation rates for the weights Tensor. Defaults to 1.
--
-- @explicitPadding@ — Array of length 8 that determines paddings for the input Tensor's last 4 dimensions.                                  explicitPadding[2*i] and explicitPadding[2*i + 1] for dimension i of the input.                                  Only used when paddingSTyle is MPSGraphPaddingStyleExplicit or ExplicitOffset.
--
-- @boundaryMode@ — Determines what values to pad the input Tensor with. Defaults to MPSGraphPaddingModeZero.
--
-- @paddingStyle@ — Determines how many values to pad the inpur Tensor with.
--
-- @paddingConstant@ — Specifies the value to pad the inputTensor with when using boundaryMode = constant. Defaults to 0.
--
-- Returns: A valid MPSGraphStencilOpDescriptor object
--
-- ObjC selector: @+ descriptorWithReductionMode:offsets:strides:dilationRates:explicitPadding:boundaryMode:paddingStyle:paddingConstant:@
descriptorWithReductionMode_offsets_strides_dilationRates_explicitPadding_boundaryMode_paddingStyle_paddingConstant :: MPSGraphReductionMode -> RawId -> RawId -> RawId -> RawId -> MPSGraphPaddingMode -> MPSGraphPaddingStyle -> CFloat -> IO (Id MPSGraphStencilOpDescriptor)
descriptorWithReductionMode_offsets_strides_dilationRates_explicitPadding_boundaryMode_paddingStyle_paddingConstant reductionMode offsets strides dilationRates explicitPadding boundaryMode paddingStyle paddingConstant =
  do
    cls' <- getRequiredClass "MPSGraphStencilOpDescriptor"
    sendClassMessage cls' descriptorWithReductionMode_offsets_strides_dilationRates_explicitPadding_boundaryMode_paddingStyle_paddingConstantSelector reductionMode offsets strides dilationRates explicitPadding boundaryMode paddingStyle paddingConstant

-- | stencil operation descriptor
--
-- Stencil operation descriptor for paddingStyle MPSGraphPaddingStyleExplicitOffset.              Default values for everything else.
--
-- @offsets@ — Array of length 4 that determines where to start reading the @input@ from.
--
-- @explicitPadding@ — Array of length 8 that determines paddings for the input Tensor's last 4 dimensions.                                  explicitPadding[2*i] and explicitPadding[2*i + 1] for dimension i of the input.
--
-- Returns: A valid MPSGraphStencilOpDescriptor object
--
-- ObjC selector: @+ descriptorWithOffsets:explicitPadding:@
descriptorWithOffsets_explicitPadding :: RawId -> RawId -> IO (Id MPSGraphStencilOpDescriptor)
descriptorWithOffsets_explicitPadding offsets explicitPadding =
  do
    cls' <- getRequiredClass "MPSGraphStencilOpDescriptor"
    sendClassMessage cls' descriptorWithOffsets_explicitPaddingSelector offsets explicitPadding

-- | stencil operation descriptor
--
-- Stencil operation descriptor for paddingStyle MPSGraphPaddingStyleExplicit              Default values for everything else.
--
-- @explicitPadding@ — Array of length 8 that determines paddings for the input Tensor's last 4 dimensions.                                  explicitPadding[2*i] and explicitPadding[2*i + 1] for dimension i of the input.
--
-- Returns: A valid MPSGraphStencilOpDescriptor object
--
-- ObjC selector: @+ descriptorWithExplicitPadding:@
descriptorWithExplicitPadding :: RawId -> IO (Id MPSGraphStencilOpDescriptor)
descriptorWithExplicitPadding explicitPadding =
  do
    cls' <- getRequiredClass "MPSGraphStencilOpDescriptor"
    sendClassMessage cls' descriptorWithExplicitPaddingSelector explicitPadding

-- | stencil operation descriptor
--
-- Stencil operation descriptor with a user specified paddingStyle.              Default values for everything else.
--
-- @paddingStyle@ — Determines how many values to pad the inpur Tensor with.
--
-- Returns: A valid MPSGraphStencilOpDescriptor object
--
-- ObjC selector: @+ descriptorWithPaddingStyle:@
descriptorWithPaddingStyle :: MPSGraphPaddingStyle -> IO (Id MPSGraphStencilOpDescriptor)
descriptorWithPaddingStyle paddingStyle =
  do
    cls' <- getRequiredClass "MPSGraphStencilOpDescriptor"
    sendClassMessage cls' descriptorWithPaddingStyleSelector paddingStyle

-- | @- reductionMode@
reductionMode :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> IO MPSGraphReductionMode
reductionMode mpsGraphStencilOpDescriptor =
  sendMessage mpsGraphStencilOpDescriptor reductionModeSelector

-- | @- setReductionMode:@
setReductionMode :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> MPSGraphReductionMode -> IO ()
setReductionMode mpsGraphStencilOpDescriptor value =
  sendMessage mpsGraphStencilOpDescriptor setReductionModeSelector value

-- | @- offsets@
offsets :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> IO RawId
offsets mpsGraphStencilOpDescriptor =
  sendMessage mpsGraphStencilOpDescriptor offsetsSelector

-- | @- setOffsets:@
setOffsets :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> RawId -> IO ()
setOffsets mpsGraphStencilOpDescriptor value =
  sendMessage mpsGraphStencilOpDescriptor setOffsetsSelector value

-- | @- strides@
strides :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> IO RawId
strides mpsGraphStencilOpDescriptor =
  sendMessage mpsGraphStencilOpDescriptor stridesSelector

-- | @- setStrides:@
setStrides :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> RawId -> IO ()
setStrides mpsGraphStencilOpDescriptor value =
  sendMessage mpsGraphStencilOpDescriptor setStridesSelector value

-- | @- dilationRates@
dilationRates :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> IO RawId
dilationRates mpsGraphStencilOpDescriptor =
  sendMessage mpsGraphStencilOpDescriptor dilationRatesSelector

-- | @- setDilationRates:@
setDilationRates :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> RawId -> IO ()
setDilationRates mpsGraphStencilOpDescriptor value =
  sendMessage mpsGraphStencilOpDescriptor setDilationRatesSelector value

-- | @- explicitPadding@
explicitPadding :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> IO RawId
explicitPadding mpsGraphStencilOpDescriptor =
  sendMessage mpsGraphStencilOpDescriptor explicitPaddingSelector

-- | @- setExplicitPadding:@
setExplicitPadding :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> RawId -> IO ()
setExplicitPadding mpsGraphStencilOpDescriptor value =
  sendMessage mpsGraphStencilOpDescriptor setExplicitPaddingSelector value

-- | @- boundaryMode@
boundaryMode :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> IO MPSGraphPaddingMode
boundaryMode mpsGraphStencilOpDescriptor =
  sendMessage mpsGraphStencilOpDescriptor boundaryModeSelector

-- | @- setBoundaryMode:@
setBoundaryMode :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> MPSGraphPaddingMode -> IO ()
setBoundaryMode mpsGraphStencilOpDescriptor value =
  sendMessage mpsGraphStencilOpDescriptor setBoundaryModeSelector value

-- | @- paddingStyle@
paddingStyle :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> IO MPSGraphPaddingStyle
paddingStyle mpsGraphStencilOpDescriptor =
  sendMessage mpsGraphStencilOpDescriptor paddingStyleSelector

-- | @- setPaddingStyle:@
setPaddingStyle :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> MPSGraphPaddingStyle -> IO ()
setPaddingStyle mpsGraphStencilOpDescriptor value =
  sendMessage mpsGraphStencilOpDescriptor setPaddingStyleSelector value

-- | @- paddingConstant@
paddingConstant :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> IO CFloat
paddingConstant mpsGraphStencilOpDescriptor =
  sendMessage mpsGraphStencilOpDescriptor paddingConstantSelector

-- | @- setPaddingConstant:@
setPaddingConstant :: IsMPSGraphStencilOpDescriptor mpsGraphStencilOpDescriptor => mpsGraphStencilOpDescriptor -> CFloat -> IO ()
setPaddingConstant mpsGraphStencilOpDescriptor value =
  sendMessage mpsGraphStencilOpDescriptor setPaddingConstantSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @descriptorWithReductionMode:offsets:strides:dilationRates:explicitPadding:boundaryMode:paddingStyle:paddingConstant:@
descriptorWithReductionMode_offsets_strides_dilationRates_explicitPadding_boundaryMode_paddingStyle_paddingConstantSelector :: Selector '[MPSGraphReductionMode, RawId, RawId, RawId, RawId, MPSGraphPaddingMode, MPSGraphPaddingStyle, CFloat] (Id MPSGraphStencilOpDescriptor)
descriptorWithReductionMode_offsets_strides_dilationRates_explicitPadding_boundaryMode_paddingStyle_paddingConstantSelector = mkSelector "descriptorWithReductionMode:offsets:strides:dilationRates:explicitPadding:boundaryMode:paddingStyle:paddingConstant:"

-- | @Selector@ for @descriptorWithOffsets:explicitPadding:@
descriptorWithOffsets_explicitPaddingSelector :: Selector '[RawId, RawId] (Id MPSGraphStencilOpDescriptor)
descriptorWithOffsets_explicitPaddingSelector = mkSelector "descriptorWithOffsets:explicitPadding:"

-- | @Selector@ for @descriptorWithExplicitPadding:@
descriptorWithExplicitPaddingSelector :: Selector '[RawId] (Id MPSGraphStencilOpDescriptor)
descriptorWithExplicitPaddingSelector = mkSelector "descriptorWithExplicitPadding:"

-- | @Selector@ for @descriptorWithPaddingStyle:@
descriptorWithPaddingStyleSelector :: Selector '[MPSGraphPaddingStyle] (Id MPSGraphStencilOpDescriptor)
descriptorWithPaddingStyleSelector = mkSelector "descriptorWithPaddingStyle:"

-- | @Selector@ for @reductionMode@
reductionModeSelector :: Selector '[] MPSGraphReductionMode
reductionModeSelector = mkSelector "reductionMode"

-- | @Selector@ for @setReductionMode:@
setReductionModeSelector :: Selector '[MPSGraphReductionMode] ()
setReductionModeSelector = mkSelector "setReductionMode:"

-- | @Selector@ for @offsets@
offsetsSelector :: Selector '[] RawId
offsetsSelector = mkSelector "offsets"

-- | @Selector@ for @setOffsets:@
setOffsetsSelector :: Selector '[RawId] ()
setOffsetsSelector = mkSelector "setOffsets:"

-- | @Selector@ for @strides@
stridesSelector :: Selector '[] RawId
stridesSelector = mkSelector "strides"

-- | @Selector@ for @setStrides:@
setStridesSelector :: Selector '[RawId] ()
setStridesSelector = mkSelector "setStrides:"

-- | @Selector@ for @dilationRates@
dilationRatesSelector :: Selector '[] RawId
dilationRatesSelector = mkSelector "dilationRates"

-- | @Selector@ for @setDilationRates:@
setDilationRatesSelector :: Selector '[RawId] ()
setDilationRatesSelector = mkSelector "setDilationRates:"

-- | @Selector@ for @explicitPadding@
explicitPaddingSelector :: Selector '[] RawId
explicitPaddingSelector = mkSelector "explicitPadding"

-- | @Selector@ for @setExplicitPadding:@
setExplicitPaddingSelector :: Selector '[RawId] ()
setExplicitPaddingSelector = mkSelector "setExplicitPadding:"

-- | @Selector@ for @boundaryMode@
boundaryModeSelector :: Selector '[] MPSGraphPaddingMode
boundaryModeSelector = mkSelector "boundaryMode"

-- | @Selector@ for @setBoundaryMode:@
setBoundaryModeSelector :: Selector '[MPSGraphPaddingMode] ()
setBoundaryModeSelector = mkSelector "setBoundaryMode:"

-- | @Selector@ for @paddingStyle@
paddingStyleSelector :: Selector '[] MPSGraphPaddingStyle
paddingStyleSelector = mkSelector "paddingStyle"

-- | @Selector@ for @setPaddingStyle:@
setPaddingStyleSelector :: Selector '[MPSGraphPaddingStyle] ()
setPaddingStyleSelector = mkSelector "setPaddingStyle:"

-- | @Selector@ for @paddingConstant@
paddingConstantSelector :: Selector '[] CFloat
paddingConstantSelector = mkSelector "paddingConstant"

-- | @Selector@ for @setPaddingConstant:@
setPaddingConstantSelector :: Selector '[CFloat] ()
setPaddingConstantSelector = mkSelector "setPaddingConstant:"

