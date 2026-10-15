{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | VZVirtualMachine represents the entire state of a single virtual machine.
--
-- A Virtual Machine is the emulation of a complete hardware machine of the same architecture as the real hardware machine.    When executing the Virtual Machine, the Virtualization framework uses certain hardware resources and emulates others to provide isolation    and great performance.
--
-- The definition of a virtual machine starts with its configuration. This is done by setting up a VZVirtualMachineConfiguration object.    Once configured, the virtual machine can be started with [VZVirtualMachine startWithCompletionHandler:].
--
-- To install macOS on a virtual machine, configure a new virtual machine with a suitable VZMacPlatformConfiguration, then use a VZMacOSInstaller    to install the restore image on it.
--
-- Creating a virtual machine using the Virtualization framework requires the app to have the "com.apple.security.virtualization" entitlement.
--
-- VZVirtualMachineConfiguration
--
-- VZMacOSInstaller
--
-- Generated bindings for @VZVirtualMachine@.
module ObjC.Virtualization.VZVirtualMachine
  ( VZVirtualMachine
  , IsVZVirtualMachine(..)
  , new
  , init_
  , initWithConfiguration
  , initWithConfiguration_queue
  , startWithCompletionHandler
  , startWithOptions_completionHandler
  , stopWithCompletionHandler
  , pauseWithCompletionHandler
  , resumeWithCompletionHandler
  , requestStopWithError
  , supported
  , state
  , delegate
  , setDelegate
  , canStart
  , canStop
  , canPause
  , canResume
  , canRequestStop
  , memoryBalloonDevices
  , socketDevices
  , canPauseSelector
  , canRequestStopSelector
  , canResumeSelector
  , canStartSelector
  , canStopSelector
  , delegateSelector
  , initSelector
  , initWithConfigurationSelector
  , initWithConfiguration_queueSelector
  , memoryBalloonDevicesSelector
  , newSelector
  , pauseWithCompletionHandlerSelector
  , requestStopWithErrorSelector
  , resumeWithCompletionHandlerSelector
  , setDelegateSelector
  , socketDevicesSelector
  , startWithCompletionHandlerSelector
  , startWithOptions_completionHandlerSelector
  , stateSelector
  , stopWithCompletionHandlerSelector
  , supportedSelector

  -- * Enum types
  , VZVirtualMachineState(VZVirtualMachineState)
  , pattern VZVirtualMachineStateStopped
  , pattern VZVirtualMachineStateRunning
  , pattern VZVirtualMachineStatePaused
  , pattern VZVirtualMachineStateError
  , pattern VZVirtualMachineStateStarting
  , pattern VZVirtualMachineStatePausing
  , pattern VZVirtualMachineStateResuming
  , pattern VZVirtualMachineStateStopping

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Virtualization.Internal.Classes
import ObjC.Virtualization.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @+ new@
new :: IO (Id VZVirtualMachine)
new  =
  do
    cls' <- getRequiredClass "VZVirtualMachine"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO (Id VZVirtualMachine)
init_ vzVirtualMachine =
  sendOwnedMessage vzVirtualMachine initSelector

-- | Initialize the virtual machine.
--
-- This initializer uses the main queue to operate the virtual machine. Every call must be done on the main queue and the callbacks are invoked    on the main queue.
--
-- @configuration@ — The configuration of the virtual machine.    The configuration must be valid. Validation can be performed at runtime with [VZVirtualMachineConfiguration validateWithError:].    The configuration is copied by the initializer.
--
-- ObjC selector: @- initWithConfiguration:@
initWithConfiguration :: (IsVZVirtualMachine vzVirtualMachine, IsVZVirtualMachineConfiguration configuration) => vzVirtualMachine -> configuration -> IO (Id VZVirtualMachine)
initWithConfiguration vzVirtualMachine configuration =
  sendOwnedMessage vzVirtualMachine initWithConfigurationSelector (toVZVirtualMachineConfiguration configuration)

-- | Initialize the virtual machine.
--
-- @configuration@ — The configuration of the virtual machine.    The configuration must be valid. Validation can be performed at runtime with [VZVirtualMachineConfiguration validateWithError:].    The configuration is copied by the initializer.
--
-- @queue@ — The serial queue on which the virtual machine operates.    Every operation on the virtual machine must be done on that queue. The callbacks and delegate methods are invoked on that queue.    If the queue is not serial, the behavior is undefined.
--
-- ObjC selector: @- initWithConfiguration:queue:@
initWithConfiguration_queue :: (IsVZVirtualMachine vzVirtualMachine, IsVZVirtualMachineConfiguration configuration, IsNSObject queue) => vzVirtualMachine -> configuration -> queue -> IO (Id VZVirtualMachine)
initWithConfiguration_queue vzVirtualMachine configuration queue =
  sendOwnedMessage vzVirtualMachine initWithConfiguration_queueSelector (toVZVirtualMachineConfiguration configuration) (toNSObject queue)

-- | Start a virtual machine.
--
-- Start a virtual machine that is in either Stopped or Error state.
--
-- @completionHandler@ — Block called after the virtual machine has been successfully started or on error.    The error parameter passed to the block is nil if the start was successful.
--
-- ObjC selector: @- startWithCompletionHandler:@
startWithCompletionHandler :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> Ptr () -> IO ()
startWithCompletionHandler vzVirtualMachine completionHandler =
  sendMessage vzVirtualMachine startWithCompletionHandlerSelector completionHandler

-- | Start a virtual machine with options.
--
-- Start a virtual machine that is in either Stopped or Error state.
--
-- @options@ — Options used to control how the virtual machine is started.
--
-- @completionHandler@ — Block called after the virtual machine has been successfully started or on error.    The error parameter passed to the block is nil if the start was successful.
--
-- VZMacOSVirtualMachineStartOptions
--
-- ObjC selector: @- startWithOptions:completionHandler:@
startWithOptions_completionHandler :: (IsVZVirtualMachine vzVirtualMachine, IsVZVirtualMachineStartOptions options) => vzVirtualMachine -> options -> Ptr () -> IO ()
startWithOptions_completionHandler vzVirtualMachine options completionHandler =
  sendMessage vzVirtualMachine startWithOptions_completionHandlerSelector (toVZVirtualMachineStartOptions options) completionHandler

-- | Stop a virtual machine.
--
-- Stop a virtual machine that is in either Running or Paused state.
--
-- @completionHandler@ — Block called after the virtual machine has been successfully stopped or on error.    The error parameter passed to the block is nil if the stop was successful.
--
-- This is a destructive operation. It stops the virtual machine without giving the guest a chance to stop cleanly.
--
-- -[VZVirtualMachine requestStopWithError:]
--
-- ObjC selector: @- stopWithCompletionHandler:@
stopWithCompletionHandler :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> Ptr () -> IO ()
stopWithCompletionHandler vzVirtualMachine completionHandler =
  sendMessage vzVirtualMachine stopWithCompletionHandlerSelector completionHandler

-- | Pause a virtual machine.
--
-- Pause a virtual machine that is in Running state.
--
-- @completionHandler@ — Block called after the virtual machine has been successfully paused or on error.    The error parameter passed to the block is nil if the pause was successful.
--
-- ObjC selector: @- pauseWithCompletionHandler:@
pauseWithCompletionHandler :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> Ptr () -> IO ()
pauseWithCompletionHandler vzVirtualMachine completionHandler =
  sendMessage vzVirtualMachine pauseWithCompletionHandlerSelector completionHandler

-- | Resume a virtual machine.
--
-- Resume a virtual machine that is in the Paused state.
--
-- @completionHandler@ — Block called after the virtual machine has been successfully resumed or on error.    The error parameter passed to the block is nil if the resumption was successful.
--
-- ObjC selector: @- resumeWithCompletionHandler:@
resumeWithCompletionHandler :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> Ptr () -> IO ()
resumeWithCompletionHandler vzVirtualMachine completionHandler =
  sendMessage vzVirtualMachine resumeWithCompletionHandlerSelector completionHandler

-- | Request that the guest turns itself off.
--
-- @error@ — If not nil, assigned with the error if the request failed.
--
-- Returns: YES if the request was made successfully.
--
-- The -[VZVirtualMachineDelegate guestDidStopVirtualMachine:] delegate method is invoked when the guest has turned itself off.
--
-- -[VZVirtualMachineDelegate guestDidStopVirtualMachine:].
--
-- ObjC selector: @- requestStopWithError:@
requestStopWithError :: (IsVZVirtualMachine vzVirtualMachine, IsNSError error_) => vzVirtualMachine -> error_ -> IO Bool
requestStopWithError vzVirtualMachine error_ =
  sendMessage vzVirtualMachine requestStopWithErrorSelector (toNSError error_)

-- | Indicate whether or not virtualization is available.
--
-- If virtualization is unavailable, no VZVirtualMachineConfiguration will validate.    The validation error of the VZVirtualMachineConfiguration provides more information about why virtualization is unavailable.
--
-- ObjC selector: @+ supported@
supported :: IO Bool
supported  =
  do
    cls' <- getRequiredClass "VZVirtualMachine"
    sendClassMessage cls' supportedSelector

-- | Execution state of the virtual machine.
--
-- ObjC selector: @- state@
state :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO VZVirtualMachineState
state vzVirtualMachine =
  sendMessage vzVirtualMachine stateSelector

-- | The virtual machine delegate.
--
-- ObjC selector: @- delegate@
delegate :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO RawId
delegate vzVirtualMachine =
  sendMessage vzVirtualMachine delegateSelector

-- | The virtual machine delegate.
--
-- ObjC selector: @- setDelegate:@
setDelegate :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> RawId -> IO ()
setDelegate vzVirtualMachine value =
  sendMessage vzVirtualMachine setDelegateSelector value

-- | Return YES if the machine is in a state that can be started.
--
-- See: -[VZVirtualMachine startWithCompletionHandler:].
--
-- See: -[VZVirtualMachine state]
--
-- ObjC selector: @- canStart@
canStart :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO Bool
canStart vzVirtualMachine =
  sendMessage vzVirtualMachine canStartSelector

-- | Return YES if the machine is in a state that can be stopped.
--
-- See: -[VZVirtualMachine stopWithCompletionHandler:]
--
-- See: -[VZVirtualMachine state]
--
-- ObjC selector: @- canStop@
canStop :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO Bool
canStop vzVirtualMachine =
  sendMessage vzVirtualMachine canStopSelector

-- | Return YES if the machine is in a state that can be paused.
--
-- See: -[VZVirtualMachine pauseWithCompletionHandler:]
--
-- See: -[VZVirtualMachine state]
--
-- ObjC selector: @- canPause@
canPause :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO Bool
canPause vzVirtualMachine =
  sendMessage vzVirtualMachine canPauseSelector

-- | Return YES if the machine is in a state that can be resumed.
--
-- See: -[VZVirtualMachine resumeWithCompletionHandler:]
--
-- See: -[VZVirtualMachine state]
--
-- ObjC selector: @- canResume@
canResume :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO Bool
canResume vzVirtualMachine =
  sendMessage vzVirtualMachine canResumeSelector

-- | Returns whether the machine is in a state where the guest can be asked to stop.
--
-- See: -[VZVirtualMachine requestStopWithError:]
--
-- See: -[VZVirtualMachine state]
--
-- ObjC selector: @- canRequestStop@
canRequestStop :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO Bool
canRequestStop vzVirtualMachine =
  sendMessage vzVirtualMachine canRequestStopSelector

-- | Return the list of memory balloon devices configured on this virtual machine. Return an empty array if no memory balloon device is configured.
--
-- See: VZVirtioTraditionalMemoryBalloonDeviceConfiguration
--
-- See: VZVirtualMachineConfiguration
--
-- ObjC selector: @- memoryBalloonDevices@
memoryBalloonDevices :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO (Id NSArray)
memoryBalloonDevices vzVirtualMachine =
  sendMessage vzVirtualMachine memoryBalloonDevicesSelector

-- | Return the list of socket devices configured on this virtual machine. Return an empty array if no socket device is configured.
--
-- See: VZVirtioSocketDeviceConfiguration
--
-- See: VZVirtualMachineConfiguration
--
-- ObjC selector: @- socketDevices@
socketDevices :: IsVZVirtualMachine vzVirtualMachine => vzVirtualMachine -> IO (Id NSArray)
socketDevices vzVirtualMachine =
  sendMessage vzVirtualMachine socketDevicesSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id VZVirtualMachine)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id VZVirtualMachine)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithConfiguration:@
initWithConfigurationSelector :: Selector '[Id VZVirtualMachineConfiguration] (Id VZVirtualMachine)
initWithConfigurationSelector = mkSelector "initWithConfiguration:"

-- | @Selector@ for @initWithConfiguration:queue:@
initWithConfiguration_queueSelector :: Selector '[Id VZVirtualMachineConfiguration, Id NSObject] (Id VZVirtualMachine)
initWithConfiguration_queueSelector = mkSelector "initWithConfiguration:queue:"

-- | @Selector@ for @startWithCompletionHandler:@
startWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
startWithCompletionHandlerSelector = mkSelector "startWithCompletionHandler:"

-- | @Selector@ for @startWithOptions:completionHandler:@
startWithOptions_completionHandlerSelector :: Selector '[Id VZVirtualMachineStartOptions, Ptr ()] ()
startWithOptions_completionHandlerSelector = mkSelector "startWithOptions:completionHandler:"

-- | @Selector@ for @stopWithCompletionHandler:@
stopWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
stopWithCompletionHandlerSelector = mkSelector "stopWithCompletionHandler:"

-- | @Selector@ for @pauseWithCompletionHandler:@
pauseWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
pauseWithCompletionHandlerSelector = mkSelector "pauseWithCompletionHandler:"

-- | @Selector@ for @resumeWithCompletionHandler:@
resumeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
resumeWithCompletionHandlerSelector = mkSelector "resumeWithCompletionHandler:"

-- | @Selector@ for @requestStopWithError:@
requestStopWithErrorSelector :: Selector '[Id NSError] Bool
requestStopWithErrorSelector = mkSelector "requestStopWithError:"

-- | @Selector@ for @supported@
supportedSelector :: Selector '[] Bool
supportedSelector = mkSelector "supported"

-- | @Selector@ for @state@
stateSelector :: Selector '[] VZVirtualMachineState
stateSelector = mkSelector "state"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @canStart@
canStartSelector :: Selector '[] Bool
canStartSelector = mkSelector "canStart"

-- | @Selector@ for @canStop@
canStopSelector :: Selector '[] Bool
canStopSelector = mkSelector "canStop"

-- | @Selector@ for @canPause@
canPauseSelector :: Selector '[] Bool
canPauseSelector = mkSelector "canPause"

-- | @Selector@ for @canResume@
canResumeSelector :: Selector '[] Bool
canResumeSelector = mkSelector "canResume"

-- | @Selector@ for @canRequestStop@
canRequestStopSelector :: Selector '[] Bool
canRequestStopSelector = mkSelector "canRequestStop"

-- | @Selector@ for @memoryBalloonDevices@
memoryBalloonDevicesSelector :: Selector '[] (Id NSArray)
memoryBalloonDevicesSelector = mkSelector "memoryBalloonDevices"

-- | @Selector@ for @socketDevices@
socketDevicesSelector :: Selector '[] (Id NSArray)
socketDevicesSelector = mkSelector "socketDevices"

