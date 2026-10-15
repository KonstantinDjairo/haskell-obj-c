{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A duration of up to 30 minutes during which beacons from a TEK were observed.
--
-- Generated bindings for @ENExposureWindow@.
module ObjC.ExposureNotification.ENExposureWindow
  ( ENExposureWindow
  , IsENExposureWindow(..)
  , calibrationConfidence
  , date
  , diagnosisReportType
  , infectiousness
  , scanInstances
  , variantOfConcernType
  , calibrationConfidenceSelector
  , dateSelector
  , diagnosisReportTypeSelector
  , infectiousnessSelector
  , scanInstancesSelector
  , variantOfConcernTypeSelector

  -- * Enum types
  , ENCalibrationConfidence(ENCalibrationConfidence)
  , pattern ENCalibrationConfidenceLowest
  , pattern ENCalibrationConfidenceLow
  , pattern ENCalibrationConfidenceMedium
  , pattern ENCalibrationConfidenceHigh
  , ENDiagnosisReportType(ENDiagnosisReportType)
  , pattern ENDiagnosisReportTypeUnknown
  , pattern ENDiagnosisReportTypeConfirmedTest
  , pattern ENDiagnosisReportTypeConfirmedClinicalDiagnosis
  , pattern ENDiagnosisReportTypeSelfReported
  , pattern ENDiagnosisReportTypeRecursive
  , pattern ENDiagnosisReportTypeRevoked
  , ENInfectiousness(ENInfectiousness)
  , pattern ENInfectiousnessNone
  , pattern ENInfectiousnessStandard
  , pattern ENInfectiousnessHigh
  , ENVariantOfConcernType(ENVariantOfConcernType)
  , pattern ENVariantOfConcernTypeUnknown
  , pattern ENVariantOfConcernType1
  , pattern ENVariantOfConcernType2
  , pattern ENVariantOfConcernType3
  , pattern ENVariantOfConcernType4

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

-- | Transmitting device's calibration confidence.
--
-- ObjC selector: @- calibrationConfidence@
calibrationConfidence :: IsENExposureWindow enExposureWindow => enExposureWindow -> IO ENCalibrationConfidence
calibrationConfidence enExposureWindow =
  sendMessage enExposureWindow calibrationConfidenceSelector

-- | Day the exposure occurred.
--
-- ObjC selector: @- date@
date :: IsENExposureWindow enExposureWindow => enExposureWindow -> IO (Id NSDate)
date enExposureWindow =
  sendMessage enExposureWindow dateSelector

-- | How positive diagnosis was reported for this the TEK observed for this window.
--
-- ObjC selector: @- diagnosisReportType@
diagnosisReportType :: IsENExposureWindow enExposureWindow => enExposureWindow -> IO ENDiagnosisReportType
diagnosisReportType enExposureWindow =
  sendMessage enExposureWindow diagnosisReportTypeSelector

-- | How infectious based on days since onset of symptoms.
--
-- ObjC selector: @- infectiousness@
infectiousness :: IsENExposureWindow enExposureWindow => enExposureWindow -> IO ENInfectiousness
infectiousness enExposureWindow =
  sendMessage enExposureWindow infectiousnessSelector

-- | Each scan instance corresponds to a scan (of a few seconds) when a beacon with a TEK causing this exposure was observed.
--
-- ObjC selector: @- scanInstances@
scanInstances :: IsENExposureWindow enExposureWindow => enExposureWindow -> IO (Id NSArray)
scanInstances enExposureWindow =
  sendMessage enExposureWindow scanInstancesSelector

-- | Type of variant of concern
--
-- ObjC selector: @- variantOfConcernType@
variantOfConcernType :: IsENExposureWindow enExposureWindow => enExposureWindow -> IO ENVariantOfConcernType
variantOfConcernType enExposureWindow =
  sendMessage enExposureWindow variantOfConcernTypeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @calibrationConfidence@
calibrationConfidenceSelector :: Selector '[] ENCalibrationConfidence
calibrationConfidenceSelector = mkSelector "calibrationConfidence"

-- | @Selector@ for @date@
dateSelector :: Selector '[] (Id NSDate)
dateSelector = mkSelector "date"

-- | @Selector@ for @diagnosisReportType@
diagnosisReportTypeSelector :: Selector '[] ENDiagnosisReportType
diagnosisReportTypeSelector = mkSelector "diagnosisReportType"

-- | @Selector@ for @infectiousness@
infectiousnessSelector :: Selector '[] ENInfectiousness
infectiousnessSelector = mkSelector "infectiousness"

-- | @Selector@ for @scanInstances@
scanInstancesSelector :: Selector '[] (Id NSArray)
scanInstancesSelector = mkSelector "scanInstances"

-- | @Selector@ for @variantOfConcernType@
variantOfConcernTypeSelector :: Selector '[] ENVariantOfConcernType
variantOfConcernTypeSelector = mkSelector "variantOfConcernType"

