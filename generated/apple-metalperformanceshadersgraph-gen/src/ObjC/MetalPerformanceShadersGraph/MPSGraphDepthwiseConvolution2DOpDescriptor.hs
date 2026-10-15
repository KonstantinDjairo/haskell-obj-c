{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphDepthwiseConvolution2DOpDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphDepthwiseConvolution2DOpDescriptor
  ( MPSGraphDepthwiseConvolution2DOpDescriptor
  , IsMPSGraphDepthwiseConvolution2DOpDescriptor(..)
  , descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayout
  , descriptorWithDataLayout_weightsLayout
  , setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottom
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
  , weightsLayout
  , setWeightsLayout
  , dataLayoutSelector
  , descriptorWithDataLayout_weightsLayoutSelector
  , descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayoutSelector
  , dilationRateInXSelector
  , dilationRateInYSelector
  , paddingBottomSelector
  , paddingLeftSelector
  , paddingRightSelector
  , paddingStyleSelector
  , paddingTopSelector
  , setDataLayoutSelector
  , setDilationRateInXSelector
  , setDilationRateInYSelector
  , setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector
  , setPaddingBottomSelector
  , setPaddingLeftSelector
  , setPaddingRightSelector
  , setPaddingStyleSelector
  , setPaddingTopSelector
  , setStrideInXSelector
  , setStrideInYSelector
  , setWeightsLayoutSelector
  , strideInXSelector
  , strideInYSelector
  , weightsLayoutSelector

  -- * Enum types
  , MPSGraphPaddingStyle(MPSGraphPaddingStyle)
  , pattern MPSGraphPaddingStyleExplicit
  , pattern MPSGraphPaddingStyleTF_VALID
  , pattern MPSGraphPaddingStyleTF_SAME
  , pattern MPSGraphPaddingStyleExplicitOffset
  , pattern MPSGraphPaddingStyleONNX_SAME_LOWER
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
import ObjC.Foundation.Internal.Classes

-- | @+ descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:weightsLayout:@
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayout :: CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> MPSGraphPaddingStyle -> MPSGraphTensorNamedDataLayout -> MPSGraphTensorNamedDataLayout -> IO (Id MPSGraphDepthwiseConvolution2DOpDescriptor)
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayout strideInX strideInY dilationRateInX dilationRateInY paddingLeft paddingRight paddingTop paddingBottom paddingStyle dataLayout weightsLayout =
  do
    cls' <- getRequiredClass "MPSGraphDepthwiseConvolution2DOpDescriptor"
    sendClassMessage cls' descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayoutSelector strideInX strideInY dilationRateInX dilationRateInY paddingLeft paddingRight paddingTop paddingBottom paddingStyle dataLayout weightsLayout

-- | @+ descriptorWithDataLayout:weightsLayout:@
descriptorWithDataLayout_weightsLayout :: MPSGraphTensorNamedDataLayout -> MPSGraphTensorNamedDataLayout -> IO (Id MPSGraphDepthwiseConvolution2DOpDescriptor)
descriptorWithDataLayout_weightsLayout dataLayout weightsLayout =
  do
    cls' <- getRequiredClass "MPSGraphDepthwiseConvolution2DOpDescriptor"
    sendClassMessage cls' descriptorWithDataLayout_weightsLayoutSelector dataLayout weightsLayout

-- | @- setExplicitPaddingWithPaddingLeft:paddingRight:paddingTop:paddingBottom:@
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottom :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> CULong -> CULong -> CULong -> IO ()
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottom mpsGraphDepthwiseConvolution2DOpDescriptor paddingLeft paddingRight paddingTop paddingBottom =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector paddingLeft paddingRight paddingTop paddingBottom

-- | Default = 1
--
-- ObjC selector: @- strideInX@
strideInX :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO CULong
strideInX mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor strideInXSelector

-- | Default = 1
--
-- ObjC selector: @- setStrideInX:@
setStrideInX :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> IO ()
setStrideInX mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setStrideInXSelector value

-- | Default = 1
--
-- ObjC selector: @- strideInY@
strideInY :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO CULong
strideInY mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor strideInYSelector

-- | Default = 1
--
-- ObjC selector: @- setStrideInY:@
setStrideInY :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> IO ()
setStrideInY mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setStrideInYSelector value

-- | Default = 1
--
-- ObjC selector: @- dilationRateInX@
dilationRateInX :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO CULong
dilationRateInX mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor dilationRateInXSelector

-- | Default = 1
--
-- ObjC selector: @- setDilationRateInX:@
setDilationRateInX :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> IO ()
setDilationRateInX mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setDilationRateInXSelector value

-- | Default = 1
--
-- ObjC selector: @- dilationRateInY@
dilationRateInY :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO CULong
dilationRateInY mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor dilationRateInYSelector

-- | Default = 1
--
-- ObjC selector: @- setDilationRateInY:@
setDilationRateInY :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> IO ()
setDilationRateInY mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setDilationRateInYSelector value

-- | Default = 0 - ignored if paddingStyle != explicit
--
-- ObjC selector: @- paddingLeft@
paddingLeft :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO CULong
paddingLeft mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor paddingLeftSelector

-- | Default = 0 - ignored if paddingStyle != explicit
--
-- ObjC selector: @- setPaddingLeft:@
setPaddingLeft :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> IO ()
setPaddingLeft mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setPaddingLeftSelector value

-- | Default = 0 - ignored if paddingStyle != explicit
--
-- ObjC selector: @- paddingRight@
paddingRight :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO CULong
paddingRight mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor paddingRightSelector

-- | Default = 0 - ignored if paddingStyle != explicit
--
-- ObjC selector: @- setPaddingRight:@
setPaddingRight :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> IO ()
setPaddingRight mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setPaddingRightSelector value

-- | Default = 0 - ignored if paddingStyle != explicit
--
-- ObjC selector: @- paddingTop@
paddingTop :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO CULong
paddingTop mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor paddingTopSelector

-- | Default = 0 - ignored if paddingStyle != explicit
--
-- ObjC selector: @- setPaddingTop:@
setPaddingTop :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> IO ()
setPaddingTop mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setPaddingTopSelector value

-- | Default = 0 - ignored if paddingStyle != explicit
--
-- ObjC selector: @- paddingBottom@
paddingBottom :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO CULong
paddingBottom mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor paddingBottomSelector

-- | Default = 0 - ignored if paddingStyle != explicit
--
-- ObjC selector: @- setPaddingBottom:@
setPaddingBottom :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> CULong -> IO ()
setPaddingBottom mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setPaddingBottomSelector value

-- | Default = MPSGraphPaddingStyleExplicit
--
-- ObjC selector: @- paddingStyle@
paddingStyle :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO MPSGraphPaddingStyle
paddingStyle mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor paddingStyleSelector

-- | Default = MPSGraphPaddingStyleExplicit
--
-- ObjC selector: @- setPaddingStyle:@
setPaddingStyle :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> MPSGraphPaddingStyle -> IO ()
setPaddingStyle mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setPaddingStyleSelector value

-- | @- dataLayout@
dataLayout :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO MPSGraphTensorNamedDataLayout
dataLayout mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor dataLayoutSelector

-- | @- setDataLayout:@
setDataLayout :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> MPSGraphTensorNamedDataLayout -> IO ()
setDataLayout mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setDataLayoutSelector value

-- | NOTE: 'O' index is channel multiplier index
--
-- ObjC selector: @- weightsLayout@
weightsLayout :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> IO MPSGraphTensorNamedDataLayout
weightsLayout mpsGraphDepthwiseConvolution2DOpDescriptor =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor weightsLayoutSelector

-- | NOTE: 'O' index is channel multiplier index
--
-- ObjC selector: @- setWeightsLayout:@
setWeightsLayout :: IsMPSGraphDepthwiseConvolution2DOpDescriptor mpsGraphDepthwiseConvolution2DOpDescriptor => mpsGraphDepthwiseConvolution2DOpDescriptor -> MPSGraphTensorNamedDataLayout -> IO ()
setWeightsLayout mpsGraphDepthwiseConvolution2DOpDescriptor value =
  sendMessage mpsGraphDepthwiseConvolution2DOpDescriptor setWeightsLayoutSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:weightsLayout:@
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayoutSelector :: Selector '[CULong, CULong, CULong, CULong, CULong, CULong, CULong, CULong, MPSGraphPaddingStyle, MPSGraphTensorNamedDataLayout, MPSGraphTensorNamedDataLayout] (Id MPSGraphDepthwiseConvolution2DOpDescriptor)
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayoutSelector = mkSelector "descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:weightsLayout:"

-- | @Selector@ for @descriptorWithDataLayout:weightsLayout:@
descriptorWithDataLayout_weightsLayoutSelector :: Selector '[MPSGraphTensorNamedDataLayout, MPSGraphTensorNamedDataLayout] (Id MPSGraphDepthwiseConvolution2DOpDescriptor)
descriptorWithDataLayout_weightsLayoutSelector = mkSelector "descriptorWithDataLayout:weightsLayout:"

-- | @Selector@ for @setExplicitPaddingWithPaddingLeft:paddingRight:paddingTop:paddingBottom:@
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector :: Selector '[CULong, CULong, CULong, CULong] ()
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector = mkSelector "setExplicitPaddingWithPaddingLeft:paddingRight:paddingTop:paddingBottom:"

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

-- | @Selector@ for @weightsLayout@
weightsLayoutSelector :: Selector '[] MPSGraphTensorNamedDataLayout
weightsLayoutSelector = mkSelector "weightsLayout"

-- | @Selector@ for @setWeightsLayout:@
setWeightsLayoutSelector :: Selector '[MPSGraphTensorNamedDataLayout] ()
setWeightsLayoutSelector = mkSelector "setWeightsLayout:"

