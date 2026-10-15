{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.HealthKit.Internal.Classes (
    module ObjC.HealthKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
    module ObjC.UniformTypeIdentifiers.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes
import ObjC.UniformTypeIdentifiers.Internal.Classes

-- ---------- HKActivityMoveModeObject ----------

-- | HKActivityMoveModeObject
--
-- A wrapper object for HKActivityMoveMode enumeration.
-- 
-- Phantom type for @HKActivityMoveModeObject@.
data HKActivityMoveModeObject

instance IsObjCObject (Id HKActivityMoveModeObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKActivityMoveModeObject"

class IsNSObject a => IsHKActivityMoveModeObject a where
  toHKActivityMoveModeObject :: a -> Id HKActivityMoveModeObject

instance IsHKActivityMoveModeObject (Id HKActivityMoveModeObject) where
  toHKActivityMoveModeObject = unsafeCastId

instance IsNSObject (Id HKActivityMoveModeObject) where
  toNSObject = unsafeCastId

-- ---------- HKActivitySummary ----------

-- | HKActivitySummary
--
-- An object that represents a summary of a user's activity for a given day.
-- 
-- Phantom type for @HKActivitySummary@.
data HKActivitySummary

instance IsObjCObject (Id HKActivitySummary) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKActivitySummary"

class IsNSObject a => IsHKActivitySummary a where
  toHKActivitySummary :: a -> Id HKActivitySummary

instance IsHKActivitySummary (Id HKActivitySummary) where
  toHKActivitySummary = unsafeCastId

instance IsNSObject (Id HKActivitySummary) where
  toNSObject = unsafeCastId

-- ---------- HKAttachment ----------

-- | HKAttachment
--
-- An HKAttachment represents a file attachment stored in the HealthKit database.
-- 
-- Phantom type for @HKAttachment@.
data HKAttachment

instance IsObjCObject (Id HKAttachment) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKAttachment"

class IsNSObject a => IsHKAttachment a where
  toHKAttachment :: a -> Id HKAttachment

instance IsHKAttachment (Id HKAttachment) where
  toHKAttachment = unsafeCastId

instance IsNSObject (Id HKAttachment) where
  toNSObject = unsafeCastId

-- ---------- HKAttachmentStore ----------

-- | HKAttachmentStore
--
-- The HKAttachmentStore class provides an interface for accessing and storing HKAttachment objects.
-- 
-- Phantom type for @HKAttachmentStore@.
data HKAttachmentStore

instance IsObjCObject (Id HKAttachmentStore) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKAttachmentStore"

class IsNSObject a => IsHKAttachmentStore a where
  toHKAttachmentStore :: a -> Id HKAttachmentStore

instance IsHKAttachmentStore (Id HKAttachmentStore) where
  toHKAttachmentStore = unsafeCastId

instance IsNSObject (Id HKAttachmentStore) where
  toNSObject = unsafeCastId

-- ---------- HKAudiogramSensitivityPoint ----------

-- | Phantom type for @HKAudiogramSensitivityPoint@.
data HKAudiogramSensitivityPoint

instance IsObjCObject (Id HKAudiogramSensitivityPoint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKAudiogramSensitivityPoint"

class IsNSObject a => IsHKAudiogramSensitivityPoint a where
  toHKAudiogramSensitivityPoint :: a -> Id HKAudiogramSensitivityPoint

instance IsHKAudiogramSensitivityPoint (Id HKAudiogramSensitivityPoint) where
  toHKAudiogramSensitivityPoint = unsafeCastId

instance IsNSObject (Id HKAudiogramSensitivityPoint) where
  toNSObject = unsafeCastId

-- ---------- HKBiologicalSexObject ----------

-- | HKBiologicalSexObject
--
-- A wrapper object for HKBiologicalSex enumeration.
-- 
-- Phantom type for @HKBiologicalSexObject@.
data HKBiologicalSexObject

instance IsObjCObject (Id HKBiologicalSexObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKBiologicalSexObject"

class IsNSObject a => IsHKBiologicalSexObject a where
  toHKBiologicalSexObject :: a -> Id HKBiologicalSexObject

instance IsHKBiologicalSexObject (Id HKBiologicalSexObject) where
  toHKBiologicalSexObject = unsafeCastId

instance IsNSObject (Id HKBiologicalSexObject) where
  toNSObject = unsafeCastId

-- ---------- HKBloodTypeObject ----------

-- | HKBloodTypeObject
--
-- A wrapper object for HKBloodType enumeration.
-- 
-- Phantom type for @HKBloodTypeObject@.
data HKBloodTypeObject

instance IsObjCObject (Id HKBloodTypeObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKBloodTypeObject"

class IsNSObject a => IsHKBloodTypeObject a where
  toHKBloodTypeObject :: a -> Id HKBloodTypeObject

instance IsHKBloodTypeObject (Id HKBloodTypeObject) where
  toHKBloodTypeObject = unsafeCastId

instance IsNSObject (Id HKBloodTypeObject) where
  toNSObject = unsafeCastId

-- ---------- HKCDADocument ----------

-- | Phantom type for @HKCDADocument@.
data HKCDADocument

instance IsObjCObject (Id HKCDADocument) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCDADocument"

class IsNSObject a => IsHKCDADocument a where
  toHKCDADocument :: a -> Id HKCDADocument

instance IsHKCDADocument (Id HKCDADocument) where
  toHKCDADocument = unsafeCastId

instance IsNSObject (Id HKCDADocument) where
  toNSObject = unsafeCastId

-- ---------- HKDeletedObject ----------

-- | HKDeletedObject
--
-- A class representing an HKObject that was deleted from the HealtKit database.
-- 
-- Phantom type for @HKDeletedObject@.
data HKDeletedObject

instance IsObjCObject (Id HKDeletedObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKDeletedObject"

class IsNSObject a => IsHKDeletedObject a where
  toHKDeletedObject :: a -> Id HKDeletedObject

instance IsHKDeletedObject (Id HKDeletedObject) where
  toHKDeletedObject = unsafeCastId

instance IsNSObject (Id HKDeletedObject) where
  toNSObject = unsafeCastId

-- ---------- HKDevice ----------

-- | Phantom type for @HKDevice@.
data HKDevice

instance IsObjCObject (Id HKDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKDevice"

class IsNSObject a => IsHKDevice a where
  toHKDevice :: a -> Id HKDevice

instance IsHKDevice (Id HKDevice) where
  toHKDevice = unsafeCastId

instance IsNSObject (Id HKDevice) where
  toNSObject = unsafeCastId

-- ---------- HKElectrocardiogramVoltageMeasurement ----------

-- | HKElectrocardiogramVoltageMeasurement
--
-- An HKElectrocardiogramVoltageMeasurement contains voltage quantities for all leads at a single instance of measurement.
--
-- Each HKElectrocardiogramVoltageMeasurement object corresponds to the voltage quantities across all leads for a given instance in time.
-- 
-- Phantom type for @HKElectrocardiogramVoltageMeasurement@.
data HKElectrocardiogramVoltageMeasurement

instance IsObjCObject (Id HKElectrocardiogramVoltageMeasurement) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKElectrocardiogramVoltageMeasurement"

class IsNSObject a => IsHKElectrocardiogramVoltageMeasurement a where
  toHKElectrocardiogramVoltageMeasurement :: a -> Id HKElectrocardiogramVoltageMeasurement

instance IsHKElectrocardiogramVoltageMeasurement (Id HKElectrocardiogramVoltageMeasurement) where
  toHKElectrocardiogramVoltageMeasurement = unsafeCastId

instance IsNSObject (Id HKElectrocardiogramVoltageMeasurement) where
  toNSObject = unsafeCastId

-- ---------- HKFHIRResource ----------

-- | HKFHIRResource
--
-- The HKFHIRResource class encapsulates a FHIR (Fast Healthcare Interoperability Resources) resource.
-- 
-- Phantom type for @HKFHIRResource@.
data HKFHIRResource

instance IsObjCObject (Id HKFHIRResource) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKFHIRResource"

class IsNSObject a => IsHKFHIRResource a where
  toHKFHIRResource :: a -> Id HKFHIRResource

instance IsHKFHIRResource (Id HKFHIRResource) where
  toHKFHIRResource = unsafeCastId

instance IsNSObject (Id HKFHIRResource) where
  toNSObject = unsafeCastId

-- ---------- HKFHIRVersion ----------

-- | HKFHIRVersion
--
-- Represents a FHIR version.
--
-- FHIR uses semantic versions ("1.0.2", "4.0.1") to communicate which FHIR version a server supports or a                given resource is represented in. A FHIR version is associated with one FHIR release.
--
-- See: http://hl7.org/fhir/versions.html#versions
-- 
-- Phantom type for @HKFHIRVersion@.
data HKFHIRVersion

instance IsObjCObject (Id HKFHIRVersion) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKFHIRVersion"

class IsNSObject a => IsHKFHIRVersion a where
  toHKFHIRVersion :: a -> Id HKFHIRVersion

instance IsHKFHIRVersion (Id HKFHIRVersion) where
  toHKFHIRVersion = unsafeCastId

instance IsNSObject (Id HKFHIRVersion) where
  toNSObject = unsafeCastId

-- ---------- HKFitzpatrickSkinTypeObject ----------

-- | HKFitzpatrickSkinTypeObject
--
-- A wrapper object for HKFitzpatrickSkinType enumeration.
-- 
-- Phantom type for @HKFitzpatrickSkinTypeObject@.
data HKFitzpatrickSkinTypeObject

instance IsObjCObject (Id HKFitzpatrickSkinTypeObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKFitzpatrickSkinTypeObject"

class IsNSObject a => IsHKFitzpatrickSkinTypeObject a where
  toHKFitzpatrickSkinTypeObject :: a -> Id HKFitzpatrickSkinTypeObject

instance IsHKFitzpatrickSkinTypeObject (Id HKFitzpatrickSkinTypeObject) where
  toHKFitzpatrickSkinTypeObject = unsafeCastId

instance IsNSObject (Id HKFitzpatrickSkinTypeObject) where
  toNSObject = unsafeCastId

-- ---------- HKHealthStore ----------

-- | HKHealthStore
--
-- The HKHealthStore class provides an interface for accessing and storing the user's health data.
-- 
-- Phantom type for @HKHealthStore@.
data HKHealthStore

instance IsObjCObject (Id HKHealthStore) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKHealthStore"

class IsNSObject a => IsHKHealthStore a where
  toHKHealthStore :: a -> Id HKHealthStore

instance IsHKHealthStore (Id HKHealthStore) where
  toHKHealthStore = unsafeCastId

instance IsNSObject (Id HKHealthStore) where
  toNSObject = unsafeCastId

-- ---------- HKLensSpecification ----------

-- | HKLensSpecification
--
-- An object subclass representing common lens specification
-- 
-- Phantom type for @HKLensSpecification@.
data HKLensSpecification

instance IsObjCObject (Id HKLensSpecification) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKLensSpecification"

class IsNSObject a => IsHKLensSpecification a where
  toHKLensSpecification :: a -> Id HKLensSpecification

instance IsHKLensSpecification (Id HKLensSpecification) where
  toHKLensSpecification = unsafeCastId

instance IsNSObject (Id HKLensSpecification) where
  toNSObject = unsafeCastId

-- ---------- HKLiveWorkoutDataSource ----------

-- | HKLiveWorkoutDataSource
--
-- An HKLiveWorkoutDataSource is to be used with an HKWorkoutBuilder to automatically collect samples
-- 
-- Phantom type for @HKLiveWorkoutDataSource@.
data HKLiveWorkoutDataSource

instance IsObjCObject (Id HKLiveWorkoutDataSource) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKLiveWorkoutDataSource"

class IsNSObject a => IsHKLiveWorkoutDataSource a where
  toHKLiveWorkoutDataSource :: a -> Id HKLiveWorkoutDataSource

instance IsHKLiveWorkoutDataSource (Id HKLiveWorkoutDataSource) where
  toHKLiveWorkoutDataSource = unsafeCastId

instance IsNSObject (Id HKLiveWorkoutDataSource) where
  toNSObject = unsafeCastId

-- ---------- HKObject ----------

-- | Phantom type for @HKObject@.
data HKObject

instance IsObjCObject (Id HKObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKObject"

class IsNSObject a => IsHKObject a where
  toHKObject :: a -> Id HKObject

instance IsHKObject (Id HKObject) where
  toHKObject = unsafeCastId

instance IsNSObject (Id HKObject) where
  toNSObject = unsafeCastId

-- ---------- HKObjectType ----------

-- | HKObjectType
--
-- An abstract class representing a type of object that can be stored by HealthKit.
-- 
-- Phantom type for @HKObjectType@.
data HKObjectType

instance IsObjCObject (Id HKObjectType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKObjectType"

class IsNSObject a => IsHKObjectType a where
  toHKObjectType :: a -> Id HKObjectType

instance IsHKObjectType (Id HKObjectType) where
  toHKObjectType = unsafeCastId

instance IsNSObject (Id HKObjectType) where
  toNSObject = unsafeCastId

-- ---------- HKQuantity ----------

-- | HKQuantity
--
-- The HKQuantity class provides an encapsulation of a quantity value and the unit of measurement.
-- 
-- Phantom type for @HKQuantity@.
data HKQuantity

instance IsObjCObject (Id HKQuantity) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKQuantity"

class IsNSObject a => IsHKQuantity a where
  toHKQuantity :: a -> Id HKQuantity

instance IsHKQuantity (Id HKQuantity) where
  toHKQuantity = unsafeCastId

instance IsNSObject (Id HKQuantity) where
  toNSObject = unsafeCastId

-- ---------- HKQuantitySeriesSampleBuilder ----------

-- | HKQuantitySeriesSampleBuilder
--
-- An HKQuantitySeriesSampleBuilder is used to generate HKQuantitySample(s) with multiple                quantities.
--
-- An HKQuantitySeriesSampleBuilder is used to incrementally create a new quantity series                sample in the HealthKit database. This class may be used to create long-running quantity                series samples that are associated with an activity like a workout. After inserting each                of the quantities that make up the series, the series may be finalized by calling                -finishSeriesWithMetadata:completion:. Calling -discard invalidates the series and                discards any data that was previously associated with it.
-- 
-- Phantom type for @HKQuantitySeriesSampleBuilder@.
data HKQuantitySeriesSampleBuilder

instance IsObjCObject (Id HKQuantitySeriesSampleBuilder) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKQuantitySeriesSampleBuilder"

class IsNSObject a => IsHKQuantitySeriesSampleBuilder a where
  toHKQuantitySeriesSampleBuilder :: a -> Id HKQuantitySeriesSampleBuilder

instance IsHKQuantitySeriesSampleBuilder (Id HKQuantitySeriesSampleBuilder) where
  toHKQuantitySeriesSampleBuilder = unsafeCastId

instance IsNSObject (Id HKQuantitySeriesSampleBuilder) where
  toNSObject = unsafeCastId

-- ---------- HKQuery ----------

-- | Phantom type for @HKQuery@.
data HKQuery

instance IsObjCObject (Id HKQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKQuery"

class IsNSObject a => IsHKQuery a where
  toHKQuery :: a -> Id HKQuery

instance IsHKQuery (Id HKQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKQuery) where
  toNSObject = unsafeCastId

-- ---------- HKQueryAnchor ----------

-- | HKQueryAnchor
--
-- This object encapsulates the state of an HKAnchoredObjectQuery
-- 
-- Phantom type for @HKQueryAnchor@.
data HKQueryAnchor

instance IsObjCObject (Id HKQueryAnchor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKQueryAnchor"

class IsNSObject a => IsHKQueryAnchor a where
  toHKQueryAnchor :: a -> Id HKQueryAnchor

instance IsHKQueryAnchor (Id HKQueryAnchor) where
  toHKQueryAnchor = unsafeCastId

instance IsNSObject (Id HKQueryAnchor) where
  toNSObject = unsafeCastId

-- ---------- HKQueryDescriptor ----------

-- | Phantom type for @HKQueryDescriptor@.
data HKQueryDescriptor

instance IsObjCObject (Id HKQueryDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKQueryDescriptor"

class IsNSObject a => IsHKQueryDescriptor a where
  toHKQueryDescriptor :: a -> Id HKQueryDescriptor

instance IsHKQueryDescriptor (Id HKQueryDescriptor) where
  toHKQueryDescriptor = unsafeCastId

instance IsNSObject (Id HKQueryDescriptor) where
  toNSObject = unsafeCastId

-- ---------- HKSeriesBuilder ----------

-- | HKSeriesBuilder
--
-- An HKSeriesBuilder is an abstract class for generating HKSeriesSample objects.                 Concrete subclasses generate the actual HKSeriesSample objects.
-- 
-- Phantom type for @HKSeriesBuilder@.
data HKSeriesBuilder

instance IsObjCObject (Id HKSeriesBuilder) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSeriesBuilder"

class IsNSObject a => IsHKSeriesBuilder a where
  toHKSeriesBuilder :: a -> Id HKSeriesBuilder

instance IsHKSeriesBuilder (Id HKSeriesBuilder) where
  toHKSeriesBuilder = unsafeCastId

instance IsNSObject (Id HKSeriesBuilder) where
  toNSObject = unsafeCastId

-- ---------- HKSource ----------

-- | HKSource
--
-- Represents the entity that created an object stored by HealthKit.
-- 
-- Phantom type for @HKSource@.
data HKSource

instance IsObjCObject (Id HKSource) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSource"

class IsNSObject a => IsHKSource a where
  toHKSource :: a -> Id HKSource

instance IsHKSource (Id HKSource) where
  toHKSource = unsafeCastId

instance IsNSObject (Id HKSource) where
  toNSObject = unsafeCastId

-- ---------- HKSourceRevision ----------

-- | HKSourceRevision
--
-- Represents a specific revision of an HKSource.
-- 
-- Phantom type for @HKSourceRevision@.
data HKSourceRevision

instance IsObjCObject (Id HKSourceRevision) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSourceRevision"

class IsNSObject a => IsHKSourceRevision a where
  toHKSourceRevision :: a -> Id HKSourceRevision

instance IsHKSourceRevision (Id HKSourceRevision) where
  toHKSourceRevision = unsafeCastId

instance IsNSObject (Id HKSourceRevision) where
  toNSObject = unsafeCastId

-- ---------- HKStatistics ----------

-- | HKStatistics
--
-- Represents statistics for quantity samples over a period of time.
-- 
-- Phantom type for @HKStatistics@.
data HKStatistics

instance IsObjCObject (Id HKStatistics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKStatistics"

class IsNSObject a => IsHKStatistics a where
  toHKStatistics :: a -> Id HKStatistics

instance IsHKStatistics (Id HKStatistics) where
  toHKStatistics = unsafeCastId

instance IsNSObject (Id HKStatistics) where
  toNSObject = unsafeCastId

-- ---------- HKStatisticsCollection ----------

-- | Phantom type for @HKStatisticsCollection@.
data HKStatisticsCollection

instance IsObjCObject (Id HKStatisticsCollection) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKStatisticsCollection"

class IsNSObject a => IsHKStatisticsCollection a where
  toHKStatisticsCollection :: a -> Id HKStatisticsCollection

instance IsHKStatisticsCollection (Id HKStatisticsCollection) where
  toHKStatisticsCollection = unsafeCastId

instance IsNSObject (Id HKStatisticsCollection) where
  toNSObject = unsafeCastId

-- ---------- HKUnit ----------

-- | Phantom type for @HKUnit@.
data HKUnit

instance IsObjCObject (Id HKUnit) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKUnit"

class IsNSObject a => IsHKUnit a where
  toHKUnit :: a -> Id HKUnit

instance IsHKUnit (Id HKUnit) where
  toHKUnit = unsafeCastId

instance IsNSObject (Id HKUnit) where
  toNSObject = unsafeCastId

-- ---------- HKVerifiableClinicalRecordSubject ----------

-- | HKVerifiableClinicalRecordSubject
--
-- An NSObject that represents a verifiable clinical record subject.
-- 
-- Phantom type for @HKVerifiableClinicalRecordSubject@.
data HKVerifiableClinicalRecordSubject

instance IsObjCObject (Id HKVerifiableClinicalRecordSubject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKVerifiableClinicalRecordSubject"

class IsNSObject a => IsHKVerifiableClinicalRecordSubject a where
  toHKVerifiableClinicalRecordSubject :: a -> Id HKVerifiableClinicalRecordSubject

instance IsHKVerifiableClinicalRecordSubject (Id HKVerifiableClinicalRecordSubject) where
  toHKVerifiableClinicalRecordSubject = unsafeCastId

instance IsNSObject (Id HKVerifiableClinicalRecordSubject) where
  toNSObject = unsafeCastId

-- ---------- HKVisionPrism ----------

-- | HKVisionPrism
--
-- An object subclass representing prism vision fields used in eye glasses to correct double vision.                The prism aligns the two images so only one is seen.
-- 
-- Phantom type for @HKVisionPrism@.
data HKVisionPrism

instance IsObjCObject (Id HKVisionPrism) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKVisionPrism"

class IsNSObject a => IsHKVisionPrism a where
  toHKVisionPrism :: a -> Id HKVisionPrism

instance IsHKVisionPrism (Id HKVisionPrism) where
  toHKVisionPrism = unsafeCastId

instance IsNSObject (Id HKVisionPrism) where
  toNSObject = unsafeCastId

-- ---------- HKWheelchairUseObject ----------

-- | HKWheelchairUseObject
--
-- A wrapper object for HKWheelchairUse enumeration.
-- 
-- Phantom type for @HKWheelchairUseObject@.
data HKWheelchairUseObject

instance IsObjCObject (Id HKWheelchairUseObject) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWheelchairUseObject"

class IsNSObject a => IsHKWheelchairUseObject a where
  toHKWheelchairUseObject :: a -> Id HKWheelchairUseObject

instance IsHKWheelchairUseObject (Id HKWheelchairUseObject) where
  toHKWheelchairUseObject = unsafeCastId

instance IsNSObject (Id HKWheelchairUseObject) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutActivity ----------

-- | HKWorkoutActivity
--
-- An HKWorkoutActivity is an object describing the properties of an activity within an HKWorkout.
-- 
-- Phantom type for @HKWorkoutActivity@.
data HKWorkoutActivity

instance IsObjCObject (Id HKWorkoutActivity) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutActivity"

class IsNSObject a => IsHKWorkoutActivity a where
  toHKWorkoutActivity :: a -> Id HKWorkoutActivity

instance IsHKWorkoutActivity (Id HKWorkoutActivity) where
  toHKWorkoutActivity = unsafeCastId

instance IsNSObject (Id HKWorkoutActivity) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutBuilder ----------

-- | HKWorkoutBuilder
--
-- An HKWorkoutBuilder is used to incrementally create new workouts in the HealthKit database. Samples,                events, and metadata may be added to a builder either during a live workout session or to create a                workout that occurred in the past. Calling finishWorkoutWithCompletion: will create a new workout                with samples, events, and metadata that have been provided.
-- 
-- Phantom type for @HKWorkoutBuilder@.
data HKWorkoutBuilder

instance IsObjCObject (Id HKWorkoutBuilder) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutBuilder"

class IsNSObject a => IsHKWorkoutBuilder a where
  toHKWorkoutBuilder :: a -> Id HKWorkoutBuilder

instance IsHKWorkoutBuilder (Id HKWorkoutBuilder) where
  toHKWorkoutBuilder = unsafeCastId

instance IsNSObject (Id HKWorkoutBuilder) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutConfiguration ----------

-- | HKWorkoutConfiguration
--
-- An HKWorkoutConfiguration is an object that can be used to describe the workout activity.
-- 
-- Phantom type for @HKWorkoutConfiguration@.
data HKWorkoutConfiguration

instance IsObjCObject (Id HKWorkoutConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutConfiguration"

class IsNSObject a => IsHKWorkoutConfiguration a where
  toHKWorkoutConfiguration :: a -> Id HKWorkoutConfiguration

instance IsHKWorkoutConfiguration (Id HKWorkoutConfiguration) where
  toHKWorkoutConfiguration = unsafeCastId

instance IsNSObject (Id HKWorkoutConfiguration) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutEvent ----------

-- | HKWorkoutEvent
--
-- Represents a particular event that occurred during a workout.
-- 
-- Phantom type for @HKWorkoutEvent@.
data HKWorkoutEvent

instance IsObjCObject (Id HKWorkoutEvent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutEvent"

class IsNSObject a => IsHKWorkoutEvent a where
  toHKWorkoutEvent :: a -> Id HKWorkoutEvent

instance IsHKWorkoutEvent (Id HKWorkoutEvent) where
  toHKWorkoutEvent = unsafeCastId

instance IsNSObject (Id HKWorkoutEvent) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutSession ----------

-- | HKWorkoutSession
--
-- An HKWorkoutSession is an object describing the properties of a workout activity session.
-- 
-- Phantom type for @HKWorkoutSession@.
data HKWorkoutSession

instance IsObjCObject (Id HKWorkoutSession) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutSession"

class IsNSObject a => IsHKWorkoutSession a where
  toHKWorkoutSession :: a -> Id HKWorkoutSession

instance IsHKWorkoutSession (Id HKWorkoutSession) where
  toHKWorkoutSession = unsafeCastId

instance IsNSObject (Id HKWorkoutSession) where
  toNSObject = unsafeCastId

-- ---------- HKContactsLensSpecification ----------

-- | HKContactsLensSpecification
--
-- An object subclass representing lens specification for contacts
-- 
-- Phantom type for @HKContactsLensSpecification@.
data HKContactsLensSpecification

instance IsObjCObject (Id HKContactsLensSpecification) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKContactsLensSpecification"

class IsHKLensSpecification a => IsHKContactsLensSpecification a where
  toHKContactsLensSpecification :: a -> Id HKContactsLensSpecification

instance IsHKContactsLensSpecification (Id HKContactsLensSpecification) where
  toHKContactsLensSpecification = unsafeCastId

instance IsHKLensSpecification (Id HKContactsLensSpecification) where
  toHKLensSpecification = unsafeCastId

instance IsNSObject (Id HKContactsLensSpecification) where
  toNSObject = unsafeCastId

-- ---------- HKGlassesLensSpecification ----------

-- | HKGlassesLensSpecification
--
-- An object subclass representing lens specification for glasses
-- 
-- Phantom type for @HKGlassesLensSpecification@.
data HKGlassesLensSpecification

instance IsObjCObject (Id HKGlassesLensSpecification) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKGlassesLensSpecification"

class IsHKLensSpecification a => IsHKGlassesLensSpecification a where
  toHKGlassesLensSpecification :: a -> Id HKGlassesLensSpecification

instance IsHKGlassesLensSpecification (Id HKGlassesLensSpecification) where
  toHKGlassesLensSpecification = unsafeCastId

instance IsHKLensSpecification (Id HKGlassesLensSpecification) where
  toHKLensSpecification = unsafeCastId

instance IsNSObject (Id HKGlassesLensSpecification) where
  toNSObject = unsafeCastId

-- ---------- HKSample ----------

-- | HKSample
--
-- An abstract class representing measurements taken over a period of time.
-- 
-- Phantom type for @HKSample@.
data HKSample

instance IsObjCObject (Id HKSample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSample"

class IsHKObject a => IsHKSample a where
  toHKSample :: a -> Id HKSample

instance IsHKSample (Id HKSample) where
  toHKSample = unsafeCastId

instance IsHKObject (Id HKSample) where
  toHKObject = unsafeCastId

instance IsNSObject (Id HKSample) where
  toNSObject = unsafeCastId

-- ---------- HKActivitySummaryType ----------

-- | HKActivitySummaryType
--
-- Represents an HKActivitySummary
-- 
-- Phantom type for @HKActivitySummaryType@.
data HKActivitySummaryType

instance IsObjCObject (Id HKActivitySummaryType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKActivitySummaryType"

class IsHKObjectType a => IsHKActivitySummaryType a where
  toHKActivitySummaryType :: a -> Id HKActivitySummaryType

instance IsHKActivitySummaryType (Id HKActivitySummaryType) where
  toHKActivitySummaryType = unsafeCastId

instance IsHKObjectType (Id HKActivitySummaryType) where
  toHKObjectType = unsafeCastId

instance IsNSObject (Id HKActivitySummaryType) where
  toNSObject = unsafeCastId

-- ---------- HKCharacteristicType ----------

-- | HKCharacteristicType
--
-- Represents a type of object that describes a characteristic of the user (such as date of birth).
-- 
-- Phantom type for @HKCharacteristicType@.
data HKCharacteristicType

instance IsObjCObject (Id HKCharacteristicType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCharacteristicType"

class IsHKObjectType a => IsHKCharacteristicType a where
  toHKCharacteristicType :: a -> Id HKCharacteristicType

instance IsHKCharacteristicType (Id HKCharacteristicType) where
  toHKCharacteristicType = unsafeCastId

instance IsHKObjectType (Id HKCharacteristicType) where
  toHKObjectType = unsafeCastId

instance IsNSObject (Id HKCharacteristicType) where
  toNSObject = unsafeCastId

-- ---------- HKSampleType ----------

-- | HKSampleType
--
-- Represents a type of HKSample.
-- 
-- Phantom type for @HKSampleType@.
data HKSampleType

instance IsObjCObject (Id HKSampleType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSampleType"

class IsHKObjectType a => IsHKSampleType a where
  toHKSampleType :: a -> Id HKSampleType

instance IsHKSampleType (Id HKSampleType) where
  toHKSampleType = unsafeCastId

instance IsHKObjectType (Id HKSampleType) where
  toHKObjectType = unsafeCastId

instance IsNSObject (Id HKSampleType) where
  toNSObject = unsafeCastId

-- ---------- HKActivitySummaryQuery ----------

-- | Phantom type for @HKActivitySummaryQuery@.
data HKActivitySummaryQuery

instance IsObjCObject (Id HKActivitySummaryQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKActivitySummaryQuery"

class IsHKQuery a => IsHKActivitySummaryQuery a where
  toHKActivitySummaryQuery :: a -> Id HKActivitySummaryQuery

instance IsHKActivitySummaryQuery (Id HKActivitySummaryQuery) where
  toHKActivitySummaryQuery = unsafeCastId

instance IsHKQuery (Id HKActivitySummaryQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKActivitySummaryQuery) where
  toNSObject = unsafeCastId

-- ---------- HKAnchoredObjectQuery ----------

-- | Phantom type for @HKAnchoredObjectQuery@.
data HKAnchoredObjectQuery

instance IsObjCObject (Id HKAnchoredObjectQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKAnchoredObjectQuery"

class IsHKQuery a => IsHKAnchoredObjectQuery a where
  toHKAnchoredObjectQuery :: a -> Id HKAnchoredObjectQuery

instance IsHKAnchoredObjectQuery (Id HKAnchoredObjectQuery) where
  toHKAnchoredObjectQuery = unsafeCastId

instance IsHKQuery (Id HKAnchoredObjectQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKAnchoredObjectQuery) where
  toNSObject = unsafeCastId

-- ---------- HKCorrelationQuery ----------

-- | HKCorrelationQuery
--
-- A query to find HKCorrelations
--
-- Correlations are HKSamples that contain a set of correlated samples. HKCorrelationQuery                accepts a predicate to filter HKCorrelations and a dictionary of predicates to filter the                correlated samples.
-- 
-- Phantom type for @HKCorrelationQuery@.
data HKCorrelationQuery

instance IsObjCObject (Id HKCorrelationQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCorrelationQuery"

class IsHKQuery a => IsHKCorrelationQuery a where
  toHKCorrelationQuery :: a -> Id HKCorrelationQuery

instance IsHKCorrelationQuery (Id HKCorrelationQuery) where
  toHKCorrelationQuery = unsafeCastId

instance IsHKQuery (Id HKCorrelationQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKCorrelationQuery) where
  toNSObject = unsafeCastId

-- ---------- HKDocumentQuery ----------

-- | HKDocumentQuery
--
-- A concrete subclass of HKQuery that provides an interface to retrieve documents from the Health store.
-- 
-- Phantom type for @HKDocumentQuery@.
data HKDocumentQuery

instance IsObjCObject (Id HKDocumentQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKDocumentQuery"

class IsHKQuery a => IsHKDocumentQuery a where
  toHKDocumentQuery :: a -> Id HKDocumentQuery

instance IsHKDocumentQuery (Id HKDocumentQuery) where
  toHKDocumentQuery = unsafeCastId

instance IsHKQuery (Id HKDocumentQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKDocumentQuery) where
  toNSObject = unsafeCastId

-- ---------- HKElectrocardiogramQuery ----------

-- | Phantom type for @HKElectrocardiogramQuery@.
data HKElectrocardiogramQuery

instance IsObjCObject (Id HKElectrocardiogramQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKElectrocardiogramQuery"

class IsHKQuery a => IsHKElectrocardiogramQuery a where
  toHKElectrocardiogramQuery :: a -> Id HKElectrocardiogramQuery

instance IsHKElectrocardiogramQuery (Id HKElectrocardiogramQuery) where
  toHKElectrocardiogramQuery = unsafeCastId

instance IsHKQuery (Id HKElectrocardiogramQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKElectrocardiogramQuery) where
  toNSObject = unsafeCastId

-- ---------- HKHeartbeatSeriesQuery ----------

-- | Phantom type for @HKHeartbeatSeriesQuery@.
data HKHeartbeatSeriesQuery

instance IsObjCObject (Id HKHeartbeatSeriesQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKHeartbeatSeriesQuery"

class IsHKQuery a => IsHKHeartbeatSeriesQuery a where
  toHKHeartbeatSeriesQuery :: a -> Id HKHeartbeatSeriesQuery

instance IsHKHeartbeatSeriesQuery (Id HKHeartbeatSeriesQuery) where
  toHKHeartbeatSeriesQuery = unsafeCastId

instance IsHKQuery (Id HKHeartbeatSeriesQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKHeartbeatSeriesQuery) where
  toNSObject = unsafeCastId

-- ---------- HKObserverQuery ----------

-- | Phantom type for @HKObserverQuery@.
data HKObserverQuery

instance IsObjCObject (Id HKObserverQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKObserverQuery"

class IsHKQuery a => IsHKObserverQuery a where
  toHKObserverQuery :: a -> Id HKObserverQuery

instance IsHKObserverQuery (Id HKObserverQuery) where
  toHKObserverQuery = unsafeCastId

instance IsHKQuery (Id HKObserverQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKObserverQuery) where
  toNSObject = unsafeCastId

-- ---------- HKQuantitySeriesSampleQuery ----------

-- | Phantom type for @HKQuantitySeriesSampleQuery@.
data HKQuantitySeriesSampleQuery

instance IsObjCObject (Id HKQuantitySeriesSampleQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKQuantitySeriesSampleQuery"

class IsHKQuery a => IsHKQuantitySeriesSampleQuery a where
  toHKQuantitySeriesSampleQuery :: a -> Id HKQuantitySeriesSampleQuery

instance IsHKQuantitySeriesSampleQuery (Id HKQuantitySeriesSampleQuery) where
  toHKQuantitySeriesSampleQuery = unsafeCastId

instance IsHKQuery (Id HKQuantitySeriesSampleQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKQuantitySeriesSampleQuery) where
  toNSObject = unsafeCastId

-- ---------- HKSampleQuery ----------

-- | Phantom type for @HKSampleQuery@.
data HKSampleQuery

instance IsObjCObject (Id HKSampleQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSampleQuery"

class IsHKQuery a => IsHKSampleQuery a where
  toHKSampleQuery :: a -> Id HKSampleQuery

instance IsHKSampleQuery (Id HKSampleQuery) where
  toHKSampleQuery = unsafeCastId

instance IsHKQuery (Id HKSampleQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKSampleQuery) where
  toNSObject = unsafeCastId

-- ---------- HKSourceQuery ----------

-- | Phantom type for @HKSourceQuery@.
data HKSourceQuery

instance IsObjCObject (Id HKSourceQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSourceQuery"

class IsHKQuery a => IsHKSourceQuery a where
  toHKSourceQuery :: a -> Id HKSourceQuery

instance IsHKSourceQuery (Id HKSourceQuery) where
  toHKSourceQuery = unsafeCastId

instance IsHKQuery (Id HKSourceQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKSourceQuery) where
  toNSObject = unsafeCastId

-- ---------- HKStatisticsCollectionQuery ----------

-- | Phantom type for @HKStatisticsCollectionQuery@.
data HKStatisticsCollectionQuery

instance IsObjCObject (Id HKStatisticsCollectionQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKStatisticsCollectionQuery"

class IsHKQuery a => IsHKStatisticsCollectionQuery a where
  toHKStatisticsCollectionQuery :: a -> Id HKStatisticsCollectionQuery

instance IsHKStatisticsCollectionQuery (Id HKStatisticsCollectionQuery) where
  toHKStatisticsCollectionQuery = unsafeCastId

instance IsHKQuery (Id HKStatisticsCollectionQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKStatisticsCollectionQuery) where
  toNSObject = unsafeCastId

-- ---------- HKStatisticsQuery ----------

-- | Phantom type for @HKStatisticsQuery@.
data HKStatisticsQuery

instance IsObjCObject (Id HKStatisticsQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKStatisticsQuery"

class IsHKQuery a => IsHKStatisticsQuery a where
  toHKStatisticsQuery :: a -> Id HKStatisticsQuery

instance IsHKStatisticsQuery (Id HKStatisticsQuery) where
  toHKStatisticsQuery = unsafeCastId

instance IsHKQuery (Id HKStatisticsQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKStatisticsQuery) where
  toNSObject = unsafeCastId

-- ---------- HKVerifiableClinicalRecordQuery ----------

-- | Phantom type for @HKVerifiableClinicalRecordQuery@.
data HKVerifiableClinicalRecordQuery

instance IsObjCObject (Id HKVerifiableClinicalRecordQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKVerifiableClinicalRecordQuery"

class IsHKQuery a => IsHKVerifiableClinicalRecordQuery a where
  toHKVerifiableClinicalRecordQuery :: a -> Id HKVerifiableClinicalRecordQuery

instance IsHKVerifiableClinicalRecordQuery (Id HKVerifiableClinicalRecordQuery) where
  toHKVerifiableClinicalRecordQuery = unsafeCastId

instance IsHKQuery (Id HKVerifiableClinicalRecordQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKVerifiableClinicalRecordQuery) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutRouteQuery ----------

-- | Phantom type for @HKWorkoutRouteQuery@.
data HKWorkoutRouteQuery

instance IsObjCObject (Id HKWorkoutRouteQuery) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutRouteQuery"

class IsHKQuery a => IsHKWorkoutRouteQuery a where
  toHKWorkoutRouteQuery :: a -> Id HKWorkoutRouteQuery

instance IsHKWorkoutRouteQuery (Id HKWorkoutRouteQuery) where
  toHKWorkoutRouteQuery = unsafeCastId

instance IsHKQuery (Id HKWorkoutRouteQuery) where
  toHKQuery = unsafeCastId

instance IsNSObject (Id HKWorkoutRouteQuery) where
  toNSObject = unsafeCastId

-- ---------- HKHeartbeatSeriesBuilder ----------

-- | HKHeartbeatSeriesBuilder
--
-- An HKHeartbeatSeriesBuilder is used to generate an HKHeartbeatSeriesSample.
--
-- This class is intended for generating an HKHeartbeatSeriesSample which represents a series of                     heartbeats. If the discard method is called, collected data will be deleted.                     Calling finishSeriesWithcompletion: will stop and complete the series. If the builder is deleted,                     or the client goes away before calling the finish method, data will be lost.
-- 
-- Phantom type for @HKHeartbeatSeriesBuilder@.
data HKHeartbeatSeriesBuilder

instance IsObjCObject (Id HKHeartbeatSeriesBuilder) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKHeartbeatSeriesBuilder"

class IsHKSeriesBuilder a => IsHKHeartbeatSeriesBuilder a where
  toHKHeartbeatSeriesBuilder :: a -> Id HKHeartbeatSeriesBuilder

instance IsHKHeartbeatSeriesBuilder (Id HKHeartbeatSeriesBuilder) where
  toHKHeartbeatSeriesBuilder = unsafeCastId

instance IsHKSeriesBuilder (Id HKHeartbeatSeriesBuilder) where
  toHKSeriesBuilder = unsafeCastId

instance IsNSObject (Id HKHeartbeatSeriesBuilder) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutRouteBuilder ----------

-- | HKWorkoutRouteBuilder
--
-- An HKWorkoutRouteBuilder is used to generate an HKWorkoutRoute.
--
-- This class is intended for generating long-running location data collection such as                     might be associated with a workout. If the discard method is called, collected data will be deleted.                     Calling finishRouteWithWorkout:metadata: will stop and complete the route. If the builder is deleted,                     or the client goes away before calling the finish method, data will be lost.
-- 
-- Phantom type for @HKWorkoutRouteBuilder@.
data HKWorkoutRouteBuilder

instance IsObjCObject (Id HKWorkoutRouteBuilder) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutRouteBuilder"

class IsHKSeriesBuilder a => IsHKWorkoutRouteBuilder a where
  toHKWorkoutRouteBuilder :: a -> Id HKWorkoutRouteBuilder

instance IsHKWorkoutRouteBuilder (Id HKWorkoutRouteBuilder) where
  toHKWorkoutRouteBuilder = unsafeCastId

instance IsHKSeriesBuilder (Id HKWorkoutRouteBuilder) where
  toHKSeriesBuilder = unsafeCastId

instance IsNSObject (Id HKWorkoutRouteBuilder) where
  toNSObject = unsafeCastId

-- ---------- HKLiveWorkoutBuilder ----------

-- | Phantom type for @HKLiveWorkoutBuilder@.
data HKLiveWorkoutBuilder

instance IsObjCObject (Id HKLiveWorkoutBuilder) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKLiveWorkoutBuilder"

class IsHKWorkoutBuilder a => IsHKLiveWorkoutBuilder a where
  toHKLiveWorkoutBuilder :: a -> Id HKLiveWorkoutBuilder

instance IsHKLiveWorkoutBuilder (Id HKLiveWorkoutBuilder) where
  toHKLiveWorkoutBuilder = unsafeCastId

instance IsHKWorkoutBuilder (Id HKLiveWorkoutBuilder) where
  toHKWorkoutBuilder = unsafeCastId

instance IsNSObject (Id HKLiveWorkoutBuilder) where
  toNSObject = unsafeCastId

-- ---------- HKAudiogramSample ----------

-- | HKAudiogramSample
--
-- A sample object representing the results of a standard hearing test.
-- 
-- Phantom type for @HKAudiogramSample@.
data HKAudiogramSample

instance IsObjCObject (Id HKAudiogramSample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKAudiogramSample"

class IsHKSample a => IsHKAudiogramSample a where
  toHKAudiogramSample :: a -> Id HKAudiogramSample

instance IsHKAudiogramSample (Id HKAudiogramSample) where
  toHKAudiogramSample = unsafeCastId

instance IsHKObject (Id HKAudiogramSample) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKAudiogramSample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKAudiogramSample) where
  toNSObject = unsafeCastId

-- ---------- HKCategorySample ----------

-- | HKCategorySample
--
-- An HKObject subclass representing an category measurement
--
-- Category samples are samples that can be categorized into an enum of concrete values
-- 
-- Phantom type for @HKCategorySample@.
data HKCategorySample

instance IsObjCObject (Id HKCategorySample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCategorySample"

class IsHKSample a => IsHKCategorySample a where
  toHKCategorySample :: a -> Id HKCategorySample

instance IsHKCategorySample (Id HKCategorySample) where
  toHKCategorySample = unsafeCastId

instance IsHKObject (Id HKCategorySample) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKCategorySample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKCategorySample) where
  toNSObject = unsafeCastId

-- ---------- HKClinicalRecord ----------

-- | HKClinicalRecord
--
-- An HKObject subclass representing a health record.
--
-- The startDate and endDate properties (inherited from HKSample) are set to the date the sample was               added to Health. Unlike other HKObject subclasses, UUID is not a stable identifier               for a given sample. Use a combination of HKSource, FHIRResource.resourceType, and               FHIRResource.identifier instead.
-- 
-- Phantom type for @HKClinicalRecord@.
data HKClinicalRecord

instance IsObjCObject (Id HKClinicalRecord) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKClinicalRecord"

class IsHKSample a => IsHKClinicalRecord a where
  toHKClinicalRecord :: a -> Id HKClinicalRecord

instance IsHKClinicalRecord (Id HKClinicalRecord) where
  toHKClinicalRecord = unsafeCastId

instance IsHKObject (Id HKClinicalRecord) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKClinicalRecord) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKClinicalRecord) where
  toNSObject = unsafeCastId

-- ---------- HKCorrelation ----------

-- | HKCorrelation
--
-- An HKCorrelation is a collection of correlated objects.
--
-- When multiple readings are taken together, it may be beneficial to correlate them so that they can be                displayed together and share common metadata about how they were created.
--
-- For example, systolic and diastolic blood pressure readings are typically presented together so these                readings should be saved with a correlation of type blood pressure.
-- 
-- Phantom type for @HKCorrelation@.
data HKCorrelation

instance IsObjCObject (Id HKCorrelation) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCorrelation"

class IsHKSample a => IsHKCorrelation a where
  toHKCorrelation :: a -> Id HKCorrelation

instance IsHKCorrelation (Id HKCorrelation) where
  toHKCorrelation = unsafeCastId

instance IsHKObject (Id HKCorrelation) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKCorrelation) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKCorrelation) where
  toNSObject = unsafeCastId

-- ---------- HKDocumentSample ----------

-- | HKDocumentSample
--
-- An abstract class representing a health document.
-- 
-- Phantom type for @HKDocumentSample@.
data HKDocumentSample

instance IsObjCObject (Id HKDocumentSample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKDocumentSample"

class IsHKSample a => IsHKDocumentSample a where
  toHKDocumentSample :: a -> Id HKDocumentSample

instance IsHKDocumentSample (Id HKDocumentSample) where
  toHKDocumentSample = unsafeCastId

instance IsHKObject (Id HKDocumentSample) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKDocumentSample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKDocumentSample) where
  toNSObject = unsafeCastId

-- ---------- HKElectrocardiogram ----------

-- | HKElectrocardiogram
--
-- An HKElectrocardiogram is a collection of voltage values as waveforms                from one or more leads
-- 
-- Phantom type for @HKElectrocardiogram@.
data HKElectrocardiogram

instance IsObjCObject (Id HKElectrocardiogram) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKElectrocardiogram"

class IsHKSample a => IsHKElectrocardiogram a where
  toHKElectrocardiogram :: a -> Id HKElectrocardiogram

instance IsHKElectrocardiogram (Id HKElectrocardiogram) where
  toHKElectrocardiogram = unsafeCastId

instance IsHKObject (Id HKElectrocardiogram) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKElectrocardiogram) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKElectrocardiogram) where
  toNSObject = unsafeCastId

-- ---------- HKQuantitySample ----------

-- | HKQuantitySample
--
-- An abstract HKSample subclass representing a quantity measurement.
-- 
-- Phantom type for @HKQuantitySample@.
data HKQuantitySample

instance IsObjCObject (Id HKQuantitySample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKQuantitySample"

class IsHKSample a => IsHKQuantitySample a where
  toHKQuantitySample :: a -> Id HKQuantitySample

instance IsHKQuantitySample (Id HKQuantitySample) where
  toHKQuantitySample = unsafeCastId

instance IsHKObject (Id HKQuantitySample) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKQuantitySample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKQuantitySample) where
  toNSObject = unsafeCastId

-- ---------- HKSeriesSample ----------

-- | HKSeriesSample
--
-- This class represents a type of HKSample that references a series of data.
-- 
-- Phantom type for @HKSeriesSample@.
data HKSeriesSample

instance IsObjCObject (Id HKSeriesSample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSeriesSample"

class IsHKSample a => IsHKSeriesSample a where
  toHKSeriesSample :: a -> Id HKSeriesSample

instance IsHKSeriesSample (Id HKSeriesSample) where
  toHKSeriesSample = unsafeCastId

instance IsHKObject (Id HKSeriesSample) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKSeriesSample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKSeriesSample) where
  toNSObject = unsafeCastId

-- ---------- HKVerifiableClinicalRecord ----------

-- | HKVerifiableClinicalRecord
--
-- An NSObject that represents a verifiable clinical record.
-- 
-- Phantom type for @HKVerifiableClinicalRecord@.
data HKVerifiableClinicalRecord

instance IsObjCObject (Id HKVerifiableClinicalRecord) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKVerifiableClinicalRecord"

class IsHKSample a => IsHKVerifiableClinicalRecord a where
  toHKVerifiableClinicalRecord :: a -> Id HKVerifiableClinicalRecord

instance IsHKVerifiableClinicalRecord (Id HKVerifiableClinicalRecord) where
  toHKVerifiableClinicalRecord = unsafeCastId

instance IsHKObject (Id HKVerifiableClinicalRecord) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKVerifiableClinicalRecord) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKVerifiableClinicalRecord) where
  toNSObject = unsafeCastId

-- ---------- HKVisionPrescription ----------

-- | HKVisionPrescription
--
-- HKSample subclass representing a vision prescription
-- 
-- Phantom type for @HKVisionPrescription@.
data HKVisionPrescription

instance IsObjCObject (Id HKVisionPrescription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKVisionPrescription"

class IsHKSample a => IsHKVisionPrescription a where
  toHKVisionPrescription :: a -> Id HKVisionPrescription

instance IsHKVisionPrescription (Id HKVisionPrescription) where
  toHKVisionPrescription = unsafeCastId

instance IsHKObject (Id HKVisionPrescription) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKVisionPrescription) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKVisionPrescription) where
  toNSObject = unsafeCastId

-- ---------- HKWorkout ----------

-- | HKWorkout
--
-- An HKObject subclass representing a workout or activity
-- 
-- Phantom type for @HKWorkout@.
data HKWorkout

instance IsObjCObject (Id HKWorkout) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkout"

class IsHKSample a => IsHKWorkout a where
  toHKWorkout :: a -> Id HKWorkout

instance IsHKWorkout (Id HKWorkout) where
  toHKWorkout = unsafeCastId

instance IsHKObject (Id HKWorkout) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKWorkout) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKWorkout) where
  toNSObject = unsafeCastId

-- ---------- HKAudiogramSampleType ----------

-- | HKAudiogramSampleType
--
-- Represents an audiogram sample.
-- 
-- Phantom type for @HKAudiogramSampleType@.
data HKAudiogramSampleType

instance IsObjCObject (Id HKAudiogramSampleType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKAudiogramSampleType"

class IsHKSampleType a => IsHKAudiogramSampleType a where
  toHKAudiogramSampleType :: a -> Id HKAudiogramSampleType

instance IsHKAudiogramSampleType (Id HKAudiogramSampleType) where
  toHKAudiogramSampleType = unsafeCastId

instance IsHKObjectType (Id HKAudiogramSampleType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKAudiogramSampleType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKAudiogramSampleType) where
  toNSObject = unsafeCastId

-- ---------- HKCategoryType ----------

-- | HKCategoryType
--
-- Represent a type of HKCategorySample.
-- 
-- Phantom type for @HKCategoryType@.
data HKCategoryType

instance IsObjCObject (Id HKCategoryType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCategoryType"

class IsHKSampleType a => IsHKCategoryType a where
  toHKCategoryType :: a -> Id HKCategoryType

instance IsHKCategoryType (Id HKCategoryType) where
  toHKCategoryType = unsafeCastId

instance IsHKObjectType (Id HKCategoryType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKCategoryType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKCategoryType) where
  toNSObject = unsafeCastId

-- ---------- HKClinicalType ----------

-- | HKClinicalType
--
-- A type that identifies samples that contain clinical record data.
-- 
-- Phantom type for @HKClinicalType@.
data HKClinicalType

instance IsObjCObject (Id HKClinicalType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKClinicalType"

class IsHKSampleType a => IsHKClinicalType a where
  toHKClinicalType :: a -> Id HKClinicalType

instance IsHKClinicalType (Id HKClinicalType) where
  toHKClinicalType = unsafeCastId

instance IsHKObjectType (Id HKClinicalType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKClinicalType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKClinicalType) where
  toNSObject = unsafeCastId

-- ---------- HKCorrelationType ----------

-- | HKCorrelationType
--
-- Represents a type of HKCorrelation
-- 
-- Phantom type for @HKCorrelationType@.
data HKCorrelationType

instance IsObjCObject (Id HKCorrelationType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCorrelationType"

class IsHKSampleType a => IsHKCorrelationType a where
  toHKCorrelationType :: a -> Id HKCorrelationType

instance IsHKCorrelationType (Id HKCorrelationType) where
  toHKCorrelationType = unsafeCastId

instance IsHKObjectType (Id HKCorrelationType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKCorrelationType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKCorrelationType) where
  toNSObject = unsafeCastId

-- ---------- HKDocumentType ----------

-- | HKDocumentType
--
-- Represents a type of HKDocument.
-- 
-- Phantom type for @HKDocumentType@.
data HKDocumentType

instance IsObjCObject (Id HKDocumentType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKDocumentType"

class IsHKSampleType a => IsHKDocumentType a where
  toHKDocumentType :: a -> Id HKDocumentType

instance IsHKDocumentType (Id HKDocumentType) where
  toHKDocumentType = unsafeCastId

instance IsHKObjectType (Id HKDocumentType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKDocumentType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKDocumentType) where
  toNSObject = unsafeCastId

-- ---------- HKElectrocardiogramType ----------

-- | HKElectrocardiogramType
--
-- Represents an electrocardiogram sample.
-- 
-- Phantom type for @HKElectrocardiogramType@.
data HKElectrocardiogramType

instance IsObjCObject (Id HKElectrocardiogramType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKElectrocardiogramType"

class IsHKSampleType a => IsHKElectrocardiogramType a where
  toHKElectrocardiogramType :: a -> Id HKElectrocardiogramType

instance IsHKElectrocardiogramType (Id HKElectrocardiogramType) where
  toHKElectrocardiogramType = unsafeCastId

instance IsHKObjectType (Id HKElectrocardiogramType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKElectrocardiogramType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKElectrocardiogramType) where
  toNSObject = unsafeCastId

-- ---------- HKPrescriptionType ----------

-- | HKPrescriptionType
--
-- Represents a prescription type
-- 
-- Phantom type for @HKPrescriptionType@.
data HKPrescriptionType

instance IsObjCObject (Id HKPrescriptionType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKPrescriptionType"

class IsHKSampleType a => IsHKPrescriptionType a where
  toHKPrescriptionType :: a -> Id HKPrescriptionType

instance IsHKPrescriptionType (Id HKPrescriptionType) where
  toHKPrescriptionType = unsafeCastId

instance IsHKObjectType (Id HKPrescriptionType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKPrescriptionType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKPrescriptionType) where
  toNSObject = unsafeCastId

-- ---------- HKQuantityType ----------

-- | HKQuantityType
--
-- Represents types of HKQuantitySamples.
-- 
-- Phantom type for @HKQuantityType@.
data HKQuantityType

instance IsObjCObject (Id HKQuantityType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKQuantityType"

class IsHKSampleType a => IsHKQuantityType a where
  toHKQuantityType :: a -> Id HKQuantityType

instance IsHKQuantityType (Id HKQuantityType) where
  toHKQuantityType = unsafeCastId

instance IsHKObjectType (Id HKQuantityType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKQuantityType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKQuantityType) where
  toNSObject = unsafeCastId

-- ---------- HKSeriesType ----------

-- | HKSeriesType
--
-- Represents a type of HKSeriesSample
-- 
-- Phantom type for @HKSeriesType@.
data HKSeriesType

instance IsObjCObject (Id HKSeriesType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKSeriesType"

class IsHKSampleType a => IsHKSeriesType a where
  toHKSeriesType :: a -> Id HKSeriesType

instance IsHKSeriesType (Id HKSeriesType) where
  toHKSeriesType = unsafeCastId

instance IsHKObjectType (Id HKSeriesType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKSeriesType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKSeriesType) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutType ----------

-- | HKWorkoutType
--
-- Represents a workout or exercise
-- 
-- Phantom type for @HKWorkoutType@.
data HKWorkoutType

instance IsObjCObject (Id HKWorkoutType) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutType"

class IsHKSampleType a => IsHKWorkoutType a where
  toHKWorkoutType :: a -> Id HKWorkoutType

instance IsHKWorkoutType (Id HKWorkoutType) where
  toHKWorkoutType = unsafeCastId

instance IsHKObjectType (Id HKWorkoutType) where
  toHKObjectType = unsafeCastId

instance IsHKSampleType (Id HKWorkoutType) where
  toHKSampleType = unsafeCastId

instance IsNSObject (Id HKWorkoutType) where
  toNSObject = unsafeCastId

-- ---------- HKCDADocumentSample ----------

-- | HKCDADocumentSample
--
-- A sample object representing a CDA document.
-- 
-- Phantom type for @HKCDADocumentSample@.
data HKCDADocumentSample

instance IsObjCObject (Id HKCDADocumentSample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCDADocumentSample"

class IsHKDocumentSample a => IsHKCDADocumentSample a where
  toHKCDADocumentSample :: a -> Id HKCDADocumentSample

instance IsHKCDADocumentSample (Id HKCDADocumentSample) where
  toHKCDADocumentSample = unsafeCastId

instance IsHKDocumentSample (Id HKCDADocumentSample) where
  toHKDocumentSample = unsafeCastId

instance IsHKObject (Id HKCDADocumentSample) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKCDADocumentSample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKCDADocumentSample) where
  toNSObject = unsafeCastId

-- ---------- HKCumulativeQuantitySample ----------

-- | HKCumulativeQuantitySample
--
-- An HKQuantitySample subclass representing a quantity measurement with cumulative aggregation style.
-- 
-- Phantom type for @HKCumulativeQuantitySample@.
data HKCumulativeQuantitySample

instance IsObjCObject (Id HKCumulativeQuantitySample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCumulativeQuantitySample"

class IsHKQuantitySample a => IsHKCumulativeQuantitySample a where
  toHKCumulativeQuantitySample :: a -> Id HKCumulativeQuantitySample

instance IsHKCumulativeQuantitySample (Id HKCumulativeQuantitySample) where
  toHKCumulativeQuantitySample = unsafeCastId

instance IsHKObject (Id HKCumulativeQuantitySample) where
  toHKObject = unsafeCastId

instance IsHKQuantitySample (Id HKCumulativeQuantitySample) where
  toHKQuantitySample = unsafeCastId

instance IsHKSample (Id HKCumulativeQuantitySample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKCumulativeQuantitySample) where
  toNSObject = unsafeCastId

-- ---------- HKDiscreteQuantitySample ----------

-- | HKDiscreteQuantitySample
--
-- An HKQuantitySample subclass representing a quantity measurement with                discrete aggregation style.
-- 
-- Phantom type for @HKDiscreteQuantitySample@.
data HKDiscreteQuantitySample

instance IsObjCObject (Id HKDiscreteQuantitySample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKDiscreteQuantitySample"

class IsHKQuantitySample a => IsHKDiscreteQuantitySample a where
  toHKDiscreteQuantitySample :: a -> Id HKDiscreteQuantitySample

instance IsHKDiscreteQuantitySample (Id HKDiscreteQuantitySample) where
  toHKDiscreteQuantitySample = unsafeCastId

instance IsHKObject (Id HKDiscreteQuantitySample) where
  toHKObject = unsafeCastId

instance IsHKQuantitySample (Id HKDiscreteQuantitySample) where
  toHKQuantitySample = unsafeCastId

instance IsHKSample (Id HKDiscreteQuantitySample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKDiscreteQuantitySample) where
  toNSObject = unsafeCastId

-- ---------- HKHeartbeatSeriesSample ----------

-- | HKHeartbeatSeriesSample
--
-- An HKHeartbeatSeriesSample represents a series of heartbeats.
--
-- To retrieve the underlying series data for an HKHeartbeatSeriesSample, use HKHeartbeatSeriesQuery
-- 
-- Phantom type for @HKHeartbeatSeriesSample@.
data HKHeartbeatSeriesSample

instance IsObjCObject (Id HKHeartbeatSeriesSample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKHeartbeatSeriesSample"

class IsHKSeriesSample a => IsHKHeartbeatSeriesSample a where
  toHKHeartbeatSeriesSample :: a -> Id HKHeartbeatSeriesSample

instance IsHKHeartbeatSeriesSample (Id HKHeartbeatSeriesSample) where
  toHKHeartbeatSeriesSample = unsafeCastId

instance IsHKObject (Id HKHeartbeatSeriesSample) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKHeartbeatSeriesSample) where
  toHKSample = unsafeCastId

instance IsHKSeriesSample (Id HKHeartbeatSeriesSample) where
  toHKSeriesSample = unsafeCastId

instance IsNSObject (Id HKHeartbeatSeriesSample) where
  toNSObject = unsafeCastId

-- ---------- HKWorkoutRoute ----------

-- | Phantom type for @HKWorkoutRoute@.
data HKWorkoutRoute

instance IsObjCObject (Id HKWorkoutRoute) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKWorkoutRoute"

class IsHKSeriesSample a => IsHKWorkoutRoute a where
  toHKWorkoutRoute :: a -> Id HKWorkoutRoute

instance IsHKWorkoutRoute (Id HKWorkoutRoute) where
  toHKWorkoutRoute = unsafeCastId

instance IsHKObject (Id HKWorkoutRoute) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKWorkoutRoute) where
  toHKSample = unsafeCastId

instance IsHKSeriesSample (Id HKWorkoutRoute) where
  toHKSeriesSample = unsafeCastId

instance IsNSObject (Id HKWorkoutRoute) where
  toNSObject = unsafeCastId

-- ---------- HKContactsPrescription ----------

-- | HKContactsPrescription
--
-- An object representing a contacts prescription
-- 
-- Phantom type for @HKContactsPrescription@.
data HKContactsPrescription

instance IsObjCObject (Id HKContactsPrescription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKContactsPrescription"

class IsHKVisionPrescription a => IsHKContactsPrescription a where
  toHKContactsPrescription :: a -> Id HKContactsPrescription

instance IsHKContactsPrescription (Id HKContactsPrescription) where
  toHKContactsPrescription = unsafeCastId

instance IsHKObject (Id HKContactsPrescription) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKContactsPrescription) where
  toHKSample = unsafeCastId

instance IsHKVisionPrescription (Id HKContactsPrescription) where
  toHKVisionPrescription = unsafeCastId

instance IsNSObject (Id HKContactsPrescription) where
  toNSObject = unsafeCastId

-- ---------- HKGlassesPrescription ----------

-- | HKGlassesPrescription
--
-- An object subclass representing a glasses prescription
-- 
-- Phantom type for @HKGlassesPrescription@.
data HKGlassesPrescription

instance IsObjCObject (Id HKGlassesPrescription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKGlassesPrescription"

class IsHKVisionPrescription a => IsHKGlassesPrescription a where
  toHKGlassesPrescription :: a -> Id HKGlassesPrescription

instance IsHKGlassesPrescription (Id HKGlassesPrescription) where
  toHKGlassesPrescription = unsafeCastId

instance IsHKObject (Id HKGlassesPrescription) where
  toHKObject = unsafeCastId

instance IsHKSample (Id HKGlassesPrescription) where
  toHKSample = unsafeCastId

instance IsHKVisionPrescription (Id HKGlassesPrescription) where
  toHKVisionPrescription = unsafeCastId

instance IsNSObject (Id HKGlassesPrescription) where
  toNSObject = unsafeCastId

-- ---------- HKCumulativeQuantitySeriesSample ----------

-- | Phantom type for @HKCumulativeQuantitySeriesSample@.
data HKCumulativeQuantitySeriesSample

instance IsObjCObject (Id HKCumulativeQuantitySeriesSample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "HKCumulativeQuantitySeriesSample"

class IsHKCumulativeQuantitySample a => IsHKCumulativeQuantitySeriesSample a where
  toHKCumulativeQuantitySeriesSample :: a -> Id HKCumulativeQuantitySeriesSample

instance IsHKCumulativeQuantitySeriesSample (Id HKCumulativeQuantitySeriesSample) where
  toHKCumulativeQuantitySeriesSample = unsafeCastId

instance IsHKCumulativeQuantitySample (Id HKCumulativeQuantitySeriesSample) where
  toHKCumulativeQuantitySample = unsafeCastId

instance IsHKObject (Id HKCumulativeQuantitySeriesSample) where
  toHKObject = unsafeCastId

instance IsHKQuantitySample (Id HKCumulativeQuantitySeriesSample) where
  toHKQuantitySample = unsafeCastId

instance IsHKSample (Id HKCumulativeQuantitySeriesSample) where
  toHKSample = unsafeCastId

instance IsNSObject (Id HKCumulativeQuantitySeriesSample) where
  toNSObject = unsafeCastId
