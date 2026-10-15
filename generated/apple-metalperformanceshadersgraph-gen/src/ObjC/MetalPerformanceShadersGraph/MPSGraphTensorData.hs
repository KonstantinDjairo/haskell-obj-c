{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MPSGraphTensorData
--
-- Representation of a compute datatype
--
-- MPSGraphTensorData is how we pass data to an MPSGraph, a reference will be taken to your data and used just in time when MPSGraph is run.
--
-- Generated bindings for @MPSGraphTensorData@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphTensorData
  ( MPSGraphTensorData
  , IsMPSGraphTensorData(..)
  , initWithDevice_data_shape_dataType
  , initWithMTLBuffer_shape_dataType
  , initWithMTLBuffer_shape_dataType_rowBytes
  , initWithMPSMatrix
  , initWithMPSMatrix_rank
  , initWithMPSVector
  , initWithMPSVector_rank
  , initWithMPSNDArray
  , initWithMPSImageBatch
  , mpsndarray
  , shape
  , dataType
  , device
  , dataTypeSelector
  , deviceSelector
  , initWithDevice_data_shape_dataTypeSelector
  , initWithMPSImageBatchSelector
  , initWithMPSMatrixSelector
  , initWithMPSMatrix_rankSelector
  , initWithMPSNDArraySelector
  , initWithMPSVectorSelector
  , initWithMPSVector_rankSelector
  , initWithMTLBuffer_shape_dataTypeSelector
  , initWithMTLBuffer_shape_dataType_rowBytesSelector
  , mpsndarraySelector
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
import ObjC.MetalPerformanceShaders.Internal.Classes

-- | Initialize an MPSGraphTensorData with an NSData on an MPSDevice
--
-- @device@ — MPSDevice on which the MPSGraphTensorData exists
--
-- @data@ — NSData from which to copy the contents
--
-- @shape@ — shape of the output tensor
--
-- @dataType@ — dataType of the placeholder tensor
--
-- Returns: A valid MPSGraphTensorData, or nil if allocation failure.
--
-- ObjC selector: @- initWithDevice:data:shape:dataType:@
initWithDevice_data_shape_dataType :: (IsMPSGraphTensorData mpsGraphTensorData, IsMPSGraphDevice device, IsNSData data_) => mpsGraphTensorData -> device -> data_ -> RawId -> MPSDataType -> IO (Id MPSGraphTensorData)
initWithDevice_data_shape_dataType mpsGraphTensorData device data_ shape dataType =
  sendOwnedMessage mpsGraphTensorData initWithDevice_data_shape_dataTypeSelector (toMPSGraphDevice device) (toNSData data_) shape dataType

-- | Initialize an MPSGraphTensorData with an MTLBuffer              The device of the MTLBuffer will be used to get the MPSDevice for this MPSGraphTensorData.
--
-- @buffer@ — MTLBuffer to be used within the MPSGraphTensorData
--
-- @shape@ — shape of the output tensor
--
-- @dataType@ — dataType of the placeholder tensor
--
-- Returns: A valid MPSGraphTensorData, or nil if allocation failure.
--
-- ObjC selector: @- initWithMTLBuffer:shape:dataType:@
initWithMTLBuffer_shape_dataType :: IsMPSGraphTensorData mpsGraphTensorData => mpsGraphTensorData -> RawId -> RawId -> MPSDataType -> IO (Id MPSGraphTensorData)
initWithMTLBuffer_shape_dataType mpsGraphTensorData buffer shape dataType =
  sendOwnedMessage mpsGraphTensorData initWithMTLBuffer_shape_dataTypeSelector buffer shape dataType

-- | Initialize an MPSGraphTensorData with an MTLBuffer              The device of the MTLBuffer will be used to get the MPSDevice for this MPSGraphTensorData.
--
-- @buffer@ — MTLBuffer to be used within the MPSGraphTensorData
--
-- @shape@ — shape of the output tensor
--
-- @dataType@ — dataType of the placeholder tensor
--
-- @rowBytes@ — rowBytes for the fastest moving dimension, must be larger than or equal to sizeOf(dataType) * shape[rank - 1] and must be a multiple of sizeOf(dataType)
--
-- Returns: A valid MPSGraphTensorData, or nil if allocation failure.
--
-- ObjC selector: @- initWithMTLBuffer:shape:dataType:rowBytes:@
initWithMTLBuffer_shape_dataType_rowBytes :: IsMPSGraphTensorData mpsGraphTensorData => mpsGraphTensorData -> RawId -> RawId -> MPSDataType -> CULong -> IO (Id MPSGraphTensorData)
initWithMTLBuffer_shape_dataType_rowBytes mpsGraphTensorData buffer shape dataType rowBytes =
  sendOwnedMessage mpsGraphTensorData initWithMTLBuffer_shape_dataType_rowBytesSelector buffer shape dataType rowBytes

-- | Initialize an MPSGraphTensorData with an MPSMatrix              The device of the MPSMatrix will be used to get the MPSDevice for this MPSGraphTensorData.
--
-- @matrix@ — MPSMatrix to be used within the MPSGraphTensorData
--
-- Returns: A valid MPSGraphTensorData, or nil if allocation failure.
--
-- Note: If matrix.matrices == 1, then a rank 2 tensor is returned, otherwise rank 3.
--
-- ObjC selector: @- initWithMPSMatrix:@
initWithMPSMatrix :: (IsMPSGraphTensorData mpsGraphTensorData, IsMPSMatrix matrix) => mpsGraphTensorData -> matrix -> IO (Id MPSGraphTensorData)
initWithMPSMatrix mpsGraphTensorData matrix =
  sendOwnedMessage mpsGraphTensorData initWithMPSMatrixSelector (toMPSMatrix matrix)

-- | Initialize an MPSGraphTensorData with an MPSMatrix enforcing rank of the result.              The device of the MPSMatrix will be used to get the MPSDevice for this MPSGraphTensorData.
--
-- @matrix@ — MPSMatrix to be used within the MPSGraphTensorData
--
-- @rank@ — The rank of the resulting TensorData tensor. NOTE: must be within { 1, ... ,16 }.
--
-- Returns: A valid MPSGraphTensorData of given rank, or nil if allocation failure.
--
-- ObjC selector: @- initWithMPSMatrix:rank:@
initWithMPSMatrix_rank :: (IsMPSGraphTensorData mpsGraphTensorData, IsMPSMatrix matrix) => mpsGraphTensorData -> matrix -> CULong -> IO (Id MPSGraphTensorData)
initWithMPSMatrix_rank mpsGraphTensorData matrix rank =
  sendOwnedMessage mpsGraphTensorData initWithMPSMatrix_rankSelector (toMPSMatrix matrix) rank

-- | Initialize an MPSGraphTensorData with an MPSVector              The device of the MPSVector will be used to get the MPSDevice for this MPSGraphTensorData.
--
-- @vector@ — MPSVector to be used within the MPSGraphTensorData
--
-- Returns: A valid MPSGraphTensorData, or nil if allocation failure.
--
-- Note: If vector.vectors == 1, then a rank 1 tensor is returned, otherwise rank 2.
--
-- ObjC selector: @- initWithMPSVector:@
initWithMPSVector :: (IsMPSGraphTensorData mpsGraphTensorData, IsMPSVector vector) => mpsGraphTensorData -> vector -> IO (Id MPSGraphTensorData)
initWithMPSVector mpsGraphTensorData vector =
  sendOwnedMessage mpsGraphTensorData initWithMPSVectorSelector (toMPSVector vector)

-- | Initialize an MPSGraphTensorData with an MPSVector  enforcing rank of the result.              The device of the MPSVector will be used to get the MPSDevice for this MPSGraphTensorData.
--
-- @vector@ — MPSVector to be used within the MPSGraphTensorData
--
-- @rank@ — The rank of the resulting TensorData tensor. NOTE: must be within { 1, ... ,16 }.
--
-- Returns: A valid MPSGraphTensorData, or nil if allocation failure.
--
-- Note: If vector.vectors == 1, then a rank 1 tensor is returned, otherwise rank 2.
--
-- ObjC selector: @- initWithMPSVector:rank:@
initWithMPSVector_rank :: (IsMPSGraphTensorData mpsGraphTensorData, IsMPSVector vector) => mpsGraphTensorData -> vector -> CULong -> IO (Id MPSGraphTensorData)
initWithMPSVector_rank mpsGraphTensorData vector rank =
  sendOwnedMessage mpsGraphTensorData initWithMPSVector_rankSelector (toMPSVector vector) rank

-- | Initialize an MPSGraphTensorData with an MPSNDArray              The device of the MPSNDArray will be used to get the MPSDevice for this MPSGraphTensorData.
--
-- @ndarray@ — MPSNDArray to be used within the MPSGraphTensorData
--
-- Returns: A valid MPSGraphTensorData, or nil if allocation failure.
--
-- ObjC selector: @- initWithMPSNDArray:@
initWithMPSNDArray :: (IsMPSGraphTensorData mpsGraphTensorData, IsMPSNDArray ndarray) => mpsGraphTensorData -> ndarray -> IO (Id MPSGraphTensorData)
initWithMPSNDArray mpsGraphTensorData ndarray =
  sendOwnedMessage mpsGraphTensorData initWithMPSNDArraySelector (toMPSNDArray ndarray)

-- | Initialize an MPSGraphTensorData with an MPSImage batch, the dataLayout used will be NHWC,              call a transpose or permute to change to a layout of your choice.
--
-- @imageBatch@ — The device on which the kernel will run
--
-- Returns: A valid MPSGraphTensorData, or nil if allocation failure.
--
-- ObjC selector: @- initWithMPSImageBatch:@
initWithMPSImageBatch :: IsMPSGraphTensorData mpsGraphTensorData => mpsGraphTensorData -> RawId -> IO (Id MPSGraphTensorData)
initWithMPSImageBatch mpsGraphTensorData imageBatch =
  sendOwnedMessage mpsGraphTensorData initWithMPSImageBatchSelector imageBatch

-- | Return an mpsndarray object will copy contents if the contents are not stored in an MPSNDArray
--
-- Returns: A valid MPSNDArray, or nil if allocation fails.
--
-- ObjC selector: @- mpsndarray@
mpsndarray :: IsMPSGraphTensorData mpsGraphTensorData => mpsGraphTensorData -> IO (Id MPSNDArray)
mpsndarray mpsGraphTensorData =
  sendMessage mpsGraphTensorData mpsndarraySelector

-- | shape
--
-- shape of the tensorData
--
-- ObjC selector: @- shape@
shape :: IsMPSGraphTensorData mpsGraphTensorData => mpsGraphTensorData -> IO RawId
shape mpsGraphTensorData =
  sendMessage mpsGraphTensorData shapeSelector

-- | dataType
--
-- dataType of the tensorData
--
-- ObjC selector: @- dataType@
dataType :: IsMPSGraphTensorData mpsGraphTensorData => mpsGraphTensorData -> IO MPSDataType
dataType mpsGraphTensorData =
  sendMessage mpsGraphTensorData dataTypeSelector

-- | device
--
-- device of the tensorData
--
-- ObjC selector: @- device@
device :: IsMPSGraphTensorData mpsGraphTensorData => mpsGraphTensorData -> IO (Id MPSGraphDevice)
device mpsGraphTensorData =
  sendMessage mpsGraphTensorData deviceSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:data:shape:dataType:@
initWithDevice_data_shape_dataTypeSelector :: Selector '[Id MPSGraphDevice, Id NSData, RawId, MPSDataType] (Id MPSGraphTensorData)
initWithDevice_data_shape_dataTypeSelector = mkSelector "initWithDevice:data:shape:dataType:"

-- | @Selector@ for @initWithMTLBuffer:shape:dataType:@
initWithMTLBuffer_shape_dataTypeSelector :: Selector '[RawId, RawId, MPSDataType] (Id MPSGraphTensorData)
initWithMTLBuffer_shape_dataTypeSelector = mkSelector "initWithMTLBuffer:shape:dataType:"

-- | @Selector@ for @initWithMTLBuffer:shape:dataType:rowBytes:@
initWithMTLBuffer_shape_dataType_rowBytesSelector :: Selector '[RawId, RawId, MPSDataType, CULong] (Id MPSGraphTensorData)
initWithMTLBuffer_shape_dataType_rowBytesSelector = mkSelector "initWithMTLBuffer:shape:dataType:rowBytes:"

-- | @Selector@ for @initWithMPSMatrix:@
initWithMPSMatrixSelector :: Selector '[Id MPSMatrix] (Id MPSGraphTensorData)
initWithMPSMatrixSelector = mkSelector "initWithMPSMatrix:"

-- | @Selector@ for @initWithMPSMatrix:rank:@
initWithMPSMatrix_rankSelector :: Selector '[Id MPSMatrix, CULong] (Id MPSGraphTensorData)
initWithMPSMatrix_rankSelector = mkSelector "initWithMPSMatrix:rank:"

-- | @Selector@ for @initWithMPSVector:@
initWithMPSVectorSelector :: Selector '[Id MPSVector] (Id MPSGraphTensorData)
initWithMPSVectorSelector = mkSelector "initWithMPSVector:"

-- | @Selector@ for @initWithMPSVector:rank:@
initWithMPSVector_rankSelector :: Selector '[Id MPSVector, CULong] (Id MPSGraphTensorData)
initWithMPSVector_rankSelector = mkSelector "initWithMPSVector:rank:"

-- | @Selector@ for @initWithMPSNDArray:@
initWithMPSNDArraySelector :: Selector '[Id MPSNDArray] (Id MPSGraphTensorData)
initWithMPSNDArraySelector = mkSelector "initWithMPSNDArray:"

-- | @Selector@ for @initWithMPSImageBatch:@
initWithMPSImageBatchSelector :: Selector '[RawId] (Id MPSGraphTensorData)
initWithMPSImageBatchSelector = mkSelector "initWithMPSImageBatch:"

-- | @Selector@ for @mpsndarray@
mpsndarraySelector :: Selector '[] (Id MPSNDArray)
mpsndarraySelector = mkSelector "mpsndarray"

-- | @Selector@ for @shape@
shapeSelector :: Selector '[] RawId
shapeSelector = mkSelector "shape"

-- | @Selector@ for @dataType@
dataTypeSelector :: Selector '[] MPSDataType
dataTypeSelector = mkSelector "dataType"

-- | @Selector@ for @device@
deviceSelector :: Selector '[] (Id MPSGraphDevice)
deviceSelector = mkSelector "device"

