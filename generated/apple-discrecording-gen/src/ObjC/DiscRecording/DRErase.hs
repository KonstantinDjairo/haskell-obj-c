{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | DRErase
--
-- A DRErase object handles the process of erasing a rewritable CD or DVD disc.
--
-- Each time you want to erase a disc, an instance of this class needs to be created.
--
-- When an instance is created, you pass in an instance of
--
-- //apple_ref/occ/cl/DRDevice DRDevice
--
-- to let the object 				know what device to erase. This object is retained for the life of the DRErase instance.
--
-- A DRErase object will send out notifications through the
--
-- //apple_ref/occ/cl/DRNotificationCenter DRNotificationCenter
--
-- mechanism to 				broadcast the erase state to any interested observers. However, if for some reason you don't want				to use notifications, you can poll the erase object at any time for the current status using
--
-- //apple_ref/occ/instm/DRErase/status status
--
-- . This is not recommended in any 				application using a run loop, because it involves polling.
--
-- Here's an example that shows you how to use this class:
--
-- - (void) doErase
-- {
-- DRDevice*       device;
-- DRErase*        erase;
--
-- // Determine correct device to erase...
--
-- erase = [[DRErase alloc] initWithDevice:device];
--
-- // we'll do a quick erase. It's typically all that's needed.
-- [erase setEraseType:DREraseTypeQuick];
--
-- // register to receive notification about the erase status.
-- [[DRNotificationCenter currentRunLoopCenter] addObserver:self
-- selector:&#x40;selector(eraseNotification:)
-- name:DREraseStatusChangedNotification
-- object:erase];
--
-- // start the erase
-- [erase start];
-- }
--
-- - (void) eraseNotification:(NSNotification*)notification
-- {
-- DRErase*        erase = [notification object];
-- NSDictionary*   status = [notification userInfo];
--
-- // Do what you wish with the notification...
-- }
--
-- Generated bindings for @DRErase@.
module ObjC.DiscRecording.DRErase
  ( DRErase
  , IsDRErase(..)
  , eraseForDevice
  , initWithDevice
  , start
  , status
  , properties
  , setProperties
  , device
  , eraseType
  , setEraseType
  , deviceSelector
  , eraseForDeviceSelector
  , eraseTypeSelector
  , initWithDeviceSelector
  , propertiesSelector
  , setEraseTypeSelector
  , setPropertiesSelector
  , startSelector
  , statusSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DiscRecording.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | eraseForDevice:
--
-- Creates and returns an erase object.
--
-- An erase object created with this method is ready to erase media.
--
-- @device@ — Device to use for the erase.
--
-- Returns: An autoreleased DRErase object.
--
-- ObjC selector: @+ eraseForDevice:@
eraseForDevice :: IsDRDevice device => device -> IO (Id DRErase)
eraseForDevice device =
  do
    cls' <- getRequiredClass "DRErase"
    sendClassMessage cls' eraseForDeviceSelector (toDRDevice device)

-- | initWithDevice:
--
-- Initializes an erase object.
--
-- An erase object created with this method is ready to erase media.
--
-- @device@ — Device to use for the erase.
--
-- Returns: A DRErase object.
--
-- ObjC selector: @- initWithDevice:@
initWithDevice :: (IsDRErase drErase, IsDRDevice device) => drErase -> device -> IO RawId
initWithDevice drErase device =
  sendOwnedMessage drErase initWithDeviceSelector (toDRDevice device)

-- | start
--
-- Begin the process of erasing media.
--
-- This method only kicks off the erase. Once the erasure starts,					control returns to the caller. The caller can monitor the progress 					of the erase by listening for a notification or by polling
--
-- //apple_ref/occ/instm/DRErase/status status
--
-- .
--
-- ObjC selector: @- start@
start :: IsDRErase drErase => drErase -> IO ()
start drErase =
  sendMessage drErase startSelector

-- | status
--
-- Returns a dictionary containing the status of the erase.
--
-- The same dictionary is returned 					through the
--
-- //apple_ref/occ/data/DREraseStatusChangedNotification DREraseStatusChangedNotification
--
-- notification.
--
-- Returns: An NSDictionary containing the status of the erase.
--
-- ObjC selector: @- status@
status :: IsDRErase drErase => drErase -> IO (Id NSDictionary)
status drErase =
  sendMessage drErase statusSelector

-- | properties
--
-- Returns the properties dictionary of the erase.
--
-- Returns: An NSDictionary containing the properties of the erase.
--
-- ObjC selector: @- properties@
properties :: IsDRErase drErase => drErase -> IO (Id NSDictionary)
properties drErase =
  sendMessage drErase propertiesSelector

-- | setProperties:
--
-- Sets the properties dictionary of the erase
--
-- @properties@ — NSDictionary of the properties to set.
--
-- ObjC selector: @- setProperties:@
setProperties :: (IsDRErase drErase, IsNSDictionary properties) => drErase -> properties -> IO ()
setProperties drErase properties =
  sendMessage drErase setPropertiesSelector (toNSDictionary properties)

-- | device
--
-- Returns the device being used for the erase.
--
-- Returns: The DRDevice the erase will use.
--
-- ObjC selector: @- device@
device :: IsDRErase drErase => drErase -> IO (Id DRDevice)
device drErase =
  sendMessage drErase deviceSelector

-- | eraseType
--
-- Returns the type of erase to be performed.
--
-- Returns: An NSString
--
-- ObjC selector: @- eraseType@
eraseType :: IsDRErase drErase => drErase -> IO (Id NSString)
eraseType drErase =
  sendMessage drErase eraseTypeSelector

-- | setEraseType:
--
-- Sets the type of erase to perform.
--
-- @type@ — The type of erase.
--
-- ObjC selector: @- setEraseType:@
setEraseType :: (IsDRErase drErase, IsNSString type_) => drErase -> type_ -> IO ()
setEraseType drErase type_ =
  sendMessage drErase setEraseTypeSelector (toNSString type_)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @eraseForDevice:@
eraseForDeviceSelector :: Selector '[Id DRDevice] (Id DRErase)
eraseForDeviceSelector = mkSelector "eraseForDevice:"

-- | @Selector@ for @initWithDevice:@
initWithDeviceSelector :: Selector '[Id DRDevice] RawId
initWithDeviceSelector = mkSelector "initWithDevice:"

-- | @Selector@ for @start@
startSelector :: Selector '[] ()
startSelector = mkSelector "start"

-- | @Selector@ for @status@
statusSelector :: Selector '[] (Id NSDictionary)
statusSelector = mkSelector "status"

-- | @Selector@ for @properties@
propertiesSelector :: Selector '[] (Id NSDictionary)
propertiesSelector = mkSelector "properties"

-- | @Selector@ for @setProperties:@
setPropertiesSelector :: Selector '[Id NSDictionary] ()
setPropertiesSelector = mkSelector "setProperties:"

-- | @Selector@ for @device@
deviceSelector :: Selector '[] (Id DRDevice)
deviceSelector = mkSelector "device"

-- | @Selector@ for @eraseType@
eraseTypeSelector :: Selector '[] (Id NSString)
eraseTypeSelector = mkSelector "eraseType"

-- | @Selector@ for @setEraseType:@
setEraseTypeSelector :: Selector '[Id NSString] ()
setEraseTypeSelector = mkSelector "setEraseType:"

