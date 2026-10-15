{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MIDICISession
--
-- Object representating a MIDI Capability Inquiry session.
--
-- A MIDI Capability Inquiry session is a bidirectional communication path between a MIDI process     and a MIDI-CI node (i.e., paired MIDI source and destination) identified using MIDI-CI discovery.     A MIDICISession can be used to manipulate MIDI-CI profiles and to discover the MIDI-CI property     capability.
--
-- Generated bindings for @MIDICISession@.
module ObjC.CoreMIDI.MIDICISession
  ( MIDICISession
  , IsMIDICISession(..)
  , init_
  , initWithDiscoveredNode_dataReadyHandler_disconnectHandler
  , profileStateForChannel
  , enableProfile_onChannel_error
  , disableProfile_onChannel_error
  , sendProfile_onChannel_profileData
  , midiDestination
  , supportsProfileCapability
  , supportsPropertyCapability
  , deviceInfo
  , maxSysExSize
  , maxPropertyRequests
  , profileChangedCallback
  , setProfileChangedCallback
  , profileSpecificDataHandler
  , setProfileSpecificDataHandler
  , deviceInfoSelector
  , disableProfile_onChannel_errorSelector
  , enableProfile_onChannel_errorSelector
  , initSelector
  , initWithDiscoveredNode_dataReadyHandler_disconnectHandlerSelector
  , maxPropertyRequestsSelector
  , maxSysExSizeSelector
  , midiDestinationSelector
  , profileChangedCallbackSelector
  , profileSpecificDataHandlerSelector
  , profileStateForChannelSelector
  , sendProfile_onChannel_profileDataSelector
  , setProfileChangedCallbackSelector
  , setProfileSpecificDataHandlerSelector
  , supportsProfileCapabilitySelector
  , supportsPropertyCapabilitySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreMIDI.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Begin a MIDI-CI session with the provided discovered node.
--
-- dataReadyHandler will be called when properties of the session have become available.	Other methods of this class will not return valid/useful information before the dataReadyHandler	is called.
--
-- disconnectHandler will be called if the active MIDICISession is disconnected by the Responder    or if initial MIDI-CI discovery was unsuccessful.
--
-- ObjC selector: @- init@
init_ :: IsMIDICISession midiciSession => midiciSession -> IO (Id MIDICISession)
init_ midiciSession =
  sendOwnedMessage midiciSession initSelector

-- | @- initWithDiscoveredNode:dataReadyHandler:disconnectHandler:@
initWithDiscoveredNode_dataReadyHandler_disconnectHandler :: (IsMIDICISession midiciSession, IsMIDICIDiscoveredNode discoveredNode) => midiciSession -> discoveredNode -> Ptr () -> Ptr () -> IO (Id MIDICISession)
initWithDiscoveredNode_dataReadyHandler_disconnectHandler midiciSession discoveredNode handler disconnectHandler =
  sendOwnedMessage midiciSession initWithDiscoveredNode_dataReadyHandler_disconnectHandlerSelector (toMIDICIDiscoveredNode discoveredNode) handler disconnectHandler

-- | Given a MIDI channel number, return the supported profiles. Note that the arrays will be empty if this property is queried before data is ready.
--
-- ObjC selector: @- profileStateForChannel:@
profileStateForChannel :: IsMIDICISession midiciSession => midiciSession -> CUChar -> IO (Id MIDICIProfileState)
profileStateForChannel midiciSession channel =
  sendMessage midiciSession profileStateForChannelSelector channel

-- | Given a MIDI channel number, asynchronously request that the supplied profile be enabled. The result of this operation is sent to the MIDICIProfileChangedBlock. Returns YES if the request is valid.
--
-- ObjC selector: @- enableProfile:onChannel:error:@
enableProfile_onChannel_error :: (IsMIDICISession midiciSession, IsMIDICIProfile profile, IsNSError outError) => midiciSession -> profile -> CUChar -> outError -> IO Bool
enableProfile_onChannel_error midiciSession profile channel outError =
  sendMessage midiciSession enableProfile_onChannel_errorSelector (toMIDICIProfile profile) channel (toNSError outError)

-- | Given a MIDI channel number, asynchronously request that the supplied profile be disabled. The result of this operation is sent to the MIDICIProfileChangedBlock. Returnes YES if the request is valid.
--
-- ObjC selector: @- disableProfile:onChannel:error:@
disableProfile_onChannel_error :: (IsMIDICISession midiciSession, IsMIDICIProfile profile, IsNSError outError) => midiciSession -> profile -> CUChar -> outError -> IO Bool
disableProfile_onChannel_error midiciSession profile channel outError =
  sendMessage midiciSession disableProfile_onChannel_errorSelector (toMIDICIProfile profile) channel (toNSError outError)

-- | Given a MIDI channel number, send profile specific data to the MIDICISession. Returns YES if the data was successfully sent.
--
-- ObjC selector: @- sendProfile:onChannel:profileData:@
sendProfile_onChannel_profileData :: (IsMIDICISession midiciSession, IsMIDICIProfile profile, IsNSData profileSpecificData) => midiciSession -> profile -> CUChar -> profileSpecificData -> IO Bool
sendProfile_onChannel_profileData midiciSession profile channel profileSpecificData =
  sendMessage midiciSession sendProfile_onChannel_profileDataSelector (toMIDICIProfile profile) channel (toNSData profileSpecificData)

-- | The MIDI destination with which the session is communicating.
--
-- ObjC selector: @- midiDestination@
midiDestination :: IsMIDICISession midiciSession => midiciSession -> IO CUInt
midiDestination midiciSession =
  sendMessage midiciSession midiDestinationSelector

-- | @- supportsProfileCapability@
supportsProfileCapability :: IsMIDICISession midiciSession => midiciSession -> IO Bool
supportsProfileCapability midiciSession =
  sendMessage midiciSession supportsProfileCapabilitySelector

-- | @- supportsPropertyCapability@
supportsPropertyCapability :: IsMIDICISession midiciSession => midiciSession -> IO Bool
supportsPropertyCapability midiciSession =
  sendMessage midiciSession supportsPropertyCapabilitySelector

-- | Obtain the device's basic identification. Nil before data is ready or if the device does not support MIDI-CI.
--
-- ObjC selector: @- deviceInfo@
deviceInfo :: IsMIDICISession midiciSession => midiciSession -> IO (Id MIDICIDeviceInfo)
deviceInfo midiciSession =
  sendMessage midiciSession deviceInfoSelector

-- | @- maxSysExSize@
maxSysExSize :: IsMIDICISession midiciSession => midiciSession -> IO (Id NSNumber)
maxSysExSize midiciSession =
  sendMessage midiciSession maxSysExSizeSelector

-- | @- maxPropertyRequests@
maxPropertyRequests :: IsMIDICISession midiciSession => midiciSession -> IO (Id NSNumber)
maxPropertyRequests midiciSession =
  sendMessage midiciSession maxPropertyRequestsSelector

-- | An optional block called when a device signals that a profile has been enabled or disabled.
--
-- ObjC selector: @- profileChangedCallback@
profileChangedCallback :: IsMIDICISession midiciSession => midiciSession -> IO (Ptr ())
profileChangedCallback midiciSession =
  sendMessage midiciSession profileChangedCallbackSelector

-- | An optional block called when a device signals that a profile has been enabled or disabled.
--
-- ObjC selector: @- setProfileChangedCallback:@
setProfileChangedCallback :: IsMIDICISession midiciSession => midiciSession -> Ptr () -> IO ()
setProfileChangedCallback midiciSession value =
  sendMessage midiciSession setProfileChangedCallbackSelector value

-- | An optional block called when a device sends profile-specific data to the session.
--
-- ObjC selector: @- profileSpecificDataHandler@
profileSpecificDataHandler :: IsMIDICISession midiciSession => midiciSession -> IO (Ptr ())
profileSpecificDataHandler midiciSession =
  sendMessage midiciSession profileSpecificDataHandlerSelector

-- | An optional block called when a device sends profile-specific data to the session.
--
-- ObjC selector: @- setProfileSpecificDataHandler:@
setProfileSpecificDataHandler :: IsMIDICISession midiciSession => midiciSession -> Ptr () -> IO ()
setProfileSpecificDataHandler midiciSession value =
  sendMessage midiciSession setProfileSpecificDataHandlerSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MIDICISession)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithDiscoveredNode:dataReadyHandler:disconnectHandler:@
initWithDiscoveredNode_dataReadyHandler_disconnectHandlerSelector :: Selector '[Id MIDICIDiscoveredNode, Ptr (), Ptr ()] (Id MIDICISession)
initWithDiscoveredNode_dataReadyHandler_disconnectHandlerSelector = mkSelector "initWithDiscoveredNode:dataReadyHandler:disconnectHandler:"

-- | @Selector@ for @profileStateForChannel:@
profileStateForChannelSelector :: Selector '[CUChar] (Id MIDICIProfileState)
profileStateForChannelSelector = mkSelector "profileStateForChannel:"

-- | @Selector@ for @enableProfile:onChannel:error:@
enableProfile_onChannel_errorSelector :: Selector '[Id MIDICIProfile, CUChar, Id NSError] Bool
enableProfile_onChannel_errorSelector = mkSelector "enableProfile:onChannel:error:"

-- | @Selector@ for @disableProfile:onChannel:error:@
disableProfile_onChannel_errorSelector :: Selector '[Id MIDICIProfile, CUChar, Id NSError] Bool
disableProfile_onChannel_errorSelector = mkSelector "disableProfile:onChannel:error:"

-- | @Selector@ for @sendProfile:onChannel:profileData:@
sendProfile_onChannel_profileDataSelector :: Selector '[Id MIDICIProfile, CUChar, Id NSData] Bool
sendProfile_onChannel_profileDataSelector = mkSelector "sendProfile:onChannel:profileData:"

-- | @Selector@ for @midiDestination@
midiDestinationSelector :: Selector '[] CUInt
midiDestinationSelector = mkSelector "midiDestination"

-- | @Selector@ for @supportsProfileCapability@
supportsProfileCapabilitySelector :: Selector '[] Bool
supportsProfileCapabilitySelector = mkSelector "supportsProfileCapability"

-- | @Selector@ for @supportsPropertyCapability@
supportsPropertyCapabilitySelector :: Selector '[] Bool
supportsPropertyCapabilitySelector = mkSelector "supportsPropertyCapability"

-- | @Selector@ for @deviceInfo@
deviceInfoSelector :: Selector '[] (Id MIDICIDeviceInfo)
deviceInfoSelector = mkSelector "deviceInfo"

-- | @Selector@ for @maxSysExSize@
maxSysExSizeSelector :: Selector '[] (Id NSNumber)
maxSysExSizeSelector = mkSelector "maxSysExSize"

-- | @Selector@ for @maxPropertyRequests@
maxPropertyRequestsSelector :: Selector '[] (Id NSNumber)
maxPropertyRequestsSelector = mkSelector "maxPropertyRequests"

-- | @Selector@ for @profileChangedCallback@
profileChangedCallbackSelector :: Selector '[] (Ptr ())
profileChangedCallbackSelector = mkSelector "profileChangedCallback"

-- | @Selector@ for @setProfileChangedCallback:@
setProfileChangedCallbackSelector :: Selector '[Ptr ()] ()
setProfileChangedCallbackSelector = mkSelector "setProfileChangedCallback:"

-- | @Selector@ for @profileSpecificDataHandler@
profileSpecificDataHandlerSelector :: Selector '[] (Ptr ())
profileSpecificDataHandlerSelector = mkSelector "profileSpecificDataHandler"

-- | @Selector@ for @setProfileSpecificDataHandler:@
setProfileSpecificDataHandlerSelector :: Selector '[Ptr ()] ()
setProfileSpecificDataHandlerSelector = mkSelector "setProfileSpecificDataHandler:"

