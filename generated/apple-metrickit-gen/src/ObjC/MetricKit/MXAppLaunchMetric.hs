{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MXAppLaunchMetric
--
-- An MXMetric subclass that encapsulates app launch metrics.
--
-- Generated bindings for @MXAppLaunchMetric@.
module ObjC.MetricKit.MXAppLaunchMetric
  ( MXAppLaunchMetric
  , IsMXAppLaunchMetric(..)
  , histogrammedTimeToFirstDraw
  , histogrammedApplicationResumeTime
  , histogrammedApplicationResumeTimeSelector
  , histogrammedTimeToFirstDrawSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetricKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | histogrammedTimeToFirstDraw
--
-- Histogrammed application time-to-first-draw data.
--
-- Dimensioned as NSUnitDuration.
--
-- This represents the time when the first CA commit is finished.
--
-- ObjC selector: @- histogrammedTimeToFirstDraw@
histogrammedTimeToFirstDraw :: IsMXAppLaunchMetric mxAppLaunchMetric => mxAppLaunchMetric -> IO (Id MXHistogram)
histogrammedTimeToFirstDraw mxAppLaunchMetric =
  sendMessage mxAppLaunchMetric histogrammedTimeToFirstDrawSelector

-- | histogrammedApplicationResumeTime
--
-- Histogrammed application resume time data.
--
-- Dimensioned as NSUnitDuration.
--
-- ObjC selector: @- histogrammedApplicationResumeTime@
histogrammedApplicationResumeTime :: IsMXAppLaunchMetric mxAppLaunchMetric => mxAppLaunchMetric -> IO (Id MXHistogram)
histogrammedApplicationResumeTime mxAppLaunchMetric =
  sendMessage mxAppLaunchMetric histogrammedApplicationResumeTimeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @histogrammedTimeToFirstDraw@
histogrammedTimeToFirstDrawSelector :: Selector '[] (Id MXHistogram)
histogrammedTimeToFirstDrawSelector = mkSelector "histogrammedTimeToFirstDraw"

-- | @Selector@ for @histogrammedApplicationResumeTime@
histogrammedApplicationResumeTimeSelector :: Selector '[] (Id MXHistogram)
histogrammedApplicationResumeTimeSelector = mkSelector "histogrammedApplicationResumeTime"

