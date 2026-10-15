{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Summary for a specific time period or report type.
--
-- Generated bindings for @ENExposureSummaryItem@.
module ObjC.ExposureNotification.ENExposureSummaryItem
  ( ENExposureSummaryItem
  , IsENExposureSummaryItem(..)
  , maximumScore
  , scoreSum
  , weightedDurationSum
  , maximumScoreSelector
  , scoreSumSelector
  , weightedDurationSumSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExposureNotification.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Highest score of all exposures for this item.
--
-- ObjC selector: @- maximumScore@
maximumScore :: IsENExposureSummaryItem enExposureSummaryItem => enExposureSummaryItem -> IO CDouble
maximumScore enExposureSummaryItem =
  sendMessage enExposureSummaryItem maximumScoreSelector

-- | Sum of scores for all exposure for this item.
--
-- ObjC selector: @- scoreSum@
scoreSum :: IsENExposureSummaryItem enExposureSummaryItem => enExposureSummaryItem -> IO CDouble
scoreSum enExposureSummaryItem =
  sendMessage enExposureSummaryItem scoreSumSelector

-- | Sum of exposure durations weighted by their attenuation. weightedDurationSum = 		( immediateDuration * immediateDurationWeight ) +		( nearDuration      * nearDurationWeight ) +		( mediumDuration    * mediumDurationWeight ) +		( otherDuration     * otherDurationWeight ).
--
-- ObjC selector: @- weightedDurationSum@
weightedDurationSum :: IsENExposureSummaryItem enExposureSummaryItem => enExposureSummaryItem -> IO CDouble
weightedDurationSum enExposureSummaryItem =
  sendMessage enExposureSummaryItem weightedDurationSumSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @maximumScore@
maximumScoreSelector :: Selector '[] CDouble
maximumScoreSelector = mkSelector "maximumScore"

-- | @Selector@ for @scoreSum@
scoreSumSelector :: Selector '[] CDouble
scoreSumSelector = mkSelector "scoreSum"

-- | @Selector@ for @weightedDurationSum@
weightedDurationSumSelector :: Selector '[] CDouble
weightedDurationSumSelector = mkSelector "weightedDurationSum"

