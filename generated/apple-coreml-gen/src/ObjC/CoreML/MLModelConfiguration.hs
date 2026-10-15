{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | An object to hold options for loading a model.
--
-- Generated bindings for @MLModelConfiguration@.
module ObjC.CoreML.MLModelConfiguration
  ( MLModelConfiguration
  , IsMLModelConfiguration(..)
  , modelDisplayName
  , setModelDisplayName
  , computeUnits
  , setComputeUnits
  , parameters
  , setParameters
  , allowLowPrecisionAccumulationOnGPU
  , setAllowLowPrecisionAccumulationOnGPU
  , preferredMetalDevice
  , setPreferredMetalDevice
  , allowLowPrecisionAccumulationOnGPUSelector
  , computeUnitsSelector
  , modelDisplayNameSelector
  , parametersSelector
  , preferredMetalDeviceSelector
  , setAllowLowPrecisionAccumulationOnGPUSelector
  , setComputeUnitsSelector
  , setModelDisplayNameSelector
  , setParametersSelector
  , setPreferredMetalDeviceSelector

  -- * Enum types
  , MLComputeUnits(MLComputeUnits)
  , pattern MLComputeUnitsCPUOnly
  , pattern MLComputeUnitsCPUAndGPU
  , pattern MLComputeUnitsAll
  , pattern MLComputeUnitsCPUAndNeuralEngine

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreML.Internal.Classes
import ObjC.CoreML.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | A human readable name of a MLModel instance for display purposes.
--
-- Use this property to set a name of a model instance so that runtime analysis tools (e.g. Instruments and os_log) can display that name in the user interface.
--
-- CoreML framework doesn't parse nor filter the text. It is the client's responsibility to use appropriate text, which may involve localization and privacy considerations.
--
-- When the property is nil, CoreML framework provides a default.
--
-- ObjC selector: @- modelDisplayName@
modelDisplayName :: IsMLModelConfiguration mlModelConfiguration => mlModelConfiguration -> IO (Id NSString)
modelDisplayName mlModelConfiguration =
  sendMessage mlModelConfiguration modelDisplayNameSelector

-- | A human readable name of a MLModel instance for display purposes.
--
-- Use this property to set a name of a model instance so that runtime analysis tools (e.g. Instruments and os_log) can display that name in the user interface.
--
-- CoreML framework doesn't parse nor filter the text. It is the client's responsibility to use appropriate text, which may involve localization and privacy considerations.
--
-- When the property is nil, CoreML framework provides a default.
--
-- ObjC selector: @- setModelDisplayName:@
setModelDisplayName :: (IsMLModelConfiguration mlModelConfiguration, IsNSString value) => mlModelConfiguration -> value -> IO ()
setModelDisplayName mlModelConfiguration value =
  sendMessage mlModelConfiguration setModelDisplayNameSelector (toNSString value)

-- | @- computeUnits@
computeUnits :: IsMLModelConfiguration mlModelConfiguration => mlModelConfiguration -> IO MLComputeUnits
computeUnits mlModelConfiguration =
  sendMessage mlModelConfiguration computeUnitsSelector

-- | @- setComputeUnits:@
setComputeUnits :: IsMLModelConfiguration mlModelConfiguration => mlModelConfiguration -> MLComputeUnits -> IO ()
setComputeUnits mlModelConfiguration value =
  sendMessage mlModelConfiguration setComputeUnitsSelector value

-- | @- parameters@
parameters :: IsMLModelConfiguration mlModelConfiguration => mlModelConfiguration -> IO (Id NSDictionary)
parameters mlModelConfiguration =
  sendMessage mlModelConfiguration parametersSelector

-- | @- setParameters:@
setParameters :: (IsMLModelConfiguration mlModelConfiguration, IsNSDictionary value) => mlModelConfiguration -> value -> IO ()
setParameters mlModelConfiguration value =
  sendMessage mlModelConfiguration setParametersSelector (toNSDictionary value)

-- | Set to YES to allow low precision accumulation on GPU when available. Defaults to NO
--
-- ObjC selector: @- allowLowPrecisionAccumulationOnGPU@
allowLowPrecisionAccumulationOnGPU :: IsMLModelConfiguration mlModelConfiguration => mlModelConfiguration -> IO Bool
allowLowPrecisionAccumulationOnGPU mlModelConfiguration =
  sendMessage mlModelConfiguration allowLowPrecisionAccumulationOnGPUSelector

-- | Set to YES to allow low precision accumulation on GPU when available. Defaults to NO
--
-- ObjC selector: @- setAllowLowPrecisionAccumulationOnGPU:@
setAllowLowPrecisionAccumulationOnGPU :: IsMLModelConfiguration mlModelConfiguration => mlModelConfiguration -> Bool -> IO ()
setAllowLowPrecisionAccumulationOnGPU mlModelConfiguration value =
  sendMessage mlModelConfiguration setAllowLowPrecisionAccumulationOnGPUSelector value

-- | Set to specify a preferred Metal device. Defaults to nil which indicates automatic selection
--
-- ObjC selector: @- preferredMetalDevice@
preferredMetalDevice :: IsMLModelConfiguration mlModelConfiguration => mlModelConfiguration -> IO RawId
preferredMetalDevice mlModelConfiguration =
  sendMessage mlModelConfiguration preferredMetalDeviceSelector

-- | Set to specify a preferred Metal device. Defaults to nil which indicates automatic selection
--
-- ObjC selector: @- setPreferredMetalDevice:@
setPreferredMetalDevice :: IsMLModelConfiguration mlModelConfiguration => mlModelConfiguration -> RawId -> IO ()
setPreferredMetalDevice mlModelConfiguration value =
  sendMessage mlModelConfiguration setPreferredMetalDeviceSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @modelDisplayName@
modelDisplayNameSelector :: Selector '[] (Id NSString)
modelDisplayNameSelector = mkSelector "modelDisplayName"

-- | @Selector@ for @setModelDisplayName:@
setModelDisplayNameSelector :: Selector '[Id NSString] ()
setModelDisplayNameSelector = mkSelector "setModelDisplayName:"

-- | @Selector@ for @computeUnits@
computeUnitsSelector :: Selector '[] MLComputeUnits
computeUnitsSelector = mkSelector "computeUnits"

-- | @Selector@ for @setComputeUnits:@
setComputeUnitsSelector :: Selector '[MLComputeUnits] ()
setComputeUnitsSelector = mkSelector "setComputeUnits:"

-- | @Selector@ for @parameters@
parametersSelector :: Selector '[] (Id NSDictionary)
parametersSelector = mkSelector "parameters"

-- | @Selector@ for @setParameters:@
setParametersSelector :: Selector '[Id NSDictionary] ()
setParametersSelector = mkSelector "setParameters:"

-- | @Selector@ for @allowLowPrecisionAccumulationOnGPU@
allowLowPrecisionAccumulationOnGPUSelector :: Selector '[] Bool
allowLowPrecisionAccumulationOnGPUSelector = mkSelector "allowLowPrecisionAccumulationOnGPU"

-- | @Selector@ for @setAllowLowPrecisionAccumulationOnGPU:@
setAllowLowPrecisionAccumulationOnGPUSelector :: Selector '[Bool] ()
setAllowLowPrecisionAccumulationOnGPUSelector = mkSelector "setAllowLowPrecisionAccumulationOnGPU:"

-- | @Selector@ for @preferredMetalDevice@
preferredMetalDeviceSelector :: Selector '[] RawId
preferredMetalDeviceSelector = mkSelector "preferredMetalDevice"

-- | @Selector@ for @setPreferredMetalDevice:@
setPreferredMetalDeviceSelector :: Selector '[RawId] ()
setPreferredMetalDeviceSelector = mkSelector "setPreferredMetalDevice:"

