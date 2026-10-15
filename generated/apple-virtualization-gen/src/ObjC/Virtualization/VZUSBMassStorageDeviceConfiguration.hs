{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Configuration of a USB Mass Storage storage device.
--
-- This device configuration creates a storage device that conforms to the USB Mass Storage specification.
--
-- Generated bindings for @VZUSBMassStorageDeviceConfiguration@.
module ObjC.Virtualization.VZUSBMassStorageDeviceConfiguration
  ( VZUSBMassStorageDeviceConfiguration
  , IsVZUSBMassStorageDeviceConfiguration(..)
  , new
  , init_
  , initWithAttachment
  , initSelector
  , initWithAttachmentSelector
  , newSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Virtualization.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ new@
new :: IO (Id VZUSBMassStorageDeviceConfiguration)
new  =
  do
    cls' <- getRequiredClass "VZUSBMassStorageDeviceConfiguration"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsVZUSBMassStorageDeviceConfiguration vzusbMassStorageDeviceConfiguration => vzusbMassStorageDeviceConfiguration -> IO (Id VZUSBMassStorageDeviceConfiguration)
init_ vzusbMassStorageDeviceConfiguration =
  sendOwnedMessage vzusbMassStorageDeviceConfiguration initSelector

-- | Initialize a VZUSBMassStorageDeviceConfiguration with a device attachment.
--
-- @attachment@ — The storage device attachment. This defines how the virtualized device operates on the host side.
--
-- See: VZDiskImageStorageDeviceAttachment
--
-- ObjC selector: @- initWithAttachment:@
initWithAttachment :: (IsVZUSBMassStorageDeviceConfiguration vzusbMassStorageDeviceConfiguration, IsVZStorageDeviceAttachment attachment) => vzusbMassStorageDeviceConfiguration -> attachment -> IO (Id VZUSBMassStorageDeviceConfiguration)
initWithAttachment vzusbMassStorageDeviceConfiguration attachment =
  sendOwnedMessage vzusbMassStorageDeviceConfiguration initWithAttachmentSelector (toVZStorageDeviceAttachment attachment)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id VZUSBMassStorageDeviceConfiguration)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id VZUSBMassStorageDeviceConfiguration)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithAttachment:@
initWithAttachmentSelector :: Selector '[Id VZStorageDeviceAttachment] (Id VZUSBMassStorageDeviceConfiguration)
initWithAttachmentSelector = mkSelector "initWithAttachment:"

