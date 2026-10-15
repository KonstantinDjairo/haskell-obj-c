{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MXAnimationMetric
--
-- An MXMetric subclass that encapsulates app animation metrics.
--
-- Generated bindings for @MXAnimationMetric@.
module ObjC.MetricKit.MXAnimationMetric
  ( MXAnimationMetric
  , IsMXAnimationMetric(..)
  , scrollHitchTimeRatio
  , scrollHitchTimeRatioSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetricKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | scrollHitchTimeRatio
--
-- Ratio of time the application spent hitching while scrolling.
--
-- Scroll hitches are user perceptible animation issues that occur during scrolling.
--
-- This metric only applies to UIScrollViews.
--
-- Dimensionless.
--
-- ObjC selector: @- scrollHitchTimeRatio@
scrollHitchTimeRatio :: IsMXAnimationMetric mxAnimationMetric => mxAnimationMetric -> IO (Id NSMeasurement)
scrollHitchTimeRatio mxAnimationMetric =
  sendMessage mxAnimationMetric scrollHitchTimeRatioSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @scrollHitchTimeRatio@
scrollHitchTimeRatioSelector :: Selector '[] (Id NSMeasurement)
scrollHitchTimeRatioSelector = mkSelector "scrollHitchTimeRatio"

