{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | HKObjectType
--
-- An abstract class representing a type of object that can be stored by HealthKit.
--
-- Generated bindings for @HKObjectType@.
module ObjC.HealthKit.HKObjectType
  ( HKObjectType
  , IsHKObjectType(..)
  , init_
  , quantityTypeForIdentifier
  , categoryTypeForIdentifier
  , characteristicTypeForIdentifier
  , correlationTypeForIdentifier
  , documentTypeForIdentifier
  , seriesTypeForIdentifier
  , workoutType
  , activitySummaryType
  , audiogramSampleType
  , electrocardiogramType
  , visionPrescriptionType
  , requiresPerObjectAuthorization
  , clinicalTypeForIdentifier
  , identifier
  , activitySummaryTypeSelector
  , audiogramSampleTypeSelector
  , categoryTypeForIdentifierSelector
  , characteristicTypeForIdentifierSelector
  , clinicalTypeForIdentifierSelector
  , correlationTypeForIdentifierSelector
  , documentTypeForIdentifierSelector
  , electrocardiogramTypeSelector
  , identifierSelector
  , initSelector
  , quantityTypeForIdentifierSelector
  , requiresPerObjectAuthorizationSelector
  , seriesTypeForIdentifierSelector
  , visionPrescriptionTypeSelector
  , workoutTypeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.HealthKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsHKObjectType hkObjectType => hkObjectType -> IO (Id HKObjectType)
init_ hkObjectType =
  sendOwnedMessage hkObjectType initSelector

-- | @+ quantityTypeForIdentifier:@
quantityTypeForIdentifier :: IsNSString identifier => identifier -> IO (Id HKQuantityType)
quantityTypeForIdentifier identifier =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' quantityTypeForIdentifierSelector (toNSString identifier)

-- | @+ categoryTypeForIdentifier:@
categoryTypeForIdentifier :: IsNSString identifier => identifier -> IO (Id HKCategoryType)
categoryTypeForIdentifier identifier =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' categoryTypeForIdentifierSelector (toNSString identifier)

-- | @+ characteristicTypeForIdentifier:@
characteristicTypeForIdentifier :: IsNSString identifier => identifier -> IO (Id HKCharacteristicType)
characteristicTypeForIdentifier identifier =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' characteristicTypeForIdentifierSelector (toNSString identifier)

-- | @+ correlationTypeForIdentifier:@
correlationTypeForIdentifier :: IsNSString identifier => identifier -> IO (Id HKCorrelationType)
correlationTypeForIdentifier identifier =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' correlationTypeForIdentifierSelector (toNSString identifier)

-- | @+ documentTypeForIdentifier:@
documentTypeForIdentifier :: IsNSString identifier => identifier -> IO (Id HKDocumentType)
documentTypeForIdentifier identifier =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' documentTypeForIdentifierSelector (toNSString identifier)

-- | @+ seriesTypeForIdentifier:@
seriesTypeForIdentifier :: IsNSString identifier => identifier -> IO (Id HKSeriesType)
seriesTypeForIdentifier identifier =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' seriesTypeForIdentifierSelector (toNSString identifier)

-- | @+ workoutType@
workoutType :: IO (Id HKWorkoutType)
workoutType  =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' workoutTypeSelector

-- | @+ activitySummaryType@
activitySummaryType :: IO (Id HKActivitySummaryType)
activitySummaryType  =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' activitySummaryTypeSelector

-- | @+ audiogramSampleType@
audiogramSampleType :: IO (Id HKAudiogramSampleType)
audiogramSampleType  =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' audiogramSampleTypeSelector

-- | @+ electrocardiogramType@
electrocardiogramType :: IO (Id HKElectrocardiogramType)
electrocardiogramType  =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' electrocardiogramTypeSelector

-- | @+ visionPrescriptionType@
visionPrescriptionType :: IO (Id HKPrescriptionType)
visionPrescriptionType  =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' visionPrescriptionTypeSelector

-- | requiresPerObjectAuthorization
--
-- Returns YES if the authorization for the object type needs to be requested on per object basis.
--
-- ObjC selector: @- requiresPerObjectAuthorization@
requiresPerObjectAuthorization :: IsHKObjectType hkObjectType => hkObjectType -> IO Bool
requiresPerObjectAuthorization hkObjectType =
  sendMessage hkObjectType requiresPerObjectAuthorizationSelector

-- | @+ clinicalTypeForIdentifier:@
clinicalTypeForIdentifier :: IsNSString identifier => identifier -> IO (Id HKClinicalType)
clinicalTypeForIdentifier identifier =
  do
    cls' <- getRequiredClass "HKObjectType"
    sendClassMessage cls' clinicalTypeForIdentifierSelector (toNSString identifier)

-- | identifier
--
-- A unique string identifying a type of health object.
--
-- See HKTypeIdentifiers.h for possible values.
--
-- ObjC selector: @- identifier@
identifier :: IsHKObjectType hkObjectType => hkObjectType -> IO (Id NSString)
identifier hkObjectType =
  sendMessage hkObjectType identifierSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id HKObjectType)
initSelector = mkSelector "init"

-- | @Selector@ for @quantityTypeForIdentifier:@
quantityTypeForIdentifierSelector :: Selector '[Id NSString] (Id HKQuantityType)
quantityTypeForIdentifierSelector = mkSelector "quantityTypeForIdentifier:"

-- | @Selector@ for @categoryTypeForIdentifier:@
categoryTypeForIdentifierSelector :: Selector '[Id NSString] (Id HKCategoryType)
categoryTypeForIdentifierSelector = mkSelector "categoryTypeForIdentifier:"

-- | @Selector@ for @characteristicTypeForIdentifier:@
characteristicTypeForIdentifierSelector :: Selector '[Id NSString] (Id HKCharacteristicType)
characteristicTypeForIdentifierSelector = mkSelector "characteristicTypeForIdentifier:"

-- | @Selector@ for @correlationTypeForIdentifier:@
correlationTypeForIdentifierSelector :: Selector '[Id NSString] (Id HKCorrelationType)
correlationTypeForIdentifierSelector = mkSelector "correlationTypeForIdentifier:"

-- | @Selector@ for @documentTypeForIdentifier:@
documentTypeForIdentifierSelector :: Selector '[Id NSString] (Id HKDocumentType)
documentTypeForIdentifierSelector = mkSelector "documentTypeForIdentifier:"

-- | @Selector@ for @seriesTypeForIdentifier:@
seriesTypeForIdentifierSelector :: Selector '[Id NSString] (Id HKSeriesType)
seriesTypeForIdentifierSelector = mkSelector "seriesTypeForIdentifier:"

-- | @Selector@ for @workoutType@
workoutTypeSelector :: Selector '[] (Id HKWorkoutType)
workoutTypeSelector = mkSelector "workoutType"

-- | @Selector@ for @activitySummaryType@
activitySummaryTypeSelector :: Selector '[] (Id HKActivitySummaryType)
activitySummaryTypeSelector = mkSelector "activitySummaryType"

-- | @Selector@ for @audiogramSampleType@
audiogramSampleTypeSelector :: Selector '[] (Id HKAudiogramSampleType)
audiogramSampleTypeSelector = mkSelector "audiogramSampleType"

-- | @Selector@ for @electrocardiogramType@
electrocardiogramTypeSelector :: Selector '[] (Id HKElectrocardiogramType)
electrocardiogramTypeSelector = mkSelector "electrocardiogramType"

-- | @Selector@ for @visionPrescriptionType@
visionPrescriptionTypeSelector :: Selector '[] (Id HKPrescriptionType)
visionPrescriptionTypeSelector = mkSelector "visionPrescriptionType"

-- | @Selector@ for @requiresPerObjectAuthorization@
requiresPerObjectAuthorizationSelector :: Selector '[] Bool
requiresPerObjectAuthorizationSelector = mkSelector "requiresPerObjectAuthorization"

-- | @Selector@ for @clinicalTypeForIdentifier:@
clinicalTypeForIdentifierSelector :: Selector '[Id NSString] (Id HKClinicalType)
clinicalTypeForIdentifierSelector = mkSelector "clinicalTypeForIdentifier:"

-- | @Selector@ for @identifier@
identifierSelector :: Selector '[] (Id NSString)
identifierSelector = mkSelector "identifier"

