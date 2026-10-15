{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MPSGraphExecutable
--
-- Compiled representation of a compute graph executable
--
-- An MPSGraphExecutable is a compiled graph for specific feeds for  specific targetTensors and targetOperations
--
-- Generated bindings for @MPSGraphExecutable@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphExecutable
  ( MPSGraphExecutable
  , IsMPSGraphExecutable(..)
  , specializeWithDevice_inputTypes_compilationDescriptor
  , runWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptor
  , runAsyncWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptor
  , encodeToCommandBuffer_inputsArray_resultsArray_executionDescriptor
  , options
  , setOptions
  , feedTensors
  , targetTensors
  , encodeToCommandBuffer_inputsArray_resultsArray_executionDescriptorSelector
  , feedTensorsSelector
  , optionsSelector
  , runAsyncWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptorSelector
  , runWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptorSelector
  , setOptionsSelector
  , specializeWithDevice_inputTypes_compilationDescriptorSelector
  , targetTensorsSelector

  -- * Enum types
  , MPSGraphOptions(MPSGraphOptions)
  , pattern MPSGraphOptionsNone
  , pattern MPSGraphOptionsSynchronizeResults
  , pattern MPSGraphOptionsVerbose
  , pattern MPSGraphOptionsDefault

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
import ObjC.MetalPerformanceShaders.Internal.Classes

-- | Specialize the MPSGraphExecutable and optimize it, use this method to choose when specialization happens, else it occurs at encode time automatically
--
-- @device@ — optional MPSGraph device to compile with
--
-- @inputTypes@ — input types
--
-- @compilationDescriptor@ — compilationDescriptor to be used to specialize, since the executable was created with a compilationDescriptor already this one overrides those settings to the extent it can
--
-- ObjC selector: @- specializeWithDevice:inputTypes:compilationDescriptor:@
specializeWithDevice_inputTypes_compilationDescriptor :: (IsMPSGraphExecutable mpsGraphExecutable, IsMPSGraphDevice device, IsNSArray inputTypes, IsMPSGraphCompilationDescriptor compilationDescriptor) => mpsGraphExecutable -> device -> inputTypes -> compilationDescriptor -> IO ()
specializeWithDevice_inputTypes_compilationDescriptor mpsGraphExecutable device inputTypes compilationDescriptor =
  sendMessage mpsGraphExecutable specializeWithDevice_inputTypes_compilationDescriptorSelector (toMPSGraphDevice device) (toNSArray inputTypes) (toMPSGraphCompilationDescriptor compilationDescriptor)

-- | Runs the graph for given feeds to return targetTensor values, ensuring all target operations also executed.              This call  is synchronous and will return on completion of execution
--
-- @commandQueue@ — CommandQueue passed to exectute the graph on
--
-- @inputsArray@ — Feeds tensorData for the placeholder tensors, same order as arguments of main function
--
-- @resultsArray@ — Results tensorData for which the caller wishes MPSGraphTensorData to be returned
--
-- Returns: A valid MPSGraphTensorData array with results synchronized to the CPU memory if MPSGraphOptionsSynchronizeResults set.
--
-- ObjC selector: @- runWithMTLCommandQueue:inputsArray:resultsArray:executionDescriptor:@
runWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptor :: (IsMPSGraphExecutable mpsGraphExecutable, IsNSArray inputsArray, IsNSArray resultsArray, IsMPSGraphExecutableExecutionDescriptor executionDescriptor) => mpsGraphExecutable -> RawId -> inputsArray -> resultsArray -> executionDescriptor -> IO (Id NSArray)
runWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptor mpsGraphExecutable commandQueue inputsArray resultsArray executionDescriptor =
  sendMessage mpsGraphExecutable runWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptorSelector commandQueue (toNSArray inputsArray) (toNSArray resultsArray) (toMPSGraphExecutableExecutionDescriptor executionDescriptor)

-- | Runs the graph for given feeds to return targetTensor values, ensuring all target operations also executed.              This call  is asynchronous and will return immediately.
--
-- @commandQueue@ — CommandQueue passed to exectute the graph on
--
-- @inputsArray@ — Feeds tensorData for the placeholder tensors, same order as arguments of main function
--
-- @resultsArray@ — Tensors for which the caller wishes MPSGraphTensorData to be returned
--
-- @executionDescriptor@ — ExecutionDescriptor to be passed in and used,
--
-- Returns: A valid MPSGraphTensorData array with results synchronized to the CPU memory if MPSGraphOptionsSynchronizeResults set.
--
-- ObjC selector: @- runAsyncWithMTLCommandQueue:inputsArray:resultsArray:executionDescriptor:@
runAsyncWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptor :: (IsMPSGraphExecutable mpsGraphExecutable, IsNSArray inputsArray, IsNSArray resultsArray, IsMPSGraphExecutableExecutionDescriptor executionDescriptor) => mpsGraphExecutable -> RawId -> inputsArray -> resultsArray -> executionDescriptor -> IO (Id NSArray)
runAsyncWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptor mpsGraphExecutable commandQueue inputsArray resultsArray executionDescriptor =
  sendMessage mpsGraphExecutable runAsyncWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptorSelector commandQueue (toNSArray inputsArray) (toNSArray resultsArray) (toMPSGraphExecutableExecutionDescriptor executionDescriptor)

-- | Runs the graph for given feeds to return targetTensor values, ensuring all target operations also executed.              This call  is asynchronous and will return immediately after finishing encoding.
--
-- @commandBuffer@ — commandBuffer passed to exectute the graph on, commitAndContinue might be called, please don't rely on underlying MTLCommandBuffer to remain uncommitted
--
-- @inputsArray@ — Feeds tensorData for the placeholder tensors, same order as arguments of main function
--
-- @resultsArray@ — Tensors for which the caller wishes MPSGraphTensorData to be returned
--
-- @executionDescriptor@ — ExecutionDescriptor to be passed in and used,
--
-- Returns: A valid MPSGraphTensorData array with results synchronized to the CPU memory if MPSGraphOptionsSynchronizeResults set.
--
-- ObjC selector: @- encodeToCommandBuffer:inputsArray:resultsArray:executionDescriptor:@
encodeToCommandBuffer_inputsArray_resultsArray_executionDescriptor :: (IsMPSGraphExecutable mpsGraphExecutable, IsMPSCommandBuffer commandBuffer, IsNSArray inputsArray, IsNSArray resultsArray, IsMPSGraphExecutableExecutionDescriptor executionDescriptor) => mpsGraphExecutable -> commandBuffer -> inputsArray -> resultsArray -> executionDescriptor -> IO (Id NSArray)
encodeToCommandBuffer_inputsArray_resultsArray_executionDescriptor mpsGraphExecutable commandBuffer inputsArray resultsArray executionDescriptor =
  sendMessage mpsGraphExecutable encodeToCommandBuffer_inputsArray_resultsArray_executionDescriptorSelector (toMPSCommandBuffer commandBuffer) (toNSArray inputsArray) (toNSArray resultsArray) (toMPSGraphExecutableExecutionDescriptor executionDescriptor)

-- | options
--
-- options for the graph, default value is MPSGraphOptionsDefault
--
-- ObjC selector: @- options@
options :: IsMPSGraphExecutable mpsGraphExecutable => mpsGraphExecutable -> IO MPSGraphOptions
options mpsGraphExecutable =
  sendMessage mpsGraphExecutable optionsSelector

-- | options
--
-- options for the graph, default value is MPSGraphOptionsDefault
--
-- ObjC selector: @- setOptions:@
setOptions :: IsMPSGraphExecutable mpsGraphExecutable => mpsGraphExecutable -> MPSGraphOptions -> IO ()
setOptions mpsGraphExecutable value =
  sendMessage mpsGraphExecutable setOptionsSelector value

-- | feedTensors
--
-- feedTensors for the graph, can be used to order the inputs when executable was created with an MPSGraph
--
-- ObjC selector: @- feedTensors@
feedTensors :: IsMPSGraphExecutable mpsGraphExecutable => mpsGraphExecutable -> IO (Id NSArray)
feedTensors mpsGraphExecutable =
  sendMessage mpsGraphExecutable feedTensorsSelector

-- | targetTensors
--
-- targetTensors for the graph, can be used to order the outputs when executable was created with an MPSGraph
--
-- ObjC selector: @- targetTensors@
targetTensors :: IsMPSGraphExecutable mpsGraphExecutable => mpsGraphExecutable -> IO (Id NSArray)
targetTensors mpsGraphExecutable =
  sendMessage mpsGraphExecutable targetTensorsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @specializeWithDevice:inputTypes:compilationDescriptor:@
specializeWithDevice_inputTypes_compilationDescriptorSelector :: Selector '[Id MPSGraphDevice, Id NSArray, Id MPSGraphCompilationDescriptor] ()
specializeWithDevice_inputTypes_compilationDescriptorSelector = mkSelector "specializeWithDevice:inputTypes:compilationDescriptor:"

-- | @Selector@ for @runWithMTLCommandQueue:inputsArray:resultsArray:executionDescriptor:@
runWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptorSelector :: Selector '[RawId, Id NSArray, Id NSArray, Id MPSGraphExecutableExecutionDescriptor] (Id NSArray)
runWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptorSelector = mkSelector "runWithMTLCommandQueue:inputsArray:resultsArray:executionDescriptor:"

-- | @Selector@ for @runAsyncWithMTLCommandQueue:inputsArray:resultsArray:executionDescriptor:@
runAsyncWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptorSelector :: Selector '[RawId, Id NSArray, Id NSArray, Id MPSGraphExecutableExecutionDescriptor] (Id NSArray)
runAsyncWithMTLCommandQueue_inputsArray_resultsArray_executionDescriptorSelector = mkSelector "runAsyncWithMTLCommandQueue:inputsArray:resultsArray:executionDescriptor:"

-- | @Selector@ for @encodeToCommandBuffer:inputsArray:resultsArray:executionDescriptor:@
encodeToCommandBuffer_inputsArray_resultsArray_executionDescriptorSelector :: Selector '[Id MPSCommandBuffer, Id NSArray, Id NSArray, Id MPSGraphExecutableExecutionDescriptor] (Id NSArray)
encodeToCommandBuffer_inputsArray_resultsArray_executionDescriptorSelector = mkSelector "encodeToCommandBuffer:inputsArray:resultsArray:executionDescriptor:"

-- | @Selector@ for @options@
optionsSelector :: Selector '[] MPSGraphOptions
optionsSelector = mkSelector "options"

-- | @Selector@ for @setOptions:@
setOptionsSelector :: Selector '[MPSGraphOptions] ()
setOptionsSelector = mkSelector "setOptions:"

-- | @Selector@ for @feedTensors@
feedTensorsSelector :: Selector '[] (Id NSArray)
feedTensorsSelector = mkSelector "feedTensors"

-- | @Selector@ for @targetTensors@
targetTensorsSelector :: Selector '[] (Id NSArray)
targetTensorsSelector = mkSelector "targetTensors"

