{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MPSGraphCompilationDescriptor
--
-- A structure which consists of all the levers users can use to compile their graphs
--
-- Generated bindings for @MPSGraphCompilationDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphCompilationDescriptor
  ( MPSGraphCompilationDescriptor
  , IsMPSGraphCompilationDescriptor(..)
  , disableTypeInference
  , optimizationLevel
  , setOptimizationLevel
  , optimizationProfile
  , setOptimizationProfile
  , waitForCompilationCompletion
  , setWaitForCompilationCompletion
  , compilationCompletionHandler
  , setCompilationCompletionHandler
  , dispatchQueue
  , setDispatchQueue
  , compilationCompletionHandlerSelector
  , disableTypeInferenceSelector
  , dispatchQueueSelector
  , optimizationLevelSelector
  , optimizationProfileSelector
  , setCompilationCompletionHandlerSelector
  , setDispatchQueueSelector
  , setOptimizationLevelSelector
  , setOptimizationProfileSelector
  , setWaitForCompilationCompletionSelector
  , waitForCompilationCompletionSelector

  -- * Enum types
  , MPSGraphOptimization(MPSGraphOptimization)
  , pattern MPSGraphOptimizationLevel0
  , pattern MPSGraphOptimizationLevel1
  , MPSGraphOptimizationProfile(MPSGraphOptimizationProfile)
  , pattern MPSGraphOptimizationProfilePerformance
  , pattern MPSGraphOptimizationProfilePowerEfficiency

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

-- | Turns off type inference and we rely on type inference during runtime
--
-- ObjC selector: @- disableTypeInference@
disableTypeInference :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> IO ()
disableTypeInference mpsGraphCompilationDescriptor =
  sendMessage mpsGraphCompilationDescriptor disableTypeInferenceSelector

-- | optimizationLevel
--
-- optimization level for the graph execution, default is MPSGraphOptimizationLevel0
--
-- ObjC selector: @- optimizationLevel@
optimizationLevel :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> IO MPSGraphOptimization
optimizationLevel mpsGraphCompilationDescriptor =
  sendMessage mpsGraphCompilationDescriptor optimizationLevelSelector

-- | optimizationLevel
--
-- optimization level for the graph execution, default is MPSGraphOptimizationLevel0
--
-- ObjC selector: @- setOptimizationLevel:@
setOptimizationLevel :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> MPSGraphOptimization -> IO ()
setOptimizationLevel mpsGraphCompilationDescriptor value =
  sendMessage mpsGraphCompilationDescriptor setOptimizationLevelSelector value

-- | optimizationProfile
--
-- optimization profile for the graph optimization, default is MPSGraphOptimizationProfilePerformance
--
-- ObjC selector: @- optimizationProfile@
optimizationProfile :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> IO MPSGraphOptimizationProfile
optimizationProfile mpsGraphCompilationDescriptor =
  sendMessage mpsGraphCompilationDescriptor optimizationProfileSelector

-- | optimizationProfile
--
-- optimization profile for the graph optimization, default is MPSGraphOptimizationProfilePerformance
--
-- ObjC selector: @- setOptimizationProfile:@
setOptimizationProfile :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> MPSGraphOptimizationProfile -> IO ()
setOptimizationProfile mpsGraphCompilationDescriptor value =
  sendMessage mpsGraphCompilationDescriptor setOptimizationProfileSelector value

-- | waitForCompilationCompletion
--
-- makes the compile or specialize call blocking till the entire compilation is completed, defaults to NO
--
-- ObjC selector: @- waitForCompilationCompletion@
waitForCompilationCompletion :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> IO Bool
waitForCompilationCompletion mpsGraphCompilationDescriptor =
  sendMessage mpsGraphCompilationDescriptor waitForCompilationCompletionSelector

-- | waitForCompilationCompletion
--
-- makes the compile or specialize call blocking till the entire compilation is completed, defaults to NO
--
-- ObjC selector: @- setWaitForCompilationCompletion:@
setWaitForCompilationCompletion :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> Bool -> IO ()
setWaitForCompilationCompletion mpsGraphCompilationDescriptor value =
  sendMessage mpsGraphCompilationDescriptor setWaitForCompilationCompletionSelector value

-- | compilationCompletionHandler
--
-- compilationCompletionHandler for the compilation, default value is nil, it is called after compilation is completed
--
-- ObjC selector: @- compilationCompletionHandler@
compilationCompletionHandler :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> IO (Ptr ())
compilationCompletionHandler mpsGraphCompilationDescriptor =
  sendMessage mpsGraphCompilationDescriptor compilationCompletionHandlerSelector

-- | compilationCompletionHandler
--
-- compilationCompletionHandler for the compilation, default value is nil, it is called after compilation is completed
--
-- ObjC selector: @- setCompilationCompletionHandler:@
setCompilationCompletionHandler :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> Ptr () -> IO ()
setCompilationCompletionHandler mpsGraphCompilationDescriptor value =
  sendMessage mpsGraphCompilationDescriptor setCompilationCompletionHandlerSelector value

-- | dispatchQueue
--
-- dispatchQueue for the compilation, default value is nil
--
-- ObjC selector: @- dispatchQueue@
dispatchQueue :: IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor => mpsGraphCompilationDescriptor -> IO (Id NSObject)
dispatchQueue mpsGraphCompilationDescriptor =
  sendMessage mpsGraphCompilationDescriptor dispatchQueueSelector

-- | dispatchQueue
--
-- dispatchQueue for the compilation, default value is nil
--
-- ObjC selector: @- setDispatchQueue:@
setDispatchQueue :: (IsMPSGraphCompilationDescriptor mpsGraphCompilationDescriptor, IsNSObject value) => mpsGraphCompilationDescriptor -> value -> IO ()
setDispatchQueue mpsGraphCompilationDescriptor value =
  sendMessage mpsGraphCompilationDescriptor setDispatchQueueSelector (toNSObject value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @disableTypeInference@
disableTypeInferenceSelector :: Selector '[] ()
disableTypeInferenceSelector = mkSelector "disableTypeInference"

-- | @Selector@ for @optimizationLevel@
optimizationLevelSelector :: Selector '[] MPSGraphOptimization
optimizationLevelSelector = mkSelector "optimizationLevel"

-- | @Selector@ for @setOptimizationLevel:@
setOptimizationLevelSelector :: Selector '[MPSGraphOptimization] ()
setOptimizationLevelSelector = mkSelector "setOptimizationLevel:"

-- | @Selector@ for @optimizationProfile@
optimizationProfileSelector :: Selector '[] MPSGraphOptimizationProfile
optimizationProfileSelector = mkSelector "optimizationProfile"

-- | @Selector@ for @setOptimizationProfile:@
setOptimizationProfileSelector :: Selector '[MPSGraphOptimizationProfile] ()
setOptimizationProfileSelector = mkSelector "setOptimizationProfile:"

-- | @Selector@ for @waitForCompilationCompletion@
waitForCompilationCompletionSelector :: Selector '[] Bool
waitForCompilationCompletionSelector = mkSelector "waitForCompilationCompletion"

-- | @Selector@ for @setWaitForCompilationCompletion:@
setWaitForCompilationCompletionSelector :: Selector '[Bool] ()
setWaitForCompilationCompletionSelector = mkSelector "setWaitForCompilationCompletion:"

-- | @Selector@ for @compilationCompletionHandler@
compilationCompletionHandlerSelector :: Selector '[] (Ptr ())
compilationCompletionHandlerSelector = mkSelector "compilationCompletionHandler"

-- | @Selector@ for @setCompilationCompletionHandler:@
setCompilationCompletionHandlerSelector :: Selector '[Ptr ()] ()
setCompilationCompletionHandlerSelector = mkSelector "setCompilationCompletionHandler:"

-- | @Selector@ for @dispatchQueue@
dispatchQueueSelector :: Selector '[] (Id NSObject)
dispatchQueueSelector = mkSelector "dispatchQueue"

-- | @Selector@ for @setDispatchQueue:@
setDispatchQueueSelector :: Selector '[Id NSObject] ()
setDispatchQueueSelector = mkSelector "setDispatchQueue:"

