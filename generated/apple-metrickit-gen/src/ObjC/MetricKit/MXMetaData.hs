{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MXMetaData
--
-- A class that contains miscellaneous metadata about an associated payload.
--
-- Generated bindings for @MXMetaData@.
module ObjC.MetricKit.MXMetaData
  ( MXMetaData
  , IsMXMetaData(..)
  , jsonRepresentation
  , dictionaryRepresentation
  , regionFormat
  , osVersion
  , deviceType
  , applicationBuildVersion
  , platformArchitecture
  , applicationBuildVersionSelector
  , deviceTypeSelector
  , dictionaryRepresentationSelector
  , jsonRepresentationSelector
  , osVersionSelector
  , platformArchitectureSelector
  , regionFormatSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetricKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | JSONRepresentation
--
-- Convenience method to return a JSON representation of this metadata.
--
-- Returns: An NSData object containing the JSON representation
--
-- ObjC selector: @- JSONRepresentation@
jsonRepresentation :: IsMXMetaData mxMetaData => mxMetaData -> IO (Id NSData)
jsonRepresentation mxMetaData =
  sendMessage mxMetaData jsonRepresentationSelector

-- | DictionaryRepresentation
--
-- Convenience method to return a NSDictionary representation of this metadata.
--
-- Returns: An NSDictionary object containing the dictionary representation
--
-- ObjC selector: @- DictionaryRepresentation@
dictionaryRepresentation :: IsMXMetaData mxMetaData => mxMetaData -> IO (Id NSDictionary)
dictionaryRepresentation mxMetaData =
  sendMessage mxMetaData dictionaryRepresentationSelector

-- | regionFormat
--
-- An NSString designating the region format associated with the application.
--
-- ObjC selector: @- regionFormat@
regionFormat :: IsMXMetaData mxMetaData => mxMetaData -> IO (Id NSString)
regionFormat mxMetaData =
  sendMessage mxMetaData regionFormatSelector

-- | osVersion
--
-- An NSString designating the OS version associated with the device.
--
-- ObjC selector: @- osVersion@
osVersion :: IsMXMetaData mxMetaData => mxMetaData -> IO (Id NSString)
osVersion mxMetaData =
  sendMessage mxMetaData osVersionSelector

-- | deviceType
--
-- An NSString designating the device type associated with this device.
--
-- ObjC selector: @- deviceType@
deviceType :: IsMXMetaData mxMetaData => mxMetaData -> IO (Id NSString)
deviceType mxMetaData =
  sendMessage mxMetaData deviceTypeSelector

-- | applicationBuildVersion
--
-- An NSString designating the app build version.
--
-- ObjC selector: @- applicationBuildVersion@
applicationBuildVersion :: IsMXMetaData mxMetaData => mxMetaData -> IO (Id NSString)
applicationBuildVersion mxMetaData =
  sendMessage mxMetaData applicationBuildVersionSelector

-- | platformArchitecture
--
-- An NSString designating the current architecture.
--
-- ObjC selector: @- platformArchitecture@
platformArchitecture :: IsMXMetaData mxMetaData => mxMetaData -> IO (Id NSString)
platformArchitecture mxMetaData =
  sendMessage mxMetaData platformArchitectureSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @JSONRepresentation@
jsonRepresentationSelector :: Selector '[] (Id NSData)
jsonRepresentationSelector = mkSelector "JSONRepresentation"

-- | @Selector@ for @DictionaryRepresentation@
dictionaryRepresentationSelector :: Selector '[] (Id NSDictionary)
dictionaryRepresentationSelector = mkSelector "DictionaryRepresentation"

-- | @Selector@ for @regionFormat@
regionFormatSelector :: Selector '[] (Id NSString)
regionFormatSelector = mkSelector "regionFormat"

-- | @Selector@ for @osVersion@
osVersionSelector :: Selector '[] (Id NSString)
osVersionSelector = mkSelector "osVersion"

-- | @Selector@ for @deviceType@
deviceTypeSelector :: Selector '[] (Id NSString)
deviceTypeSelector = mkSelector "deviceType"

-- | @Selector@ for @applicationBuildVersion@
applicationBuildVersionSelector :: Selector '[] (Id NSString)
applicationBuildVersionSelector = mkSelector "applicationBuildVersion"

-- | @Selector@ for @platformArchitecture@
platformArchitectureSelector :: Selector '[] (Id NSString)
platformArchitectureSelector = mkSelector "platformArchitecture"

