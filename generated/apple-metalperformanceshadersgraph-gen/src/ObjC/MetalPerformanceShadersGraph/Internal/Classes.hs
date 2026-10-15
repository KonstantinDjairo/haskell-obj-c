{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.MetalPerformanceShadersGraph.Internal.Classes (
    module ObjC.MetalPerformanceShadersGraph.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
    module ObjC.MetalPerformanceShaders.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes
import ObjC.MetalPerformanceShaders.Internal.Classes

-- ---------- MPSGraph ----------

-- | MPSGraph
--
-- Optimized representation of a compute graph of MPSGraphOperations and MPSGraphTensors
--
-- An MPSGraph is a symbolic representation of operations to be utilized to execute compute graphs on a device.
-- 
-- Phantom type for @MPSGraph@.
data MPSGraph

instance IsObjCObject (Id MPSGraph) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraph"

class IsNSObject a => IsMPSGraph a where
  toMPSGraph :: a -> Id MPSGraph

instance IsMPSGraph (Id MPSGraph) where
  toMPSGraph = unsafeCastId

instance IsNSObject (Id MPSGraph) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphCompilationDescriptor ----------

-- | MPSGraphCompilationDescriptor
--
-- A structure which consists of all the levers users can use to compile their graphs
-- 
-- Phantom type for @MPSGraphCompilationDescriptor@.
data MPSGraphCompilationDescriptor

instance IsObjCObject (Id MPSGraphCompilationDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphCompilationDescriptor"

class IsNSObject a => IsMPSGraphCompilationDescriptor a where
  toMPSGraphCompilationDescriptor :: a -> Id MPSGraphCompilationDescriptor

instance IsMPSGraphCompilationDescriptor (Id MPSGraphCompilationDescriptor) where
  toMPSGraphCompilationDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphCompilationDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphConvolution2DOpDescriptor ----------

-- | Phantom type for @MPSGraphConvolution2DOpDescriptor@.
data MPSGraphConvolution2DOpDescriptor

instance IsObjCObject (Id MPSGraphConvolution2DOpDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphConvolution2DOpDescriptor"

class IsNSObject a => IsMPSGraphConvolution2DOpDescriptor a where
  toMPSGraphConvolution2DOpDescriptor :: a -> Id MPSGraphConvolution2DOpDescriptor

instance IsMPSGraphConvolution2DOpDescriptor (Id MPSGraphConvolution2DOpDescriptor) where
  toMPSGraphConvolution2DOpDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphConvolution2DOpDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphCreateSparseOpDescriptor ----------

-- | Phantom type for @MPSGraphCreateSparseOpDescriptor@.
data MPSGraphCreateSparseOpDescriptor

instance IsObjCObject (Id MPSGraphCreateSparseOpDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphCreateSparseOpDescriptor"

class IsNSObject a => IsMPSGraphCreateSparseOpDescriptor a where
  toMPSGraphCreateSparseOpDescriptor :: a -> Id MPSGraphCreateSparseOpDescriptor

instance IsMPSGraphCreateSparseOpDescriptor (Id MPSGraphCreateSparseOpDescriptor) where
  toMPSGraphCreateSparseOpDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphCreateSparseOpDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphDepthwiseConvolution2DOpDescriptor ----------

-- | Phantom type for @MPSGraphDepthwiseConvolution2DOpDescriptor@.
data MPSGraphDepthwiseConvolution2DOpDescriptor

instance IsObjCObject (Id MPSGraphDepthwiseConvolution2DOpDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphDepthwiseConvolution2DOpDescriptor"

class IsNSObject a => IsMPSGraphDepthwiseConvolution2DOpDescriptor a where
  toMPSGraphDepthwiseConvolution2DOpDescriptor :: a -> Id MPSGraphDepthwiseConvolution2DOpDescriptor

instance IsMPSGraphDepthwiseConvolution2DOpDescriptor (Id MPSGraphDepthwiseConvolution2DOpDescriptor) where
  toMPSGraphDepthwiseConvolution2DOpDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphDepthwiseConvolution2DOpDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphDepthwiseConvolution3DOpDescriptor ----------

-- | MPSGraphDepthwiseConvolution3DOpDescriptor
--
-- Defines a 3d depthwise convolution operation
-- 
-- Phantom type for @MPSGraphDepthwiseConvolution3DOpDescriptor@.
data MPSGraphDepthwiseConvolution3DOpDescriptor

instance IsObjCObject (Id MPSGraphDepthwiseConvolution3DOpDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphDepthwiseConvolution3DOpDescriptor"

class IsNSObject a => IsMPSGraphDepthwiseConvolution3DOpDescriptor a where
  toMPSGraphDepthwiseConvolution3DOpDescriptor :: a -> Id MPSGraphDepthwiseConvolution3DOpDescriptor

instance IsMPSGraphDepthwiseConvolution3DOpDescriptor (Id MPSGraphDepthwiseConvolution3DOpDescriptor) where
  toMPSGraphDepthwiseConvolution3DOpDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphDepthwiseConvolution3DOpDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphDevice ----------

-- | Phantom type for @MPSGraphDevice@.
data MPSGraphDevice

instance IsObjCObject (Id MPSGraphDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphDevice"

class IsNSObject a => IsMPSGraphDevice a where
  toMPSGraphDevice :: a -> Id MPSGraphDevice

instance IsMPSGraphDevice (Id MPSGraphDevice) where
  toMPSGraphDevice = unsafeCastId

instance IsNSObject (Id MPSGraphDevice) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphExecutable ----------

-- | MPSGraphExecutable
--
-- Compiled representation of a compute graph executable
--
-- An MPSGraphExecutable is a compiled graph for specific feeds for  specific targetTensors and targetOperations
-- 
-- Phantom type for @MPSGraphExecutable@.
data MPSGraphExecutable

instance IsObjCObject (Id MPSGraphExecutable) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphExecutable"

class IsNSObject a => IsMPSGraphExecutable a where
  toMPSGraphExecutable :: a -> Id MPSGraphExecutable

instance IsMPSGraphExecutable (Id MPSGraphExecutable) where
  toMPSGraphExecutable = unsafeCastId

instance IsNSObject (Id MPSGraphExecutable) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphExecutableExecutionDescriptor ----------

-- | Phantom type for @MPSGraphExecutableExecutionDescriptor@.
data MPSGraphExecutableExecutionDescriptor

instance IsObjCObject (Id MPSGraphExecutableExecutionDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphExecutableExecutionDescriptor"

class IsNSObject a => IsMPSGraphExecutableExecutionDescriptor a where
  toMPSGraphExecutableExecutionDescriptor :: a -> Id MPSGraphExecutableExecutionDescriptor

instance IsMPSGraphExecutableExecutionDescriptor (Id MPSGraphExecutableExecutionDescriptor) where
  toMPSGraphExecutableExecutionDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphExecutableExecutionDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphExecutionDescriptor ----------

-- | MPSGraphExecutionDescriptor
--
-- A structure which consists of all the levers users can use to synchronize and schedule their graph execution
-- 
-- Phantom type for @MPSGraphExecutionDescriptor@.
data MPSGraphExecutionDescriptor

instance IsObjCObject (Id MPSGraphExecutionDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphExecutionDescriptor"

class IsNSObject a => IsMPSGraphExecutionDescriptor a where
  toMPSGraphExecutionDescriptor :: a -> Id MPSGraphExecutionDescriptor

instance IsMPSGraphExecutionDescriptor (Id MPSGraphExecutionDescriptor) where
  toMPSGraphExecutionDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphExecutionDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphGRUDescriptor ----------

-- | Phantom type for @MPSGraphGRUDescriptor@.
data MPSGraphGRUDescriptor

instance IsObjCObject (Id MPSGraphGRUDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphGRUDescriptor"

class IsNSObject a => IsMPSGraphGRUDescriptor a where
  toMPSGraphGRUDescriptor :: a -> Id MPSGraphGRUDescriptor

instance IsMPSGraphGRUDescriptor (Id MPSGraphGRUDescriptor) where
  toMPSGraphGRUDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphGRUDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphLSTMDescriptor ----------

-- | Phantom type for @MPSGraphLSTMDescriptor@.
data MPSGraphLSTMDescriptor

instance IsObjCObject (Id MPSGraphLSTMDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphLSTMDescriptor"

class IsNSObject a => IsMPSGraphLSTMDescriptor a where
  toMPSGraphLSTMDescriptor :: a -> Id MPSGraphLSTMDescriptor

instance IsMPSGraphLSTMDescriptor (Id MPSGraphLSTMDescriptor) where
  toMPSGraphLSTMDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphLSTMDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphOperation ----------

-- | MPSGraphOperation
--
-- Symbolic representation of a compute operation, all tensors are created, owned and destroyed by the MPSGraph
--
-- NSCopy will cause a refrence to be taken, this is so NSDictionary can work with the tensor.              All operations  are created, owned and destroyed by the MPSGraph
-- 
-- Phantom type for @MPSGraphOperation@.
data MPSGraphOperation

instance IsObjCObject (Id MPSGraphOperation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphOperation"

class IsNSObject a => IsMPSGraphOperation a where
  toMPSGraphOperation :: a -> Id MPSGraphOperation

instance IsMPSGraphOperation (Id MPSGraphOperation) where
  toMPSGraphOperation = unsafeCastId

instance IsNSObject (Id MPSGraphOperation) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphPooling2DOpDescriptor ----------

-- | Phantom type for @MPSGraphPooling2DOpDescriptor@.
data MPSGraphPooling2DOpDescriptor

instance IsObjCObject (Id MPSGraphPooling2DOpDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphPooling2DOpDescriptor"

class IsNSObject a => IsMPSGraphPooling2DOpDescriptor a where
  toMPSGraphPooling2DOpDescriptor :: a -> Id MPSGraphPooling2DOpDescriptor

instance IsMPSGraphPooling2DOpDescriptor (Id MPSGraphPooling2DOpDescriptor) where
  toMPSGraphPooling2DOpDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphPooling2DOpDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphPooling4DOpDescriptor ----------

-- | MPSGraphPooling4DOpDescriptor
--
-- Defines a 4d pooling operation
-- 
-- Phantom type for @MPSGraphPooling4DOpDescriptor@.
data MPSGraphPooling4DOpDescriptor

instance IsObjCObject (Id MPSGraphPooling4DOpDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphPooling4DOpDescriptor"

class IsNSObject a => IsMPSGraphPooling4DOpDescriptor a where
  toMPSGraphPooling4DOpDescriptor :: a -> Id MPSGraphPooling4DOpDescriptor

instance IsMPSGraphPooling4DOpDescriptor (Id MPSGraphPooling4DOpDescriptor) where
  toMPSGraphPooling4DOpDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphPooling4DOpDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphRandomOpDescriptor ----------

-- | Phantom type for @MPSGraphRandomOpDescriptor@.
data MPSGraphRandomOpDescriptor

instance IsObjCObject (Id MPSGraphRandomOpDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphRandomOpDescriptor"

class IsNSObject a => IsMPSGraphRandomOpDescriptor a where
  toMPSGraphRandomOpDescriptor :: a -> Id MPSGraphRandomOpDescriptor

instance IsMPSGraphRandomOpDescriptor (Id MPSGraphRandomOpDescriptor) where
  toMPSGraphRandomOpDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphRandomOpDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphSingleGateRNNDescriptor ----------

-- | Phantom type for @MPSGraphSingleGateRNNDescriptor@.
data MPSGraphSingleGateRNNDescriptor

instance IsObjCObject (Id MPSGraphSingleGateRNNDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphSingleGateRNNDescriptor"

class IsNSObject a => IsMPSGraphSingleGateRNNDescriptor a where
  toMPSGraphSingleGateRNNDescriptor :: a -> Id MPSGraphSingleGateRNNDescriptor

instance IsMPSGraphSingleGateRNNDescriptor (Id MPSGraphSingleGateRNNDescriptor) where
  toMPSGraphSingleGateRNNDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphSingleGateRNNDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphStencilOpDescriptor ----------

-- | Phantom type for @MPSGraphStencilOpDescriptor@.
data MPSGraphStencilOpDescriptor

instance IsObjCObject (Id MPSGraphStencilOpDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphStencilOpDescriptor"

class IsNSObject a => IsMPSGraphStencilOpDescriptor a where
  toMPSGraphStencilOpDescriptor :: a -> Id MPSGraphStencilOpDescriptor

instance IsMPSGraphStencilOpDescriptor (Id MPSGraphStencilOpDescriptor) where
  toMPSGraphStencilOpDescriptor = unsafeCastId

instance IsNSObject (Id MPSGraphStencilOpDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphTensor ----------

-- | MPSGraphTensor
--
-- Symbolic representation of a compute datatype
--
-- NSCopy will cause a refrence to be taken, this is so NSDictionary can work with the tensor.              All tensors are created, owned and destroyed by the MPSGraph
-- 
-- Phantom type for @MPSGraphTensor@.
data MPSGraphTensor

instance IsObjCObject (Id MPSGraphTensor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphTensor"

class IsNSObject a => IsMPSGraphTensor a where
  toMPSGraphTensor :: a -> Id MPSGraphTensor

instance IsMPSGraphTensor (Id MPSGraphTensor) where
  toMPSGraphTensor = unsafeCastId

instance IsNSObject (Id MPSGraphTensor) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphTensorData ----------

-- | MPSGraphTensorData
--
-- Representation of a compute datatype
--
-- MPSGraphTensorData is how we pass data to an MPSGraph, a reference will be taken to your data and used just in time when MPSGraph is run.
-- 
-- Phantom type for @MPSGraphTensorData@.
data MPSGraphTensorData

instance IsObjCObject (Id MPSGraphTensorData) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphTensorData"

class IsNSObject a => IsMPSGraphTensorData a where
  toMPSGraphTensorData :: a -> Id MPSGraphTensorData

instance IsMPSGraphTensorData (Id MPSGraphTensorData) where
  toMPSGraphTensorData = unsafeCastId

instance IsNSObject (Id MPSGraphTensorData) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphType ----------

-- | Phantom type for @MPSGraphType@.
data MPSGraphType

instance IsObjCObject (Id MPSGraphType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphType"

class IsNSObject a => IsMPSGraphType a where
  toMPSGraphType :: a -> Id MPSGraphType

instance IsMPSGraphType (Id MPSGraphType) where
  toMPSGraphType = unsafeCastId

instance IsNSObject (Id MPSGraphType) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphVariableOp ----------

-- | Phantom type for @MPSGraphVariableOp@.
data MPSGraphVariableOp

instance IsObjCObject (Id MPSGraphVariableOp) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphVariableOp"

class IsMPSGraphOperation a => IsMPSGraphVariableOp a where
  toMPSGraphVariableOp :: a -> Id MPSGraphVariableOp

instance IsMPSGraphVariableOp (Id MPSGraphVariableOp) where
  toMPSGraphVariableOp = unsafeCastId

instance IsMPSGraphOperation (Id MPSGraphVariableOp) where
  toMPSGraphOperation = unsafeCastId

instance IsNSObject (Id MPSGraphVariableOp) where
  toNSObject = unsafeCastId

-- ---------- MPSGraphShapedType ----------

-- | Phantom type for @MPSGraphShapedType@.
data MPSGraphShapedType

instance IsObjCObject (Id MPSGraphShapedType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MPSGraphShapedType"

class IsMPSGraphType a => IsMPSGraphShapedType a where
  toMPSGraphShapedType :: a -> Id MPSGraphShapedType

instance IsMPSGraphShapedType (Id MPSGraphShapedType) where
  toMPSGraphShapedType = unsafeCastId

instance IsMPSGraphType (Id MPSGraphShapedType) where
  toMPSGraphType = unsafeCastId

instance IsNSObject (Id MPSGraphShapedType) where
  toNSObject = unsafeCastId
