{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.CoreMIDI.Internal.Classes (
    module ObjC.CoreMIDI.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- MIDICIDeviceInfo ----------

-- | MIDICIDeviceInfo
--
-- An NSObject containing basic information about a MIDI-CI-capable node.
-- 
-- Phantom type for @MIDICIDeviceInfo@.
data MIDICIDeviceInfo

instance IsObjCObject (Id MIDICIDeviceInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDICIDeviceInfo"

class IsNSObject a => IsMIDICIDeviceInfo a where
  toMIDICIDeviceInfo :: a -> Id MIDICIDeviceInfo

instance IsMIDICIDeviceInfo (Id MIDICIDeviceInfo) where
  toMIDICIDeviceInfo = unsafeCastId

instance IsNSObject (Id MIDICIDeviceInfo) where
  toNSObject = unsafeCastId

-- ---------- MIDICIDiscoveredNode ----------

-- | MIDICIDiscoveredNode
--
-- An object created during MIDI-CI discovery representing a MIDI destination with an                 associated MIDI source that responds to capability inquiries.
-- 
-- Phantom type for @MIDICIDiscoveredNode@.
data MIDICIDiscoveredNode

instance IsObjCObject (Id MIDICIDiscoveredNode) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDICIDiscoveredNode"

class IsNSObject a => IsMIDICIDiscoveredNode a where
  toMIDICIDiscoveredNode :: a -> Id MIDICIDiscoveredNode

instance IsMIDICIDiscoveredNode (Id MIDICIDiscoveredNode) where
  toMIDICIDiscoveredNode = unsafeCastId

instance IsNSObject (Id MIDICIDiscoveredNode) where
  toNSObject = unsafeCastId

-- ---------- MIDICIDiscoveryManager ----------

-- | MIDICIDiscoveryManager
--
-- Singleton object that performs system-wide MIDI Capability Inquiry discovery
--
-- MIDICIDiscoveryManager is used to retrieve information about nodes in the MIDI subsystem     that are MIDI-CI capable. Only MIDI destinations discovered via this API can be used to     create MIDICISessions.
-- 
-- Phantom type for @MIDICIDiscoveryManager@.
data MIDICIDiscoveryManager

instance IsObjCObject (Id MIDICIDiscoveryManager) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDICIDiscoveryManager"

class IsNSObject a => IsMIDICIDiscoveryManager a where
  toMIDICIDiscoveryManager :: a -> Id MIDICIDiscoveryManager

instance IsMIDICIDiscoveryManager (Id MIDICIDiscoveryManager) where
  toMIDICIDiscoveryManager = unsafeCastId

instance IsNSObject (Id MIDICIDiscoveryManager) where
  toNSObject = unsafeCastId

-- ---------- MIDICIProfile ----------

-- | MIDICIProfile
--
-- An NSObject representing Capability Inquiry profile. MIDI-CI profiles describe a mapping				of MIDI messages to specific sounds and synthesis behaviors, e.g. General MIDI, a drawbar organ,				etc. A MIDI-CI profile may be a standard registered profile or vendor-specific.
--
-- Standard Profile				Vendor-Specific Profile				Profile ID Byte 1:	0x7E Standard Profile			Manufacturer SysEx ID 1 Profile				Profile ID Byte 2:	Profile Bank				Manufacturer SysEx ID 2 Profile				Profile ID Byte 3:	Profile Number				Manufacturer SysEx ID 3 Profile				Profile ID Byte 4:	Profile Version				Manufacturer-specific Info				Profile ID Byte 5:	Profile Level				Manufacturer-specific Info
-- 
-- Phantom type for @MIDICIProfile@.
data MIDICIProfile

instance IsObjCObject (Id MIDICIProfile) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDICIProfile"

class IsNSObject a => IsMIDICIProfile a where
  toMIDICIProfile :: a -> Id MIDICIProfile

instance IsMIDICIProfile (Id MIDICIProfile) where
  toMIDICIProfile = unsafeCastId

instance IsNSObject (Id MIDICIProfile) where
  toNSObject = unsafeCastId

-- ---------- MIDICIProfileState ----------

-- | MIDICIProfileState
--
-- Lists the enabled and disabled profiles for a MIDI channel or port on a device.
-- 
-- Phantom type for @MIDICIProfileState@.
data MIDICIProfileState

instance IsObjCObject (Id MIDICIProfileState) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDICIProfileState"

class IsNSObject a => IsMIDICIProfileState a where
  toMIDICIProfileState :: a -> Id MIDICIProfileState

instance IsMIDICIProfileState (Id MIDICIProfileState) where
  toMIDICIProfileState = unsafeCastId

instance IsNSObject (Id MIDICIProfileState) where
  toNSObject = unsafeCastId

-- ---------- MIDICIResponder ----------

-- | MIDICIResponder
--
-- Responds to MIDI-CI inquiries from an initiator on behalf of a MIDIClient and handles profile and property change                operations for the Responder role.
-- 
-- Phantom type for @MIDICIResponder@.
data MIDICIResponder

instance IsObjCObject (Id MIDICIResponder) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDICIResponder"

class IsNSObject a => IsMIDICIResponder a where
  toMIDICIResponder :: a -> Id MIDICIResponder

instance IsMIDICIResponder (Id MIDICIResponder) where
  toMIDICIResponder = unsafeCastId

instance IsNSObject (Id MIDICIResponder) where
  toNSObject = unsafeCastId

-- ---------- MIDICISession ----------

-- | MIDICISession
--
-- Object representating a MIDI Capability Inquiry session.
--
-- A MIDI Capability Inquiry session is a bidirectional communication path between a MIDI process     and a MIDI-CI node (i.e., paired MIDI source and destination) identified using MIDI-CI discovery.     A MIDICISession can be used to manipulate MIDI-CI profiles and to discover the MIDI-CI property     capability.
-- 
-- Phantom type for @MIDICISession@.
data MIDICISession

instance IsObjCObject (Id MIDICISession) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDICISession"

class IsNSObject a => IsMIDICISession a where
  toMIDICISession :: a -> Id MIDICISession

instance IsMIDICISession (Id MIDICISession) where
  toMIDICISession = unsafeCastId

instance IsNSObject (Id MIDICISession) where
  toNSObject = unsafeCastId

-- ---------- MIDINetworkConnection ----------

-- | Phantom type for @MIDINetworkConnection@.
data MIDINetworkConnection

instance IsObjCObject (Id MIDINetworkConnection) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDINetworkConnection"

class IsNSObject a => IsMIDINetworkConnection a where
  toMIDINetworkConnection :: a -> Id MIDINetworkConnection

instance IsMIDINetworkConnection (Id MIDINetworkConnection) where
  toMIDINetworkConnection = unsafeCastId

instance IsNSObject (Id MIDINetworkConnection) where
  toNSObject = unsafeCastId

-- ---------- MIDINetworkHost ----------

-- | Phantom type for @MIDINetworkHost@.
data MIDINetworkHost

instance IsObjCObject (Id MIDINetworkHost) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDINetworkHost"

class IsNSObject a => IsMIDINetworkHost a where
  toMIDINetworkHost :: a -> Id MIDINetworkHost

instance IsMIDINetworkHost (Id MIDINetworkHost) where
  toMIDINetworkHost = unsafeCastId

instance IsNSObject (Id MIDINetworkHost) where
  toNSObject = unsafeCastId

-- ---------- MIDINetworkSession ----------

-- | Phantom type for @MIDINetworkSession@.
data MIDINetworkSession

instance IsObjCObject (Id MIDINetworkSession) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MIDINetworkSession"

class IsNSObject a => IsMIDINetworkSession a where
  toMIDINetworkSession :: a -> Id MIDINetworkSession

instance IsMIDINetworkSession (Id MIDINetworkSession) where
  toMIDINetworkSession = unsafeCastId

instance IsNSObject (Id MIDINetworkSession) where
  toNSObject = unsafeCastId
