{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphDevice@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphDevice
  ( MPSGraphDevice
  , IsMPSGraphDevice(..)
  , deviceWithMTLDevice
  , type_
  , metalDevice
  , deviceWithMTLDeviceSelector
  , metalDeviceSelector
  , typeSelector

  -- * Enum types
  , MPSGraphDeviceType(MPSGraphDeviceType)
  , pattern MPSGraphDeviceTypeMetal

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

-- | Creates a Metal MPSGraphDevice from a MTLDevice
--
-- @metalDevice@ — MTLDevice to create an MPSGraphDevice from
--
-- Returns: A valid MPSGraphDevice
--
-- ObjC selector: @+ deviceWithMTLDevice:@
deviceWithMTLDevice :: RawId -> IO (Id MPSGraphDevice)
deviceWithMTLDevice metalDevice =
  do
    cls' <- getRequiredClass "MPSGraphDevice"
    sendClassMessage cls' deviceWithMTLDeviceSelector metalDevice

-- | type
--
-- ObjC selector: @- type@
type_ :: IsMPSGraphDevice mpsGraphDevice => mpsGraphDevice -> IO MPSGraphDeviceType
type_ mpsGraphDevice =
  sendMessage mpsGraphDevice typeSelector

-- | metalDevice
--
-- if deviceType GPU then returns MTLDevice or nil
--
-- ObjC selector: @- metalDevice@
metalDevice :: IsMPSGraphDevice mpsGraphDevice => mpsGraphDevice -> IO RawId
metalDevice mpsGraphDevice =
  sendMessage mpsGraphDevice metalDeviceSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @deviceWithMTLDevice:@
deviceWithMTLDeviceSelector :: Selector '[RawId] (Id MPSGraphDevice)
deviceWithMTLDeviceSelector = mkSelector "deviceWithMTLDevice:"

-- | @Selector@ for @type@
typeSelector :: Selector '[] MPSGraphDeviceType
typeSelector = mkSelector "type"

-- | @Selector@ for @metalDevice@
metalDeviceSelector :: Selector '[] RawId
metalDeviceSelector = mkSelector "metalDevice"

