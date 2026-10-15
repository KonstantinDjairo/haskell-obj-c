{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Info about an exposure.
--
-- Generated bindings for @ENExposureInfo@.
module ObjC.ExposureNotification.ENExposureInfo
  ( ENExposureInfo
  , IsENExposureInfo(..)
  , attenuationDurations
  , attenuationValue
  , date
  , daysSinceOnsetOfSymptoms
  , diagnosisReportType
  , duration
  , metadata
  , totalRiskScore
  , totalRiskScoreFullRange
  , transmissionRiskLevel
  , attenuationDurationsSelector
  , attenuationValueSelector
  , dateSelector
  , daysSinceOnsetOfSymptomsSelector
  , diagnosisReportTypeSelector
  , durationSelector
  , metadataSelector
  , totalRiskScoreFullRangeSelector
  , totalRiskScoreSelector
  , transmissionRiskLevelSelector

  -- * Enum types
  , ENDiagnosisReportType(ENDiagnosisReportType)
  , pattern ENDiagnosisReportTypeUnknown
  , pattern ENDiagnosisReportTypeConfirmedTest
  , pattern ENDiagnosisReportTypeConfirmedClinicalDiagnosis
  , pattern ENDiagnosisReportTypeSelfReported
  , pattern ENDiagnosisReportTypeRecursive
  , pattern ENDiagnosisReportTypeRevoked

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExposureNotification.Internal.Classes
import ObjC.ExposureNotification.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | Array of durations in seconds at certain radio signal attenuations. Array index 0: Sum of durations for this exposure when attenuation <= X Array index 1: Sum of durations for this exposure when attenuation <= Y Array index 2: Sum of durations for this exposure when attenuation <= Z Array index 3: Sum of durations for this exposure when attenuation >  Z X, Y, Z come from the attenuationDurationThresholds on the configuration object.
--
-- ObjC selector: @- attenuationDurations@
attenuationDurations :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO (Id NSArray)
attenuationDurations enExposureInfo =
  sendMessage enExposureInfo attenuationDurationsSelector

-- | Duration-weighted average of the attenuations associated with this exposure.
--
-- ObjC selector: @- attenuationValue@
attenuationValue :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO CUChar
attenuationValue enExposureInfo =
  sendMessage enExposureInfo attenuationValueSelector

-- | Date when the exposure occurred. This may have reduced precision, such as within 1 day of the actual time.
--
-- ObjC selector: @- date@
date :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO (Id NSDate)
date enExposureInfo =
  sendMessage enExposureInfo dateSelector

-- | Number of days since the onset of symptoms. Defaults to ENDaysSinceOnsetOfSymptomsUnknown.
--
-- ObjC selector: @- daysSinceOnsetOfSymptoms@
daysSinceOnsetOfSymptoms :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO CLong
daysSinceOnsetOfSymptoms enExposureInfo =
  sendMessage enExposureInfo daysSinceOnsetOfSymptomsSelector

-- | How positive diagnosis was reported.
--
-- ObjC selector: @- diagnosisReportType@
diagnosisReportType :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO ENDiagnosisReportType
diagnosisReportType enExposureInfo =
  sendMessage enExposureInfo diagnosisReportTypeSelector

-- | Length of exposure in 5 minute increments with a 30 minute maximum.
--
-- ObjC selector: @- duration@
duration :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO CDouble
duration enExposureInfo =
  sendMessage enExposureInfo durationSelector

-- | Metadata associated with the exposure.
--
-- ObjC selector: @- metadata@
metadata :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO (Id NSDictionary)
metadata enExposureInfo =
  sendMessage enExposureInfo metadataSelector

-- | Indicates the total risk calculated for this exposure incident. Capped to ENRiskScore range.
--
-- ObjC selector: @- totalRiskScore@
totalRiskScore :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO CUChar
totalRiskScore enExposureInfo =
  sendMessage enExposureInfo totalRiskScoreSelector

-- | Indicates the total risk calculated for this exposure incident. Full range and not capped to ENRiskScore.
--
-- ObjC selector: @- totalRiskScoreFullRange@
totalRiskScoreFullRange :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO CDouble
totalRiskScoreFullRange enExposureInfo =
  sendMessage enExposureInfo totalRiskScoreFullRangeSelector

-- | Indicates the transmission risk associated with the diagnosis key.
--
-- ObjC selector: @- transmissionRiskLevel@
transmissionRiskLevel :: IsENExposureInfo enExposureInfo => enExposureInfo -> IO CUChar
transmissionRiskLevel enExposureInfo =
  sendMessage enExposureInfo transmissionRiskLevelSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @attenuationDurations@
attenuationDurationsSelector :: Selector '[] (Id NSArray)
attenuationDurationsSelector = mkSelector "attenuationDurations"

-- | @Selector@ for @attenuationValue@
attenuationValueSelector :: Selector '[] CUChar
attenuationValueSelector = mkSelector "attenuationValue"

-- | @Selector@ for @date@
dateSelector :: Selector '[] (Id NSDate)
dateSelector = mkSelector "date"

-- | @Selector@ for @daysSinceOnsetOfSymptoms@
daysSinceOnsetOfSymptomsSelector :: Selector '[] CLong
daysSinceOnsetOfSymptomsSelector = mkSelector "daysSinceOnsetOfSymptoms"

-- | @Selector@ for @diagnosisReportType@
diagnosisReportTypeSelector :: Selector '[] ENDiagnosisReportType
diagnosisReportTypeSelector = mkSelector "diagnosisReportType"

-- | @Selector@ for @duration@
durationSelector :: Selector '[] CDouble
durationSelector = mkSelector "duration"

-- | @Selector@ for @metadata@
metadataSelector :: Selector '[] (Id NSDictionary)
metadataSelector = mkSelector "metadata"

-- | @Selector@ for @totalRiskScore@
totalRiskScoreSelector :: Selector '[] CUChar
totalRiskScoreSelector = mkSelector "totalRiskScore"

-- | @Selector@ for @totalRiskScoreFullRange@
totalRiskScoreFullRangeSelector :: Selector '[] CDouble
totalRiskScoreFullRangeSelector = mkSelector "totalRiskScoreFullRange"

-- | @Selector@ for @transmissionRiskLevel@
transmissionRiskLevelSelector :: Selector '[] CUChar
transmissionRiskLevelSelector = mkSelector "transmissionRiskLevel"

