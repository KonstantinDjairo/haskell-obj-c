{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.Metal.Internal.Classes (
    module ObjC.Metal.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- MTLAccelerationStructureDescriptor ----------

-- | Base class for acceleration structure descriptors. Do not use this class directly. Use one of the derived classes instead.
-- 
-- Phantom type for @MTLAccelerationStructureDescriptor@.
data MTLAccelerationStructureDescriptor

instance IsObjCObject (Id MTLAccelerationStructureDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructureDescriptor"

class IsNSObject a => IsMTLAccelerationStructureDescriptor a where
  toMTLAccelerationStructureDescriptor :: a -> Id MTLAccelerationStructureDescriptor

instance IsMTLAccelerationStructureDescriptor (Id MTLAccelerationStructureDescriptor) where
  toMTLAccelerationStructureDescriptor = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructureDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAccelerationStructureGeometryDescriptor ----------

-- | Base class for all geometry descriptors. Do not use this class directly. Use one of the derived classes instead.
-- 
-- Phantom type for @MTLAccelerationStructureGeometryDescriptor@.
data MTLAccelerationStructureGeometryDescriptor

instance IsObjCObject (Id MTLAccelerationStructureGeometryDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructureGeometryDescriptor"

class IsNSObject a => IsMTLAccelerationStructureGeometryDescriptor a where
  toMTLAccelerationStructureGeometryDescriptor :: a -> Id MTLAccelerationStructureGeometryDescriptor

instance IsMTLAccelerationStructureGeometryDescriptor (Id MTLAccelerationStructureGeometryDescriptor) where
  toMTLAccelerationStructureGeometryDescriptor = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructureGeometryDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAccelerationStructurePassDescriptor ----------

-- | MTLAccelerationStructurePassDescriptor
--
-- MTLAccelerationStructurePassDescriptor represents a collection of attachments to be used to create a concrete acceleration structure encoder.
-- 
-- Phantom type for @MTLAccelerationStructurePassDescriptor@.
data MTLAccelerationStructurePassDescriptor

instance IsObjCObject (Id MTLAccelerationStructurePassDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructurePassDescriptor"

class IsNSObject a => IsMTLAccelerationStructurePassDescriptor a where
  toMTLAccelerationStructurePassDescriptor :: a -> Id MTLAccelerationStructurePassDescriptor

instance IsMTLAccelerationStructurePassDescriptor (Id MTLAccelerationStructurePassDescriptor) where
  toMTLAccelerationStructurePassDescriptor = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructurePassDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAccelerationStructurePassSampleBufferAttachmentDescriptor ----------

-- | Phantom type for @MTLAccelerationStructurePassSampleBufferAttachmentDescriptor@.
data MTLAccelerationStructurePassSampleBufferAttachmentDescriptor

instance IsObjCObject (Id MTLAccelerationStructurePassSampleBufferAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructurePassSampleBufferAttachmentDescriptor"

class IsNSObject a => IsMTLAccelerationStructurePassSampleBufferAttachmentDescriptor a where
  toMTLAccelerationStructurePassSampleBufferAttachmentDescriptor :: a -> Id MTLAccelerationStructurePassSampleBufferAttachmentDescriptor

instance IsMTLAccelerationStructurePassSampleBufferAttachmentDescriptor (Id MTLAccelerationStructurePassSampleBufferAttachmentDescriptor) where
  toMTLAccelerationStructurePassSampleBufferAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructurePassSampleBufferAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray ----------

-- | Phantom type for @MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray@.
data MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray

instance IsObjCObject (Id MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray"

class IsNSObject a => IsMTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray a where
  toMTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray :: a -> Id MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray

instance IsMTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray (Id MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray) where
  toMTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLArgument ----------

-- | MTLArgument
-- 
-- Phantom type for @MTLArgument@.
data MTLArgument

instance IsObjCObject (Id MTLArgument) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLArgument"

class IsNSObject a => IsMTLArgument a where
  toMTLArgument :: a -> Id MTLArgument

instance IsMTLArgument (Id MTLArgument) where
  toMTLArgument = unsafeCastId

instance IsNSObject (Id MTLArgument) where
  toNSObject = unsafeCastId

-- ---------- MTLArgumentDescriptor ----------

-- | MTLArgumentDescriptor
--
-- Represents a member of an argument buffer
-- 
-- Phantom type for @MTLArgumentDescriptor@.
data MTLArgumentDescriptor

instance IsObjCObject (Id MTLArgumentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLArgumentDescriptor"

class IsNSObject a => IsMTLArgumentDescriptor a where
  toMTLArgumentDescriptor :: a -> Id MTLArgumentDescriptor

instance IsMTLArgumentDescriptor (Id MTLArgumentDescriptor) where
  toMTLArgumentDescriptor = unsafeCastId

instance IsNSObject (Id MTLArgumentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAttribute ----------

-- | Phantom type for @MTLAttribute@.
data MTLAttribute

instance IsObjCObject (Id MTLAttribute) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAttribute"

class IsNSObject a => IsMTLAttribute a where
  toMTLAttribute :: a -> Id MTLAttribute

instance IsMTLAttribute (Id MTLAttribute) where
  toMTLAttribute = unsafeCastId

instance IsNSObject (Id MTLAttribute) where
  toNSObject = unsafeCastId

-- ---------- MTLAttributeDescriptor ----------

-- | Phantom type for @MTLAttributeDescriptor@.
data MTLAttributeDescriptor

instance IsObjCObject (Id MTLAttributeDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAttributeDescriptor"

class IsNSObject a => IsMTLAttributeDescriptor a where
  toMTLAttributeDescriptor :: a -> Id MTLAttributeDescriptor

instance IsMTLAttributeDescriptor (Id MTLAttributeDescriptor) where
  toMTLAttributeDescriptor = unsafeCastId

instance IsNSObject (Id MTLAttributeDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAttributeDescriptorArray ----------

-- | Phantom type for @MTLAttributeDescriptorArray@.
data MTLAttributeDescriptorArray

instance IsObjCObject (Id MTLAttributeDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAttributeDescriptorArray"

class IsNSObject a => IsMTLAttributeDescriptorArray a where
  toMTLAttributeDescriptorArray :: a -> Id MTLAttributeDescriptorArray

instance IsMTLAttributeDescriptorArray (Id MTLAttributeDescriptorArray) where
  toMTLAttributeDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLAttributeDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLBinaryArchiveDescriptor ----------

-- | MTLBinaryArchiveDescriptor
--
-- A class used to indicate how an archive should be created
-- 
-- Phantom type for @MTLBinaryArchiveDescriptor@.
data MTLBinaryArchiveDescriptor

instance IsObjCObject (Id MTLBinaryArchiveDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLBinaryArchiveDescriptor"

class IsNSObject a => IsMTLBinaryArchiveDescriptor a where
  toMTLBinaryArchiveDescriptor :: a -> Id MTLBinaryArchiveDescriptor

instance IsMTLBinaryArchiveDescriptor (Id MTLBinaryArchiveDescriptor) where
  toMTLBinaryArchiveDescriptor = unsafeCastId

instance IsNSObject (Id MTLBinaryArchiveDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLBlitPassDescriptor ----------

-- | MTLBlitPassDescriptor
--
-- MTLBlitPassDescriptor represents a collection of attachments to be used to create a concrete blit command encoder
-- 
-- Phantom type for @MTLBlitPassDescriptor@.
data MTLBlitPassDescriptor

instance IsObjCObject (Id MTLBlitPassDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLBlitPassDescriptor"

class IsNSObject a => IsMTLBlitPassDescriptor a where
  toMTLBlitPassDescriptor :: a -> Id MTLBlitPassDescriptor

instance IsMTLBlitPassDescriptor (Id MTLBlitPassDescriptor) where
  toMTLBlitPassDescriptor = unsafeCastId

instance IsNSObject (Id MTLBlitPassDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLBlitPassSampleBufferAttachmentDescriptor ----------

-- | Phantom type for @MTLBlitPassSampleBufferAttachmentDescriptor@.
data MTLBlitPassSampleBufferAttachmentDescriptor

instance IsObjCObject (Id MTLBlitPassSampleBufferAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLBlitPassSampleBufferAttachmentDescriptor"

class IsNSObject a => IsMTLBlitPassSampleBufferAttachmentDescriptor a where
  toMTLBlitPassSampleBufferAttachmentDescriptor :: a -> Id MTLBlitPassSampleBufferAttachmentDescriptor

instance IsMTLBlitPassSampleBufferAttachmentDescriptor (Id MTLBlitPassSampleBufferAttachmentDescriptor) where
  toMTLBlitPassSampleBufferAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLBlitPassSampleBufferAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLBlitPassSampleBufferAttachmentDescriptorArray ----------

-- | Phantom type for @MTLBlitPassSampleBufferAttachmentDescriptorArray@.
data MTLBlitPassSampleBufferAttachmentDescriptorArray

instance IsObjCObject (Id MTLBlitPassSampleBufferAttachmentDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLBlitPassSampleBufferAttachmentDescriptorArray"

class IsNSObject a => IsMTLBlitPassSampleBufferAttachmentDescriptorArray a where
  toMTLBlitPassSampleBufferAttachmentDescriptorArray :: a -> Id MTLBlitPassSampleBufferAttachmentDescriptorArray

instance IsMTLBlitPassSampleBufferAttachmentDescriptorArray (Id MTLBlitPassSampleBufferAttachmentDescriptorArray) where
  toMTLBlitPassSampleBufferAttachmentDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLBlitPassSampleBufferAttachmentDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLBufferLayoutDescriptor ----------

-- | Phantom type for @MTLBufferLayoutDescriptor@.
data MTLBufferLayoutDescriptor

instance IsObjCObject (Id MTLBufferLayoutDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLBufferLayoutDescriptor"

class IsNSObject a => IsMTLBufferLayoutDescriptor a where
  toMTLBufferLayoutDescriptor :: a -> Id MTLBufferLayoutDescriptor

instance IsMTLBufferLayoutDescriptor (Id MTLBufferLayoutDescriptor) where
  toMTLBufferLayoutDescriptor = unsafeCastId

instance IsNSObject (Id MTLBufferLayoutDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLBufferLayoutDescriptorArray ----------

-- | Phantom type for @MTLBufferLayoutDescriptorArray@.
data MTLBufferLayoutDescriptorArray

instance IsObjCObject (Id MTLBufferLayoutDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLBufferLayoutDescriptorArray"

class IsNSObject a => IsMTLBufferLayoutDescriptorArray a where
  toMTLBufferLayoutDescriptorArray :: a -> Id MTLBufferLayoutDescriptorArray

instance IsMTLBufferLayoutDescriptorArray (Id MTLBufferLayoutDescriptorArray) where
  toMTLBufferLayoutDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLBufferLayoutDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLCaptureDescriptor ----------

-- | Phantom type for @MTLCaptureDescriptor@.
data MTLCaptureDescriptor

instance IsObjCObject (Id MTLCaptureDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLCaptureDescriptor"

class IsNSObject a => IsMTLCaptureDescriptor a where
  toMTLCaptureDescriptor :: a -> Id MTLCaptureDescriptor

instance IsMTLCaptureDescriptor (Id MTLCaptureDescriptor) where
  toMTLCaptureDescriptor = unsafeCastId

instance IsNSObject (Id MTLCaptureDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLCaptureManager ----------

-- | Phantom type for @MTLCaptureManager@.
data MTLCaptureManager

instance IsObjCObject (Id MTLCaptureManager) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLCaptureManager"

class IsNSObject a => IsMTLCaptureManager a where
  toMTLCaptureManager :: a -> Id MTLCaptureManager

instance IsMTLCaptureManager (Id MTLCaptureManager) where
  toMTLCaptureManager = unsafeCastId

instance IsNSObject (Id MTLCaptureManager) where
  toNSObject = unsafeCastId

-- ---------- MTLCommandBufferDescriptor ----------

-- | MTLCommandBufferDescriptor
--
-- An object that you use to configure new Metal command buffer objects.
-- 
-- Phantom type for @MTLCommandBufferDescriptor@.
data MTLCommandBufferDescriptor

instance IsObjCObject (Id MTLCommandBufferDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLCommandBufferDescriptor"

class IsNSObject a => IsMTLCommandBufferDescriptor a where
  toMTLCommandBufferDescriptor :: a -> Id MTLCommandBufferDescriptor

instance IsMTLCommandBufferDescriptor (Id MTLCommandBufferDescriptor) where
  toMTLCommandBufferDescriptor = unsafeCastId

instance IsNSObject (Id MTLCommandBufferDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLCompileOptions ----------

-- | Phantom type for @MTLCompileOptions@.
data MTLCompileOptions

instance IsObjCObject (Id MTLCompileOptions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLCompileOptions"

class IsNSObject a => IsMTLCompileOptions a where
  toMTLCompileOptions :: a -> Id MTLCompileOptions

instance IsMTLCompileOptions (Id MTLCompileOptions) where
  toMTLCompileOptions = unsafeCastId

instance IsNSObject (Id MTLCompileOptions) where
  toNSObject = unsafeCastId

-- ---------- MTLComputePassDescriptor ----------

-- | MTLComputePassDescriptor
--
-- MTLComputePassDescriptor represents a collection of attachments to be used to create a concrete compute command encoder
-- 
-- Phantom type for @MTLComputePassDescriptor@.
data MTLComputePassDescriptor

instance IsObjCObject (Id MTLComputePassDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLComputePassDescriptor"

class IsNSObject a => IsMTLComputePassDescriptor a where
  toMTLComputePassDescriptor :: a -> Id MTLComputePassDescriptor

instance IsMTLComputePassDescriptor (Id MTLComputePassDescriptor) where
  toMTLComputePassDescriptor = unsafeCastId

instance IsNSObject (Id MTLComputePassDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLComputePassSampleBufferAttachmentDescriptor ----------

-- | Phantom type for @MTLComputePassSampleBufferAttachmentDescriptor@.
data MTLComputePassSampleBufferAttachmentDescriptor

instance IsObjCObject (Id MTLComputePassSampleBufferAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLComputePassSampleBufferAttachmentDescriptor"

class IsNSObject a => IsMTLComputePassSampleBufferAttachmentDescriptor a where
  toMTLComputePassSampleBufferAttachmentDescriptor :: a -> Id MTLComputePassSampleBufferAttachmentDescriptor

instance IsMTLComputePassSampleBufferAttachmentDescriptor (Id MTLComputePassSampleBufferAttachmentDescriptor) where
  toMTLComputePassSampleBufferAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLComputePassSampleBufferAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLComputePassSampleBufferAttachmentDescriptorArray ----------

-- | Phantom type for @MTLComputePassSampleBufferAttachmentDescriptorArray@.
data MTLComputePassSampleBufferAttachmentDescriptorArray

instance IsObjCObject (Id MTLComputePassSampleBufferAttachmentDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLComputePassSampleBufferAttachmentDescriptorArray"

class IsNSObject a => IsMTLComputePassSampleBufferAttachmentDescriptorArray a where
  toMTLComputePassSampleBufferAttachmentDescriptorArray :: a -> Id MTLComputePassSampleBufferAttachmentDescriptorArray

instance IsMTLComputePassSampleBufferAttachmentDescriptorArray (Id MTLComputePassSampleBufferAttachmentDescriptorArray) where
  toMTLComputePassSampleBufferAttachmentDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLComputePassSampleBufferAttachmentDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLComputePipelineDescriptor ----------

-- | Phantom type for @MTLComputePipelineDescriptor@.
data MTLComputePipelineDescriptor

instance IsObjCObject (Id MTLComputePipelineDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLComputePipelineDescriptor"

class IsNSObject a => IsMTLComputePipelineDescriptor a where
  toMTLComputePipelineDescriptor :: a -> Id MTLComputePipelineDescriptor

instance IsMTLComputePipelineDescriptor (Id MTLComputePipelineDescriptor) where
  toMTLComputePipelineDescriptor = unsafeCastId

instance IsNSObject (Id MTLComputePipelineDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLComputePipelineReflection ----------

-- | Phantom type for @MTLComputePipelineReflection@.
data MTLComputePipelineReflection

instance IsObjCObject (Id MTLComputePipelineReflection) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLComputePipelineReflection"

class IsNSObject a => IsMTLComputePipelineReflection a where
  toMTLComputePipelineReflection :: a -> Id MTLComputePipelineReflection

instance IsMTLComputePipelineReflection (Id MTLComputePipelineReflection) where
  toMTLComputePipelineReflection = unsafeCastId

instance IsNSObject (Id MTLComputePipelineReflection) where
  toNSObject = unsafeCastId

-- ---------- MTLCounterSampleBufferDescriptor ----------

-- | MTLCounterSampleBufferDescriptor
--
-- Object to represent the counter state.
-- 
-- Phantom type for @MTLCounterSampleBufferDescriptor@.
data MTLCounterSampleBufferDescriptor

instance IsObjCObject (Id MTLCounterSampleBufferDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLCounterSampleBufferDescriptor"

class IsNSObject a => IsMTLCounterSampleBufferDescriptor a where
  toMTLCounterSampleBufferDescriptor :: a -> Id MTLCounterSampleBufferDescriptor

instance IsMTLCounterSampleBufferDescriptor (Id MTLCounterSampleBufferDescriptor) where
  toMTLCounterSampleBufferDescriptor = unsafeCastId

instance IsNSObject (Id MTLCounterSampleBufferDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLDepthStencilDescriptor ----------

-- | Phantom type for @MTLDepthStencilDescriptor@.
data MTLDepthStencilDescriptor

instance IsObjCObject (Id MTLDepthStencilDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLDepthStencilDescriptor"

class IsNSObject a => IsMTLDepthStencilDescriptor a where
  toMTLDepthStencilDescriptor :: a -> Id MTLDepthStencilDescriptor

instance IsMTLDepthStencilDescriptor (Id MTLDepthStencilDescriptor) where
  toMTLDepthStencilDescriptor = unsafeCastId

instance IsNSObject (Id MTLDepthStencilDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLFunctionConstant ----------

-- | MTLFunctionConstant
--
-- describe an uberShader constant used by the function
-- 
-- Phantom type for @MTLFunctionConstant@.
data MTLFunctionConstant

instance IsObjCObject (Id MTLFunctionConstant) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFunctionConstant"

class IsNSObject a => IsMTLFunctionConstant a where
  toMTLFunctionConstant :: a -> Id MTLFunctionConstant

instance IsMTLFunctionConstant (Id MTLFunctionConstant) where
  toMTLFunctionConstant = unsafeCastId

instance IsNSObject (Id MTLFunctionConstant) where
  toNSObject = unsafeCastId

-- ---------- MTLFunctionConstantValues ----------

-- | Phantom type for @MTLFunctionConstantValues@.
data MTLFunctionConstantValues

instance IsObjCObject (Id MTLFunctionConstantValues) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFunctionConstantValues"

class IsNSObject a => IsMTLFunctionConstantValues a where
  toMTLFunctionConstantValues :: a -> Id MTLFunctionConstantValues

instance IsMTLFunctionConstantValues (Id MTLFunctionConstantValues) where
  toMTLFunctionConstantValues = unsafeCastId

instance IsNSObject (Id MTLFunctionConstantValues) where
  toNSObject = unsafeCastId

-- ---------- MTLFunctionDescriptor ----------

-- | Phantom type for @MTLFunctionDescriptor@.
data MTLFunctionDescriptor

instance IsObjCObject (Id MTLFunctionDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFunctionDescriptor"

class IsNSObject a => IsMTLFunctionDescriptor a where
  toMTLFunctionDescriptor :: a -> Id MTLFunctionDescriptor

instance IsMTLFunctionDescriptor (Id MTLFunctionDescriptor) where
  toMTLFunctionDescriptor = unsafeCastId

instance IsNSObject (Id MTLFunctionDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLFunctionStitchingAttributeAlwaysInline ----------

-- | MTLFunctionStitchingAttributeAlwaysInline
--
-- Applies the @__attribute__((always_inline))@ attribute to the produced stitched function.
-- 
-- Phantom type for @MTLFunctionStitchingAttributeAlwaysInline@.
data MTLFunctionStitchingAttributeAlwaysInline

instance IsObjCObject (Id MTLFunctionStitchingAttributeAlwaysInline) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFunctionStitchingAttributeAlwaysInline"

class IsNSObject a => IsMTLFunctionStitchingAttributeAlwaysInline a where
  toMTLFunctionStitchingAttributeAlwaysInline :: a -> Id MTLFunctionStitchingAttributeAlwaysInline

instance IsMTLFunctionStitchingAttributeAlwaysInline (Id MTLFunctionStitchingAttributeAlwaysInline) where
  toMTLFunctionStitchingAttributeAlwaysInline = unsafeCastId

instance IsNSObject (Id MTLFunctionStitchingAttributeAlwaysInline) where
  toNSObject = unsafeCastId

-- ---------- MTLFunctionStitchingFunctionNode ----------

-- | MTLFunctionStitchingFunctionNode
--
-- A function node that calls the specified function with arguments and ordering determined by data and control dependencies.
-- 
-- Phantom type for @MTLFunctionStitchingFunctionNode@.
data MTLFunctionStitchingFunctionNode

instance IsObjCObject (Id MTLFunctionStitchingFunctionNode) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFunctionStitchingFunctionNode"

class IsNSObject a => IsMTLFunctionStitchingFunctionNode a where
  toMTLFunctionStitchingFunctionNode :: a -> Id MTLFunctionStitchingFunctionNode

instance IsMTLFunctionStitchingFunctionNode (Id MTLFunctionStitchingFunctionNode) where
  toMTLFunctionStitchingFunctionNode = unsafeCastId

instance IsNSObject (Id MTLFunctionStitchingFunctionNode) where
  toNSObject = unsafeCastId

-- ---------- MTLFunctionStitchingGraph ----------

-- | MTLFunctionStitchingGraph
--
-- A function graph that describes a directed acyclic graph.
--
-- The return value of the output node will be used as the return value for the final stitched graph.
-- 
-- Phantom type for @MTLFunctionStitchingGraph@.
data MTLFunctionStitchingGraph

instance IsObjCObject (Id MTLFunctionStitchingGraph) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFunctionStitchingGraph"

class IsNSObject a => IsMTLFunctionStitchingGraph a where
  toMTLFunctionStitchingGraph :: a -> Id MTLFunctionStitchingGraph

instance IsMTLFunctionStitchingGraph (Id MTLFunctionStitchingGraph) where
  toMTLFunctionStitchingGraph = unsafeCastId

instance IsNSObject (Id MTLFunctionStitchingGraph) where
  toNSObject = unsafeCastId

-- ---------- MTLFunctionStitchingInputNode ----------

-- | MTLFunctionStitchingInputNode
--
-- An indexed input node of the produced stitched function.
-- 
-- Phantom type for @MTLFunctionStitchingInputNode@.
data MTLFunctionStitchingInputNode

instance IsObjCObject (Id MTLFunctionStitchingInputNode) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLFunctionStitchingInputNode"

class IsNSObject a => IsMTLFunctionStitchingInputNode a where
  toMTLFunctionStitchingInputNode :: a -> Id MTLFunctionStitchingInputNode

instance IsMTLFunctionStitchingInputNode (Id MTLFunctionStitchingInputNode) where
  toMTLFunctionStitchingInputNode = unsafeCastId

instance IsNSObject (Id MTLFunctionStitchingInputNode) where
  toNSObject = unsafeCastId

-- ---------- MTLHeapDescriptor ----------

-- | MTLHeapDescriptor
-- 
-- Phantom type for @MTLHeapDescriptor@.
data MTLHeapDescriptor

instance IsObjCObject (Id MTLHeapDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLHeapDescriptor"

class IsNSObject a => IsMTLHeapDescriptor a where
  toMTLHeapDescriptor :: a -> Id MTLHeapDescriptor

instance IsMTLHeapDescriptor (Id MTLHeapDescriptor) where
  toMTLHeapDescriptor = unsafeCastId

instance IsNSObject (Id MTLHeapDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLIOCommandQueueDescriptor ----------

-- | MTLIOCommandQueueDescriptor
--
-- Represents a descriptor to create a MTLIOCommandQueue.
-- 
-- Phantom type for @MTLIOCommandQueueDescriptor@.
data MTLIOCommandQueueDescriptor

instance IsObjCObject (Id MTLIOCommandQueueDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLIOCommandQueueDescriptor"

class IsNSObject a => IsMTLIOCommandQueueDescriptor a where
  toMTLIOCommandQueueDescriptor :: a -> Id MTLIOCommandQueueDescriptor

instance IsMTLIOCommandQueueDescriptor (Id MTLIOCommandQueueDescriptor) where
  toMTLIOCommandQueueDescriptor = unsafeCastId

instance IsNSObject (Id MTLIOCommandQueueDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLIndirectCommandBufferDescriptor ----------

-- | Describes the limits and features that can be used in an indirect command
-- 
-- Phantom type for @MTLIndirectCommandBufferDescriptor@.
data MTLIndirectCommandBufferDescriptor

instance IsObjCObject (Id MTLIndirectCommandBufferDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLIndirectCommandBufferDescriptor"

class IsNSObject a => IsMTLIndirectCommandBufferDescriptor a where
  toMTLIndirectCommandBufferDescriptor :: a -> Id MTLIndirectCommandBufferDescriptor

instance IsMTLIndirectCommandBufferDescriptor (Id MTLIndirectCommandBufferDescriptor) where
  toMTLIndirectCommandBufferDescriptor = unsafeCastId

instance IsNSObject (Id MTLIndirectCommandBufferDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLIntersectionFunctionTableDescriptor ----------

-- | Phantom type for @MTLIntersectionFunctionTableDescriptor@.
data MTLIntersectionFunctionTableDescriptor

instance IsObjCObject (Id MTLIntersectionFunctionTableDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLIntersectionFunctionTableDescriptor"

class IsNSObject a => IsMTLIntersectionFunctionTableDescriptor a where
  toMTLIntersectionFunctionTableDescriptor :: a -> Id MTLIntersectionFunctionTableDescriptor

instance IsMTLIntersectionFunctionTableDescriptor (Id MTLIntersectionFunctionTableDescriptor) where
  toMTLIntersectionFunctionTableDescriptor = unsafeCastId

instance IsNSObject (Id MTLIntersectionFunctionTableDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLLinkedFunctions ----------

-- | MTLLinkedFunctions
--
-- A class to set functions to be linked.
--
-- All functions set on this object must have unique names.
-- 
-- Phantom type for @MTLLinkedFunctions@.
data MTLLinkedFunctions

instance IsObjCObject (Id MTLLinkedFunctions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLLinkedFunctions"

class IsNSObject a => IsMTLLinkedFunctions a where
  toMTLLinkedFunctions :: a -> Id MTLLinkedFunctions

instance IsMTLLinkedFunctions (Id MTLLinkedFunctions) where
  toMTLLinkedFunctions = unsafeCastId

instance IsNSObject (Id MTLLinkedFunctions) where
  toNSObject = unsafeCastId

-- ---------- MTLMeshRenderPipelineDescriptor ----------

-- | MTLMeshRenderPipelineDescriptor
--
-- As an alternative to a vertex + fragment shader render pipeline, this render pipeline uses a (object +) mesh + fragment shader for rendering geometry.
-- 
-- Phantom type for @MTLMeshRenderPipelineDescriptor@.
data MTLMeshRenderPipelineDescriptor

instance IsObjCObject (Id MTLMeshRenderPipelineDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLMeshRenderPipelineDescriptor"

class IsNSObject a => IsMTLMeshRenderPipelineDescriptor a where
  toMTLMeshRenderPipelineDescriptor :: a -> Id MTLMeshRenderPipelineDescriptor

instance IsMTLMeshRenderPipelineDescriptor (Id MTLMeshRenderPipelineDescriptor) where
  toMTLMeshRenderPipelineDescriptor = unsafeCastId

instance IsNSObject (Id MTLMeshRenderPipelineDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLMotionKeyframeData ----------

-- | MTLbuffer and description how the data is stored in it.
-- 
-- Phantom type for @MTLMotionKeyframeData@.
data MTLMotionKeyframeData

instance IsObjCObject (Id MTLMotionKeyframeData) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLMotionKeyframeData"

class IsNSObject a => IsMTLMotionKeyframeData a where
  toMTLMotionKeyframeData :: a -> Id MTLMotionKeyframeData

instance IsMTLMotionKeyframeData (Id MTLMotionKeyframeData) where
  toMTLMotionKeyframeData = unsafeCastId

instance IsNSObject (Id MTLMotionKeyframeData) where
  toNSObject = unsafeCastId

-- ---------- MTLPipelineBufferDescriptor ----------

-- | Phantom type for @MTLPipelineBufferDescriptor@.
data MTLPipelineBufferDescriptor

instance IsObjCObject (Id MTLPipelineBufferDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLPipelineBufferDescriptor"

class IsNSObject a => IsMTLPipelineBufferDescriptor a where
  toMTLPipelineBufferDescriptor :: a -> Id MTLPipelineBufferDescriptor

instance IsMTLPipelineBufferDescriptor (Id MTLPipelineBufferDescriptor) where
  toMTLPipelineBufferDescriptor = unsafeCastId

instance IsNSObject (Id MTLPipelineBufferDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLPipelineBufferDescriptorArray ----------

-- | Phantom type for @MTLPipelineBufferDescriptorArray@.
data MTLPipelineBufferDescriptorArray

instance IsObjCObject (Id MTLPipelineBufferDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLPipelineBufferDescriptorArray"

class IsNSObject a => IsMTLPipelineBufferDescriptorArray a where
  toMTLPipelineBufferDescriptorArray :: a -> Id MTLPipelineBufferDescriptorArray

instance IsMTLPipelineBufferDescriptorArray (Id MTLPipelineBufferDescriptorArray) where
  toMTLPipelineBufferDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLPipelineBufferDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLRasterizationRateLayerArray ----------

-- | MTLRasterizationRateLayerArray
--
-- Mutable array of MTLRasterizationRateLayerDescriptor
-- 
-- Phantom type for @MTLRasterizationRateLayerArray@.
data MTLRasterizationRateLayerArray

instance IsObjCObject (Id MTLRasterizationRateLayerArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRasterizationRateLayerArray"

class IsNSObject a => IsMTLRasterizationRateLayerArray a where
  toMTLRasterizationRateLayerArray :: a -> Id MTLRasterizationRateLayerArray

instance IsMTLRasterizationRateLayerArray (Id MTLRasterizationRateLayerArray) where
  toMTLRasterizationRateLayerArray = unsafeCastId

instance IsNSObject (Id MTLRasterizationRateLayerArray) where
  toNSObject = unsafeCastId

-- ---------- MTLRasterizationRateLayerDescriptor ----------

-- | MTLRasterizationRateLayerDescriptor
--
-- Describes the minimum rasterization rate screen space using two piecewise linear functions.
--
-- The two piecewise linear function (PLF) describe the desired rasterization quality on the horizontal and vertical axis separately. Each quality sample in the PLF is stored in an array as single precision floating point value between 0 (lowest quality) and 1 (highest quality). The first sample in the array describes the quality at the top (vertical) or left (horizontal) edge of screen space. The last sample in the array describes the quality at the bottom (vertical) or right (horizontal) edge of screen space. All other samples are spaced equidistant in screen space. MTLRasterizationRateLayerDescriptor instances will be stored inside a MTLRasterizationRateMapDescriptor which in turn is compiled by MTLDevice into a MTLRasterizationRateMap. Because MTLDevice may not support the requested granularity, the provided samples may be rounded up (towards higher quality) during compilation.
-- 
-- Phantom type for @MTLRasterizationRateLayerDescriptor@.
data MTLRasterizationRateLayerDescriptor

instance IsObjCObject (Id MTLRasterizationRateLayerDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRasterizationRateLayerDescriptor"

class IsNSObject a => IsMTLRasterizationRateLayerDescriptor a where
  toMTLRasterizationRateLayerDescriptor :: a -> Id MTLRasterizationRateLayerDescriptor

instance IsMTLRasterizationRateLayerDescriptor (Id MTLRasterizationRateLayerDescriptor) where
  toMTLRasterizationRateLayerDescriptor = unsafeCastId

instance IsNSObject (Id MTLRasterizationRateLayerDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRasterizationRateMapDescriptor ----------

-- | MTLRasterizationRateMapDescriptor
--
-- Describes a MTLRasterizationRateMap containing an arbitrary number of MTLRasterizationRateLayerDescriptor instances.
--
-- An MTLRasterizationRateMapDescriptor is compiled into an MTLRasterizationRateMap using MTLDevice.
-- 
-- Phantom type for @MTLRasterizationRateMapDescriptor@.
data MTLRasterizationRateMapDescriptor

instance IsObjCObject (Id MTLRasterizationRateMapDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRasterizationRateMapDescriptor"

class IsNSObject a => IsMTLRasterizationRateMapDescriptor a where
  toMTLRasterizationRateMapDescriptor :: a -> Id MTLRasterizationRateMapDescriptor

instance IsMTLRasterizationRateMapDescriptor (Id MTLRasterizationRateMapDescriptor) where
  toMTLRasterizationRateMapDescriptor = unsafeCastId

instance IsNSObject (Id MTLRasterizationRateMapDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRasterizationRateSampleArray ----------

-- | MTLRasterizationRateSampleArray
--
-- A helper object for convient access to samples stored in an array.
-- 
-- Phantom type for @MTLRasterizationRateSampleArray@.
data MTLRasterizationRateSampleArray

instance IsObjCObject (Id MTLRasterizationRateSampleArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRasterizationRateSampleArray"

class IsNSObject a => IsMTLRasterizationRateSampleArray a where
  toMTLRasterizationRateSampleArray :: a -> Id MTLRasterizationRateSampleArray

instance IsMTLRasterizationRateSampleArray (Id MTLRasterizationRateSampleArray) where
  toMTLRasterizationRateSampleArray = unsafeCastId

instance IsNSObject (Id MTLRasterizationRateSampleArray) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPassAttachmentDescriptor ----------

-- | Phantom type for @MTLRenderPassAttachmentDescriptor@.
data MTLRenderPassAttachmentDescriptor

instance IsObjCObject (Id MTLRenderPassAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPassAttachmentDescriptor"

class IsNSObject a => IsMTLRenderPassAttachmentDescriptor a where
  toMTLRenderPassAttachmentDescriptor :: a -> Id MTLRenderPassAttachmentDescriptor

instance IsMTLRenderPassAttachmentDescriptor (Id MTLRenderPassAttachmentDescriptor) where
  toMTLRenderPassAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPassAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPassColorAttachmentDescriptorArray ----------

-- | Phantom type for @MTLRenderPassColorAttachmentDescriptorArray@.
data MTLRenderPassColorAttachmentDescriptorArray

instance IsObjCObject (Id MTLRenderPassColorAttachmentDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPassColorAttachmentDescriptorArray"

class IsNSObject a => IsMTLRenderPassColorAttachmentDescriptorArray a where
  toMTLRenderPassColorAttachmentDescriptorArray :: a -> Id MTLRenderPassColorAttachmentDescriptorArray

instance IsMTLRenderPassColorAttachmentDescriptorArray (Id MTLRenderPassColorAttachmentDescriptorArray) where
  toMTLRenderPassColorAttachmentDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLRenderPassColorAttachmentDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPassDescriptor ----------

-- | MTLRenderPassDescriptor
--
-- MTLRenderPassDescriptor represents a collection of attachments to be used to create a concrete render command encoder
-- 
-- Phantom type for @MTLRenderPassDescriptor@.
data MTLRenderPassDescriptor

instance IsObjCObject (Id MTLRenderPassDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPassDescriptor"

class IsNSObject a => IsMTLRenderPassDescriptor a where
  toMTLRenderPassDescriptor :: a -> Id MTLRenderPassDescriptor

instance IsMTLRenderPassDescriptor (Id MTLRenderPassDescriptor) where
  toMTLRenderPassDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPassDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPassSampleBufferAttachmentDescriptor ----------

-- | Phantom type for @MTLRenderPassSampleBufferAttachmentDescriptor@.
data MTLRenderPassSampleBufferAttachmentDescriptor

instance IsObjCObject (Id MTLRenderPassSampleBufferAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPassSampleBufferAttachmentDescriptor"

class IsNSObject a => IsMTLRenderPassSampleBufferAttachmentDescriptor a where
  toMTLRenderPassSampleBufferAttachmentDescriptor :: a -> Id MTLRenderPassSampleBufferAttachmentDescriptor

instance IsMTLRenderPassSampleBufferAttachmentDescriptor (Id MTLRenderPassSampleBufferAttachmentDescriptor) where
  toMTLRenderPassSampleBufferAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPassSampleBufferAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPassSampleBufferAttachmentDescriptorArray ----------

-- | Phantom type for @MTLRenderPassSampleBufferAttachmentDescriptorArray@.
data MTLRenderPassSampleBufferAttachmentDescriptorArray

instance IsObjCObject (Id MTLRenderPassSampleBufferAttachmentDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPassSampleBufferAttachmentDescriptorArray"

class IsNSObject a => IsMTLRenderPassSampleBufferAttachmentDescriptorArray a where
  toMTLRenderPassSampleBufferAttachmentDescriptorArray :: a -> Id MTLRenderPassSampleBufferAttachmentDescriptorArray

instance IsMTLRenderPassSampleBufferAttachmentDescriptorArray (Id MTLRenderPassSampleBufferAttachmentDescriptorArray) where
  toMTLRenderPassSampleBufferAttachmentDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLRenderPassSampleBufferAttachmentDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPipelineColorAttachmentDescriptor ----------

-- | Phantom type for @MTLRenderPipelineColorAttachmentDescriptor@.
data MTLRenderPipelineColorAttachmentDescriptor

instance IsObjCObject (Id MTLRenderPipelineColorAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPipelineColorAttachmentDescriptor"

class IsNSObject a => IsMTLRenderPipelineColorAttachmentDescriptor a where
  toMTLRenderPipelineColorAttachmentDescriptor :: a -> Id MTLRenderPipelineColorAttachmentDescriptor

instance IsMTLRenderPipelineColorAttachmentDescriptor (Id MTLRenderPipelineColorAttachmentDescriptor) where
  toMTLRenderPipelineColorAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPipelineColorAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPipelineColorAttachmentDescriptorArray ----------

-- | Phantom type for @MTLRenderPipelineColorAttachmentDescriptorArray@.
data MTLRenderPipelineColorAttachmentDescriptorArray

instance IsObjCObject (Id MTLRenderPipelineColorAttachmentDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPipelineColorAttachmentDescriptorArray"

class IsNSObject a => IsMTLRenderPipelineColorAttachmentDescriptorArray a where
  toMTLRenderPipelineColorAttachmentDescriptorArray :: a -> Id MTLRenderPipelineColorAttachmentDescriptorArray

instance IsMTLRenderPipelineColorAttachmentDescriptorArray (Id MTLRenderPipelineColorAttachmentDescriptorArray) where
  toMTLRenderPipelineColorAttachmentDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLRenderPipelineColorAttachmentDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPipelineDescriptor ----------

-- | Phantom type for @MTLRenderPipelineDescriptor@.
data MTLRenderPipelineDescriptor

instance IsObjCObject (Id MTLRenderPipelineDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPipelineDescriptor"

class IsNSObject a => IsMTLRenderPipelineDescriptor a where
  toMTLRenderPipelineDescriptor :: a -> Id MTLRenderPipelineDescriptor

instance IsMTLRenderPipelineDescriptor (Id MTLRenderPipelineDescriptor) where
  toMTLRenderPipelineDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPipelineDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPipelineFunctionsDescriptor ----------

-- | Phantom type for @MTLRenderPipelineFunctionsDescriptor@.
data MTLRenderPipelineFunctionsDescriptor

instance IsObjCObject (Id MTLRenderPipelineFunctionsDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPipelineFunctionsDescriptor"

class IsNSObject a => IsMTLRenderPipelineFunctionsDescriptor a where
  toMTLRenderPipelineFunctionsDescriptor :: a -> Id MTLRenderPipelineFunctionsDescriptor

instance IsMTLRenderPipelineFunctionsDescriptor (Id MTLRenderPipelineFunctionsDescriptor) where
  toMTLRenderPipelineFunctionsDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPipelineFunctionsDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPipelineReflection ----------

-- | Phantom type for @MTLRenderPipelineReflection@.
data MTLRenderPipelineReflection

instance IsObjCObject (Id MTLRenderPipelineReflection) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPipelineReflection"

class IsNSObject a => IsMTLRenderPipelineReflection a where
  toMTLRenderPipelineReflection :: a -> Id MTLRenderPipelineReflection

instance IsMTLRenderPipelineReflection (Id MTLRenderPipelineReflection) where
  toMTLRenderPipelineReflection = unsafeCastId

instance IsNSObject (Id MTLRenderPipelineReflection) where
  toNSObject = unsafeCastId

-- ---------- MTLResourceStatePassDescriptor ----------

-- | MTLResourceStatePassDescriptor
--
-- MTLResourceStatePassDescriptor represents a collection of attachments to be used to create a concrete resourceState command encoder
-- 
-- Phantom type for @MTLResourceStatePassDescriptor@.
data MTLResourceStatePassDescriptor

instance IsObjCObject (Id MTLResourceStatePassDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLResourceStatePassDescriptor"

class IsNSObject a => IsMTLResourceStatePassDescriptor a where
  toMTLResourceStatePassDescriptor :: a -> Id MTLResourceStatePassDescriptor

instance IsMTLResourceStatePassDescriptor (Id MTLResourceStatePassDescriptor) where
  toMTLResourceStatePassDescriptor = unsafeCastId

instance IsNSObject (Id MTLResourceStatePassDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLResourceStatePassSampleBufferAttachmentDescriptor ----------

-- | Phantom type for @MTLResourceStatePassSampleBufferAttachmentDescriptor@.
data MTLResourceStatePassSampleBufferAttachmentDescriptor

instance IsObjCObject (Id MTLResourceStatePassSampleBufferAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLResourceStatePassSampleBufferAttachmentDescriptor"

class IsNSObject a => IsMTLResourceStatePassSampleBufferAttachmentDescriptor a where
  toMTLResourceStatePassSampleBufferAttachmentDescriptor :: a -> Id MTLResourceStatePassSampleBufferAttachmentDescriptor

instance IsMTLResourceStatePassSampleBufferAttachmentDescriptor (Id MTLResourceStatePassSampleBufferAttachmentDescriptor) where
  toMTLResourceStatePassSampleBufferAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLResourceStatePassSampleBufferAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLResourceStatePassSampleBufferAttachmentDescriptorArray ----------

-- | Phantom type for @MTLResourceStatePassSampleBufferAttachmentDescriptorArray@.
data MTLResourceStatePassSampleBufferAttachmentDescriptorArray

instance IsObjCObject (Id MTLResourceStatePassSampleBufferAttachmentDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLResourceStatePassSampleBufferAttachmentDescriptorArray"

class IsNSObject a => IsMTLResourceStatePassSampleBufferAttachmentDescriptorArray a where
  toMTLResourceStatePassSampleBufferAttachmentDescriptorArray :: a -> Id MTLResourceStatePassSampleBufferAttachmentDescriptorArray

instance IsMTLResourceStatePassSampleBufferAttachmentDescriptorArray (Id MTLResourceStatePassSampleBufferAttachmentDescriptorArray) where
  toMTLResourceStatePassSampleBufferAttachmentDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLResourceStatePassSampleBufferAttachmentDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLSamplerDescriptor ----------

-- | MTLSamplerDescriptor
--
-- A mutable descriptor used to configure a sampler.  When complete, this can be used to create an immutable MTLSamplerState.
-- 
-- Phantom type for @MTLSamplerDescriptor@.
data MTLSamplerDescriptor

instance IsObjCObject (Id MTLSamplerDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLSamplerDescriptor"

class IsNSObject a => IsMTLSamplerDescriptor a where
  toMTLSamplerDescriptor :: a -> Id MTLSamplerDescriptor

instance IsMTLSamplerDescriptor (Id MTLSamplerDescriptor) where
  toMTLSamplerDescriptor = unsafeCastId

instance IsNSObject (Id MTLSamplerDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLSharedEventHandle ----------

-- | Phantom type for @MTLSharedEventHandle@.
data MTLSharedEventHandle

instance IsObjCObject (Id MTLSharedEventHandle) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLSharedEventHandle"

class IsNSObject a => IsMTLSharedEventHandle a where
  toMTLSharedEventHandle :: a -> Id MTLSharedEventHandle

instance IsMTLSharedEventHandle (Id MTLSharedEventHandle) where
  toMTLSharedEventHandle = unsafeCastId

instance IsNSObject (Id MTLSharedEventHandle) where
  toNSObject = unsafeCastId

-- ---------- MTLSharedEventListener ----------

-- | MTLSharedEventListener
--
-- This class provides a simple interface for handling the dispatching of MTLSharedEvent notifications from Metal.
-- 
-- Phantom type for @MTLSharedEventListener@.
data MTLSharedEventListener

instance IsObjCObject (Id MTLSharedEventListener) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLSharedEventListener"

class IsNSObject a => IsMTLSharedEventListener a where
  toMTLSharedEventListener :: a -> Id MTLSharedEventListener

instance IsMTLSharedEventListener (Id MTLSharedEventListener) where
  toMTLSharedEventListener = unsafeCastId

instance IsNSObject (Id MTLSharedEventListener) where
  toNSObject = unsafeCastId

-- ---------- MTLSharedTextureHandle ----------

-- | Phantom type for @MTLSharedTextureHandle@.
data MTLSharedTextureHandle

instance IsObjCObject (Id MTLSharedTextureHandle) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLSharedTextureHandle"

class IsNSObject a => IsMTLSharedTextureHandle a where
  toMTLSharedTextureHandle :: a -> Id MTLSharedTextureHandle

instance IsMTLSharedTextureHandle (Id MTLSharedTextureHandle) where
  toMTLSharedTextureHandle = unsafeCastId

instance IsNSObject (Id MTLSharedTextureHandle) where
  toNSObject = unsafeCastId

-- ---------- MTLStageInputOutputDescriptor ----------

-- | Phantom type for @MTLStageInputOutputDescriptor@.
data MTLStageInputOutputDescriptor

instance IsObjCObject (Id MTLStageInputOutputDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLStageInputOutputDescriptor"

class IsNSObject a => IsMTLStageInputOutputDescriptor a where
  toMTLStageInputOutputDescriptor :: a -> Id MTLStageInputOutputDescriptor

instance IsMTLStageInputOutputDescriptor (Id MTLStageInputOutputDescriptor) where
  toMTLStageInputOutputDescriptor = unsafeCastId

instance IsNSObject (Id MTLStageInputOutputDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLStencilDescriptor ----------

-- | Phantom type for @MTLStencilDescriptor@.
data MTLStencilDescriptor

instance IsObjCObject (Id MTLStencilDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLStencilDescriptor"

class IsNSObject a => IsMTLStencilDescriptor a where
  toMTLStencilDescriptor :: a -> Id MTLStencilDescriptor

instance IsMTLStencilDescriptor (Id MTLStencilDescriptor) where
  toMTLStencilDescriptor = unsafeCastId

instance IsNSObject (Id MTLStencilDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLStitchedLibraryDescriptor ----------

-- | MTLStitchedLibraryDescriptor
--
-- A container for the graphs and functions needed to create the stitched functions described by the graphs.
-- 
-- Phantom type for @MTLStitchedLibraryDescriptor@.
data MTLStitchedLibraryDescriptor

instance IsObjCObject (Id MTLStitchedLibraryDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLStitchedLibraryDescriptor"

class IsNSObject a => IsMTLStitchedLibraryDescriptor a where
  toMTLStitchedLibraryDescriptor :: a -> Id MTLStitchedLibraryDescriptor

instance IsMTLStitchedLibraryDescriptor (Id MTLStitchedLibraryDescriptor) where
  toMTLStitchedLibraryDescriptor = unsafeCastId

instance IsNSObject (Id MTLStitchedLibraryDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLStructMember ----------

-- | Phantom type for @MTLStructMember@.
data MTLStructMember

instance IsObjCObject (Id MTLStructMember) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLStructMember"

class IsNSObject a => IsMTLStructMember a where
  toMTLStructMember :: a -> Id MTLStructMember

instance IsMTLStructMember (Id MTLStructMember) where
  toMTLStructMember = unsafeCastId

instance IsNSObject (Id MTLStructMember) where
  toNSObject = unsafeCastId

-- ---------- MTLTextureDescriptor ----------

-- | Phantom type for @MTLTextureDescriptor@.
data MTLTextureDescriptor

instance IsObjCObject (Id MTLTextureDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLTextureDescriptor"

class IsNSObject a => IsMTLTextureDescriptor a where
  toMTLTextureDescriptor :: a -> Id MTLTextureDescriptor

instance IsMTLTextureDescriptor (Id MTLTextureDescriptor) where
  toMTLTextureDescriptor = unsafeCastId

instance IsNSObject (Id MTLTextureDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLTileRenderPipelineColorAttachmentDescriptor ----------

-- | Phantom type for @MTLTileRenderPipelineColorAttachmentDescriptor@.
data MTLTileRenderPipelineColorAttachmentDescriptor

instance IsObjCObject (Id MTLTileRenderPipelineColorAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLTileRenderPipelineColorAttachmentDescriptor"

class IsNSObject a => IsMTLTileRenderPipelineColorAttachmentDescriptor a where
  toMTLTileRenderPipelineColorAttachmentDescriptor :: a -> Id MTLTileRenderPipelineColorAttachmentDescriptor

instance IsMTLTileRenderPipelineColorAttachmentDescriptor (Id MTLTileRenderPipelineColorAttachmentDescriptor) where
  toMTLTileRenderPipelineColorAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLTileRenderPipelineColorAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLTileRenderPipelineColorAttachmentDescriptorArray ----------

-- | Phantom type for @MTLTileRenderPipelineColorAttachmentDescriptorArray@.
data MTLTileRenderPipelineColorAttachmentDescriptorArray

instance IsObjCObject (Id MTLTileRenderPipelineColorAttachmentDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLTileRenderPipelineColorAttachmentDescriptorArray"

class IsNSObject a => IsMTLTileRenderPipelineColorAttachmentDescriptorArray a where
  toMTLTileRenderPipelineColorAttachmentDescriptorArray :: a -> Id MTLTileRenderPipelineColorAttachmentDescriptorArray

instance IsMTLTileRenderPipelineColorAttachmentDescriptorArray (Id MTLTileRenderPipelineColorAttachmentDescriptorArray) where
  toMTLTileRenderPipelineColorAttachmentDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLTileRenderPipelineColorAttachmentDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLTileRenderPipelineDescriptor ----------

-- | Phantom type for @MTLTileRenderPipelineDescriptor@.
data MTLTileRenderPipelineDescriptor

instance IsObjCObject (Id MTLTileRenderPipelineDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLTileRenderPipelineDescriptor"

class IsNSObject a => IsMTLTileRenderPipelineDescriptor a where
  toMTLTileRenderPipelineDescriptor :: a -> Id MTLTileRenderPipelineDescriptor

instance IsMTLTileRenderPipelineDescriptor (Id MTLTileRenderPipelineDescriptor) where
  toMTLTileRenderPipelineDescriptor = unsafeCastId

instance IsNSObject (Id MTLTileRenderPipelineDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLType ----------

-- | Phantom type for @MTLType@.
data MTLType

instance IsObjCObject (Id MTLType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLType"

class IsNSObject a => IsMTLType a where
  toMTLType :: a -> Id MTLType

instance IsMTLType (Id MTLType) where
  toMTLType = unsafeCastId

instance IsNSObject (Id MTLType) where
  toNSObject = unsafeCastId

-- ---------- MTLVertexAttribute ----------

-- | Phantom type for @MTLVertexAttribute@.
data MTLVertexAttribute

instance IsObjCObject (Id MTLVertexAttribute) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLVertexAttribute"

class IsNSObject a => IsMTLVertexAttribute a where
  toMTLVertexAttribute :: a -> Id MTLVertexAttribute

instance IsMTLVertexAttribute (Id MTLVertexAttribute) where
  toMTLVertexAttribute = unsafeCastId

instance IsNSObject (Id MTLVertexAttribute) where
  toNSObject = unsafeCastId

-- ---------- MTLVertexAttributeDescriptor ----------

-- | Phantom type for @MTLVertexAttributeDescriptor@.
data MTLVertexAttributeDescriptor

instance IsObjCObject (Id MTLVertexAttributeDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLVertexAttributeDescriptor"

class IsNSObject a => IsMTLVertexAttributeDescriptor a where
  toMTLVertexAttributeDescriptor :: a -> Id MTLVertexAttributeDescriptor

instance IsMTLVertexAttributeDescriptor (Id MTLVertexAttributeDescriptor) where
  toMTLVertexAttributeDescriptor = unsafeCastId

instance IsNSObject (Id MTLVertexAttributeDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLVertexAttributeDescriptorArray ----------

-- | Phantom type for @MTLVertexAttributeDescriptorArray@.
data MTLVertexAttributeDescriptorArray

instance IsObjCObject (Id MTLVertexAttributeDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLVertexAttributeDescriptorArray"

class IsNSObject a => IsMTLVertexAttributeDescriptorArray a where
  toMTLVertexAttributeDescriptorArray :: a -> Id MTLVertexAttributeDescriptorArray

instance IsMTLVertexAttributeDescriptorArray (Id MTLVertexAttributeDescriptorArray) where
  toMTLVertexAttributeDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLVertexAttributeDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLVertexBufferLayoutDescriptor ----------

-- | Phantom type for @MTLVertexBufferLayoutDescriptor@.
data MTLVertexBufferLayoutDescriptor

instance IsObjCObject (Id MTLVertexBufferLayoutDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLVertexBufferLayoutDescriptor"

class IsNSObject a => IsMTLVertexBufferLayoutDescriptor a where
  toMTLVertexBufferLayoutDescriptor :: a -> Id MTLVertexBufferLayoutDescriptor

instance IsMTLVertexBufferLayoutDescriptor (Id MTLVertexBufferLayoutDescriptor) where
  toMTLVertexBufferLayoutDescriptor = unsafeCastId

instance IsNSObject (Id MTLVertexBufferLayoutDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLVertexBufferLayoutDescriptorArray ----------

-- | Phantom type for @MTLVertexBufferLayoutDescriptorArray@.
data MTLVertexBufferLayoutDescriptorArray

instance IsObjCObject (Id MTLVertexBufferLayoutDescriptorArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLVertexBufferLayoutDescriptorArray"

class IsNSObject a => IsMTLVertexBufferLayoutDescriptorArray a where
  toMTLVertexBufferLayoutDescriptorArray :: a -> Id MTLVertexBufferLayoutDescriptorArray

instance IsMTLVertexBufferLayoutDescriptorArray (Id MTLVertexBufferLayoutDescriptorArray) where
  toMTLVertexBufferLayoutDescriptorArray = unsafeCastId

instance IsNSObject (Id MTLVertexBufferLayoutDescriptorArray) where
  toNSObject = unsafeCastId

-- ---------- MTLVertexDescriptor ----------

-- | Phantom type for @MTLVertexDescriptor@.
data MTLVertexDescriptor

instance IsObjCObject (Id MTLVertexDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLVertexDescriptor"

class IsNSObject a => IsMTLVertexDescriptor a where
  toMTLVertexDescriptor :: a -> Id MTLVertexDescriptor

instance IsMTLVertexDescriptor (Id MTLVertexDescriptor) where
  toMTLVertexDescriptor = unsafeCastId

instance IsNSObject (Id MTLVertexDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLVisibleFunctionTableDescriptor ----------

-- | Phantom type for @MTLVisibleFunctionTableDescriptor@.
data MTLVisibleFunctionTableDescriptor

instance IsObjCObject (Id MTLVisibleFunctionTableDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLVisibleFunctionTableDescriptor"

class IsNSObject a => IsMTLVisibleFunctionTableDescriptor a where
  toMTLVisibleFunctionTableDescriptor :: a -> Id MTLVisibleFunctionTableDescriptor

instance IsMTLVisibleFunctionTableDescriptor (Id MTLVisibleFunctionTableDescriptor) where
  toMTLVisibleFunctionTableDescriptor = unsafeCastId

instance IsNSObject (Id MTLVisibleFunctionTableDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLInstanceAccelerationStructureDescriptor ----------

-- | Descriptor for an instance acceleration structure
-- 
-- Phantom type for @MTLInstanceAccelerationStructureDescriptor@.
data MTLInstanceAccelerationStructureDescriptor

instance IsObjCObject (Id MTLInstanceAccelerationStructureDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLInstanceAccelerationStructureDescriptor"

class IsMTLAccelerationStructureDescriptor a => IsMTLInstanceAccelerationStructureDescriptor a where
  toMTLInstanceAccelerationStructureDescriptor :: a -> Id MTLInstanceAccelerationStructureDescriptor

instance IsMTLInstanceAccelerationStructureDescriptor (Id MTLInstanceAccelerationStructureDescriptor) where
  toMTLInstanceAccelerationStructureDescriptor = unsafeCastId

instance IsMTLAccelerationStructureDescriptor (Id MTLInstanceAccelerationStructureDescriptor) where
  toMTLAccelerationStructureDescriptor = unsafeCastId

instance IsNSObject (Id MTLInstanceAccelerationStructureDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLPrimitiveAccelerationStructureDescriptor ----------

-- | Descriptor for a primitive acceleration structure
-- 
-- Phantom type for @MTLPrimitiveAccelerationStructureDescriptor@.
data MTLPrimitiveAccelerationStructureDescriptor

instance IsObjCObject (Id MTLPrimitiveAccelerationStructureDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLPrimitiveAccelerationStructureDescriptor"

class IsMTLAccelerationStructureDescriptor a => IsMTLPrimitiveAccelerationStructureDescriptor a where
  toMTLPrimitiveAccelerationStructureDescriptor :: a -> Id MTLPrimitiveAccelerationStructureDescriptor

instance IsMTLPrimitiveAccelerationStructureDescriptor (Id MTLPrimitiveAccelerationStructureDescriptor) where
  toMTLPrimitiveAccelerationStructureDescriptor = unsafeCastId

instance IsMTLAccelerationStructureDescriptor (Id MTLPrimitiveAccelerationStructureDescriptor) where
  toMTLAccelerationStructureDescriptor = unsafeCastId

instance IsNSObject (Id MTLPrimitiveAccelerationStructureDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAccelerationStructureBoundingBoxGeometryDescriptor ----------

-- | Descriptor for bounding box geometry
-- 
-- Phantom type for @MTLAccelerationStructureBoundingBoxGeometryDescriptor@.
data MTLAccelerationStructureBoundingBoxGeometryDescriptor

instance IsObjCObject (Id MTLAccelerationStructureBoundingBoxGeometryDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructureBoundingBoxGeometryDescriptor"

class IsMTLAccelerationStructureGeometryDescriptor a => IsMTLAccelerationStructureBoundingBoxGeometryDescriptor a where
  toMTLAccelerationStructureBoundingBoxGeometryDescriptor :: a -> Id MTLAccelerationStructureBoundingBoxGeometryDescriptor

instance IsMTLAccelerationStructureBoundingBoxGeometryDescriptor (Id MTLAccelerationStructureBoundingBoxGeometryDescriptor) where
  toMTLAccelerationStructureBoundingBoxGeometryDescriptor = unsafeCastId

instance IsMTLAccelerationStructureGeometryDescriptor (Id MTLAccelerationStructureBoundingBoxGeometryDescriptor) where
  toMTLAccelerationStructureGeometryDescriptor = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructureBoundingBoxGeometryDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor ----------

-- | Descriptor for motion bounding box geometry
-- 
-- Phantom type for @MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor@.
data MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor

instance IsObjCObject (Id MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor"

class IsMTLAccelerationStructureGeometryDescriptor a => IsMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor a where
  toMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor :: a -> Id MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor

instance IsMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor (Id MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor) where
  toMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor = unsafeCastId

instance IsMTLAccelerationStructureGeometryDescriptor (Id MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor) where
  toMTLAccelerationStructureGeometryDescriptor = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAccelerationStructureMotionTriangleGeometryDescriptor ----------

-- | Descriptor for motion triangle geometry
-- 
-- Phantom type for @MTLAccelerationStructureMotionTriangleGeometryDescriptor@.
data MTLAccelerationStructureMotionTriangleGeometryDescriptor

instance IsObjCObject (Id MTLAccelerationStructureMotionTriangleGeometryDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructureMotionTriangleGeometryDescriptor"

class IsMTLAccelerationStructureGeometryDescriptor a => IsMTLAccelerationStructureMotionTriangleGeometryDescriptor a where
  toMTLAccelerationStructureMotionTriangleGeometryDescriptor :: a -> Id MTLAccelerationStructureMotionTriangleGeometryDescriptor

instance IsMTLAccelerationStructureMotionTriangleGeometryDescriptor (Id MTLAccelerationStructureMotionTriangleGeometryDescriptor) where
  toMTLAccelerationStructureMotionTriangleGeometryDescriptor = unsafeCastId

instance IsMTLAccelerationStructureGeometryDescriptor (Id MTLAccelerationStructureMotionTriangleGeometryDescriptor) where
  toMTLAccelerationStructureGeometryDescriptor = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructureMotionTriangleGeometryDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLAccelerationStructureTriangleGeometryDescriptor ----------

-- | Descriptor for triangle geometry
-- 
-- Phantom type for @MTLAccelerationStructureTriangleGeometryDescriptor@.
data MTLAccelerationStructureTriangleGeometryDescriptor

instance IsObjCObject (Id MTLAccelerationStructureTriangleGeometryDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLAccelerationStructureTriangleGeometryDescriptor"

class IsMTLAccelerationStructureGeometryDescriptor a => IsMTLAccelerationStructureTriangleGeometryDescriptor a where
  toMTLAccelerationStructureTriangleGeometryDescriptor :: a -> Id MTLAccelerationStructureTriangleGeometryDescriptor

instance IsMTLAccelerationStructureTriangleGeometryDescriptor (Id MTLAccelerationStructureTriangleGeometryDescriptor) where
  toMTLAccelerationStructureTriangleGeometryDescriptor = unsafeCastId

instance IsMTLAccelerationStructureGeometryDescriptor (Id MTLAccelerationStructureTriangleGeometryDescriptor) where
  toMTLAccelerationStructureGeometryDescriptor = unsafeCastId

instance IsNSObject (Id MTLAccelerationStructureTriangleGeometryDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLIntersectionFunctionDescriptor ----------

-- | Phantom type for @MTLIntersectionFunctionDescriptor@.
data MTLIntersectionFunctionDescriptor

instance IsObjCObject (Id MTLIntersectionFunctionDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLIntersectionFunctionDescriptor"

class IsMTLFunctionDescriptor a => IsMTLIntersectionFunctionDescriptor a where
  toMTLIntersectionFunctionDescriptor :: a -> Id MTLIntersectionFunctionDescriptor

instance IsMTLIntersectionFunctionDescriptor (Id MTLIntersectionFunctionDescriptor) where
  toMTLIntersectionFunctionDescriptor = unsafeCastId

instance IsMTLFunctionDescriptor (Id MTLIntersectionFunctionDescriptor) where
  toMTLFunctionDescriptor = unsafeCastId

instance IsNSObject (Id MTLIntersectionFunctionDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPassColorAttachmentDescriptor ----------

-- | Phantom type for @MTLRenderPassColorAttachmentDescriptor@.
data MTLRenderPassColorAttachmentDescriptor

instance IsObjCObject (Id MTLRenderPassColorAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPassColorAttachmentDescriptor"

class IsMTLRenderPassAttachmentDescriptor a => IsMTLRenderPassColorAttachmentDescriptor a where
  toMTLRenderPassColorAttachmentDescriptor :: a -> Id MTLRenderPassColorAttachmentDescriptor

instance IsMTLRenderPassColorAttachmentDescriptor (Id MTLRenderPassColorAttachmentDescriptor) where
  toMTLRenderPassColorAttachmentDescriptor = unsafeCastId

instance IsMTLRenderPassAttachmentDescriptor (Id MTLRenderPassColorAttachmentDescriptor) where
  toMTLRenderPassAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPassColorAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPassDepthAttachmentDescriptor ----------

-- | Phantom type for @MTLRenderPassDepthAttachmentDescriptor@.
data MTLRenderPassDepthAttachmentDescriptor

instance IsObjCObject (Id MTLRenderPassDepthAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPassDepthAttachmentDescriptor"

class IsMTLRenderPassAttachmentDescriptor a => IsMTLRenderPassDepthAttachmentDescriptor a where
  toMTLRenderPassDepthAttachmentDescriptor :: a -> Id MTLRenderPassDepthAttachmentDescriptor

instance IsMTLRenderPassDepthAttachmentDescriptor (Id MTLRenderPassDepthAttachmentDescriptor) where
  toMTLRenderPassDepthAttachmentDescriptor = unsafeCastId

instance IsMTLRenderPassAttachmentDescriptor (Id MTLRenderPassDepthAttachmentDescriptor) where
  toMTLRenderPassAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPassDepthAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLRenderPassStencilAttachmentDescriptor ----------

-- | Phantom type for @MTLRenderPassStencilAttachmentDescriptor@.
data MTLRenderPassStencilAttachmentDescriptor

instance IsObjCObject (Id MTLRenderPassStencilAttachmentDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLRenderPassStencilAttachmentDescriptor"

class IsMTLRenderPassAttachmentDescriptor a => IsMTLRenderPassStencilAttachmentDescriptor a where
  toMTLRenderPassStencilAttachmentDescriptor :: a -> Id MTLRenderPassStencilAttachmentDescriptor

instance IsMTLRenderPassStencilAttachmentDescriptor (Id MTLRenderPassStencilAttachmentDescriptor) where
  toMTLRenderPassStencilAttachmentDescriptor = unsafeCastId

instance IsMTLRenderPassAttachmentDescriptor (Id MTLRenderPassStencilAttachmentDescriptor) where
  toMTLRenderPassAttachmentDescriptor = unsafeCastId

instance IsNSObject (Id MTLRenderPassStencilAttachmentDescriptor) where
  toNSObject = unsafeCastId

-- ---------- MTLArrayType ----------

-- | Phantom type for @MTLArrayType@.
data MTLArrayType

instance IsObjCObject (Id MTLArrayType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLArrayType"

class IsMTLType a => IsMTLArrayType a where
  toMTLArrayType :: a -> Id MTLArrayType

instance IsMTLArrayType (Id MTLArrayType) where
  toMTLArrayType = unsafeCastId

instance IsMTLType (Id MTLArrayType) where
  toMTLType = unsafeCastId

instance IsNSObject (Id MTLArrayType) where
  toNSObject = unsafeCastId

-- ---------- MTLPointerType ----------

-- | Phantom type for @MTLPointerType@.
data MTLPointerType

instance IsObjCObject (Id MTLPointerType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLPointerType"

class IsMTLType a => IsMTLPointerType a where
  toMTLPointerType :: a -> Id MTLPointerType

instance IsMTLPointerType (Id MTLPointerType) where
  toMTLPointerType = unsafeCastId

instance IsMTLType (Id MTLPointerType) where
  toMTLType = unsafeCastId

instance IsNSObject (Id MTLPointerType) where
  toNSObject = unsafeCastId

-- ---------- MTLStructType ----------

-- | Phantom type for @MTLStructType@.
data MTLStructType

instance IsObjCObject (Id MTLStructType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLStructType"

class IsMTLType a => IsMTLStructType a where
  toMTLStructType :: a -> Id MTLStructType

instance IsMTLStructType (Id MTLStructType) where
  toMTLStructType = unsafeCastId

instance IsMTLType (Id MTLStructType) where
  toMTLType = unsafeCastId

instance IsNSObject (Id MTLStructType) where
  toNSObject = unsafeCastId

-- ---------- MTLTextureReferenceType ----------

-- | Phantom type for @MTLTextureReferenceType@.
data MTLTextureReferenceType

instance IsObjCObject (Id MTLTextureReferenceType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MTLTextureReferenceType"

class IsMTLType a => IsMTLTextureReferenceType a where
  toMTLTextureReferenceType :: a -> Id MTLTextureReferenceType

instance IsMTLTextureReferenceType (Id MTLTextureReferenceType) where
  toMTLTextureReferenceType = unsafeCastId

instance IsMTLType (Id MTLTextureReferenceType) where
  toMTLType = unsafeCastId

instance IsNSObject (Id MTLTextureReferenceType) where
  toNSObject = unsafeCastId
