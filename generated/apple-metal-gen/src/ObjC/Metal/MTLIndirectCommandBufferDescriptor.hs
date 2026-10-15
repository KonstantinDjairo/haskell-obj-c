{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Describes the limits and features that can be used in an indirect command
--
-- Generated bindings for @MTLIndirectCommandBufferDescriptor@.
module ObjC.Metal.MTLIndirectCommandBufferDescriptor
  ( MTLIndirectCommandBufferDescriptor
  , IsMTLIndirectCommandBufferDescriptor(..)
  , commandTypes
  , setCommandTypes
  , inheritPipelineState
  , setInheritPipelineState
  , inheritBuffers
  , setInheritBuffers
  , maxVertexBufferBindCount
  , setMaxVertexBufferBindCount
  , maxFragmentBufferBindCount
  , setMaxFragmentBufferBindCount
  , maxKernelBufferBindCount
  , setMaxKernelBufferBindCount
  , supportRayTracing
  , setSupportRayTracing
  , commandTypesSelector
  , inheritBuffersSelector
  , inheritPipelineStateSelector
  , maxFragmentBufferBindCountSelector
  , maxKernelBufferBindCountSelector
  , maxVertexBufferBindCountSelector
  , setCommandTypesSelector
  , setInheritBuffersSelector
  , setInheritPipelineStateSelector
  , setMaxFragmentBufferBindCountSelector
  , setMaxKernelBufferBindCountSelector
  , setMaxVertexBufferBindCountSelector
  , setSupportRayTracingSelector
  , supportRayTracingSelector

  -- * Enum types
  , MTLIndirectCommandType(MTLIndirectCommandType)
  , pattern MTLIndirectCommandTypeDraw
  , pattern MTLIndirectCommandTypeDrawIndexed
  , pattern MTLIndirectCommandTypeDrawPatches
  , pattern MTLIndirectCommandTypeDrawIndexedPatches
  , pattern MTLIndirectCommandTypeConcurrentDispatch
  , pattern MTLIndirectCommandTypeConcurrentDispatchThreads

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Metal.Internal.Classes
import ObjC.Metal.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | A bitfield of the command types that be encoded.
--
-- MTLCommandTypeDispatch cannot be mixed with any other command type.
--
-- ObjC selector: @- commandTypes@
commandTypes :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> IO MTLIndirectCommandType
commandTypes mtlIndirectCommandBufferDescriptor =
  sendMessage mtlIndirectCommandBufferDescriptor commandTypesSelector

-- | A bitfield of the command types that be encoded.
--
-- MTLCommandTypeDispatch cannot be mixed with any other command type.
--
-- ObjC selector: @- setCommandTypes:@
setCommandTypes :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> MTLIndirectCommandType -> IO ()
setCommandTypes mtlIndirectCommandBufferDescriptor value =
  sendMessage mtlIndirectCommandBufferDescriptor setCommandTypesSelector value

-- | Whether the render or compute pipeline are inherited from the encoder
--
-- ObjC selector: @- inheritPipelineState@
inheritPipelineState :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> IO Bool
inheritPipelineState mtlIndirectCommandBufferDescriptor =
  sendMessage mtlIndirectCommandBufferDescriptor inheritPipelineStateSelector

-- | Whether the render or compute pipeline are inherited from the encoder
--
-- ObjC selector: @- setInheritPipelineState:@
setInheritPipelineState :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> Bool -> IO ()
setInheritPipelineState mtlIndirectCommandBufferDescriptor value =
  sendMessage mtlIndirectCommandBufferDescriptor setInheritPipelineStateSelector value

-- | Whether the render or compute pipeline can set arguments.
--
-- ObjC selector: @- inheritBuffers@
inheritBuffers :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> IO Bool
inheritBuffers mtlIndirectCommandBufferDescriptor =
  sendMessage mtlIndirectCommandBufferDescriptor inheritBuffersSelector

-- | Whether the render or compute pipeline can set arguments.
--
-- ObjC selector: @- setInheritBuffers:@
setInheritBuffers :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> Bool -> IO ()
setInheritBuffers mtlIndirectCommandBufferDescriptor value =
  sendMessage mtlIndirectCommandBufferDescriptor setInheritBuffersSelector value

-- | The maximum bind index of vertex argument buffers that can be set per command.
--
-- ObjC selector: @- maxVertexBufferBindCount@
maxVertexBufferBindCount :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> IO CULong
maxVertexBufferBindCount mtlIndirectCommandBufferDescriptor =
  sendMessage mtlIndirectCommandBufferDescriptor maxVertexBufferBindCountSelector

-- | The maximum bind index of vertex argument buffers that can be set per command.
--
-- ObjC selector: @- setMaxVertexBufferBindCount:@
setMaxVertexBufferBindCount :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> CULong -> IO ()
setMaxVertexBufferBindCount mtlIndirectCommandBufferDescriptor value =
  sendMessage mtlIndirectCommandBufferDescriptor setMaxVertexBufferBindCountSelector value

-- | The maximum bind index of fragment argument buffers that can be set per command.
--
-- ObjC selector: @- maxFragmentBufferBindCount@
maxFragmentBufferBindCount :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> IO CULong
maxFragmentBufferBindCount mtlIndirectCommandBufferDescriptor =
  sendMessage mtlIndirectCommandBufferDescriptor maxFragmentBufferBindCountSelector

-- | The maximum bind index of fragment argument buffers that can be set per command.
--
-- ObjC selector: @- setMaxFragmentBufferBindCount:@
setMaxFragmentBufferBindCount :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> CULong -> IO ()
setMaxFragmentBufferBindCount mtlIndirectCommandBufferDescriptor value =
  sendMessage mtlIndirectCommandBufferDescriptor setMaxFragmentBufferBindCountSelector value

-- | The maximum bind index of kernel (or tile) argument buffers that can be set per command.
--
-- ObjC selector: @- maxKernelBufferBindCount@
maxKernelBufferBindCount :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> IO CULong
maxKernelBufferBindCount mtlIndirectCommandBufferDescriptor =
  sendMessage mtlIndirectCommandBufferDescriptor maxKernelBufferBindCountSelector

-- | The maximum bind index of kernel (or tile) argument buffers that can be set per command.
--
-- ObjC selector: @- setMaxKernelBufferBindCount:@
setMaxKernelBufferBindCount :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> CULong -> IO ()
setMaxKernelBufferBindCount mtlIndirectCommandBufferDescriptor value =
  sendMessage mtlIndirectCommandBufferDescriptor setMaxKernelBufferBindCountSelector value

-- | Whether the render or compute commands can use ray tracing. Default value is NO.
--
-- ObjC selector: @- supportRayTracing@
supportRayTracing :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> IO Bool
supportRayTracing mtlIndirectCommandBufferDescriptor =
  sendMessage mtlIndirectCommandBufferDescriptor supportRayTracingSelector

-- | Whether the render or compute commands can use ray tracing. Default value is NO.
--
-- ObjC selector: @- setSupportRayTracing:@
setSupportRayTracing :: IsMTLIndirectCommandBufferDescriptor mtlIndirectCommandBufferDescriptor => mtlIndirectCommandBufferDescriptor -> Bool -> IO ()
setSupportRayTracing mtlIndirectCommandBufferDescriptor value =
  sendMessage mtlIndirectCommandBufferDescriptor setSupportRayTracingSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @commandTypes@
commandTypesSelector :: Selector '[] MTLIndirectCommandType
commandTypesSelector = mkSelector "commandTypes"

-- | @Selector@ for @setCommandTypes:@
setCommandTypesSelector :: Selector '[MTLIndirectCommandType] ()
setCommandTypesSelector = mkSelector "setCommandTypes:"

-- | @Selector@ for @inheritPipelineState@
inheritPipelineStateSelector :: Selector '[] Bool
inheritPipelineStateSelector = mkSelector "inheritPipelineState"

-- | @Selector@ for @setInheritPipelineState:@
setInheritPipelineStateSelector :: Selector '[Bool] ()
setInheritPipelineStateSelector = mkSelector "setInheritPipelineState:"

-- | @Selector@ for @inheritBuffers@
inheritBuffersSelector :: Selector '[] Bool
inheritBuffersSelector = mkSelector "inheritBuffers"

-- | @Selector@ for @setInheritBuffers:@
setInheritBuffersSelector :: Selector '[Bool] ()
setInheritBuffersSelector = mkSelector "setInheritBuffers:"

-- | @Selector@ for @maxVertexBufferBindCount@
maxVertexBufferBindCountSelector :: Selector '[] CULong
maxVertexBufferBindCountSelector = mkSelector "maxVertexBufferBindCount"

-- | @Selector@ for @setMaxVertexBufferBindCount:@
setMaxVertexBufferBindCountSelector :: Selector '[CULong] ()
setMaxVertexBufferBindCountSelector = mkSelector "setMaxVertexBufferBindCount:"

-- | @Selector@ for @maxFragmentBufferBindCount@
maxFragmentBufferBindCountSelector :: Selector '[] CULong
maxFragmentBufferBindCountSelector = mkSelector "maxFragmentBufferBindCount"

-- | @Selector@ for @setMaxFragmentBufferBindCount:@
setMaxFragmentBufferBindCountSelector :: Selector '[CULong] ()
setMaxFragmentBufferBindCountSelector = mkSelector "setMaxFragmentBufferBindCount:"

-- | @Selector@ for @maxKernelBufferBindCount@
maxKernelBufferBindCountSelector :: Selector '[] CULong
maxKernelBufferBindCountSelector = mkSelector "maxKernelBufferBindCount"

-- | @Selector@ for @setMaxKernelBufferBindCount:@
setMaxKernelBufferBindCountSelector :: Selector '[CULong] ()
setMaxKernelBufferBindCountSelector = mkSelector "setMaxKernelBufferBindCount:"

-- | @Selector@ for @supportRayTracing@
supportRayTracingSelector :: Selector '[] Bool
supportRayTracingSelector = mkSelector "supportRayTracing"

-- | @Selector@ for @setSupportRayTracing:@
setSupportRayTracingSelector :: Selector '[Bool] ()
setSupportRayTracingSelector = mkSelector "setSupportRayTracing:"

