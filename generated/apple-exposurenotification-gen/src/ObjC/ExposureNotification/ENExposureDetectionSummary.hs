{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Summary of exposure detection.
--
-- Generated bindings for @ENExposureDetectionSummary@.
module ObjC.ExposureNotification.ENExposureDetectionSummary
  ( ENExposureDetectionSummary
  , IsENExposureDetectionSummary(..)
  , attenuationDurations
  , daysSinceLastExposure
  , matchedKeyCount
  , maximumRiskScore
  , maximumRiskScoreFullRange
  , metadata
  , riskScoreSumFullRange
  , daySummaries
  , attenuationDurationsSelector
  , daySummariesSelector
  , daysSinceLastExposureSelector
  , matchedKeyCountSelector
  , maximumRiskScoreFullRangeSelector
  , maximumRiskScoreSelector
  , metadataSelector
  , riskScoreSumFullRangeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExposureNotification.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Array of durations in seconds at certain radio signal attenuations. Array index 0: Sum of durations for all exposures when attenuation <= X Array index 1: Sum of durations for all exposures when attenuation <= Y Array index 2: Sum of durations for all exposures when attenuation <= Z Array index 3: Sum of durations for all exposures when attenuation >  Z X, Y, Z come from the attenuationDurationThresholds on the configuration object.
--
-- ObjC selector: @- attenuationDurations@
attenuationDurations :: IsENExposureDetectionSummary enExposureDetectionSummary => enExposureDetectionSummary -> IO (Id NSArray)
attenuationDurations enExposureDetectionSummary =
  sendMessage enExposureDetectionSummary attenuationDurationsSelector

-- | Number of days since the most recent exposure. 0 = today, 1 = yesterday, etc. Only valid if matchedKeyCount > 0.
--
-- ObjC selector: @- daysSinceLastExposure@
daysSinceLastExposure :: IsENExposureDetectionSummary enExposureDetectionSummary => enExposureDetectionSummary -> IO CLong
daysSinceLastExposure enExposureDetectionSummary =
  sendMessage enExposureDetectionSummary daysSinceLastExposureSelector

-- | Number of diagnosis keys that matched.
--
-- ObjC selector: @- matchedKeyCount@
matchedKeyCount :: IsENExposureDetectionSummary enExposureDetectionSummary => enExposureDetectionSummary -> IO CULong
matchedKeyCount enExposureDetectionSummary =
  sendMessage enExposureDetectionSummary matchedKeyCountSelector

-- | Highest risk score of all exposure incidents.
--
-- ObjC selector: @- maximumRiskScore@
maximumRiskScore :: IsENExposureDetectionSummary enExposureDetectionSummary => enExposureDetectionSummary -> IO CUChar
maximumRiskScore enExposureDetectionSummary =
  sendMessage enExposureDetectionSummary maximumRiskScoreSelector

-- | Highest risk score of all exposure incidents.
--
-- ObjC selector: @- maximumRiskScoreFullRange@
maximumRiskScoreFullRange :: IsENExposureDetectionSummary enExposureDetectionSummary => enExposureDetectionSummary -> IO CDouble
maximumRiskScoreFullRange enExposureDetectionSummary =
  sendMessage enExposureDetectionSummary maximumRiskScoreFullRangeSelector

-- | Metadata associated with the summary.
--
-- ObjC selector: @- metadata@
metadata :: IsENExposureDetectionSummary enExposureDetectionSummary => enExposureDetectionSummary -> IO (Id NSDictionary)
metadata enExposureDetectionSummary =
  sendMessage enExposureDetectionSummary metadataSelector

-- | Sum of risk scores for all exposures. Summed using the full range risk scores before capping to ENRiskScore.
--
-- ObjC selector: @- riskScoreSumFullRange@
riskScoreSumFullRange :: IsENExposureDetectionSummary enExposureDetectionSummary => enExposureDetectionSummary -> IO CDouble
riskScoreSumFullRange enExposureDetectionSummary =
  sendMessage enExposureDetectionSummary riskScoreSumFullRangeSelector

-- | Summary of each day containing an exposure.
--
-- ObjC selector: @- daySummaries@
daySummaries :: IsENExposureDetectionSummary enExposureDetectionSummary => enExposureDetectionSummary -> IO (Id NSArray)
daySummaries enExposureDetectionSummary =
  sendMessage enExposureDetectionSummary daySummariesSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @attenuationDurations@
attenuationDurationsSelector :: Selector '[] (Id NSArray)
attenuationDurationsSelector = mkSelector "attenuationDurations"

-- | @Selector@ for @daysSinceLastExposure@
daysSinceLastExposureSelector :: Selector '[] CLong
daysSinceLastExposureSelector = mkSelector "daysSinceLastExposure"

-- | @Selector@ for @matchedKeyCount@
matchedKeyCountSelector :: Selector '[] CULong
matchedKeyCountSelector = mkSelector "matchedKeyCount"

-- | @Selector@ for @maximumRiskScore@
maximumRiskScoreSelector :: Selector '[] CUChar
maximumRiskScoreSelector = mkSelector "maximumRiskScore"

-- | @Selector@ for @maximumRiskScoreFullRange@
maximumRiskScoreFullRangeSelector :: Selector '[] CDouble
maximumRiskScoreFullRangeSelector = mkSelector "maximumRiskScoreFullRange"

-- | @Selector@ for @metadata@
metadataSelector :: Selector '[] (Id NSDictionary)
metadataSelector = mkSelector "metadata"

-- | @Selector@ for @riskScoreSumFullRange@
riskScoreSumFullRangeSelector :: Selector '[] CDouble
riskScoreSumFullRangeSelector = mkSelector "riskScoreSumFullRange"

-- | @Selector@ for @daySummaries@
daySummariesSelector :: Selector '[] (Id NSArray)
daySummariesSelector = mkSelector "daySummaries"

