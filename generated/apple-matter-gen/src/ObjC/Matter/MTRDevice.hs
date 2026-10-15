{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDevice@.
module ObjC.Matter.MTRDevice
  ( MTRDevice
  , IsMTRDevice(..)
  , init_
  , new
  , deviceWithNodeID_deviceController
  , setDelegate_queue
  , readAttributeWithEndpointID_clusterID_attributeID_params
  , writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout
  , invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_clientQueue_completion
  , openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completion
  , state
  , deviceWithNodeID_deviceControllerSelector
  , initSelector
  , invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_clientQueue_completionSelector
  , newSelector
  , openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completionSelector
  , readAttributeWithEndpointID_clusterID_attributeID_paramsSelector
  , setDelegate_queueSelector
  , stateSelector
  , writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeoutSelector

  -- * Enum types
  , MTRDeviceState(MTRDeviceState)
  , pattern MTRDeviceStateUnknown
  , pattern MTRDeviceStateReachable
  , pattern MTRDeviceStateUnreachable

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Matter.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTRDevice mtrDevice => mtrDevice -> IO (Id MTRDevice)
init_ mtrDevice =
  sendOwnedMessage mtrDevice initSelector

-- | @+ new@
new :: IO (Id MTRDevice)
new  =
  do
    cls' <- getRequiredClass "MTRDevice"
    sendOwnedClassMessage cls' newSelector

-- | TODO: Document usage better
--
-- Directly instantiate a MTRDevice with a MTRDeviceController as a shim.
--
-- All device-specific information would be stored on the device controller, and retrieved when performing actions using a combination of MTRBaseDevice and MTRAsyncCallbackQueue.
--
-- ObjC selector: @+ deviceWithNodeID:deviceController:@
deviceWithNodeID_deviceController :: IsMTRDeviceController deviceController => CULong -> deviceController -> IO (Id MTRDevice)
deviceWithNodeID_deviceController nodeID deviceController =
  do
    cls' <- getRequiredClass "MTRDevice"
    sendClassMessage cls' deviceWithNodeID_deviceControllerSelector nodeID (toMTRDeviceController deviceController)

-- | Set the delegate to receive asynchronous callbacks about the device.
--
-- The delegate will be called on the provided queue, for attribute reports, event reports, and device state changes.
--
-- ObjC selector: @- setDelegate:queue:@
setDelegate_queue :: (IsMTRDevice mtrDevice, IsNSObject queue) => mtrDevice -> RawId -> queue -> IO ()
setDelegate_queue mtrDevice delegate queue =
  sendMessage mtrDevice setDelegate_queueSelector delegate (toNSObject queue)

-- | Read attribute in a designated attribute path
--
-- TODO: Need to document that this returns "the system's best guess" of attribute values.
--
-- Returns: a data-value dictionary of the attribute as described in MTRDeviceResponseHandler
--
-- ObjC selector: @- readAttributeWithEndpointID:clusterID:attributeID:params:@
readAttributeWithEndpointID_clusterID_attributeID_params :: (IsMTRDevice mtrDevice, IsNSNumber endpointID, IsNSNumber clusterID, IsNSNumber attributeID, IsMTRReadParams params) => mtrDevice -> endpointID -> clusterID -> attributeID -> params -> IO (Id NSDictionary)
readAttributeWithEndpointID_clusterID_attributeID_params mtrDevice endpointID clusterID attributeID params =
  sendMessage mtrDevice readAttributeWithEndpointID_clusterID_attributeID_paramsSelector (toNSNumber endpointID) (toNSNumber clusterID) (toNSNumber attributeID) (toMTRReadParams params)

-- | Write to attribute in a designated attribute path
--
-- @value@ — A data-value NSDictionary object as described in                    MTRDeviceResponseHandler.
--
-- @expectedValueInterval@ — maximum interval in milliseconds during which reads of the attribute will return the value being written. This value will be clamped to timeoutMs
--
-- TODO: document that -readAttribute... will return the expected value for the [endpoint,cluster,attribute] until one of the following:  1. Another write for the same attribute happens.  2. expectedValueIntervalMs (clamped) expires. Need to figure out phrasing here.  3. We succeed at writing the attribute.  4. We fail at writing the attribute and give up on the write
--
-- @timeout@ — timeout in milliseconds for timed write, or nil. TODO: make timeout arguments uniform
--
-- ObjC selector: @- writeAttributeWithEndpointID:clusterID:attributeID:value:expectedValueInterval:timedWriteTimeout:@
writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout :: (IsMTRDevice mtrDevice, IsNSNumber endpointID, IsNSNumber clusterID, IsNSNumber attributeID, IsNSNumber expectedValueInterval, IsNSNumber timeout) => mtrDevice -> endpointID -> clusterID -> attributeID -> RawId -> expectedValueInterval -> timeout -> IO ()
writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout mtrDevice endpointID clusterID attributeID value expectedValueInterval timeout =
  sendMessage mtrDevice writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeoutSelector (toNSNumber endpointID) (toNSNumber clusterID) (toNSNumber attributeID) value (toNSNumber expectedValueInterval) (toNSNumber timeout)

-- | Invoke a command with a designated command path
--
-- @commandFields@ — command fields object. The object must be a data-value NSDictionary object                      as described in the MTRDeviceResponseHandler.                      The attribute must be a Structure, i.e.,                      the NSDictionary MTRTypeKey key must have the value MTRStructureValueType.
--
-- @expectedValues@ — array of dictionaries containing the expected values in the same format as                       attribute read completion handler. Requires MTRAttributePathKey values.                       See MTRDeviceResponseHandler definition for dictionary details. TODO: document better the expectedValues is how this command is expected to change attributes when read, and that the next readAttribute will get these values
--
-- @expectedValueInterval@ — maximum interval in milliseconds during which reads of the attribute will return the value being written. This value will be clamped to timeout
--
-- @timeout@ — timeout in milliseconds for timed invoke, or nil.
--
-- @completion@ — response handler will receive either values or error.
--
-- ObjC selector: @- invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:clientQueue:completion:@
invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_clientQueue_completion :: (IsMTRDevice mtrDevice, IsNSNumber endpointID, IsNSNumber clusterID, IsNSNumber commandID, IsNSArray expectedValues, IsNSNumber expectedValueInterval, IsNSNumber timeout, IsNSObject clientQueue) => mtrDevice -> endpointID -> clusterID -> commandID -> RawId -> expectedValues -> expectedValueInterval -> timeout -> clientQueue -> Ptr () -> IO ()
invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_clientQueue_completion mtrDevice endpointID clusterID commandID commandFields expectedValues expectedValueInterval timeout clientQueue completion =
  sendMessage mtrDevice invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_clientQueue_completionSelector (toNSNumber endpointID) (toNSNumber clusterID) (toNSNumber commandID) commandFields (toNSArray expectedValues) (toNSNumber expectedValueInterval) (toNSNumber timeout) (toNSObject clientQueue) completion

-- | Open a commissioning window on the device.
--
-- On success, completion will be called on queue with the MTRSetupPayload that can be used to commission the device.
--
-- @setupPasscode@ — The setup passcode to use for the commissioning window.                      See MTRSetupPayload's generateRandomSetupPasscode for                      generating a valid random passcode.
--
-- @discriminator@ — The discriminator to use for the commissionable                      advertisement.
--
-- @duration@ — Duration, in seconds, during which the commissioning                      window will be open.
--
-- ObjC selector: @- openCommissioningWindowWithSetupPasscode:discriminator:duration:queue:completion:@
openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completion :: (IsMTRDevice mtrDevice, IsNSNumber setupPasscode, IsNSNumber discriminator, IsNSNumber duration, IsNSObject queue) => mtrDevice -> setupPasscode -> discriminator -> duration -> queue -> Ptr () -> IO ()
openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completion mtrDevice setupPasscode discriminator duration queue completion =
  sendMessage mtrDevice openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completionSelector (toNSNumber setupPasscode) (toNSNumber discriminator) (toNSNumber duration) (toNSObject queue) completion

-- | The current state of the device.
--
-- The three states:   MTRDeviceStateUnknown      Unable to determine the state of the device at the moment.
--
-- MTRDeviceStateReachable      Communication with the device is expected to succeed.
--
-- MTRDeviceStateUnreachable      The device is currently unreachable.
--
-- ObjC selector: @- state@
state :: IsMTRDevice mtrDevice => mtrDevice -> IO MTRDeviceState
state mtrDevice =
  sendMessage mtrDevice stateSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDevice)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRDevice)
newSelector = mkSelector "new"

-- | @Selector@ for @deviceWithNodeID:deviceController:@
deviceWithNodeID_deviceControllerSelector :: Selector '[CULong, Id MTRDeviceController] (Id MTRDevice)
deviceWithNodeID_deviceControllerSelector = mkSelector "deviceWithNodeID:deviceController:"

-- | @Selector@ for @setDelegate:queue:@
setDelegate_queueSelector :: Selector '[RawId, Id NSObject] ()
setDelegate_queueSelector = mkSelector "setDelegate:queue:"

-- | @Selector@ for @readAttributeWithEndpointID:clusterID:attributeID:params:@
readAttributeWithEndpointID_clusterID_attributeID_paramsSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, Id MTRReadParams] (Id NSDictionary)
readAttributeWithEndpointID_clusterID_attributeID_paramsSelector = mkSelector "readAttributeWithEndpointID:clusterID:attributeID:params:"

-- | @Selector@ for @writeAttributeWithEndpointID:clusterID:attributeID:value:expectedValueInterval:timedWriteTimeout:@
writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeoutSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, RawId, Id NSNumber, Id NSNumber] ()
writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeoutSelector = mkSelector "writeAttributeWithEndpointID:clusterID:attributeID:value:expectedValueInterval:timedWriteTimeout:"

-- | @Selector@ for @invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:clientQueue:completion:@
invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_clientQueue_completionSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, RawId, Id NSArray, Id NSNumber, Id NSNumber, Id NSObject, Ptr ()] ()
invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_clientQueue_completionSelector = mkSelector "invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:clientQueue:completion:"

-- | @Selector@ for @openCommissioningWindowWithSetupPasscode:discriminator:duration:queue:completion:@
openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completionSelector :: Selector '[Id NSNumber, Id NSNumber, Id NSNumber, Id NSObject, Ptr ()] ()
openCommissioningWindowWithSetupPasscode_discriminator_duration_queue_completionSelector = mkSelector "openCommissioningWindowWithSetupPasscode:discriminator:duration:queue:completion:"

-- | @Selector@ for @state@
stateSelector :: Selector '[] MTRDeviceState
stateSelector = mkSelector "state"

