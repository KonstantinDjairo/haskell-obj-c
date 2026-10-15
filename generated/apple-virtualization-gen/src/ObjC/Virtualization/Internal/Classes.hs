{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.Virtualization.Internal.Classes (
    module ObjC.Virtualization.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- VZAudioDeviceConfiguration ----------

-- | Base class for an audio device configuration.
--
-- VZAudioDeviceConfiguration should not be instantiated directly.    The subclass VZVirtioSoundDeviceConfiguration should be used instead.
--
-- See: VZVirtioSoundDeviceConfiguration
-- 
-- Phantom type for @VZAudioDeviceConfiguration@.
data VZAudioDeviceConfiguration

instance IsObjCObject (Id VZAudioDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZAudioDeviceConfiguration"

class IsNSObject a => IsVZAudioDeviceConfiguration a where
  toVZAudioDeviceConfiguration :: a -> Id VZAudioDeviceConfiguration

instance IsVZAudioDeviceConfiguration (Id VZAudioDeviceConfiguration) where
  toVZAudioDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZAudioDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZAudioInputStreamSource ----------

-- | Base class for an audio input stream source.
--
-- An audio input stream source defines how audio input data for a guest is produced on the host system.
--
-- VZAudioInputStreamSource should not be instantiated directly. One of its subclasses should be used instead.
--
-- See: VZHostAudioInputStreamSource
-- 
-- Phantom type for @VZAudioInputStreamSource@.
data VZAudioInputStreamSource

instance IsObjCObject (Id VZAudioInputStreamSource) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZAudioInputStreamSource"

class IsNSObject a => IsVZAudioInputStreamSource a where
  toVZAudioInputStreamSource :: a -> Id VZAudioInputStreamSource

instance IsVZAudioInputStreamSource (Id VZAudioInputStreamSource) where
  toVZAudioInputStreamSource = unsafeCastId

instance IsNSObject (Id VZAudioInputStreamSource) where
  toNSObject = unsafeCastId

-- ---------- VZAudioOutputStreamSink ----------

-- | Base class for an audio output stream sink.
--
-- An audio output stream sink defines how audio data from a guest is consumed on the host system.
--
-- VZAudioOutputStreamSink should not be instantiated directly. One of its subclasses should be used instead.
--
-- See: VZHostAudioOutputStreamSink
-- 
-- Phantom type for @VZAudioOutputStreamSink@.
data VZAudioOutputStreamSink

instance IsObjCObject (Id VZAudioOutputStreamSink) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZAudioOutputStreamSink"

class IsNSObject a => IsVZAudioOutputStreamSink a where
  toVZAudioOutputStreamSink :: a -> Id VZAudioOutputStreamSink

instance IsVZAudioOutputStreamSink (Id VZAudioOutputStreamSink) where
  toVZAudioOutputStreamSink = unsafeCastId

instance IsNSObject (Id VZAudioOutputStreamSink) where
  toNSObject = unsafeCastId

-- ---------- VZBootLoader ----------

-- | Base class of boot loader configuration.
--
-- VZVirtualMachineConfiguration requires a boot loader defining how to start the virtual machine.     VZBootLoader is the abstract base class of boot loader definitions.
--
-- Don't instantiate VZBootLoader directly, instead use its subclass VZEFIBootLoader, VZLinuxBootLoader, or VZMacOSBootLoader.
--
-- See: VZEFIBootLoader
--
-- See: VZLinuxBootLoader
--
-- See: VZMacOSBootLoader
-- 
-- Phantom type for @VZBootLoader@.
data VZBootLoader

instance IsObjCObject (Id VZBootLoader) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZBootLoader"

class IsNSObject a => IsVZBootLoader a where
  toVZBootLoader :: a -> Id VZBootLoader

instance IsVZBootLoader (Id VZBootLoader) where
  toVZBootLoader = unsafeCastId

instance IsNSObject (Id VZBootLoader) where
  toNSObject = unsafeCastId

-- ---------- VZBridgedNetworkInterface ----------

-- | Define a network interface that bridges a physical interface with a virtual machine.
--
-- A bridged interface is shared between the virtual machine and the host system. Both host and virtual machine send and receive packets on the same physical interface    but have distinct network layers.
--
-- VZBridgedNetworkInterface cannot be instantiated directly. A list of supported network interfaces can be obtained using +[VZBridgedNetworkInterface networkInterfaces].
--
-- The VZBridgedNetworkInterface can be used with a VZBridgedNetworkDeviceAttachment to set up a network device VZNetworkDeviceConfiguration.
--
-- VZBridgedNetworkDeviceAttachment
--
-- VZNATNetworkDeviceAttachment
--
-- VZNetworkDeviceConfiguration
-- 
-- Phantom type for @VZBridgedNetworkInterface@.
data VZBridgedNetworkInterface

instance IsObjCObject (Id VZBridgedNetworkInterface) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZBridgedNetworkInterface"

class IsNSObject a => IsVZBridgedNetworkInterface a where
  toVZBridgedNetworkInterface :: a -> Id VZBridgedNetworkInterface

instance IsVZBridgedNetworkInterface (Id VZBridgedNetworkInterface) where
  toVZBridgedNetworkInterface = unsafeCastId

instance IsNSObject (Id VZBridgedNetworkInterface) where
  toNSObject = unsafeCastId

-- ---------- VZConsoleDevice ----------

-- | Class representing a console device in a virtual machine.
--
-- VZConsoleDevice should not be instantiated directly.
--
-- Console devices are first configured on the VZVirtualMachineConfiguration through a subclass of VZConsoleDeviceConfiguration.    When a VZVirtualMachine is created from the configuration, the console devices are available through the VZVirtualMachine.consoleDevices property.
--
-- The real type of VZConsoleDevice corresponds to the type used by the configuration.    For example, a VZVirtioConsoleDeviceConfiguration leads to a device of type VZVirtioConsoleDevice.
--
-- See: VZConsoleDeviceConfiguration
-- 
-- Phantom type for @VZConsoleDevice@.
data VZConsoleDevice

instance IsObjCObject (Id VZConsoleDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZConsoleDevice"

class IsNSObject a => IsVZConsoleDevice a where
  toVZConsoleDevice :: a -> Id VZConsoleDevice

instance IsVZConsoleDevice (Id VZConsoleDevice) where
  toVZConsoleDevice = unsafeCastId

instance IsNSObject (Id VZConsoleDevice) where
  toNSObject = unsafeCastId

-- ---------- VZConsoleDeviceConfiguration ----------

-- | Base class for a console device configuration.
--
-- VZConsoleDeviceConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioConsoleDeviceConfiguration should be used instead.
--
-- See: VZVirtioConsoleDeviceConfiguration
-- 
-- Phantom type for @VZConsoleDeviceConfiguration@.
data VZConsoleDeviceConfiguration

instance IsObjCObject (Id VZConsoleDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZConsoleDeviceConfiguration"

class IsNSObject a => IsVZConsoleDeviceConfiguration a where
  toVZConsoleDeviceConfiguration :: a -> Id VZConsoleDeviceConfiguration

instance IsVZConsoleDeviceConfiguration (Id VZConsoleDeviceConfiguration) where
  toVZConsoleDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZConsoleDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZConsolePortConfiguration ----------

-- | Base class for a console port configuration.
--
-- VZConsolePortConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioConsolePortConfiguration should be used instead.
--
-- See: VZVirtioConsolePortConfiguration
-- 
-- Phantom type for @VZConsolePortConfiguration@.
data VZConsolePortConfiguration

instance IsObjCObject (Id VZConsolePortConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZConsolePortConfiguration"

class IsNSObject a => IsVZConsolePortConfiguration a where
  toVZConsolePortConfiguration :: a -> Id VZConsolePortConfiguration

instance IsVZConsolePortConfiguration (Id VZConsolePortConfiguration) where
  toVZConsolePortConfiguration = unsafeCastId

instance IsNSObject (Id VZConsolePortConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZDirectoryShare ----------

-- | Base class for a directory share.
--
-- A directory share defines how host directories get exposed to a virtual machine guest.
--
-- VZDirectoryShare should not be instantiated directly.    One of its subclasses like VZSingleDirectoryShare or VZMultipleDirectoryShare should be used instead.
--
-- See: VZSingleDirectoryShare
--
-- See: VZMultipleDirectoryShare
-- 
-- Phantom type for @VZDirectoryShare@.
data VZDirectoryShare

instance IsObjCObject (Id VZDirectoryShare) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZDirectoryShare"

class IsNSObject a => IsVZDirectoryShare a where
  toVZDirectoryShare :: a -> Id VZDirectoryShare

instance IsVZDirectoryShare (Id VZDirectoryShare) where
  toVZDirectoryShare = unsafeCastId

instance IsNSObject (Id VZDirectoryShare) where
  toNSObject = unsafeCastId

-- ---------- VZDirectorySharingDevice ----------

-- | Base class representing a directory sharing device in a virtual machine.
--
-- VZDirectorySharingDevice should not be instantiated directly.
--
-- Directory sharing devices are first configured on the VZVirtualMachineConfiguration through a subclass of VZDirectorySharingDeviceConfiguration.    When a VZVirtualMachine is created from the configuration, the directory sharing devices are available through the VZVirtualMachine.directorySharingDevices property.
--
-- The real type of VZDirectorySharingDevice corresponds to the type used by the configuration.    For example, a VZVirtioFileSystemDeviceConfiguration leads to a device of type VZVirtioFileSystemDevice.
--
-- See: VZVirtioFileSystemDevice
--
-- See: VZVirtioFileSystemDeviceConfiguration
-- 
-- Phantom type for @VZDirectorySharingDevice@.
data VZDirectorySharingDevice

instance IsObjCObject (Id VZDirectorySharingDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZDirectorySharingDevice"

class IsNSObject a => IsVZDirectorySharingDevice a where
  toVZDirectorySharingDevice :: a -> Id VZDirectorySharingDevice

instance IsVZDirectorySharingDevice (Id VZDirectorySharingDevice) where
  toVZDirectorySharingDevice = unsafeCastId

instance IsNSObject (Id VZDirectorySharingDevice) where
  toNSObject = unsafeCastId

-- ---------- VZDirectorySharingDeviceConfiguration ----------

-- | Base class for a directory sharing device configuration.
--
-- VZDirectorySharingDeviceConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioFileSystemDeviceConfiguration should be used instead.
--
-- See: VZVirtioFileSystemDeviceConfiguration
-- 
-- Phantom type for @VZDirectorySharingDeviceConfiguration@.
data VZDirectorySharingDeviceConfiguration

instance IsObjCObject (Id VZDirectorySharingDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZDirectorySharingDeviceConfiguration"

class IsNSObject a => IsVZDirectorySharingDeviceConfiguration a where
  toVZDirectorySharingDeviceConfiguration :: a -> Id VZDirectorySharingDeviceConfiguration

instance IsVZDirectorySharingDeviceConfiguration (Id VZDirectorySharingDeviceConfiguration) where
  toVZDirectorySharingDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZDirectorySharingDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZEFIVariableStore ----------

-- | EFI variable store
--
-- The EFI variable store contains NVRAM variables exposed by the EFI ROM.
--
-- VZEFIBootLoader
-- 
-- Phantom type for @VZEFIVariableStore@.
data VZEFIVariableStore

instance IsObjCObject (Id VZEFIVariableStore) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZEFIVariableStore"

class IsNSObject a => IsVZEFIVariableStore a where
  toVZEFIVariableStore :: a -> Id VZEFIVariableStore

instance IsVZEFIVariableStore (Id VZEFIVariableStore) where
  toVZEFIVariableStore = unsafeCastId

instance IsNSObject (Id VZEFIVariableStore) where
  toNSObject = unsafeCastId

-- ---------- VZEntropyDeviceConfiguration ----------

-- | Base class for an entropy device configuration.
--
-- VZEntropyDeviceConfiguration should not be instantiated directly.    The subclass VZVirtioEntropyDeviceConfiguration should be used instead.
--
-- See: VZVirtioEntropyDeviceConfiguration
-- 
-- Phantom type for @VZEntropyDeviceConfiguration@.
data VZEntropyDeviceConfiguration

instance IsObjCObject (Id VZEntropyDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZEntropyDeviceConfiguration"

class IsNSObject a => IsVZEntropyDeviceConfiguration a where
  toVZEntropyDeviceConfiguration :: a -> Id VZEntropyDeviceConfiguration

instance IsVZEntropyDeviceConfiguration (Id VZEntropyDeviceConfiguration) where
  toVZEntropyDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZEntropyDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZGenericMachineIdentifier ----------

-- | An identifier to make a virtual machine unique.
--
-- The generic machine identifier is used by guests to uniquely identify the virtual hardware.
--
-- If the virtual machine is serialized to disk, the identifier can be preserved in a binary representation through VZGenericMachineIdentifier.dataRepresentation.    The identifier can then be recreated with -[VZGenericMachineIdentifier initWithDataRepresentation:] from the binary representation.
--
-- The contents of two identifiers can be compared with -[VZGenericMachineIdentifier isEqual:].
--
-- VZGenericPlatformConfiguration
-- 
-- Phantom type for @VZGenericMachineIdentifier@.
data VZGenericMachineIdentifier

instance IsObjCObject (Id VZGenericMachineIdentifier) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZGenericMachineIdentifier"

class IsNSObject a => IsVZGenericMachineIdentifier a where
  toVZGenericMachineIdentifier :: a -> Id VZGenericMachineIdentifier

instance IsVZGenericMachineIdentifier (Id VZGenericMachineIdentifier) where
  toVZGenericMachineIdentifier = unsafeCastId

instance IsNSObject (Id VZGenericMachineIdentifier) where
  toNSObject = unsafeCastId

-- ---------- VZGraphicsDeviceConfiguration ----------

-- | Phantom type for @VZGraphicsDeviceConfiguration@.
data VZGraphicsDeviceConfiguration

instance IsObjCObject (Id VZGraphicsDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZGraphicsDeviceConfiguration"

class IsNSObject a => IsVZGraphicsDeviceConfiguration a where
  toVZGraphicsDeviceConfiguration :: a -> Id VZGraphicsDeviceConfiguration

instance IsVZGraphicsDeviceConfiguration (Id VZGraphicsDeviceConfiguration) where
  toVZGraphicsDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZGraphicsDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZKeyboardConfiguration ----------

-- | Base class for a keyboard configuration.
--
-- VZKeyboardConfiguration should not be instantiated directly.    One of its subclasses like VZUSBKeyboardConfiguration should be used instead.
--
-- See: VZUSBKeyboardConfiguration
-- 
-- Phantom type for @VZKeyboardConfiguration@.
data VZKeyboardConfiguration

instance IsObjCObject (Id VZKeyboardConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZKeyboardConfiguration"

class IsNSObject a => IsVZKeyboardConfiguration a where
  toVZKeyboardConfiguration :: a -> Id VZKeyboardConfiguration

instance IsVZKeyboardConfiguration (Id VZKeyboardConfiguration) where
  toVZKeyboardConfiguration = unsafeCastId

instance IsNSObject (Id VZKeyboardConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZMACAddress ----------

-- | VZMACAddress represents a media access control address (MAC address), the 48-bit ethernet address.
--
-- The easiest way to obtain a MAC address is with +[VZMACAddress randomLocallyAdministeredAddress]. The method    returns a valid local MAC address typically used with network interfaces.
--
-- See: VZNetworkDeviceConfiguration
-- 
-- Phantom type for @VZMACAddress@.
data VZMACAddress

instance IsObjCObject (Id VZMACAddress) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZMACAddress"

class IsNSObject a => IsVZMACAddress a where
  toVZMACAddress :: a -> Id VZMACAddress

instance IsVZMACAddress (Id VZMACAddress) where
  toVZMACAddress = unsafeCastId

instance IsNSObject (Id VZMACAddress) where
  toNSObject = unsafeCastId

-- ---------- VZMacGraphicsDisplayConfiguration ----------

-- | Configuration for a display attached to a Mac graphics device.
--
-- This display can be shown in a VZVirtualMachineView.
-- 
-- Phantom type for @VZMacGraphicsDisplayConfiguration@.
data VZMacGraphicsDisplayConfiguration

instance IsObjCObject (Id VZMacGraphicsDisplayConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZMacGraphicsDisplayConfiguration"

class IsNSObject a => IsVZMacGraphicsDisplayConfiguration a where
  toVZMacGraphicsDisplayConfiguration :: a -> Id VZMacGraphicsDisplayConfiguration

instance IsVZMacGraphicsDisplayConfiguration (Id VZMacGraphicsDisplayConfiguration) where
  toVZMacGraphicsDisplayConfiguration = unsafeCastId

instance IsNSObject (Id VZMacGraphicsDisplayConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZMemoryBalloonDevice ----------

-- | Base class representing a memory balloon device in a virtual machine.
--
-- VZMemoryBalloonDevice should not be instantiated directly.
--
-- Memory balloon devices are first configured on the VZVirtualMachineConfiguration through a subclass of VZMemoryBalloonDeviceConfiguration.    When a VZVirtualMachine is created from the configuration, the memory balloon devices are available through the VZVirtualMachine.memoryBalloonDevices property.
--
-- The real type of VZMemoryBalloonDevice corresponds to the type used by the configuration.    For example, a VZVirtioTraditionalMemoryBalloonDeviceConfiguration leads to a device of type VZVirtioTraditionalMemoryBalloonDevice.
--
-- See: VZVirtioTraditionalMemoryBalloonDevice
--
-- See: VZVirtioTraditionalMemoryBalloonDeviceConfiguration
-- 
-- Phantom type for @VZMemoryBalloonDevice@.
data VZMemoryBalloonDevice

instance IsObjCObject (Id VZMemoryBalloonDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZMemoryBalloonDevice"

class IsNSObject a => IsVZMemoryBalloonDevice a where
  toVZMemoryBalloonDevice :: a -> Id VZMemoryBalloonDevice

instance IsVZMemoryBalloonDevice (Id VZMemoryBalloonDevice) where
  toVZMemoryBalloonDevice = unsafeCastId

instance IsNSObject (Id VZMemoryBalloonDevice) where
  toNSObject = unsafeCastId

-- ---------- VZMemoryBalloonDeviceConfiguration ----------

-- | Base class for a memory balloon device configuration.
--
-- VZMemoryBalloonDeviceConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioTraditionalMemoryBalloonDeviceConfiguration should be used instead.
--
-- See: VZVirtioTraditionalMemoryBalloonDeviceConfiguration
-- 
-- Phantom type for @VZMemoryBalloonDeviceConfiguration@.
data VZMemoryBalloonDeviceConfiguration

instance IsObjCObject (Id VZMemoryBalloonDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZMemoryBalloonDeviceConfiguration"

class IsNSObject a => IsVZMemoryBalloonDeviceConfiguration a where
  toVZMemoryBalloonDeviceConfiguration :: a -> Id VZMemoryBalloonDeviceConfiguration

instance IsVZMemoryBalloonDeviceConfiguration (Id VZMemoryBalloonDeviceConfiguration) where
  toVZMemoryBalloonDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZMemoryBalloonDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZNetworkDevice ----------

-- | Class representing a network device in a virtual machine.
--
-- VZNetworkDevice should not be instantiated directly.
--
-- Network devices are first configured on the VZVirtualMachineConfiguration through a subclass of VZNetworkDeviceConfiguration.    When a VZVirtualMachine is created from the configuration, the network devices are available through the VZVirtualMachine.networkDevices property.
--
-- See: VZNetworkDeviceConfiguration
-- 
-- Phantom type for @VZNetworkDevice@.
data VZNetworkDevice

instance IsObjCObject (Id VZNetworkDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZNetworkDevice"

class IsNSObject a => IsVZNetworkDevice a where
  toVZNetworkDevice :: a -> Id VZNetworkDevice

instance IsVZNetworkDevice (Id VZNetworkDevice) where
  toVZNetworkDevice = unsafeCastId

instance IsNSObject (Id VZNetworkDevice) where
  toNSObject = unsafeCastId

-- ---------- VZNetworkDeviceAttachment ----------

-- | Base class for a network device attachment.
--
-- A network device attachment defines how a virtual network device interfaces with the host system.
--
-- VZNetworkDeviceAttachment should not be instantiated directly. One of its subclasses should be used instead.
--
-- Common attachment types include:    - VZNATNetworkDeviceAttachment    - VZFileHandleNetworkDeviceAttachment
--
-- See: VZBridgedNetworkDeviceAttachment
--
-- See: VZFileHandleNetworkDeviceAttachment
--
-- See: VZNATNetworkDeviceAttachment
-- 
-- Phantom type for @VZNetworkDeviceAttachment@.
data VZNetworkDeviceAttachment

instance IsObjCObject (Id VZNetworkDeviceAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZNetworkDeviceAttachment"

class IsNSObject a => IsVZNetworkDeviceAttachment a where
  toVZNetworkDeviceAttachment :: a -> Id VZNetworkDeviceAttachment

instance IsVZNetworkDeviceAttachment (Id VZNetworkDeviceAttachment) where
  toVZNetworkDeviceAttachment = unsafeCastId

instance IsNSObject (Id VZNetworkDeviceAttachment) where
  toNSObject = unsafeCastId

-- ---------- VZNetworkDeviceConfiguration ----------

-- | Base class for a network adapter configuration.
--
-- VZNetworkDeviceConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioNetworkDeviceConfiguration should be used instead.
--
-- See: VZVirtioNetworkDeviceConfiguration
-- 
-- Phantom type for @VZNetworkDeviceConfiguration@.
data VZNetworkDeviceConfiguration

instance IsObjCObject (Id VZNetworkDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZNetworkDeviceConfiguration"

class IsNSObject a => IsVZNetworkDeviceConfiguration a where
  toVZNetworkDeviceConfiguration :: a -> Id VZNetworkDeviceConfiguration

instance IsVZNetworkDeviceConfiguration (Id VZNetworkDeviceConfiguration) where
  toVZNetworkDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZNetworkDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZPlatformConfiguration ----------

-- | Base class for a platform configuration.
--
-- VZPlatformConfiguration should not be instantiated directly.    One of its subclasses should be used instead.
--
-- See: VZGenericPlatformConfiguration
--
-- See: VZMacPlatformConfiguration.
-- 
-- Phantom type for @VZPlatformConfiguration@.
data VZPlatformConfiguration

instance IsObjCObject (Id VZPlatformConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZPlatformConfiguration"

class IsNSObject a => IsVZPlatformConfiguration a where
  toVZPlatformConfiguration :: a -> Id VZPlatformConfiguration

instance IsVZPlatformConfiguration (Id VZPlatformConfiguration) where
  toVZPlatformConfiguration = unsafeCastId

instance IsNSObject (Id VZPlatformConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZPointingDeviceConfiguration ----------

-- | Base class for a pointing device configuration.
--
-- VZPointingDeviceConfiguration should not be instantiated directly.    One of its subclasses like VZUSBScreenCoordinatePointingDeviceConfiguration or VZMacTrackpadConfiguration should be used instead.
--
-- See: VZUSBScreenCoordinatePointingDeviceConfiguration
--
-- See: VZMacTrackpadConfiguration
-- 
-- Phantom type for @VZPointingDeviceConfiguration@.
data VZPointingDeviceConfiguration

instance IsObjCObject (Id VZPointingDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZPointingDeviceConfiguration"

class IsNSObject a => IsVZPointingDeviceConfiguration a where
  toVZPointingDeviceConfiguration :: a -> Id VZPointingDeviceConfiguration

instance IsVZPointingDeviceConfiguration (Id VZPointingDeviceConfiguration) where
  toVZPointingDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZPointingDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZSerialPortAttachment ----------

-- | Base class for a serial port attachment.
--
-- A serial port attachment defines how the virtual machine's serial port interfaces with the host system.    VZSerialPortAttachment should not be instantiated directly.    One of its subclasses like VZFileHandleSerialPortAttachment should be used instead.
--
-- See: VZFileHandleSerialPortAttachment
--
-- See: VZFileSerialPortAttachment
-- 
-- Phantom type for @VZSerialPortAttachment@.
data VZSerialPortAttachment

instance IsObjCObject (Id VZSerialPortAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZSerialPortAttachment"

class IsNSObject a => IsVZSerialPortAttachment a where
  toVZSerialPortAttachment :: a -> Id VZSerialPortAttachment

instance IsVZSerialPortAttachment (Id VZSerialPortAttachment) where
  toVZSerialPortAttachment = unsafeCastId

instance IsNSObject (Id VZSerialPortAttachment) where
  toNSObject = unsafeCastId

-- ---------- VZSerialPortConfiguration ----------

-- | Base class for a serial port configuration.
--
-- VZSerialPortConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioConsoleDeviceSerialPortConfiguration should be used instead.
--
-- See: VZVirtioConsoleDeviceSerialPortConfiguration
-- 
-- Phantom type for @VZSerialPortConfiguration@.
data VZSerialPortConfiguration

instance IsObjCObject (Id VZSerialPortConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZSerialPortConfiguration"

class IsNSObject a => IsVZSerialPortConfiguration a where
  toVZSerialPortConfiguration :: a -> Id VZSerialPortConfiguration

instance IsVZSerialPortConfiguration (Id VZSerialPortConfiguration) where
  toVZSerialPortConfiguration = unsafeCastId

instance IsNSObject (Id VZSerialPortConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZSharedDirectory ----------

-- | A directory on the host that can be exposed to a guest.
-- 
-- Phantom type for @VZSharedDirectory@.
data VZSharedDirectory

instance IsObjCObject (Id VZSharedDirectory) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZSharedDirectory"

class IsNSObject a => IsVZSharedDirectory a where
  toVZSharedDirectory :: a -> Id VZSharedDirectory

instance IsVZSharedDirectory (Id VZSharedDirectory) where
  toVZSharedDirectory = unsafeCastId

instance IsNSObject (Id VZSharedDirectory) where
  toNSObject = unsafeCastId

-- ---------- VZSocketDevice ----------

-- | Base class representing a socket device in a virtual machine.
--
-- VZSocketDevice should not be instantiated directly.
--
-- Socket devices are first configured on the VZVirtualMachineConfiguration through a subclass of VZSocketDeviceConfiguration.    When a VZVirtualMachine is created from the configuration, the socket devices are available through the VZVirtualMachine.socketDevices property.
--
-- The real type of VZSocketDevice corresponds to the type used by the configuration.    For example, a VZVirtioSocketDeviceConfiguration leads to a device of type VZVirtioSocketDevice.
--
-- See: VZVirtioSocketDevice
--
-- See: VZVirtioSocketDeviceConfiguration
-- 
-- Phantom type for @VZSocketDevice@.
data VZSocketDevice

instance IsObjCObject (Id VZSocketDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZSocketDevice"

class IsNSObject a => IsVZSocketDevice a where
  toVZSocketDevice :: a -> Id VZSocketDevice

instance IsVZSocketDevice (Id VZSocketDevice) where
  toVZSocketDevice = unsafeCastId

instance IsNSObject (Id VZSocketDevice) where
  toNSObject = unsafeCastId

-- ---------- VZSocketDeviceConfiguration ----------

-- | Base class for a socket device configuration.
--
-- VZNetworkDeviceConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioSocketDeviceConfiguration should be used instead.
--
-- See: VZVirtioSocketDeviceConfiguration
-- 
-- Phantom type for @VZSocketDeviceConfiguration@.
data VZSocketDeviceConfiguration

instance IsObjCObject (Id VZSocketDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZSocketDeviceConfiguration"

class IsNSObject a => IsVZSocketDeviceConfiguration a where
  toVZSocketDeviceConfiguration :: a -> Id VZSocketDeviceConfiguration

instance IsVZSocketDeviceConfiguration (Id VZSocketDeviceConfiguration) where
  toVZSocketDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZSocketDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZStorageDeviceAttachment ----------

-- | Base class for a storage device attachment.
--
-- A storage device attachment defines how a virtual machine storage device interfaces with the host system.
--
-- VZStorageDeviceAttachment should not be instantiated directly.    One of its subclasses like VZDiskImageStorageDeviceAttachment should be used instead.
--
-- See: VZDiskImageStorageDeviceAttachment
-- 
-- Phantom type for @VZStorageDeviceAttachment@.
data VZStorageDeviceAttachment

instance IsObjCObject (Id VZStorageDeviceAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZStorageDeviceAttachment"

class IsNSObject a => IsVZStorageDeviceAttachment a where
  toVZStorageDeviceAttachment :: a -> Id VZStorageDeviceAttachment

instance IsVZStorageDeviceAttachment (Id VZStorageDeviceAttachment) where
  toVZStorageDeviceAttachment = unsafeCastId

instance IsNSObject (Id VZStorageDeviceAttachment) where
  toNSObject = unsafeCastId

-- ---------- VZStorageDeviceConfiguration ----------

-- | Base class for a storage device configuration.
--
-- VZStorageDeviceConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioBlockDeviceConfiguration should be used instead.
--
-- See: VZUSBMassStorageDeviceConfiguration
--
-- See: VZVirtioBlockDeviceConfiguration
-- 
-- Phantom type for @VZStorageDeviceConfiguration@.
data VZStorageDeviceConfiguration

instance IsObjCObject (Id VZStorageDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZStorageDeviceConfiguration"

class IsNSObject a => IsVZStorageDeviceConfiguration a where
  toVZStorageDeviceConfiguration :: a -> Id VZStorageDeviceConfiguration

instance IsVZStorageDeviceConfiguration (Id VZStorageDeviceConfiguration) where
  toVZStorageDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZStorageDeviceConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZVirtioConsolePort ----------

-- | Class representing a Virtio console port in a virtual machine.
--
-- VZVirtioConsolePort should not be instantiated directly. This object can be retrieved from the VZVirtioConsoleDevice ports property.
-- 
-- Phantom type for @VZVirtioConsolePort@.
data VZVirtioConsolePort

instance IsObjCObject (Id VZVirtioConsolePort) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioConsolePort"

class IsNSObject a => IsVZVirtioConsolePort a where
  toVZVirtioConsolePort :: a -> Id VZVirtioConsolePort

instance IsVZVirtioConsolePort (Id VZVirtioConsolePort) where
  toVZVirtioConsolePort = unsafeCastId

instance IsNSObject (Id VZVirtioConsolePort) where
  toNSObject = unsafeCastId

-- ---------- VZVirtioConsolePortArray ----------

-- | Virtio Console Port Array
--
-- This array stores a collection of ports configured for use by a VZVirtioConsoleDevice. VZVirtioConsolePort objects may be retrieved by index.
--
-- See: VZVirtioConsoleDevice
--
-- See: VZVirtioConsolePort
-- 
-- Phantom type for @VZVirtioConsolePortArray@.
data VZVirtioConsolePortArray

instance IsObjCObject (Id VZVirtioConsolePortArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioConsolePortArray"

class IsNSObject a => IsVZVirtioConsolePortArray a where
  toVZVirtioConsolePortArray :: a -> Id VZVirtioConsolePortArray

instance IsVZVirtioConsolePortArray (Id VZVirtioConsolePortArray) where
  toVZVirtioConsolePortArray = unsafeCastId

instance IsNSObject (Id VZVirtioConsolePortArray) where
  toNSObject = unsafeCastId

-- ---------- VZVirtioConsolePortConfigurationArray ----------

-- | Virtio Console Port Configuration Array
--
-- This array stores a collection of port configurations for a VZVirtioConsoleConfiguration. The index in the array corresponds to the port index used in the virtual machine.
--
-- A maximumPortCount value may be set but must be larger than the highest indexed port. If no maximumPortCount value is set, the highest indexed port will be used.
--
-- See: VZVirtioConsoleConfiguration
--
-- See: VZVirtioConsolePortConfiguration
-- 
-- Phantom type for @VZVirtioConsolePortConfigurationArray@.
data VZVirtioConsolePortConfigurationArray

instance IsObjCObject (Id VZVirtioConsolePortConfigurationArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioConsolePortConfigurationArray"

class IsNSObject a => IsVZVirtioConsolePortConfigurationArray a where
  toVZVirtioConsolePortConfigurationArray :: a -> Id VZVirtioConsolePortConfigurationArray

instance IsVZVirtioConsolePortConfigurationArray (Id VZVirtioConsolePortConfigurationArray) where
  toVZVirtioConsolePortConfigurationArray = unsafeCastId

instance IsNSObject (Id VZVirtioConsolePortConfigurationArray) where
  toNSObject = unsafeCastId

-- ---------- VZVirtioGraphicsScanoutConfiguration ----------

-- | Configuration for a scanout attached to a Virtio graphics device.
--
-- This scanout can be shown in a VZVirtualMachineView.
--
-- VZVirtioGraphicsDeviceConfiguration
-- 
-- Phantom type for @VZVirtioGraphicsScanoutConfiguration@.
data VZVirtioGraphicsScanoutConfiguration

instance IsObjCObject (Id VZVirtioGraphicsScanoutConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioGraphicsScanoutConfiguration"

class IsNSObject a => IsVZVirtioGraphicsScanoutConfiguration a where
  toVZVirtioGraphicsScanoutConfiguration :: a -> Id VZVirtioGraphicsScanoutConfiguration

instance IsVZVirtioGraphicsScanoutConfiguration (Id VZVirtioGraphicsScanoutConfiguration) where
  toVZVirtioGraphicsScanoutConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioGraphicsScanoutConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZVirtioSocketConnection ----------

-- | The VZVirtioSocketConnection object represents a Virtio socket device's connection.
--
-- The connection encompasses a source port, destination port, and an associated file descriptor.
--
-- See: VZVirtioSocketDevice
-- 
-- Phantom type for @VZVirtioSocketConnection@.
data VZVirtioSocketConnection

instance IsObjCObject (Id VZVirtioSocketConnection) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioSocketConnection"

class IsNSObject a => IsVZVirtioSocketConnection a where
  toVZVirtioSocketConnection :: a -> Id VZVirtioSocketConnection

instance IsVZVirtioSocketConnection (Id VZVirtioSocketConnection) where
  toVZVirtioSocketConnection = unsafeCastId

instance IsNSObject (Id VZVirtioSocketConnection) where
  toNSObject = unsafeCastId

-- ---------- VZVirtioSocketListener ----------

-- | The VZVirtioSocketListener object represents a listener for the Virtio socket device.
--
-- The listener encompasses a VZVirtioSocketListenerDelegate object.    VZVirtioSocketListener is used with VZVirtioSocketDevice to listen to a particular port.    The delegate is used when a guest connects to a port associated with the listener.
--
-- See: VZVirtioSocketDevice
--
-- See: VZVirtioSocketListenerDelegate
-- 
-- Phantom type for @VZVirtioSocketListener@.
data VZVirtioSocketListener

instance IsObjCObject (Id VZVirtioSocketListener) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioSocketListener"

class IsNSObject a => IsVZVirtioSocketListener a where
  toVZVirtioSocketListener :: a -> Id VZVirtioSocketListener

instance IsVZVirtioSocketListener (Id VZVirtioSocketListener) where
  toVZVirtioSocketListener = unsafeCastId

instance IsNSObject (Id VZVirtioSocketListener) where
  toNSObject = unsafeCastId

-- ---------- VZVirtioSoundDeviceStreamConfiguration ----------

-- | Virtio Sound Device Stream Configuration.
--
-- A PCM stream of audio data.    VZVirtioSoundDeviceStreamConfiguration should not be instantiated directly.    One of its subclasses like VZVirtioSoundDeviceInputStreamConfiguration or VZVirtioSoundDeviceOutputStreamConfiguration should be used instead.
--
-- See: VZVirtioSoundDeviceInputStreamConfiguration
--
-- See: VZVirtioSoundDeviceOutputStreamConfiguration
-- 
-- Phantom type for @VZVirtioSoundDeviceStreamConfiguration@.
data VZVirtioSoundDeviceStreamConfiguration

instance IsObjCObject (Id VZVirtioSoundDeviceStreamConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioSoundDeviceStreamConfiguration"

class IsNSObject a => IsVZVirtioSoundDeviceStreamConfiguration a where
  toVZVirtioSoundDeviceStreamConfiguration :: a -> Id VZVirtioSoundDeviceStreamConfiguration

instance IsVZVirtioSoundDeviceStreamConfiguration (Id VZVirtioSoundDeviceStreamConfiguration) where
  toVZVirtioSoundDeviceStreamConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioSoundDeviceStreamConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZVirtualMachine ----------

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
-- Phantom type for @VZVirtualMachine@.
data VZVirtualMachine

instance IsObjCObject (Id VZVirtualMachine) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtualMachine"

class IsNSObject a => IsVZVirtualMachine a where
  toVZVirtualMachine :: a -> Id VZVirtualMachine

instance IsVZVirtualMachine (Id VZVirtualMachine) where
  toVZVirtualMachine = unsafeCastId

instance IsNSObject (Id VZVirtualMachine) where
  toNSObject = unsafeCastId

-- ---------- VZVirtualMachineConfiguration ----------

-- | Virtual machine configuration.
--
-- VZVirtualMachineConfiguration defines the configuration of a VZVirtualMachine.
--
-- The configuration of devices is often done in two parts:    - Device configuration    - Device attachment
--
-- The device configuration defines the characteristics of the emulated hardware device.    For example, for a network device, the device configuration defines the type of network adapter present    in the virtual machine and its MAC address.
--
-- The device attachment defines the host machine's resources that are exposed by the virtual device.    For example, for a network device, the device attachment can be virtual network interface with a NAT    to the real network.
--
-- Creating a virtual machine using the Virtualization framework requires the app to have the "com.apple.security.virtualization" entitlement.    A VZVirtualMachineConfiguration is considered invalid if the application does not have the entitlement.
--
-- ## Configuring a virtual machine to run macOS
--
-- To configure a virtual machine running macOS:    - Set up a platform configuration of type VZMacPlatformConfiguration and set it on the “platform” property.    - Set up a VZMacOSBootLoader on the “bootLoader” property.    - Set the CPUCount and memorySize based on the guest's VZMacOSConfigurationRequirements.    - Set up the main storage device as first device on “storageDevices”. Additional storage devices can be set up after the main storage.    - Set up the “keyboards”, “pointingDevices” and “graphicsDevices” devices.    - Set up any additional device as needed.
--
-- ## Configuring a virtual machine to run Linux
--
-- To configure a virtual machine running Linux:    - Set up a VZLinuxBootLoader on the “bootLoader” property.    - Set the CPUCount and memorySize.    - Set up any additional device as needed.
--
-- See: VZVirtualMachine
-- 
-- Phantom type for @VZVirtualMachineConfiguration@.
data VZVirtualMachineConfiguration

instance IsObjCObject (Id VZVirtualMachineConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtualMachineConfiguration"

class IsNSObject a => IsVZVirtualMachineConfiguration a where
  toVZVirtualMachineConfiguration :: a -> Id VZVirtualMachineConfiguration

instance IsVZVirtualMachineConfiguration (Id VZVirtualMachineConfiguration) where
  toVZVirtualMachineConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtualMachineConfiguration) where
  toNSObject = unsafeCastId

-- ---------- VZVirtualMachineStartOptions ----------

-- | Base class for virtual machine start options.
--
-- See: VZMacOSVirtualMachineStartOptions
-- 
-- Phantom type for @VZVirtualMachineStartOptions@.
data VZVirtualMachineStartOptions

instance IsObjCObject (Id VZVirtualMachineStartOptions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtualMachineStartOptions"

class IsNSObject a => IsVZVirtualMachineStartOptions a where
  toVZVirtualMachineStartOptions :: a -> Id VZVirtualMachineStartOptions

instance IsVZVirtualMachineStartOptions (Id VZVirtualMachineStartOptions) where
  toVZVirtualMachineStartOptions = unsafeCastId

instance IsNSObject (Id VZVirtualMachineStartOptions) where
  toNSObject = unsafeCastId

-- ---------- VZVirtioSoundDeviceConfiguration ----------

-- | Virtio Sound Device Configuration.
--
-- The device exposes a source or destination of sound.
-- 
-- Phantom type for @VZVirtioSoundDeviceConfiguration@.
data VZVirtioSoundDeviceConfiguration

instance IsObjCObject (Id VZVirtioSoundDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioSoundDeviceConfiguration"

class IsVZAudioDeviceConfiguration a => IsVZVirtioSoundDeviceConfiguration a where
  toVZVirtioSoundDeviceConfiguration :: a -> Id VZVirtioSoundDeviceConfiguration

instance IsVZVirtioSoundDeviceConfiguration (Id VZVirtioSoundDeviceConfiguration) where
  toVZVirtioSoundDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioSoundDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZAudioDeviceConfiguration (Id VZVirtioSoundDeviceConfiguration) where
  toVZAudioDeviceConfiguration = unsafeCastId

-- ---------- VZHostAudioInputStreamSource ----------

-- | Host audio input stream source provides audio from the host system's default input device.
--
-- Host input data comes from the same device that AudioQueueNewInput uses.
--
-- See: VZVirtioSoundDeviceInputStreamConfiguration
-- 
-- Phantom type for @VZHostAudioInputStreamSource@.
data VZHostAudioInputStreamSource

instance IsObjCObject (Id VZHostAudioInputStreamSource) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZHostAudioInputStreamSource"

class IsVZAudioInputStreamSource a => IsVZHostAudioInputStreamSource a where
  toVZHostAudioInputStreamSource :: a -> Id VZHostAudioInputStreamSource

instance IsVZHostAudioInputStreamSource (Id VZHostAudioInputStreamSource) where
  toVZHostAudioInputStreamSource = unsafeCastId

instance IsNSObject (Id VZHostAudioInputStreamSource) where
  toNSObject = unsafeCastId

instance IsVZAudioInputStreamSource (Id VZHostAudioInputStreamSource) where
  toVZAudioInputStreamSource = unsafeCastId

-- ---------- VZHostAudioOutputStreamSink ----------

-- | Host audio output stream sink plays audio to the host system's default output device.
--
-- Host output data goes to the same device that AudioQueueNewOutput uses.
--
-- See: VZVirtioSoundDeviceOutputStreamConfiguration
-- 
-- Phantom type for @VZHostAudioOutputStreamSink@.
data VZHostAudioOutputStreamSink

instance IsObjCObject (Id VZHostAudioOutputStreamSink) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZHostAudioOutputStreamSink"

class IsVZAudioOutputStreamSink a => IsVZHostAudioOutputStreamSink a where
  toVZHostAudioOutputStreamSink :: a -> Id VZHostAudioOutputStreamSink

instance IsVZHostAudioOutputStreamSink (Id VZHostAudioOutputStreamSink) where
  toVZHostAudioOutputStreamSink = unsafeCastId

instance IsNSObject (Id VZHostAudioOutputStreamSink) where
  toNSObject = unsafeCastId

instance IsVZAudioOutputStreamSink (Id VZHostAudioOutputStreamSink) where
  toVZAudioOutputStreamSink = unsafeCastId

-- ---------- VZEFIBootLoader ----------

-- | Boot loader configuration for booting guest operating systems expecting an EFI ROM.
--
-- You must use a VZGenericPlatformConfiguration in conjunction with the EFI boot loader.    It is invalid to use it with any other platform configuration.
--
-- See: VZGenericPlatformConfiguration
--
-- See: VZVirtualMachineConfiguration.platform.
-- 
-- Phantom type for @VZEFIBootLoader@.
data VZEFIBootLoader

instance IsObjCObject (Id VZEFIBootLoader) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZEFIBootLoader"

class IsVZBootLoader a => IsVZEFIBootLoader a where
  toVZEFIBootLoader :: a -> Id VZEFIBootLoader

instance IsVZEFIBootLoader (Id VZEFIBootLoader) where
  toVZEFIBootLoader = unsafeCastId

instance IsNSObject (Id VZEFIBootLoader) where
  toNSObject = unsafeCastId

instance IsVZBootLoader (Id VZEFIBootLoader) where
  toVZBootLoader = unsafeCastId

-- ---------- VZLinuxBootLoader ----------

-- | Boot loader configuration for a Linux kernel.
--
-- You must use a VZGenericPlatformConfiguration in conjunction with the Linux boot loader.    It is invalid to use it with any other platform configuration.
--
-- See: VZGenericPlatformConfiguration
--
-- See: VZVirtualMachineConfiguration.platform.
-- 
-- Phantom type for @VZLinuxBootLoader@.
data VZLinuxBootLoader

instance IsObjCObject (Id VZLinuxBootLoader) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZLinuxBootLoader"

class IsVZBootLoader a => IsVZLinuxBootLoader a where
  toVZLinuxBootLoader :: a -> Id VZLinuxBootLoader

instance IsVZLinuxBootLoader (Id VZLinuxBootLoader) where
  toVZLinuxBootLoader = unsafeCastId

instance IsNSObject (Id VZLinuxBootLoader) where
  toNSObject = unsafeCastId

instance IsVZBootLoader (Id VZLinuxBootLoader) where
  toVZBootLoader = unsafeCastId

-- ---------- VZVirtioConsoleDevice ----------

-- | Class representing a Virtio console device in a virtual machine.
--
-- VZVirtioConsoleDevice should not be instantiated directly.
--
-- See: VZConsoleDeviceConfiguration
-- 
-- Phantom type for @VZVirtioConsoleDevice@.
data VZVirtioConsoleDevice

instance IsObjCObject (Id VZVirtioConsoleDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioConsoleDevice"

class IsVZConsoleDevice a => IsVZVirtioConsoleDevice a where
  toVZVirtioConsoleDevice :: a -> Id VZVirtioConsoleDevice

instance IsVZVirtioConsoleDevice (Id VZVirtioConsoleDevice) where
  toVZVirtioConsoleDevice = unsafeCastId

instance IsNSObject (Id VZVirtioConsoleDevice) where
  toNSObject = unsafeCastId

instance IsVZConsoleDevice (Id VZVirtioConsoleDevice) where
  toVZConsoleDevice = unsafeCastId

-- ---------- VZVirtioConsoleDeviceConfiguration ----------

-- | Virtio Console Device
--
-- This console device enables communication between the host and the guest using console ports through the Virtio interface.
--
-- The device sets up one or more ports via VZVirtioConsolePortConfiguration on the Virtio console device.
--
-- See: VZVirtioConsolePortConfiguration
--
-- See: VZVirtualMachineConfiguration.consoleDevices
-- 
-- Phantom type for @VZVirtioConsoleDeviceConfiguration@.
data VZVirtioConsoleDeviceConfiguration

instance IsObjCObject (Id VZVirtioConsoleDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioConsoleDeviceConfiguration"

class IsVZConsoleDeviceConfiguration a => IsVZVirtioConsoleDeviceConfiguration a where
  toVZVirtioConsoleDeviceConfiguration :: a -> Id VZVirtioConsoleDeviceConfiguration

instance IsVZVirtioConsoleDeviceConfiguration (Id VZVirtioConsoleDeviceConfiguration) where
  toVZVirtioConsoleDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioConsoleDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZConsoleDeviceConfiguration (Id VZVirtioConsoleDeviceConfiguration) where
  toVZConsoleDeviceConfiguration = unsafeCastId

-- ---------- VZVirtioConsolePortConfiguration ----------

-- | Virtio Console Port
--
-- A console port is a two-way communication channel between a host VZSerialPortAttachment and a virtual machine console port. One or more console ports are attached to a Virtio console device.
--
-- An optional name may be set for a console port. A console port may also be configured for use as the system console.
--
-- See: VZConsolePortConfiguration
--
-- See: VZVirtualMachineConfiguration.consoleDevices
-- 
-- Phantom type for @VZVirtioConsolePortConfiguration@.
data VZVirtioConsolePortConfiguration

instance IsObjCObject (Id VZVirtioConsolePortConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioConsolePortConfiguration"

class IsVZConsolePortConfiguration a => IsVZVirtioConsolePortConfiguration a where
  toVZVirtioConsolePortConfiguration :: a -> Id VZVirtioConsolePortConfiguration

instance IsVZVirtioConsolePortConfiguration (Id VZVirtioConsolePortConfiguration) where
  toVZVirtioConsolePortConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioConsolePortConfiguration) where
  toNSObject = unsafeCastId

instance IsVZConsolePortConfiguration (Id VZVirtioConsolePortConfiguration) where
  toVZConsolePortConfiguration = unsafeCastId

-- ---------- VZMultipleDirectoryShare ----------

-- | Directory share for multiple directories.
--
-- This directory share exposes multiple directories from the host file system to the guest.
--
-- See: VZDirectorySharingDeviceConfiguration
--
-- See: VZSharedDirectory
-- 
-- Phantom type for @VZMultipleDirectoryShare@.
data VZMultipleDirectoryShare

instance IsObjCObject (Id VZMultipleDirectoryShare) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZMultipleDirectoryShare"

class IsVZDirectoryShare a => IsVZMultipleDirectoryShare a where
  toVZMultipleDirectoryShare :: a -> Id VZMultipleDirectoryShare

instance IsVZMultipleDirectoryShare (Id VZMultipleDirectoryShare) where
  toVZMultipleDirectoryShare = unsafeCastId

instance IsNSObject (Id VZMultipleDirectoryShare) where
  toNSObject = unsafeCastId

instance IsVZDirectoryShare (Id VZMultipleDirectoryShare) where
  toVZDirectoryShare = unsafeCastId

-- ---------- VZSingleDirectoryShare ----------

-- | Directory share for a single directory.
--
-- This directory share exposes a single directory from the host file system to the guest.
--
-- See: VZDirectorySharingDeviceConfiguration
--
-- See: VZSharedDirectory
-- 
-- Phantom type for @VZSingleDirectoryShare@.
data VZSingleDirectoryShare

instance IsObjCObject (Id VZSingleDirectoryShare) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZSingleDirectoryShare"

class IsVZDirectoryShare a => IsVZSingleDirectoryShare a where
  toVZSingleDirectoryShare :: a -> Id VZSingleDirectoryShare

instance IsVZSingleDirectoryShare (Id VZSingleDirectoryShare) where
  toVZSingleDirectoryShare = unsafeCastId

instance IsNSObject (Id VZSingleDirectoryShare) where
  toNSObject = unsafeCastId

instance IsVZDirectoryShare (Id VZSingleDirectoryShare) where
  toVZDirectoryShare = unsafeCastId

-- ---------- VZVirtioFileSystemDevice ----------

-- | Virtio File System Device
--
-- This is a device that exposes host resources to the guest as a file system mount.    The directory share defines which host resources are exposed to the guest.
--
-- This device is created through instantiating a VZVirtioFileSystemDeviceConfiguration in a VZVirtualMachineConfiguration and is available in the    VZVirtualMachine.directorySharingDevices property.
--
-- See: VZVirtioFileSystemDeviceConfiguration
--
-- See: VZSingleDirectoryShare
--
-- See: VZMultipleDirectoryShare
-- 
-- Phantom type for @VZVirtioFileSystemDevice@.
data VZVirtioFileSystemDevice

instance IsObjCObject (Id VZVirtioFileSystemDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioFileSystemDevice"

class IsVZDirectorySharingDevice a => IsVZVirtioFileSystemDevice a where
  toVZVirtioFileSystemDevice :: a -> Id VZVirtioFileSystemDevice

instance IsVZVirtioFileSystemDevice (Id VZVirtioFileSystemDevice) where
  toVZVirtioFileSystemDevice = unsafeCastId

instance IsNSObject (Id VZVirtioFileSystemDevice) where
  toNSObject = unsafeCastId

instance IsVZDirectorySharingDevice (Id VZVirtioFileSystemDevice) where
  toVZDirectorySharingDevice = unsafeCastId

-- ---------- VZVirtioFileSystemDeviceConfiguration ----------

-- | Configuration of a Virtio file system device.
--
-- This configuration creates a Virtio file system device which allows for exposing    directories on the host to a guest via a tag label.
-- 
-- Phantom type for @VZVirtioFileSystemDeviceConfiguration@.
data VZVirtioFileSystemDeviceConfiguration

instance IsObjCObject (Id VZVirtioFileSystemDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioFileSystemDeviceConfiguration"

class IsVZDirectorySharingDeviceConfiguration a => IsVZVirtioFileSystemDeviceConfiguration a where
  toVZVirtioFileSystemDeviceConfiguration :: a -> Id VZVirtioFileSystemDeviceConfiguration

instance IsVZVirtioFileSystemDeviceConfiguration (Id VZVirtioFileSystemDeviceConfiguration) where
  toVZVirtioFileSystemDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioFileSystemDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZDirectorySharingDeviceConfiguration (Id VZVirtioFileSystemDeviceConfiguration) where
  toVZDirectorySharingDeviceConfiguration = unsafeCastId

-- ---------- VZVirtioEntropyDeviceConfiguration ----------

-- | Virtio Entropy Device
--
-- The device exposes a source of entropy for the guest's random number generator.
-- 
-- Phantom type for @VZVirtioEntropyDeviceConfiguration@.
data VZVirtioEntropyDeviceConfiguration

instance IsObjCObject (Id VZVirtioEntropyDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioEntropyDeviceConfiguration"

class IsVZEntropyDeviceConfiguration a => IsVZVirtioEntropyDeviceConfiguration a where
  toVZVirtioEntropyDeviceConfiguration :: a -> Id VZVirtioEntropyDeviceConfiguration

instance IsVZVirtioEntropyDeviceConfiguration (Id VZVirtioEntropyDeviceConfiguration) where
  toVZVirtioEntropyDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioEntropyDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZEntropyDeviceConfiguration (Id VZVirtioEntropyDeviceConfiguration) where
  toVZEntropyDeviceConfiguration = unsafeCastId

-- ---------- VZMacGraphicsDeviceConfiguration ----------

-- | Configuration for a Mac graphics device.
--
-- This device can be used to attach a display to be shown in a VZVirtualMachineView.
-- 
-- Phantom type for @VZMacGraphicsDeviceConfiguration@.
data VZMacGraphicsDeviceConfiguration

instance IsObjCObject (Id VZMacGraphicsDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZMacGraphicsDeviceConfiguration"

class IsVZGraphicsDeviceConfiguration a => IsVZMacGraphicsDeviceConfiguration a where
  toVZMacGraphicsDeviceConfiguration :: a -> Id VZMacGraphicsDeviceConfiguration

instance IsVZMacGraphicsDeviceConfiguration (Id VZMacGraphicsDeviceConfiguration) where
  toVZMacGraphicsDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZMacGraphicsDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZGraphicsDeviceConfiguration (Id VZMacGraphicsDeviceConfiguration) where
  toVZGraphicsDeviceConfiguration = unsafeCastId

-- ---------- VZVirtioGraphicsDeviceConfiguration ----------

-- | Configuration for a Virtio graphics device.
--
-- This device configuration creates a graphics device using paravirtualization.    The emulated device follows the Virtio GPU Device specification.
--
-- This device can be used to attach a display to be shown in a VZVirtualMachineView.
-- 
-- Phantom type for @VZVirtioGraphicsDeviceConfiguration@.
data VZVirtioGraphicsDeviceConfiguration

instance IsObjCObject (Id VZVirtioGraphicsDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioGraphicsDeviceConfiguration"

class IsVZGraphicsDeviceConfiguration a => IsVZVirtioGraphicsDeviceConfiguration a where
  toVZVirtioGraphicsDeviceConfiguration :: a -> Id VZVirtioGraphicsDeviceConfiguration

instance IsVZVirtioGraphicsDeviceConfiguration (Id VZVirtioGraphicsDeviceConfiguration) where
  toVZVirtioGraphicsDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioGraphicsDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZGraphicsDeviceConfiguration (Id VZVirtioGraphicsDeviceConfiguration) where
  toVZGraphicsDeviceConfiguration = unsafeCastId

-- ---------- VZUSBKeyboardConfiguration ----------

-- | Configuration for a USB keyboard.
--
-- This device can be used by VZVirtualMachineView to send key events to the virtual machine.
-- 
-- Phantom type for @VZUSBKeyboardConfiguration@.
data VZUSBKeyboardConfiguration

instance IsObjCObject (Id VZUSBKeyboardConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZUSBKeyboardConfiguration"

class IsVZKeyboardConfiguration a => IsVZUSBKeyboardConfiguration a where
  toVZUSBKeyboardConfiguration :: a -> Id VZUSBKeyboardConfiguration

instance IsVZUSBKeyboardConfiguration (Id VZUSBKeyboardConfiguration) where
  toVZUSBKeyboardConfiguration = unsafeCastId

instance IsNSObject (Id VZUSBKeyboardConfiguration) where
  toNSObject = unsafeCastId

instance IsVZKeyboardConfiguration (Id VZUSBKeyboardConfiguration) where
  toVZKeyboardConfiguration = unsafeCastId

-- ---------- VZVirtioTraditionalMemoryBalloonDevice ----------

-- | Virtio Traditional Memory Balloon Device
--
-- This is a primitive device for managing guest memory.    This device enables memory transfer between the host and the guest as specified by the Virtio specification, which allows the guest to adapt changes    in allowance of underlying physical memory.
--
-- To request a memory balloon device operation for the memory transfer, write the targeted memory size for the virtual machine to the targetVirtualMachineMemorySize property.    When the value written to targetVirtualMachineMemorySize is less than the current value, memory will be taken away from the guest and given to the host by the amount    determined by the difference between those two values. Similarly, when the value written to targetVirtualMachineMemorySize is greater than the current value, memory will be    given back to the guest by the amount determined by the difference between those two values.
--
-- Note that any changes to targetVirtualMachineMemorySize is a request to trigger a memory balloon operation. The actual changes in memory only happen after the guest operating    system handles the request, if at all.
--
-- The targetVirtualMachineMemorySize property is initialized to VZVirtualMachineConfiguration.memorySize. The acceptable values for the targetVirtualMachineMemorySize    property range from VZVirtualMachineConfiguration.minimumAllowedMemorySize to VZVirtualMachineConfiguration.memorySize, and must be a multiple of 1 megabyte    (1024 * 1024 bytes). If those constraints aren't satisfied, targetVirtualMachineMemorySize will be rounded down to the nearest multiple of 1 megabyte, clamped to    VZVirtualMachineConfiguration.minimumAllowedMemorySize and VZVirtualMachineConfiguration.memorySize respectively.
--
-- For optimal performance, it is strongly recommended to perform a memory compaction operation in the guest (e.g. echo 1 > /proc/sys/vm/compact_memory) before invoking the device.    This helps to minimize memory fragmentation in order for the memory allocation/deallocation process to be more effective.
--
-- This device is created through instantiating a VZVirtioTraditionalMemoryBalloonDeviceConfiguration in a VZVirtualMachineConfiguration and is available in the    VZVirtualMachine.memoryBalloonDevices property.
--
-- See: VZVirtioTraditionalMemoryBalloonDeviceConfiguration
-- 
-- Phantom type for @VZVirtioTraditionalMemoryBalloonDevice@.
data VZVirtioTraditionalMemoryBalloonDevice

instance IsObjCObject (Id VZVirtioTraditionalMemoryBalloonDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioTraditionalMemoryBalloonDevice"

class IsVZMemoryBalloonDevice a => IsVZVirtioTraditionalMemoryBalloonDevice a where
  toVZVirtioTraditionalMemoryBalloonDevice :: a -> Id VZVirtioTraditionalMemoryBalloonDevice

instance IsVZVirtioTraditionalMemoryBalloonDevice (Id VZVirtioTraditionalMemoryBalloonDevice) where
  toVZVirtioTraditionalMemoryBalloonDevice = unsafeCastId

instance IsNSObject (Id VZVirtioTraditionalMemoryBalloonDevice) where
  toNSObject = unsafeCastId

instance IsVZMemoryBalloonDevice (Id VZVirtioTraditionalMemoryBalloonDevice) where
  toVZMemoryBalloonDevice = unsafeCastId

-- ---------- VZVirtioTraditionalMemoryBalloonDeviceConfiguration ----------

-- | Configuration of the Virtio traditional memory balloon device.
--
-- This configuration creates a Virtio traditional memory balloon device which allows for managing guest memory.    Only one Virtio traditional memory balloon device can be used per virtual machine.
--
-- See: VZVirtioTraditionalMemoryBalloonDevice
-- 
-- Phantom type for @VZVirtioTraditionalMemoryBalloonDeviceConfiguration@.
data VZVirtioTraditionalMemoryBalloonDeviceConfiguration

instance IsObjCObject (Id VZVirtioTraditionalMemoryBalloonDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioTraditionalMemoryBalloonDeviceConfiguration"

class IsVZMemoryBalloonDeviceConfiguration a => IsVZVirtioTraditionalMemoryBalloonDeviceConfiguration a where
  toVZVirtioTraditionalMemoryBalloonDeviceConfiguration :: a -> Id VZVirtioTraditionalMemoryBalloonDeviceConfiguration

instance IsVZVirtioTraditionalMemoryBalloonDeviceConfiguration (Id VZVirtioTraditionalMemoryBalloonDeviceConfiguration) where
  toVZVirtioTraditionalMemoryBalloonDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioTraditionalMemoryBalloonDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZMemoryBalloonDeviceConfiguration (Id VZVirtioTraditionalMemoryBalloonDeviceConfiguration) where
  toVZMemoryBalloonDeviceConfiguration = unsafeCastId

-- ---------- VZBridgedNetworkDeviceAttachment ----------

-- | Network device attachment bridging a host physical interface with a virtual network device.
--
-- A bridged network allows the virtual machine to use the same physical interface as the host. Both host and virtual machine    send and receive packets on the same physical interface but have distinct network layers.
--
-- The bridge network device attachment is used with a VZNetworkDeviceConfiguration to define a virtual network device.
--
-- Using a VZBridgedNetworkDeviceAttachment requires the app to have the "com.apple.vm.networking" entitlement.
--
-- See: VZBridgedNetworkInterface
--
-- See: VZNetworkDeviceConfiguration
--
-- See: VZVirtioNetworkDeviceConfiguration
-- 
-- Phantom type for @VZBridgedNetworkDeviceAttachment@.
data VZBridgedNetworkDeviceAttachment

instance IsObjCObject (Id VZBridgedNetworkDeviceAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZBridgedNetworkDeviceAttachment"

class IsVZNetworkDeviceAttachment a => IsVZBridgedNetworkDeviceAttachment a where
  toVZBridgedNetworkDeviceAttachment :: a -> Id VZBridgedNetworkDeviceAttachment

instance IsVZBridgedNetworkDeviceAttachment (Id VZBridgedNetworkDeviceAttachment) where
  toVZBridgedNetworkDeviceAttachment = unsafeCastId

instance IsNSObject (Id VZBridgedNetworkDeviceAttachment) where
  toNSObject = unsafeCastId

instance IsVZNetworkDeviceAttachment (Id VZBridgedNetworkDeviceAttachment) where
  toVZNetworkDeviceAttachment = unsafeCastId

-- ---------- VZFileHandleNetworkDeviceAttachment ----------

-- | Network device attachment sending raw network packets over a file handle.
--
-- The file handle attachment transmits the raw packets/frames between the virtual network interface and a file handle.    The data transmitted through this attachment is at the level of the data link layer.
--
-- The file handle must hold a connected datagram socket.
--
-- See: VZNetworkDeviceConfiguration
--
-- See: VZVirtioNetworkDeviceConfiguration
-- 
-- Phantom type for @VZFileHandleNetworkDeviceAttachment@.
data VZFileHandleNetworkDeviceAttachment

instance IsObjCObject (Id VZFileHandleNetworkDeviceAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZFileHandleNetworkDeviceAttachment"

class IsVZNetworkDeviceAttachment a => IsVZFileHandleNetworkDeviceAttachment a where
  toVZFileHandleNetworkDeviceAttachment :: a -> Id VZFileHandleNetworkDeviceAttachment

instance IsVZFileHandleNetworkDeviceAttachment (Id VZFileHandleNetworkDeviceAttachment) where
  toVZFileHandleNetworkDeviceAttachment = unsafeCastId

instance IsNSObject (Id VZFileHandleNetworkDeviceAttachment) where
  toNSObject = unsafeCastId

instance IsVZNetworkDeviceAttachment (Id VZFileHandleNetworkDeviceAttachment) where
  toVZNetworkDeviceAttachment = unsafeCastId

-- ---------- VZNATNetworkDeviceAttachment ----------

-- | Network device attachment using network address translation (NAT) with outside networks.
--
-- Using the NAT attachment type, the host serves as router and performs network address translation for accesses to outside networks.
--
-- See: VZNetworkDeviceConfiguration
--
-- See: VZVirtioNetworkDeviceConfiguration
-- 
-- Phantom type for @VZNATNetworkDeviceAttachment@.
data VZNATNetworkDeviceAttachment

instance IsObjCObject (Id VZNATNetworkDeviceAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZNATNetworkDeviceAttachment"

class IsVZNetworkDeviceAttachment a => IsVZNATNetworkDeviceAttachment a where
  toVZNATNetworkDeviceAttachment :: a -> Id VZNATNetworkDeviceAttachment

instance IsVZNATNetworkDeviceAttachment (Id VZNATNetworkDeviceAttachment) where
  toVZNATNetworkDeviceAttachment = unsafeCastId

instance IsNSObject (Id VZNATNetworkDeviceAttachment) where
  toNSObject = unsafeCastId

instance IsVZNetworkDeviceAttachment (Id VZNATNetworkDeviceAttachment) where
  toVZNetworkDeviceAttachment = unsafeCastId

-- ---------- VZVirtioNetworkDeviceConfiguration ----------

-- | Configuration of a paravirtualized network device of type Virtio Network Device.
--
-- The communication channel used on the host is defined through the attachment. It is set with the VZNetworkDeviceConfiguration.attachment property.
--
-- The configuration is only valid with valid MACAddress and attachment.
--
-- See: VZVirtualMachineConfiguration.networkDevices
-- 
-- Phantom type for @VZVirtioNetworkDeviceConfiguration@.
data VZVirtioNetworkDeviceConfiguration

instance IsObjCObject (Id VZVirtioNetworkDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioNetworkDeviceConfiguration"

class IsVZNetworkDeviceConfiguration a => IsVZVirtioNetworkDeviceConfiguration a where
  toVZVirtioNetworkDeviceConfiguration :: a -> Id VZVirtioNetworkDeviceConfiguration

instance IsVZVirtioNetworkDeviceConfiguration (Id VZVirtioNetworkDeviceConfiguration) where
  toVZVirtioNetworkDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioNetworkDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZNetworkDeviceConfiguration (Id VZVirtioNetworkDeviceConfiguration) where
  toVZNetworkDeviceConfiguration = unsafeCastId

-- ---------- VZGenericPlatformConfiguration ----------

-- | The platform configuration for a generic Intel or ARM virtual machine.
-- 
-- Phantom type for @VZGenericPlatformConfiguration@.
data VZGenericPlatformConfiguration

instance IsObjCObject (Id VZGenericPlatformConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZGenericPlatformConfiguration"

class IsVZPlatformConfiguration a => IsVZGenericPlatformConfiguration a where
  toVZGenericPlatformConfiguration :: a -> Id VZGenericPlatformConfiguration

instance IsVZGenericPlatformConfiguration (Id VZGenericPlatformConfiguration) where
  toVZGenericPlatformConfiguration = unsafeCastId

instance IsNSObject (Id VZGenericPlatformConfiguration) where
  toNSObject = unsafeCastId

instance IsVZPlatformConfiguration (Id VZGenericPlatformConfiguration) where
  toVZPlatformConfiguration = unsafeCastId

-- ---------- VZUSBScreenCoordinatePointingDeviceConfiguration ----------

-- | Configuration for a USB pointing device that reports absolute coordinates.
--
-- This device can be used by VZVirtualMachineView to send pointer events to the virtual machine.
-- 
-- Phantom type for @VZUSBScreenCoordinatePointingDeviceConfiguration@.
data VZUSBScreenCoordinatePointingDeviceConfiguration

instance IsObjCObject (Id VZUSBScreenCoordinatePointingDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZUSBScreenCoordinatePointingDeviceConfiguration"

class IsVZPointingDeviceConfiguration a => IsVZUSBScreenCoordinatePointingDeviceConfiguration a where
  toVZUSBScreenCoordinatePointingDeviceConfiguration :: a -> Id VZUSBScreenCoordinatePointingDeviceConfiguration

instance IsVZUSBScreenCoordinatePointingDeviceConfiguration (Id VZUSBScreenCoordinatePointingDeviceConfiguration) where
  toVZUSBScreenCoordinatePointingDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZUSBScreenCoordinatePointingDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZPointingDeviceConfiguration (Id VZUSBScreenCoordinatePointingDeviceConfiguration) where
  toVZPointingDeviceConfiguration = unsafeCastId

-- ---------- VZFileHandleSerialPortAttachment ----------

-- | File handle serial port attachment.
--
-- VZFileHandleSerialPortAttachment defines a serial port attachment from a file handle.    Data written to fileHandleForReading goes to the guest. Data sent from the guest appears on fileHandleForWriting.
-- 
-- Phantom type for @VZFileHandleSerialPortAttachment@.
data VZFileHandleSerialPortAttachment

instance IsObjCObject (Id VZFileHandleSerialPortAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZFileHandleSerialPortAttachment"

class IsVZSerialPortAttachment a => IsVZFileHandleSerialPortAttachment a where
  toVZFileHandleSerialPortAttachment :: a -> Id VZFileHandleSerialPortAttachment

instance IsVZFileHandleSerialPortAttachment (Id VZFileHandleSerialPortAttachment) where
  toVZFileHandleSerialPortAttachment = unsafeCastId

instance IsNSObject (Id VZFileHandleSerialPortAttachment) where
  toNSObject = unsafeCastId

instance IsVZSerialPortAttachment (Id VZFileHandleSerialPortAttachment) where
  toVZSerialPortAttachment = unsafeCastId

-- ---------- VZFileSerialPortAttachment ----------

-- | File serial port attachment.
--
-- VZFileSerialPortAttachment defines a serial port attachment from a file.    Any data sent by the guest on the serial interface is written to the file.    No data is sent to the guest over serial with this attachment.
-- 
-- Phantom type for @VZFileSerialPortAttachment@.
data VZFileSerialPortAttachment

instance IsObjCObject (Id VZFileSerialPortAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZFileSerialPortAttachment"

class IsVZSerialPortAttachment a => IsVZFileSerialPortAttachment a where
  toVZFileSerialPortAttachment :: a -> Id VZFileSerialPortAttachment

instance IsVZFileSerialPortAttachment (Id VZFileSerialPortAttachment) where
  toVZFileSerialPortAttachment = unsafeCastId

instance IsNSObject (Id VZFileSerialPortAttachment) where
  toNSObject = unsafeCastId

instance IsVZSerialPortAttachment (Id VZFileSerialPortAttachment) where
  toVZSerialPortAttachment = unsafeCastId

-- ---------- VZSpiceAgentPortAttachment ----------

-- | Phantom type for @VZSpiceAgentPortAttachment@.
data VZSpiceAgentPortAttachment

instance IsObjCObject (Id VZSpiceAgentPortAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZSpiceAgentPortAttachment"

class IsVZSerialPortAttachment a => IsVZSpiceAgentPortAttachment a where
  toVZSpiceAgentPortAttachment :: a -> Id VZSpiceAgentPortAttachment

instance IsVZSpiceAgentPortAttachment (Id VZSpiceAgentPortAttachment) where
  toVZSpiceAgentPortAttachment = unsafeCastId

instance IsNSObject (Id VZSpiceAgentPortAttachment) where
  toNSObject = unsafeCastId

instance IsVZSerialPortAttachment (Id VZSpiceAgentPortAttachment) where
  toVZSerialPortAttachment = unsafeCastId

-- ---------- VZVirtioConsoleDeviceSerialPortConfiguration ----------

-- | Virtio Console Serial Port Device
--
-- The device creates a console which enables communication between the host and the guest through the Virtio interface.
--
-- The device sets up a single port on the Virtio console device.
-- 
-- Phantom type for @VZVirtioConsoleDeviceSerialPortConfiguration@.
data VZVirtioConsoleDeviceSerialPortConfiguration

instance IsObjCObject (Id VZVirtioConsoleDeviceSerialPortConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioConsoleDeviceSerialPortConfiguration"

class IsVZSerialPortConfiguration a => IsVZVirtioConsoleDeviceSerialPortConfiguration a where
  toVZVirtioConsoleDeviceSerialPortConfiguration :: a -> Id VZVirtioConsoleDeviceSerialPortConfiguration

instance IsVZVirtioConsoleDeviceSerialPortConfiguration (Id VZVirtioConsoleDeviceSerialPortConfiguration) where
  toVZVirtioConsoleDeviceSerialPortConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioConsoleDeviceSerialPortConfiguration) where
  toNSObject = unsafeCastId

instance IsVZSerialPortConfiguration (Id VZVirtioConsoleDeviceSerialPortConfiguration) where
  toVZSerialPortConfiguration = unsafeCastId

-- ---------- VZVirtioSocketDevice ----------

-- | Virtio Socket Device
--
-- This is a paravirtualized socket device which facilitates data transfer between the guest and the host without using Ethernet or IP protocols.    This device is created through instantiating a VZVirtioSocketDeviceConfiguration in a VZVirtualMachineConfiguration and is available in the VZVirtualMachine.socketDevices property.
--
-- See: VZVirtioSocketDeviceConfiguration
--
-- See: VZVirtioSocketDeviceConnection
--
-- See: VZVirtioSocketDeviceListener
-- 
-- Phantom type for @VZVirtioSocketDevice@.
data VZVirtioSocketDevice

instance IsObjCObject (Id VZVirtioSocketDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioSocketDevice"

class IsVZSocketDevice a => IsVZVirtioSocketDevice a where
  toVZVirtioSocketDevice :: a -> Id VZVirtioSocketDevice

instance IsVZVirtioSocketDevice (Id VZVirtioSocketDevice) where
  toVZVirtioSocketDevice = unsafeCastId

instance IsNSObject (Id VZVirtioSocketDevice) where
  toNSObject = unsafeCastId

instance IsVZSocketDevice (Id VZVirtioSocketDevice) where
  toVZSocketDevice = unsafeCastId

-- ---------- VZVirtioSocketDeviceConfiguration ----------

-- | Configuration of the Virtio socket device.
--
-- This configuration creates a Virtio socket device for the guest which communicates with the host through the Virtio interface.
--
-- Only one Virtio socket device can be used per virtual machine.
--
-- See: VZVirtioSocketDevice
-- 
-- Phantom type for @VZVirtioSocketDeviceConfiguration@.
data VZVirtioSocketDeviceConfiguration

instance IsObjCObject (Id VZVirtioSocketDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioSocketDeviceConfiguration"

class IsVZSocketDeviceConfiguration a => IsVZVirtioSocketDeviceConfiguration a where
  toVZVirtioSocketDeviceConfiguration :: a -> Id VZVirtioSocketDeviceConfiguration

instance IsVZVirtioSocketDeviceConfiguration (Id VZVirtioSocketDeviceConfiguration) where
  toVZVirtioSocketDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioSocketDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZSocketDeviceConfiguration (Id VZVirtioSocketDeviceConfiguration) where
  toVZSocketDeviceConfiguration = unsafeCastId

-- ---------- VZDiskImageStorageDeviceAttachment ----------

-- | Storage device attachment using a disk image to implement the storage.
--
-- This storage device attachment uses a disk image on the host file system as the drive of the storage device.
--
-- Only raw data disk images are supported.
--
-- See: VZVirtioBlockDeviceConfiguration
-- 
-- Phantom type for @VZDiskImageStorageDeviceAttachment@.
data VZDiskImageStorageDeviceAttachment

instance IsObjCObject (Id VZDiskImageStorageDeviceAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZDiskImageStorageDeviceAttachment"

class IsVZStorageDeviceAttachment a => IsVZDiskImageStorageDeviceAttachment a where
  toVZDiskImageStorageDeviceAttachment :: a -> Id VZDiskImageStorageDeviceAttachment

instance IsVZDiskImageStorageDeviceAttachment (Id VZDiskImageStorageDeviceAttachment) where
  toVZDiskImageStorageDeviceAttachment = unsafeCastId

instance IsNSObject (Id VZDiskImageStorageDeviceAttachment) where
  toNSObject = unsafeCastId

instance IsVZStorageDeviceAttachment (Id VZDiskImageStorageDeviceAttachment) where
  toVZStorageDeviceAttachment = unsafeCastId

-- ---------- VZUSBMassStorageDeviceConfiguration ----------

-- | Configuration of a USB Mass Storage storage device.
--
-- This device configuration creates a storage device that conforms to the USB Mass Storage specification.
-- 
-- Phantom type for @VZUSBMassStorageDeviceConfiguration@.
data VZUSBMassStorageDeviceConfiguration

instance IsObjCObject (Id VZUSBMassStorageDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZUSBMassStorageDeviceConfiguration"

class IsVZStorageDeviceConfiguration a => IsVZUSBMassStorageDeviceConfiguration a where
  toVZUSBMassStorageDeviceConfiguration :: a -> Id VZUSBMassStorageDeviceConfiguration

instance IsVZUSBMassStorageDeviceConfiguration (Id VZUSBMassStorageDeviceConfiguration) where
  toVZUSBMassStorageDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZUSBMassStorageDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZStorageDeviceConfiguration (Id VZUSBMassStorageDeviceConfiguration) where
  toVZStorageDeviceConfiguration = unsafeCastId

-- ---------- VZVirtioBlockDeviceConfiguration ----------

-- | Configuration of a paravirtualized storage device of type Virtio Block Device.
--
-- This device configuration creates a storage device using paravirtualization.    The emulated device follows the Virtio Block Device specification.
--
-- The host implementation of the device is done through an attachment subclassing VZStorageDeviceAttachment    like VZDiskImageStorageDeviceAttachment.
-- 
-- Phantom type for @VZVirtioBlockDeviceConfiguration@.
data VZVirtioBlockDeviceConfiguration

instance IsObjCObject (Id VZVirtioBlockDeviceConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioBlockDeviceConfiguration"

class IsVZStorageDeviceConfiguration a => IsVZVirtioBlockDeviceConfiguration a where
  toVZVirtioBlockDeviceConfiguration :: a -> Id VZVirtioBlockDeviceConfiguration

instance IsVZVirtioBlockDeviceConfiguration (Id VZVirtioBlockDeviceConfiguration) where
  toVZVirtioBlockDeviceConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioBlockDeviceConfiguration) where
  toNSObject = unsafeCastId

instance IsVZStorageDeviceConfiguration (Id VZVirtioBlockDeviceConfiguration) where
  toVZStorageDeviceConfiguration = unsafeCastId

-- ---------- VZVirtioSoundDeviceInputStreamConfiguration ----------

-- | Virtio Sound Device Input Stream Configuration.
--
-- A PCM stream of input audio data, such as from a microphone.
-- 
-- Phantom type for @VZVirtioSoundDeviceInputStreamConfiguration@.
data VZVirtioSoundDeviceInputStreamConfiguration

instance IsObjCObject (Id VZVirtioSoundDeviceInputStreamConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioSoundDeviceInputStreamConfiguration"

class IsVZVirtioSoundDeviceStreamConfiguration a => IsVZVirtioSoundDeviceInputStreamConfiguration a where
  toVZVirtioSoundDeviceInputStreamConfiguration :: a -> Id VZVirtioSoundDeviceInputStreamConfiguration

instance IsVZVirtioSoundDeviceInputStreamConfiguration (Id VZVirtioSoundDeviceInputStreamConfiguration) where
  toVZVirtioSoundDeviceInputStreamConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioSoundDeviceInputStreamConfiguration) where
  toNSObject = unsafeCastId

instance IsVZVirtioSoundDeviceStreamConfiguration (Id VZVirtioSoundDeviceInputStreamConfiguration) where
  toVZVirtioSoundDeviceStreamConfiguration = unsafeCastId

-- ---------- VZVirtioSoundDeviceOutputStreamConfiguration ----------

-- | Virtio Sound Device Output Stream Configuration.
--
-- A PCM stream of output audio data, such as to a speaker.
-- 
-- Phantom type for @VZVirtioSoundDeviceOutputStreamConfiguration@.
data VZVirtioSoundDeviceOutputStreamConfiguration

instance IsObjCObject (Id VZVirtioSoundDeviceOutputStreamConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtioSoundDeviceOutputStreamConfiguration"

class IsVZVirtioSoundDeviceStreamConfiguration a => IsVZVirtioSoundDeviceOutputStreamConfiguration a where
  toVZVirtioSoundDeviceOutputStreamConfiguration :: a -> Id VZVirtioSoundDeviceOutputStreamConfiguration

instance IsVZVirtioSoundDeviceOutputStreamConfiguration (Id VZVirtioSoundDeviceOutputStreamConfiguration) where
  toVZVirtioSoundDeviceOutputStreamConfiguration = unsafeCastId

instance IsNSObject (Id VZVirtioSoundDeviceOutputStreamConfiguration) where
  toNSObject = unsafeCastId

instance IsVZVirtioSoundDeviceStreamConfiguration (Id VZVirtioSoundDeviceOutputStreamConfiguration) where
  toVZVirtioSoundDeviceStreamConfiguration = unsafeCastId

-- ---------- VZVirtualMachineView ----------

-- | A view that allows user interaction with a virtual machine.
--
-- The VZVirtualMachineView shows the contents of the virtual machine framebuffer. If the virtual machine configuration includes a keyboard and a pointing device,    the view forwards keyboard and mouse events to the virtual machine via those devices.
--
-- VZVirtualMachine
-- 
-- Phantom type for @VZVirtualMachineView@.
data VZVirtualMachineView

instance IsObjCObject (Id VZVirtualMachineView) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "VZVirtualMachineView"

class IsNSView a => IsVZVirtualMachineView a where
  toVZVirtualMachineView :: a -> Id VZVirtualMachineView

instance IsVZVirtualMachineView (Id VZVirtualMachineView) where
  toVZVirtualMachineView = unsafeCastId

instance IsNSObject (Id VZVirtualMachineView) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id VZVirtualMachineView) where
  toNSResponder = unsafeCastId

instance IsNSView (Id VZVirtualMachineView) where
  toNSView = unsafeCastId
