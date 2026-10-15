{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | *************************************************************************************************
--
-- PHASEGeneratorParameters
--
-- An object that holds a standard set of audio parameters common to several objects
--
-- Generated bindings for @PHASEGeneratorParameters@.
module ObjC.PHASE.PHASEGeneratorParameters
  ( PHASEGeneratorParameters
  , IsPHASEGeneratorParameters(..)
  , gain
  , setGain
  , rate
  , setRate
  , gainSelector
  , rateSelector
  , setGainSelector
  , setRateSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PHASE.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | gain
--
-- Linear gain scalar.
--
-- Note: Values are clamped to the range [0, 1]. Default value is 1.
--
-- ObjC selector: @- gain@
gain :: IsPHASEGeneratorParameters phaseGeneratorParameters => phaseGeneratorParameters -> IO CDouble
gain phaseGeneratorParameters =
  sendMessage phaseGeneratorParameters gainSelector

-- | gain
--
-- Linear gain scalar.
--
-- Note: Values are clamped to the range [0, 1]. Default value is 1.
--
-- ObjC selector: @- setGain:@
setGain :: IsPHASEGeneratorParameters phaseGeneratorParameters => phaseGeneratorParameters -> CDouble -> IO ()
setGain phaseGeneratorParameters value =
  sendMessage phaseGeneratorParameters setGainSelector value

-- | gain
--
-- Linear gain scalar.
--
-- Note: Values are clamped to the range [0.25, 4]. Default value is 1.
--
-- ObjC selector: @- rate@
rate :: IsPHASEGeneratorParameters phaseGeneratorParameters => phaseGeneratorParameters -> IO CDouble
rate phaseGeneratorParameters =
  sendMessage phaseGeneratorParameters rateSelector

-- | gain
--
-- Linear gain scalar.
--
-- Note: Values are clamped to the range [0.25, 4]. Default value is 1.
--
-- ObjC selector: @- setRate:@
setRate :: IsPHASEGeneratorParameters phaseGeneratorParameters => phaseGeneratorParameters -> CDouble -> IO ()
setRate phaseGeneratorParameters value =
  sendMessage phaseGeneratorParameters setRateSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @gain@
gainSelector :: Selector '[] CDouble
gainSelector = mkSelector "gain"

-- | @Selector@ for @setGain:@
setGainSelector :: Selector '[CDouble] ()
setGainSelector = mkSelector "setGain:"

-- | @Selector@ for @rate@
rateSelector :: Selector '[] CDouble
rateSelector = mkSelector "rate"

-- | @Selector@ for @setRate:@
setRateSelector :: Selector '[CDouble] ()
setRateSelector = mkSelector "setRate:"

