{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphExecutableExecutionDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphExecutableExecutionDescriptor
  ( MPSGraphExecutableExecutionDescriptor
  , IsMPSGraphExecutableExecutionDescriptor(..)
  , waitForEvent_value
  , signalEvent_atExecutionEvent_value
  , scheduledHandler
  , setScheduledHandler
  , completionHandler
  , setCompletionHandler
  , waitUntilCompleted
  , setWaitUntilCompleted
  , completionHandlerSelector
  , scheduledHandlerSelector
  , setCompletionHandlerSelector
  , setScheduledHandlerSelector
  , setWaitUntilCompletedSelector
  , signalEvent_atExecutionEvent_valueSelector
  , waitForEvent_valueSelector
  , waitUntilCompletedSelector

  -- * Enum types
  , MPSGraphExecutionStage(MPSGraphExecutionStage)
  , pattern MPSGraphExecutionStageCompleted

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

-- | Executable waits on these shared events before scheduling execution on the HW, this does not include encoding which can still continue.
--
-- @event@ — shared event to wait on
--
-- @value@ — value for shared event to wait on
--
-- ObjC selector: @- waitForEvent:value:@
waitForEvent_value :: IsMPSGraphExecutableExecutionDescriptor mpsGraphExecutableExecutionDescriptor => mpsGraphExecutableExecutionDescriptor -> RawId -> CULong -> IO ()
waitForEvent_value mpsGraphExecutableExecutionDescriptor event value =
  sendMessage mpsGraphExecutableExecutionDescriptor waitForEvent_valueSelector event value

-- | Executable signals these shared events at execution stage and immediately proceeds
--
-- @event@ — shared event to signal
--
-- @executionStage@ — execution stage to signal event at
--
-- @value@ — value for shared event to wait on
--
-- ObjC selector: @- signalEvent:atExecutionEvent:value:@
signalEvent_atExecutionEvent_value :: IsMPSGraphExecutableExecutionDescriptor mpsGraphExecutableExecutionDescriptor => mpsGraphExecutableExecutionDescriptor -> RawId -> MPSGraphExecutionStage -> CULong -> IO ()
signalEvent_atExecutionEvent_value mpsGraphExecutableExecutionDescriptor event executionStage value =
  sendMessage mpsGraphExecutableExecutionDescriptor signalEvent_atExecutionEvent_valueSelector event executionStage value

-- | scheduledHandler
--
-- scheduledHandler for the graph executable, default value is nil
--
-- ObjC selector: @- scheduledHandler@
scheduledHandler :: IsMPSGraphExecutableExecutionDescriptor mpsGraphExecutableExecutionDescriptor => mpsGraphExecutableExecutionDescriptor -> IO (Ptr ())
scheduledHandler mpsGraphExecutableExecutionDescriptor =
  sendMessage mpsGraphExecutableExecutionDescriptor scheduledHandlerSelector

-- | scheduledHandler
--
-- scheduledHandler for the graph executable, default value is nil
--
-- ObjC selector: @- setScheduledHandler:@
setScheduledHandler :: IsMPSGraphExecutableExecutionDescriptor mpsGraphExecutableExecutionDescriptor => mpsGraphExecutableExecutionDescriptor -> Ptr () -> IO ()
setScheduledHandler mpsGraphExecutableExecutionDescriptor value =
  sendMessage mpsGraphExecutableExecutionDescriptor setScheduledHandlerSelector value

-- | completionHandler
--
-- completionHandler for the graph executable, default value is nil
--
-- ObjC selector: @- completionHandler@
completionHandler :: IsMPSGraphExecutableExecutionDescriptor mpsGraphExecutableExecutionDescriptor => mpsGraphExecutableExecutionDescriptor -> IO (Ptr ())
completionHandler mpsGraphExecutableExecutionDescriptor =
  sendMessage mpsGraphExecutableExecutionDescriptor completionHandlerSelector

-- | completionHandler
--
-- completionHandler for the graph executable, default value is nil
--
-- ObjC selector: @- setCompletionHandler:@
setCompletionHandler :: IsMPSGraphExecutableExecutionDescriptor mpsGraphExecutableExecutionDescriptor => mpsGraphExecutableExecutionDescriptor -> Ptr () -> IO ()
setCompletionHandler mpsGraphExecutableExecutionDescriptor value =
  sendMessage mpsGraphExecutableExecutionDescriptor setCompletionHandlerSelector value

-- | waitUntilCompleted
--
-- waitUntilCompleted for the graph executable, default value is false
--
-- ObjC selector: @- waitUntilCompleted@
waitUntilCompleted :: IsMPSGraphExecutableExecutionDescriptor mpsGraphExecutableExecutionDescriptor => mpsGraphExecutableExecutionDescriptor -> IO Bool
waitUntilCompleted mpsGraphExecutableExecutionDescriptor =
  sendMessage mpsGraphExecutableExecutionDescriptor waitUntilCompletedSelector

-- | waitUntilCompleted
--
-- waitUntilCompleted for the graph executable, default value is false
--
-- ObjC selector: @- setWaitUntilCompleted:@
setWaitUntilCompleted :: IsMPSGraphExecutableExecutionDescriptor mpsGraphExecutableExecutionDescriptor => mpsGraphExecutableExecutionDescriptor -> Bool -> IO ()
setWaitUntilCompleted mpsGraphExecutableExecutionDescriptor value =
  sendMessage mpsGraphExecutableExecutionDescriptor setWaitUntilCompletedSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @waitForEvent:value:@
waitForEvent_valueSelector :: Selector '[RawId, CULong] ()
waitForEvent_valueSelector = mkSelector "waitForEvent:value:"

-- | @Selector@ for @signalEvent:atExecutionEvent:value:@
signalEvent_atExecutionEvent_valueSelector :: Selector '[RawId, MPSGraphExecutionStage, CULong] ()
signalEvent_atExecutionEvent_valueSelector = mkSelector "signalEvent:atExecutionEvent:value:"

-- | @Selector@ for @scheduledHandler@
scheduledHandlerSelector :: Selector '[] (Ptr ())
scheduledHandlerSelector = mkSelector "scheduledHandler"

-- | @Selector@ for @setScheduledHandler:@
setScheduledHandlerSelector :: Selector '[Ptr ()] ()
setScheduledHandlerSelector = mkSelector "setScheduledHandler:"

-- | @Selector@ for @completionHandler@
completionHandlerSelector :: Selector '[] (Ptr ())
completionHandlerSelector = mkSelector "completionHandler"

-- | @Selector@ for @setCompletionHandler:@
setCompletionHandlerSelector :: Selector '[Ptr ()] ()
setCompletionHandlerSelector = mkSelector "setCompletionHandler:"

-- | @Selector@ for @waitUntilCompleted@
waitUntilCompletedSelector :: Selector '[] Bool
waitUntilCompletedSelector = mkSelector "waitUntilCompleted"

-- | @Selector@ for @setWaitUntilCompleted:@
setWaitUntilCompletedSelector :: Selector '[Bool] ()
setWaitUntilCompletedSelector = mkSelector "setWaitUntilCompleted:"

