{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Configuration parameters for exposure detection.
--
-- Configuration parameters are used to calculate an exposure duration for each exposure using the following formula.
--
-- exposureDuration = 		( ( immediateDuration * immediateDurationWeight ) + 		  ( nearDuration      * nearDurationWeight ) + 		  ( mediumDuration    * mediumDurationWeight ) + 		  ( otherDuration     * otherDurationWeight ) ) infectiousnessWeight ) reportTypeWeight )
--
-- Generated bindings for @ENExposureConfiguration@.
module ObjC.ExposureNotification.ENExposureConfiguration
  ( ENExposureConfiguration
  , IsENExposureConfiguration(..)
  , immediateDurationWeight
  , setImmediateDurationWeight
  , nearDurationWeight
  , setNearDurationWeight
  , mediumDurationWeight
  , setMediumDurationWeight
  , otherDurationWeight
  , setOtherDurationWeight
  , infectiousnessForDaysSinceOnsetOfSymptoms
  , setInfectiousnessForDaysSinceOnsetOfSymptoms
  , infectiousnessStandardWeight
  , setInfectiousnessStandardWeight
  , infectiousnessHighWeight
  , setInfectiousnessHighWeight
  , reportTypeConfirmedTestWeight
  , setReportTypeConfirmedTestWeight
  , reportTypeConfirmedClinicalDiagnosisWeight
  , setReportTypeConfirmedClinicalDiagnosisWeight
  , reportTypeSelfReportedWeight
  , setReportTypeSelfReportedWeight
  , reportTypeRecursiveWeight
  , setReportTypeRecursiveWeight
  , reportTypeNoneMap
  , setReportTypeNoneMap
  , attenuationDurationThresholds
  , setAttenuationDurationThresholds
  , daysSinceLastExposureThreshold
  , setDaysSinceLastExposureThreshold
  , minimumRiskScoreFullRange
  , setMinimumRiskScoreFullRange
  , attenuationLevelValues
  , setAttenuationLevelValues
  , attenuationWeight
  , setAttenuationWeight
  , daysSinceLastExposureLevelValues
  , setDaysSinceLastExposureLevelValues
  , daysSinceLastExposureWeight
  , setDaysSinceLastExposureWeight
  , durationLevelValues
  , setDurationLevelValues
  , durationWeight
  , setDurationWeight
  , metadata
  , setMetadata
  , minimumRiskScore
  , setMinimumRiskScore
  , transmissionRiskLevelValues
  , setTransmissionRiskLevelValues
  , transmissionRiskWeight
  , setTransmissionRiskWeight
  , attenuationDurationThresholdsSelector
  , attenuationLevelValuesSelector
  , attenuationWeightSelector
  , daysSinceLastExposureLevelValuesSelector
  , daysSinceLastExposureThresholdSelector
  , daysSinceLastExposureWeightSelector
  , durationLevelValuesSelector
  , durationWeightSelector
  , immediateDurationWeightSelector
  , infectiousnessForDaysSinceOnsetOfSymptomsSelector
  , infectiousnessHighWeightSelector
  , infectiousnessStandardWeightSelector
  , mediumDurationWeightSelector
  , metadataSelector
  , minimumRiskScoreFullRangeSelector
  , minimumRiskScoreSelector
  , nearDurationWeightSelector
  , otherDurationWeightSelector
  , reportTypeConfirmedClinicalDiagnosisWeightSelector
  , reportTypeConfirmedTestWeightSelector
  , reportTypeNoneMapSelector
  , reportTypeRecursiveWeightSelector
  , reportTypeSelfReportedWeightSelector
  , setAttenuationDurationThresholdsSelector
  , setAttenuationLevelValuesSelector
  , setAttenuationWeightSelector
  , setDaysSinceLastExposureLevelValuesSelector
  , setDaysSinceLastExposureThresholdSelector
  , setDaysSinceLastExposureWeightSelector
  , setDurationLevelValuesSelector
  , setDurationWeightSelector
  , setImmediateDurationWeightSelector
  , setInfectiousnessForDaysSinceOnsetOfSymptomsSelector
  , setInfectiousnessHighWeightSelector
  , setInfectiousnessStandardWeightSelector
  , setMediumDurationWeightSelector
  , setMetadataSelector
  , setMinimumRiskScoreFullRangeSelector
  , setMinimumRiskScoreSelector
  , setNearDurationWeightSelector
  , setOtherDurationWeightSelector
  , setReportTypeConfirmedClinicalDiagnosisWeightSelector
  , setReportTypeConfirmedTestWeightSelector
  , setReportTypeNoneMapSelector
  , setReportTypeRecursiveWeightSelector
  , setReportTypeSelfReportedWeightSelector
  , setTransmissionRiskLevelValuesSelector
  , setTransmissionRiskWeightSelector
  , transmissionRiskLevelValuesSelector
  , transmissionRiskWeightSelector

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

-- | Weights to apply to durations at each proximity level based on attenuation. Range is 0-250%.
--
-- ObjC selector: @- immediateDurationWeight@
immediateDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
immediateDurationWeight enExposureConfiguration =
  sendMessage enExposureConfiguration immediateDurationWeightSelector

-- | Weights to apply to durations at each proximity level based on attenuation. Range is 0-250%.
--
-- ObjC selector: @- setImmediateDurationWeight:@
setImmediateDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setImmediateDurationWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setImmediateDurationWeightSelector value

-- | @- nearDurationWeight@
nearDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
nearDurationWeight enExposureConfiguration =
  sendMessage enExposureConfiguration nearDurationWeightSelector

-- | @- setNearDurationWeight:@
setNearDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setNearDurationWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setNearDurationWeightSelector value

-- | @- mediumDurationWeight@
mediumDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
mediumDurationWeight enExposureConfiguration =
  sendMessage enExposureConfiguration mediumDurationWeightSelector

-- | @- setMediumDurationWeight:@
setMediumDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setMediumDurationWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setMediumDurationWeightSelector value

-- | @- otherDurationWeight@
otherDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
otherDurationWeight enExposureConfiguration =
  sendMessage enExposureConfiguration otherDurationWeightSelector

-- | @- setOtherDurationWeight:@
setOtherDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setOtherDurationWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setOtherDurationWeightSelector value

-- | Maps daysSinceOnsetOfSymptoms to infectiousness. Must be configured if using V2 scoring. Key is a daysSinceOnsetOfSymptoms: -14 to 14. Value is an ENInfectiousness. Defaults to ENInfectiousnessNone for days not specified. If a value is set to ENInfectiousnessNone, diagnosis keys for it should be ignored.
--
-- ObjC selector: @- infectiousnessForDaysSinceOnsetOfSymptoms@
infectiousnessForDaysSinceOnsetOfSymptoms :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO (Id NSDictionary)
infectiousnessForDaysSinceOnsetOfSymptoms enExposureConfiguration =
  sendMessage enExposureConfiguration infectiousnessForDaysSinceOnsetOfSymptomsSelector

-- | Maps daysSinceOnsetOfSymptoms to infectiousness. Must be configured if using V2 scoring. Key is a daysSinceOnsetOfSymptoms: -14 to 14. Value is an ENInfectiousness. Defaults to ENInfectiousnessNone for days not specified. If a value is set to ENInfectiousnessNone, diagnosis keys for it should be ignored.
--
-- ObjC selector: @- setInfectiousnessForDaysSinceOnsetOfSymptoms:@
setInfectiousnessForDaysSinceOnsetOfSymptoms :: (IsENExposureConfiguration enExposureConfiguration, IsNSDictionary value) => enExposureConfiguration -> value -> IO ()
setInfectiousnessForDaysSinceOnsetOfSymptoms enExposureConfiguration value =
  sendMessage enExposureConfiguration setInfectiousnessForDaysSinceOnsetOfSymptomsSelector (toNSDictionary value)

-- | Weights to apply for infectiousness. Range is 0-250%.
--
-- ObjC selector: @- infectiousnessStandardWeight@
infectiousnessStandardWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
infectiousnessStandardWeight enExposureConfiguration =
  sendMessage enExposureConfiguration infectiousnessStandardWeightSelector

-- | Weights to apply for infectiousness. Range is 0-250%.
--
-- ObjC selector: @- setInfectiousnessStandardWeight:@
setInfectiousnessStandardWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setInfectiousnessStandardWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setInfectiousnessStandardWeightSelector value

-- | @- infectiousnessHighWeight@
infectiousnessHighWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
infectiousnessHighWeight enExposureConfiguration =
  sendMessage enExposureConfiguration infectiousnessHighWeightSelector

-- | @- setInfectiousnessHighWeight:@
setInfectiousnessHighWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setInfectiousnessHighWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setInfectiousnessHighWeightSelector value

-- | Weights to apply for each report type. Range is 0-250%.
--
-- ObjC selector: @- reportTypeConfirmedTestWeight@
reportTypeConfirmedTestWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
reportTypeConfirmedTestWeight enExposureConfiguration =
  sendMessage enExposureConfiguration reportTypeConfirmedTestWeightSelector

-- | Weights to apply for each report type. Range is 0-250%.
--
-- ObjC selector: @- setReportTypeConfirmedTestWeight:@
setReportTypeConfirmedTestWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setReportTypeConfirmedTestWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setReportTypeConfirmedTestWeightSelector value

-- | @- reportTypeConfirmedClinicalDiagnosisWeight@
reportTypeConfirmedClinicalDiagnosisWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
reportTypeConfirmedClinicalDiagnosisWeight enExposureConfiguration =
  sendMessage enExposureConfiguration reportTypeConfirmedClinicalDiagnosisWeightSelector

-- | @- setReportTypeConfirmedClinicalDiagnosisWeight:@
setReportTypeConfirmedClinicalDiagnosisWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setReportTypeConfirmedClinicalDiagnosisWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setReportTypeConfirmedClinicalDiagnosisWeightSelector value

-- | @- reportTypeSelfReportedWeight@
reportTypeSelfReportedWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
reportTypeSelfReportedWeight enExposureConfiguration =
  sendMessage enExposureConfiguration reportTypeSelfReportedWeightSelector

-- | @- setReportTypeSelfReportedWeight:@
setReportTypeSelfReportedWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setReportTypeSelfReportedWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setReportTypeSelfReportedWeightSelector value

-- | @- reportTypeRecursiveWeight@
reportTypeRecursiveWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
reportTypeRecursiveWeight enExposureConfiguration =
  sendMessage enExposureConfiguration reportTypeRecursiveWeightSelector

-- | @- setReportTypeRecursiveWeight:@
setReportTypeRecursiveWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setReportTypeRecursiveWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setReportTypeRecursiveWeightSelector value

-- | Maps scenarios when Report Type is not present into one of the available report types. If this is set to ENDiagnosisReportTypeUnknown, the key will be ignored if it does not contain a report type.
--
-- ObjC selector: @- reportTypeNoneMap@
reportTypeNoneMap :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO ENDiagnosisReportType
reportTypeNoneMap enExposureConfiguration =
  sendMessage enExposureConfiguration reportTypeNoneMapSelector

-- | Maps scenarios when Report Type is not present into one of the available report types. If this is set to ENDiagnosisReportTypeUnknown, the key will be ignored if it does not contain a report type.
--
-- ObjC selector: @- setReportTypeNoneMap:@
setReportTypeNoneMap :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> ENDiagnosisReportType -> IO ()
setReportTypeNoneMap enExposureConfiguration value =
  sendMessage enExposureConfiguration setReportTypeNoneMapSelector value

-- | Thresholds for calculating attenuationDurations. Defaults to [50, 70, 90].
--
-- Index		|0	|1	|2		 Variable	|X	|Y	|Z
--
-- ObjC selector: @- attenuationDurationThresholds@
attenuationDurationThresholds :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO (Id NSArray)
attenuationDurationThresholds enExposureConfiguration =
  sendMessage enExposureConfiguration attenuationDurationThresholdsSelector

-- | Thresholds for calculating attenuationDurations. Defaults to [50, 70, 90].
--
-- Index		|0	|1	|2		 Variable	|X	|Y	|Z
--
-- ObjC selector: @- setAttenuationDurationThresholds:@
setAttenuationDurationThresholds :: (IsENExposureConfiguration enExposureConfiguration, IsNSArray value) => enExposureConfiguration -> value -> IO ()
setAttenuationDurationThresholds enExposureConfiguration value =
  sendMessage enExposureConfiguration setAttenuationDurationThresholdsSelector (toNSArray value)

-- | Exclude exposures with daysSinceLastExposure > this value. Defaults to 0 (don't filter).
--
-- ObjC selector: @- daysSinceLastExposureThreshold@
daysSinceLastExposureThreshold :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CLong
daysSinceLastExposureThreshold enExposureConfiguration =
  sendMessage enExposureConfiguration daysSinceLastExposureThresholdSelector

-- | Exclude exposures with daysSinceLastExposure > this value. Defaults to 0 (don't filter).
--
-- ObjC selector: @- setDaysSinceLastExposureThreshold:@
setDaysSinceLastExposureThreshold :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CLong -> IO ()
setDaysSinceLastExposureThreshold enExposureConfiguration value =
  sendMessage enExposureConfiguration setDaysSinceLastExposureThresholdSelector value

-- | Minimum risk score. Excludes exposure incidents with scores lower than this. Full range and not capped to ENRiskScore.
--
-- ObjC selector: @- minimumRiskScoreFullRange@
minimumRiskScoreFullRange :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
minimumRiskScoreFullRange enExposureConfiguration =
  sendMessage enExposureConfiguration minimumRiskScoreFullRangeSelector

-- | Minimum risk score. Excludes exposure incidents with scores lower than this. Full range and not capped to ENRiskScore.
--
-- ObjC selector: @- setMinimumRiskScoreFullRange:@
setMinimumRiskScoreFullRange :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setMinimumRiskScoreFullRange enExposureConfiguration value =
  sendMessage enExposureConfiguration setMinimumRiskScoreFullRangeSelector value

-- | @- attenuationLevelValues@
attenuationLevelValues :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO (Id NSArray)
attenuationLevelValues enExposureConfiguration =
  sendMessage enExposureConfiguration attenuationLevelValuesSelector

-- | @- setAttenuationLevelValues:@
setAttenuationLevelValues :: (IsENExposureConfiguration enExposureConfiguration, IsNSArray value) => enExposureConfiguration -> value -> IO ()
setAttenuationLevelValues enExposureConfiguration value =
  sendMessage enExposureConfiguration setAttenuationLevelValuesSelector (toNSArray value)

-- | @- attenuationWeight@
attenuationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
attenuationWeight enExposureConfiguration =
  sendMessage enExposureConfiguration attenuationWeightSelector

-- | @- setAttenuationWeight:@
setAttenuationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setAttenuationWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setAttenuationWeightSelector value

-- | @- daysSinceLastExposureLevelValues@
daysSinceLastExposureLevelValues :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO (Id NSArray)
daysSinceLastExposureLevelValues enExposureConfiguration =
  sendMessage enExposureConfiguration daysSinceLastExposureLevelValuesSelector

-- | @- setDaysSinceLastExposureLevelValues:@
setDaysSinceLastExposureLevelValues :: (IsENExposureConfiguration enExposureConfiguration, IsNSArray value) => enExposureConfiguration -> value -> IO ()
setDaysSinceLastExposureLevelValues enExposureConfiguration value =
  sendMessage enExposureConfiguration setDaysSinceLastExposureLevelValuesSelector (toNSArray value)

-- | @- daysSinceLastExposureWeight@
daysSinceLastExposureWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
daysSinceLastExposureWeight enExposureConfiguration =
  sendMessage enExposureConfiguration daysSinceLastExposureWeightSelector

-- | @- setDaysSinceLastExposureWeight:@
setDaysSinceLastExposureWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setDaysSinceLastExposureWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setDaysSinceLastExposureWeightSelector value

-- | @- durationLevelValues@
durationLevelValues :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO (Id NSArray)
durationLevelValues enExposureConfiguration =
  sendMessage enExposureConfiguration durationLevelValuesSelector

-- | @- setDurationLevelValues:@
setDurationLevelValues :: (IsENExposureConfiguration enExposureConfiguration, IsNSArray value) => enExposureConfiguration -> value -> IO ()
setDurationLevelValues enExposureConfiguration value =
  sendMessage enExposureConfiguration setDurationLevelValuesSelector (toNSArray value)

-- | @- durationWeight@
durationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
durationWeight enExposureConfiguration =
  sendMessage enExposureConfiguration durationWeightSelector

-- | @- setDurationWeight:@
setDurationWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setDurationWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setDurationWeightSelector value

-- | @- metadata@
metadata :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO (Id NSDictionary)
metadata enExposureConfiguration =
  sendMessage enExposureConfiguration metadataSelector

-- | @- setMetadata:@
setMetadata :: (IsENExposureConfiguration enExposureConfiguration, IsNSDictionary value) => enExposureConfiguration -> value -> IO ()
setMetadata enExposureConfiguration value =
  sendMessage enExposureConfiguration setMetadataSelector (toNSDictionary value)

-- | @- minimumRiskScore@
minimumRiskScore :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CUChar
minimumRiskScore enExposureConfiguration =
  sendMessage enExposureConfiguration minimumRiskScoreSelector

-- | @- setMinimumRiskScore:@
setMinimumRiskScore :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CUChar -> IO ()
setMinimumRiskScore enExposureConfiguration value =
  sendMessage enExposureConfiguration setMinimumRiskScoreSelector value

-- | @- transmissionRiskLevelValues@
transmissionRiskLevelValues :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO (Id NSArray)
transmissionRiskLevelValues enExposureConfiguration =
  sendMessage enExposureConfiguration transmissionRiskLevelValuesSelector

-- | @- setTransmissionRiskLevelValues:@
setTransmissionRiskLevelValues :: (IsENExposureConfiguration enExposureConfiguration, IsNSArray value) => enExposureConfiguration -> value -> IO ()
setTransmissionRiskLevelValues enExposureConfiguration value =
  sendMessage enExposureConfiguration setTransmissionRiskLevelValuesSelector (toNSArray value)

-- | @- transmissionRiskWeight@
transmissionRiskWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> IO CDouble
transmissionRiskWeight enExposureConfiguration =
  sendMessage enExposureConfiguration transmissionRiskWeightSelector

-- | @- setTransmissionRiskWeight:@
setTransmissionRiskWeight :: IsENExposureConfiguration enExposureConfiguration => enExposureConfiguration -> CDouble -> IO ()
setTransmissionRiskWeight enExposureConfiguration value =
  sendMessage enExposureConfiguration setTransmissionRiskWeightSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @immediateDurationWeight@
immediateDurationWeightSelector :: Selector '[] CDouble
immediateDurationWeightSelector = mkSelector "immediateDurationWeight"

-- | @Selector@ for @setImmediateDurationWeight:@
setImmediateDurationWeightSelector :: Selector '[CDouble] ()
setImmediateDurationWeightSelector = mkSelector "setImmediateDurationWeight:"

-- | @Selector@ for @nearDurationWeight@
nearDurationWeightSelector :: Selector '[] CDouble
nearDurationWeightSelector = mkSelector "nearDurationWeight"

-- | @Selector@ for @setNearDurationWeight:@
setNearDurationWeightSelector :: Selector '[CDouble] ()
setNearDurationWeightSelector = mkSelector "setNearDurationWeight:"

-- | @Selector@ for @mediumDurationWeight@
mediumDurationWeightSelector :: Selector '[] CDouble
mediumDurationWeightSelector = mkSelector "mediumDurationWeight"

-- | @Selector@ for @setMediumDurationWeight:@
setMediumDurationWeightSelector :: Selector '[CDouble] ()
setMediumDurationWeightSelector = mkSelector "setMediumDurationWeight:"

-- | @Selector@ for @otherDurationWeight@
otherDurationWeightSelector :: Selector '[] CDouble
otherDurationWeightSelector = mkSelector "otherDurationWeight"

-- | @Selector@ for @setOtherDurationWeight:@
setOtherDurationWeightSelector :: Selector '[CDouble] ()
setOtherDurationWeightSelector = mkSelector "setOtherDurationWeight:"

-- | @Selector@ for @infectiousnessForDaysSinceOnsetOfSymptoms@
infectiousnessForDaysSinceOnsetOfSymptomsSelector :: Selector '[] (Id NSDictionary)
infectiousnessForDaysSinceOnsetOfSymptomsSelector = mkSelector "infectiousnessForDaysSinceOnsetOfSymptoms"

-- | @Selector@ for @setInfectiousnessForDaysSinceOnsetOfSymptoms:@
setInfectiousnessForDaysSinceOnsetOfSymptomsSelector :: Selector '[Id NSDictionary] ()
setInfectiousnessForDaysSinceOnsetOfSymptomsSelector = mkSelector "setInfectiousnessForDaysSinceOnsetOfSymptoms:"

-- | @Selector@ for @infectiousnessStandardWeight@
infectiousnessStandardWeightSelector :: Selector '[] CDouble
infectiousnessStandardWeightSelector = mkSelector "infectiousnessStandardWeight"

-- | @Selector@ for @setInfectiousnessStandardWeight:@
setInfectiousnessStandardWeightSelector :: Selector '[CDouble] ()
setInfectiousnessStandardWeightSelector = mkSelector "setInfectiousnessStandardWeight:"

-- | @Selector@ for @infectiousnessHighWeight@
infectiousnessHighWeightSelector :: Selector '[] CDouble
infectiousnessHighWeightSelector = mkSelector "infectiousnessHighWeight"

-- | @Selector@ for @setInfectiousnessHighWeight:@
setInfectiousnessHighWeightSelector :: Selector '[CDouble] ()
setInfectiousnessHighWeightSelector = mkSelector "setInfectiousnessHighWeight:"

-- | @Selector@ for @reportTypeConfirmedTestWeight@
reportTypeConfirmedTestWeightSelector :: Selector '[] CDouble
reportTypeConfirmedTestWeightSelector = mkSelector "reportTypeConfirmedTestWeight"

-- | @Selector@ for @setReportTypeConfirmedTestWeight:@
setReportTypeConfirmedTestWeightSelector :: Selector '[CDouble] ()
setReportTypeConfirmedTestWeightSelector = mkSelector "setReportTypeConfirmedTestWeight:"

-- | @Selector@ for @reportTypeConfirmedClinicalDiagnosisWeight@
reportTypeConfirmedClinicalDiagnosisWeightSelector :: Selector '[] CDouble
reportTypeConfirmedClinicalDiagnosisWeightSelector = mkSelector "reportTypeConfirmedClinicalDiagnosisWeight"

-- | @Selector@ for @setReportTypeConfirmedClinicalDiagnosisWeight:@
setReportTypeConfirmedClinicalDiagnosisWeightSelector :: Selector '[CDouble] ()
setReportTypeConfirmedClinicalDiagnosisWeightSelector = mkSelector "setReportTypeConfirmedClinicalDiagnosisWeight:"

-- | @Selector@ for @reportTypeSelfReportedWeight@
reportTypeSelfReportedWeightSelector :: Selector '[] CDouble
reportTypeSelfReportedWeightSelector = mkSelector "reportTypeSelfReportedWeight"

-- | @Selector@ for @setReportTypeSelfReportedWeight:@
setReportTypeSelfReportedWeightSelector :: Selector '[CDouble] ()
setReportTypeSelfReportedWeightSelector = mkSelector "setReportTypeSelfReportedWeight:"

-- | @Selector@ for @reportTypeRecursiveWeight@
reportTypeRecursiveWeightSelector :: Selector '[] CDouble
reportTypeRecursiveWeightSelector = mkSelector "reportTypeRecursiveWeight"

-- | @Selector@ for @setReportTypeRecursiveWeight:@
setReportTypeRecursiveWeightSelector :: Selector '[CDouble] ()
setReportTypeRecursiveWeightSelector = mkSelector "setReportTypeRecursiveWeight:"

-- | @Selector@ for @reportTypeNoneMap@
reportTypeNoneMapSelector :: Selector '[] ENDiagnosisReportType
reportTypeNoneMapSelector = mkSelector "reportTypeNoneMap"

-- | @Selector@ for @setReportTypeNoneMap:@
setReportTypeNoneMapSelector :: Selector '[ENDiagnosisReportType] ()
setReportTypeNoneMapSelector = mkSelector "setReportTypeNoneMap:"

-- | @Selector@ for @attenuationDurationThresholds@
attenuationDurationThresholdsSelector :: Selector '[] (Id NSArray)
attenuationDurationThresholdsSelector = mkSelector "attenuationDurationThresholds"

-- | @Selector@ for @setAttenuationDurationThresholds:@
setAttenuationDurationThresholdsSelector :: Selector '[Id NSArray] ()
setAttenuationDurationThresholdsSelector = mkSelector "setAttenuationDurationThresholds:"

-- | @Selector@ for @daysSinceLastExposureThreshold@
daysSinceLastExposureThresholdSelector :: Selector '[] CLong
daysSinceLastExposureThresholdSelector = mkSelector "daysSinceLastExposureThreshold"

-- | @Selector@ for @setDaysSinceLastExposureThreshold:@
setDaysSinceLastExposureThresholdSelector :: Selector '[CLong] ()
setDaysSinceLastExposureThresholdSelector = mkSelector "setDaysSinceLastExposureThreshold:"

-- | @Selector@ for @minimumRiskScoreFullRange@
minimumRiskScoreFullRangeSelector :: Selector '[] CDouble
minimumRiskScoreFullRangeSelector = mkSelector "minimumRiskScoreFullRange"

-- | @Selector@ for @setMinimumRiskScoreFullRange:@
setMinimumRiskScoreFullRangeSelector :: Selector '[CDouble] ()
setMinimumRiskScoreFullRangeSelector = mkSelector "setMinimumRiskScoreFullRange:"

-- | @Selector@ for @attenuationLevelValues@
attenuationLevelValuesSelector :: Selector '[] (Id NSArray)
attenuationLevelValuesSelector = mkSelector "attenuationLevelValues"

-- | @Selector@ for @setAttenuationLevelValues:@
setAttenuationLevelValuesSelector :: Selector '[Id NSArray] ()
setAttenuationLevelValuesSelector = mkSelector "setAttenuationLevelValues:"

-- | @Selector@ for @attenuationWeight@
attenuationWeightSelector :: Selector '[] CDouble
attenuationWeightSelector = mkSelector "attenuationWeight"

-- | @Selector@ for @setAttenuationWeight:@
setAttenuationWeightSelector :: Selector '[CDouble] ()
setAttenuationWeightSelector = mkSelector "setAttenuationWeight:"

-- | @Selector@ for @daysSinceLastExposureLevelValues@
daysSinceLastExposureLevelValuesSelector :: Selector '[] (Id NSArray)
daysSinceLastExposureLevelValuesSelector = mkSelector "daysSinceLastExposureLevelValues"

-- | @Selector@ for @setDaysSinceLastExposureLevelValues:@
setDaysSinceLastExposureLevelValuesSelector :: Selector '[Id NSArray] ()
setDaysSinceLastExposureLevelValuesSelector = mkSelector "setDaysSinceLastExposureLevelValues:"

-- | @Selector@ for @daysSinceLastExposureWeight@
daysSinceLastExposureWeightSelector :: Selector '[] CDouble
daysSinceLastExposureWeightSelector = mkSelector "daysSinceLastExposureWeight"

-- | @Selector@ for @setDaysSinceLastExposureWeight:@
setDaysSinceLastExposureWeightSelector :: Selector '[CDouble] ()
setDaysSinceLastExposureWeightSelector = mkSelector "setDaysSinceLastExposureWeight:"

-- | @Selector@ for @durationLevelValues@
durationLevelValuesSelector :: Selector '[] (Id NSArray)
durationLevelValuesSelector = mkSelector "durationLevelValues"

-- | @Selector@ for @setDurationLevelValues:@
setDurationLevelValuesSelector :: Selector '[Id NSArray] ()
setDurationLevelValuesSelector = mkSelector "setDurationLevelValues:"

-- | @Selector@ for @durationWeight@
durationWeightSelector :: Selector '[] CDouble
durationWeightSelector = mkSelector "durationWeight"

-- | @Selector@ for @setDurationWeight:@
setDurationWeightSelector :: Selector '[CDouble] ()
setDurationWeightSelector = mkSelector "setDurationWeight:"

-- | @Selector@ for @metadata@
metadataSelector :: Selector '[] (Id NSDictionary)
metadataSelector = mkSelector "metadata"

-- | @Selector@ for @setMetadata:@
setMetadataSelector :: Selector '[Id NSDictionary] ()
setMetadataSelector = mkSelector "setMetadata:"

-- | @Selector@ for @minimumRiskScore@
minimumRiskScoreSelector :: Selector '[] CUChar
minimumRiskScoreSelector = mkSelector "minimumRiskScore"

-- | @Selector@ for @setMinimumRiskScore:@
setMinimumRiskScoreSelector :: Selector '[CUChar] ()
setMinimumRiskScoreSelector = mkSelector "setMinimumRiskScore:"

-- | @Selector@ for @transmissionRiskLevelValues@
transmissionRiskLevelValuesSelector :: Selector '[] (Id NSArray)
transmissionRiskLevelValuesSelector = mkSelector "transmissionRiskLevelValues"

-- | @Selector@ for @setTransmissionRiskLevelValues:@
setTransmissionRiskLevelValuesSelector :: Selector '[Id NSArray] ()
setTransmissionRiskLevelValuesSelector = mkSelector "setTransmissionRiskLevelValues:"

-- | @Selector@ for @transmissionRiskWeight@
transmissionRiskWeightSelector :: Selector '[] CDouble
transmissionRiskWeightSelector = mkSelector "transmissionRiskWeight"

-- | @Selector@ for @setTransmissionRiskWeight:@
setTransmissionRiskWeightSelector :: Selector '[CDouble] ()
setTransmissionRiskWeightSelector = mkSelector "setTransmissionRiskWeight:"

