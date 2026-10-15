{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MIDICIDeviceInfo
--
-- An NSObject containing basic information about a MIDI-CI-capable node.
--
-- Generated bindings for @MIDICIDeviceInfo@.
module ObjC.CoreMIDI.MIDICIDeviceInfo
  ( MIDICIDeviceInfo
  , IsMIDICIDeviceInfo(..)
  , init_
  , initWithDestination_manufacturer_family_model_revision
  , manufacturerID
  , family_
  , modelNumber
  , revisionLevel
  , midiDestination
  , familySelector
  , initSelector
  , initWithDestination_manufacturer_family_model_revisionSelector
  , manufacturerIDSelector
  , midiDestinationSelector
  , modelNumberSelector
  , revisionLevelSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreMIDI.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMIDICIDeviceInfo midiciDeviceInfo => midiciDeviceInfo -> IO (Id MIDICIDeviceInfo)
init_ midiciDeviceInfo =
  sendOwnedMessage midiciDeviceInfo initSelector

-- | @- initWithDestination:manufacturer:family:model:revision:@
initWithDestination_manufacturer_family_model_revision :: (IsMIDICIDeviceInfo midiciDeviceInfo, IsNSData manufacturer, IsNSData family_, IsNSData modelNumber, IsNSData revisionLevel) => midiciDeviceInfo -> CUInt -> manufacturer -> family_ -> modelNumber -> revisionLevel -> IO (Id MIDICIDeviceInfo)
initWithDestination_manufacturer_family_model_revision midiciDeviceInfo midiDestination manufacturer family_ modelNumber revisionLevel =
  sendOwnedMessage midiciDeviceInfo initWithDestination_manufacturer_family_model_revisionSelector midiDestination (toNSData manufacturer) (toNSData family_) (toNSData modelNumber) (toNSData revisionLevel)

-- | The MIDI System Exclusive ID of the device manufacturer, 3 bytes long. One-byte SysEx IDs are padded with trailing zeroes (e.g., Apple's System Exclusive ID, 0x11, would be expressed as 0x110000).
--
-- ObjC selector: @- manufacturerID@
manufacturerID :: IsMIDICIDeviceInfo midiciDeviceInfo => midiciDeviceInfo -> IO (Id NSData)
manufacturerID midiciDeviceInfo =
  sendMessage midiciDeviceInfo manufacturerIDSelector

-- | The group of models to which the device belongs, 2 bytes.
--
-- ObjC selector: @- family@
family_ :: IsMIDICIDeviceInfo midiciDeviceInfo => midiciDeviceInfo -> IO (Id NSData)
family_ midiciDeviceInfo =
  sendMessage midiciDeviceInfo familySelector

-- | The specific model from the device manufacturer, 2 bytes.
--
-- ObjC selector: @- modelNumber@
modelNumber :: IsMIDICIDeviceInfo midiciDeviceInfo => midiciDeviceInfo -> IO (Id NSData)
modelNumber midiciDeviceInfo =
  sendMessage midiciDeviceInfo modelNumberSelector

-- | The version number of a device model number, 2 bytes.
--
-- ObjC selector: @- revisionLevel@
revisionLevel :: IsMIDICIDeviceInfo midiciDeviceInfo => midiciDeviceInfo -> IO (Id NSData)
revisionLevel midiciDeviceInfo =
  sendMessage midiciDeviceInfo revisionLevelSelector

-- | The MIDI destination used by device's MIDI entity for capability inquiries.
--
-- ObjC selector: @- midiDestination@
midiDestination :: IsMIDICIDeviceInfo midiciDeviceInfo => midiciDeviceInfo -> IO CUInt
midiDestination midiciDeviceInfo =
  sendMessage midiciDeviceInfo midiDestinationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MIDICIDeviceInfo)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithDestination:manufacturer:family:model:revision:@
initWithDestination_manufacturer_family_model_revisionSelector :: Selector '[CUInt, Id NSData, Id NSData, Id NSData, Id NSData] (Id MIDICIDeviceInfo)
initWithDestination_manufacturer_family_model_revisionSelector = mkSelector "initWithDestination:manufacturer:family:model:revision:"

-- | @Selector@ for @manufacturerID@
manufacturerIDSelector :: Selector '[] (Id NSData)
manufacturerIDSelector = mkSelector "manufacturerID"

-- | @Selector@ for @family@
familySelector :: Selector '[] (Id NSData)
familySelector = mkSelector "family"

-- | @Selector@ for @modelNumber@
modelNumberSelector :: Selector '[] (Id NSData)
modelNumberSelector = mkSelector "modelNumber"

-- | @Selector@ for @revisionLevel@
revisionLevelSelector :: Selector '[] (Id NSData)
revisionLevelSelector = mkSelector "revisionLevel"

-- | @Selector@ for @midiDestination@
midiDestinationSelector :: Selector '[] CUInt
midiDestinationSelector = mkSelector "midiDestination"

