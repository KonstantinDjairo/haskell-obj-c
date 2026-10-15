{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphShapedType@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphShapedType
  ( MPSGraphShapedType
  , IsMPSGraphShapedType(..)
  , initWithShape_dataType
  , isEqualTo
  , shape
  , setShape
  , dataType
  , setDataType
  , dataTypeSelector
  , initWithShape_dataTypeSelector
  , isEqualToSelector
  , setDataTypeSelector
  , setShapeSelector
  , shapeSelector

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

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetalPerformanceShadersGraph.Internal.Classes
import ObjC.MetalPerformanceShaders.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | Initialize an MPSGraphShapedType
--
-- @shape@ — The MPSShape
--
-- @dataType@ — The dataType of the shaped type
--
-- Returns: A valid MPSGraphShapedType, or nil if allocation failure.
--
-- ObjC selector: @- initWithShape:dataType:@
initWithShape_dataType :: IsMPSGraphShapedType mpsGraphShapedType => mpsGraphShapedType -> RawId -> MPSDataType -> IO (Id MPSGraphShapedType)
initWithShape_dataType mpsGraphShapedType shape dataType =
  sendOwnedMessage mpsGraphShapedType initWithShape_dataTypeSelector shape dataType

-- | @- isEqualTo:@
isEqualTo :: (IsMPSGraphShapedType mpsGraphShapedType, IsMPSGraphShapedType object) => mpsGraphShapedType -> object -> IO Bool
isEqualTo mpsGraphShapedType object =
  sendMessage mpsGraphShapedType isEqualToSelector (toMPSGraphShapedType object)

-- | shape
--
-- shape of the shapedType
--
-- ObjC selector: @- shape@
shape :: IsMPSGraphShapedType mpsGraphShapedType => mpsGraphShapedType -> IO RawId
shape mpsGraphShapedType =
  sendMessage mpsGraphShapedType shapeSelector

-- | shape
--
-- shape of the shapedType
--
-- ObjC selector: @- setShape:@
setShape :: IsMPSGraphShapedType mpsGraphShapedType => mpsGraphShapedType -> RawId -> IO ()
setShape mpsGraphShapedType value =
  sendMessage mpsGraphShapedType setShapeSelector value

-- | dataType
--
-- dataType of the shapedType
--
-- ObjC selector: @- dataType@
dataType :: IsMPSGraphShapedType mpsGraphShapedType => mpsGraphShapedType -> IO MPSDataType
dataType mpsGraphShapedType =
  sendMessage mpsGraphShapedType dataTypeSelector

-- | dataType
--
-- dataType of the shapedType
--
-- ObjC selector: @- setDataType:@
setDataType :: IsMPSGraphShapedType mpsGraphShapedType => mpsGraphShapedType -> MPSDataType -> IO ()
setDataType mpsGraphShapedType value =
  sendMessage mpsGraphShapedType setDataTypeSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithShape:dataType:@
initWithShape_dataTypeSelector :: Selector '[RawId, MPSDataType] (Id MPSGraphShapedType)
initWithShape_dataTypeSelector = mkSelector "initWithShape:dataType:"

-- | @Selector@ for @isEqualTo:@
isEqualToSelector :: Selector '[Id MPSGraphShapedType] Bool
isEqualToSelector = mkSelector "isEqualTo:"

-- | @Selector@ for @shape@
shapeSelector :: Selector '[] RawId
shapeSelector = mkSelector "shape"

-- | @Selector@ for @setShape:@
setShapeSelector :: Selector '[RawId] ()
setShapeSelector = mkSelector "setShape:"

-- | @Selector@ for @dataType@
dataTypeSelector :: Selector '[] MPSDataType
dataTypeSelector = mkSelector "dataType"

-- | @Selector@ for @setDataType:@
setDataTypeSelector :: Selector '[MPSDataType] ()
setDataTypeSelector = mkSelector "setDataType:"

