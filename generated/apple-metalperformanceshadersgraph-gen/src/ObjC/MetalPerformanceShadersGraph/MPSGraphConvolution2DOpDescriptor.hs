{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphConvolution2DOpDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphConvolution2DOpDescriptor
  ( MPSGraphConvolution2DOpDescriptor
  , IsMPSGraphConvolution2DOpDescriptor(..)
  , descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayout
  , descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingStyle_dataLayout_weightsLayout
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
  , groups
  , setGroups
  , dataLayoutSelector
  , descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayoutSelector
  , descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingStyle_dataLayout_weightsLayoutSelector
  , dilationRateInXSelector
  , dilationRateInYSelector
  , groupsSelector
  , paddingBottomSelector
  , paddingLeftSelector
  , paddingRightSelector
  , paddingStyleSelector
  , paddingTopSelector
  , setDataLayoutSelector
  , setDilationRateInXSelector
  , setDilationRateInYSelector
  , setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector
  , setGroupsSelector
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

-- | @+ descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:groups:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:weightsLayout:@
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayout :: CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> CULong -> MPSGraphPaddingStyle -> MPSGraphTensorNamedDataLayout -> MPSGraphTensorNamedDataLayout -> IO (Id MPSGraphConvolution2DOpDescriptor)
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayout strideInX strideInY dilationRateInX dilationRateInY groups paddingLeft paddingRight paddingTop paddingBottom paddingStyle dataLayout weightsLayout =
  do
    cls' <- getRequiredClass "MPSGraphConvolution2DOpDescriptor"
    sendClassMessage cls' descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayoutSelector strideInX strideInY dilationRateInX dilationRateInY groups paddingLeft paddingRight paddingTop paddingBottom paddingStyle dataLayout weightsLayout

-- | @+ descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:groups:paddingStyle:dataLayout:weightsLayout:@
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingStyle_dataLayout_weightsLayout :: CULong -> CULong -> CULong -> CULong -> CULong -> MPSGraphPaddingStyle -> MPSGraphTensorNamedDataLayout -> MPSGraphTensorNamedDataLayout -> IO (Id MPSGraphConvolution2DOpDescriptor)
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingStyle_dataLayout_weightsLayout strideInX strideInY dilationRateInX dilationRateInY groups paddingStyle dataLayout weightsLayout =
  do
    cls' <- getRequiredClass "MPSGraphConvolution2DOpDescriptor"
    sendClassMessage cls' descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingStyle_dataLayout_weightsLayoutSelector strideInX strideInY dilationRateInX dilationRateInY groups paddingStyle dataLayout weightsLayout

-- | @- setExplicitPaddingWithPaddingLeft:paddingRight:paddingTop:paddingBottom:@
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottom :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> CULong -> CULong -> CULong -> IO ()
setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottom mpsGraphConvolution2DOpDescriptor paddingLeft paddingRight paddingTop paddingBottom =
  sendMessage mpsGraphConvolution2DOpDescriptor setExplicitPaddingWithPaddingLeft_paddingRight_paddingTop_paddingBottomSelector paddingLeft paddingRight paddingTop paddingBottom

-- | @- strideInX@
strideInX :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
strideInX mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor strideInXSelector

-- | @- setStrideInX:@
setStrideInX :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setStrideInX mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setStrideInXSelector value

-- | @- strideInY@
strideInY :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
strideInY mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor strideInYSelector

-- | @- setStrideInY:@
setStrideInY :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setStrideInY mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setStrideInYSelector value

-- | @- dilationRateInX@
dilationRateInX :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
dilationRateInX mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor dilationRateInXSelector

-- | @- setDilationRateInX:@
setDilationRateInX :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setDilationRateInX mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setDilationRateInXSelector value

-- | @- dilationRateInY@
dilationRateInY :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
dilationRateInY mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor dilationRateInYSelector

-- | @- setDilationRateInY:@
setDilationRateInY :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setDilationRateInY mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setDilationRateInYSelector value

-- | @- paddingLeft@
paddingLeft :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
paddingLeft mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor paddingLeftSelector

-- | @- setPaddingLeft:@
setPaddingLeft :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setPaddingLeft mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setPaddingLeftSelector value

-- | @- paddingRight@
paddingRight :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
paddingRight mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor paddingRightSelector

-- | @- setPaddingRight:@
setPaddingRight :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setPaddingRight mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setPaddingRightSelector value

-- | @- paddingTop@
paddingTop :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
paddingTop mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor paddingTopSelector

-- | @- setPaddingTop:@
setPaddingTop :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setPaddingTop mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setPaddingTopSelector value

-- | @- paddingBottom@
paddingBottom :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
paddingBottom mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor paddingBottomSelector

-- | @- setPaddingBottom:@
setPaddingBottom :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setPaddingBottom mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setPaddingBottomSelector value

-- | @- paddingStyle@
paddingStyle :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO MPSGraphPaddingStyle
paddingStyle mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor paddingStyleSelector

-- | @- setPaddingStyle:@
setPaddingStyle :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> MPSGraphPaddingStyle -> IO ()
setPaddingStyle mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setPaddingStyleSelector value

-- | @- dataLayout@
dataLayout :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO MPSGraphTensorNamedDataLayout
dataLayout mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor dataLayoutSelector

-- | @- setDataLayout:@
setDataLayout :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> MPSGraphTensorNamedDataLayout -> IO ()
setDataLayout mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setDataLayoutSelector value

-- | @- weightsLayout@
weightsLayout :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO MPSGraphTensorNamedDataLayout
weightsLayout mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor weightsLayoutSelector

-- | @- setWeightsLayout:@
setWeightsLayout :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> MPSGraphTensorNamedDataLayout -> IO ()
setWeightsLayout mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setWeightsLayoutSelector value

-- | groups
--
-- groups of the operation
--
-- ObjC selector: @- groups@
groups :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> IO CULong
groups mpsGraphConvolution2DOpDescriptor =
  sendMessage mpsGraphConvolution2DOpDescriptor groupsSelector

-- | groups
--
-- groups of the operation
--
-- ObjC selector: @- setGroups:@
setGroups :: IsMPSGraphConvolution2DOpDescriptor mpsGraphConvolution2DOpDescriptor => mpsGraphConvolution2DOpDescriptor -> CULong -> IO ()
setGroups mpsGraphConvolution2DOpDescriptor value =
  sendMessage mpsGraphConvolution2DOpDescriptor setGroupsSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:groups:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:weightsLayout:@
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayoutSelector :: Selector '[CULong, CULong, CULong, CULong, CULong, CULong, CULong, CULong, CULong, MPSGraphPaddingStyle, MPSGraphTensorNamedDataLayout, MPSGraphTensorNamedDataLayout] (Id MPSGraphConvolution2DOpDescriptor)
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingLeft_paddingRight_paddingTop_paddingBottom_paddingStyle_dataLayout_weightsLayoutSelector = mkSelector "descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:groups:paddingLeft:paddingRight:paddingTop:paddingBottom:paddingStyle:dataLayout:weightsLayout:"

-- | @Selector@ for @descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:groups:paddingStyle:dataLayout:weightsLayout:@
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingStyle_dataLayout_weightsLayoutSelector :: Selector '[CULong, CULong, CULong, CULong, CULong, MPSGraphPaddingStyle, MPSGraphTensorNamedDataLayout, MPSGraphTensorNamedDataLayout] (Id MPSGraphConvolution2DOpDescriptor)
descriptorWithStrideInX_strideInY_dilationRateInX_dilationRateInY_groups_paddingStyle_dataLayout_weightsLayoutSelector = mkSelector "descriptorWithStrideInX:strideInY:dilationRateInX:dilationRateInY:groups:paddingStyle:dataLayout:weightsLayout:"

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

-- | @Selector@ for @groups@
groupsSelector :: Selector '[] CULong
groupsSelector = mkSelector "groups"

-- | @Selector@ for @setGroups:@
setGroupsSelector :: Selector '[CULong] ()
setGroupsSelector = mkSelector "setGroups:"

