{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Subclass for mass-spring animations.
--
-- Generated bindings for @CASpringAnimation@.
module ObjC.QuartzCore.CASpringAnimation
  ( CASpringAnimation
  , IsCASpringAnimation(..)
  , mass
  , setMass
  , stiffness
  , setStiffness
  , damping
  , setDamping
  , initialVelocity
  , setInitialVelocity
  , settlingDuration
  , dampingSelector
  , initialVelocitySelector
  , massSelector
  , setDampingSelector
  , setInitialVelocitySelector
  , setMassSelector
  , setStiffnessSelector
  , settlingDurationSelector
  , stiffnessSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.QuartzCore.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- mass@
mass :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> IO CDouble
mass caSpringAnimation =
  sendMessage caSpringAnimation massSelector

-- | @- setMass:@
setMass :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> CDouble -> IO ()
setMass caSpringAnimation value =
  sendMessage caSpringAnimation setMassSelector value

-- | @- stiffness@
stiffness :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> IO CDouble
stiffness caSpringAnimation =
  sendMessage caSpringAnimation stiffnessSelector

-- | @- setStiffness:@
setStiffness :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> CDouble -> IO ()
setStiffness caSpringAnimation value =
  sendMessage caSpringAnimation setStiffnessSelector value

-- | @- damping@
damping :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> IO CDouble
damping caSpringAnimation =
  sendMessage caSpringAnimation dampingSelector

-- | @- setDamping:@
setDamping :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> CDouble -> IO ()
setDamping caSpringAnimation value =
  sendMessage caSpringAnimation setDampingSelector value

-- | @- initialVelocity@
initialVelocity :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> IO CDouble
initialVelocity caSpringAnimation =
  sendOwnedMessage caSpringAnimation initialVelocitySelector

-- | @- setInitialVelocity:@
setInitialVelocity :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> CDouble -> IO ()
setInitialVelocity caSpringAnimation value =
  sendMessage caSpringAnimation setInitialVelocitySelector value

-- | @- settlingDuration@
settlingDuration :: IsCASpringAnimation caSpringAnimation => caSpringAnimation -> IO CDouble
settlingDuration caSpringAnimation =
  sendMessage caSpringAnimation settlingDurationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @mass@
massSelector :: Selector '[] CDouble
massSelector = mkSelector "mass"

-- | @Selector@ for @setMass:@
setMassSelector :: Selector '[CDouble] ()
setMassSelector = mkSelector "setMass:"

-- | @Selector@ for @stiffness@
stiffnessSelector :: Selector '[] CDouble
stiffnessSelector = mkSelector "stiffness"

-- | @Selector@ for @setStiffness:@
setStiffnessSelector :: Selector '[CDouble] ()
setStiffnessSelector = mkSelector "setStiffness:"

-- | @Selector@ for @damping@
dampingSelector :: Selector '[] CDouble
dampingSelector = mkSelector "damping"

-- | @Selector@ for @setDamping:@
setDampingSelector :: Selector '[CDouble] ()
setDampingSelector = mkSelector "setDamping:"

-- | @Selector@ for @initialVelocity@
initialVelocitySelector :: Selector '[] CDouble
initialVelocitySelector = mkSelector "initialVelocity"

-- | @Selector@ for @setInitialVelocity:@
setInitialVelocitySelector :: Selector '[CDouble] ()
setInitialVelocitySelector = mkSelector "setInitialVelocity:"

-- | @Selector@ for @settlingDuration@
settlingDurationSelector :: Selector '[] CDouble
settlingDurationSelector = mkSelector "settlingDuration"

