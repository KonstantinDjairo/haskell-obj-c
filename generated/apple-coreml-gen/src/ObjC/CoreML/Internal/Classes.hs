{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.CoreML.Internal.Classes (
    module ObjC.CoreML.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- MLArrayBatchProvider ----------

-- | A concrete convenience class conforming to MLBatchProvider.
-- 
-- Phantom type for @MLArrayBatchProvider@.
data MLArrayBatchProvider

instance IsObjCObject (Id MLArrayBatchProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLArrayBatchProvider"

class IsNSObject a => IsMLArrayBatchProvider a where
  toMLArrayBatchProvider :: a -> Id MLArrayBatchProvider

instance IsMLArrayBatchProvider (Id MLArrayBatchProvider) where
  toMLArrayBatchProvider = unsafeCastId

instance IsNSObject (Id MLArrayBatchProvider) where
  toNSObject = unsafeCastId

-- ---------- MLDictionaryConstraint ----------

-- | MLDictionaryConstraint
--
-- Constraint describing expected NSDictionary properties
-- 
-- Phantom type for @MLDictionaryConstraint@.
data MLDictionaryConstraint

instance IsObjCObject (Id MLDictionaryConstraint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLDictionaryConstraint"

class IsNSObject a => IsMLDictionaryConstraint a where
  toMLDictionaryConstraint :: a -> Id MLDictionaryConstraint

instance IsMLDictionaryConstraint (Id MLDictionaryConstraint) where
  toMLDictionaryConstraint = unsafeCastId

instance IsNSObject (Id MLDictionaryConstraint) where
  toNSObject = unsafeCastId

-- ---------- MLDictionaryFeatureProvider ----------

-- | A concrete convenience class conforming to MLFeatureProvider.
-- 
-- Phantom type for @MLDictionaryFeatureProvider@.
data MLDictionaryFeatureProvider

instance IsObjCObject (Id MLDictionaryFeatureProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLDictionaryFeatureProvider"

class IsNSObject a => IsMLDictionaryFeatureProvider a where
  toMLDictionaryFeatureProvider :: a -> Id MLDictionaryFeatureProvider

instance IsMLDictionaryFeatureProvider (Id MLDictionaryFeatureProvider) where
  toMLDictionaryFeatureProvider = unsafeCastId

instance IsNSObject (Id MLDictionaryFeatureProvider) where
  toNSObject = unsafeCastId

-- ---------- MLFeatureDescription ----------

-- | Description of a feature
-- 
-- Phantom type for @MLFeatureDescription@.
data MLFeatureDescription

instance IsObjCObject (Id MLFeatureDescription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLFeatureDescription"

class IsNSObject a => IsMLFeatureDescription a where
  toMLFeatureDescription :: a -> Id MLFeatureDescription

instance IsMLFeatureDescription (Id MLFeatureDescription) where
  toMLFeatureDescription = unsafeCastId

instance IsNSObject (Id MLFeatureDescription) where
  toNSObject = unsafeCastId

-- ---------- MLFeatureValue ----------

-- | An immutable variant holding a data value of a supported MLFeatureType
--
-- MLFeatureValue does not support type conversion in its accessor properties. It can also have a missing or undefined value of a well defined type.
-- 
-- Phantom type for @MLFeatureValue@.
data MLFeatureValue

instance IsObjCObject (Id MLFeatureValue) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLFeatureValue"

class IsNSObject a => IsMLFeatureValue a where
  toMLFeatureValue :: a -> Id MLFeatureValue

instance IsMLFeatureValue (Id MLFeatureValue) where
  toMLFeatureValue = unsafeCastId

instance IsNSObject (Id MLFeatureValue) where
  toNSObject = unsafeCastId

-- ---------- MLImageConstraint ----------

-- | MLImageConstraint
--
-- Constraint on image properties.
-- 
-- Phantom type for @MLImageConstraint@.
data MLImageConstraint

instance IsObjCObject (Id MLImageConstraint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLImageConstraint"

class IsNSObject a => IsMLImageConstraint a where
  toMLImageConstraint :: a -> Id MLImageConstraint

instance IsMLImageConstraint (Id MLImageConstraint) where
  toMLImageConstraint = unsafeCastId

instance IsNSObject (Id MLImageConstraint) where
  toNSObject = unsafeCastId

-- ---------- MLImageSize ----------

-- | Phantom type for @MLImageSize@.
data MLImageSize

instance IsObjCObject (Id MLImageSize) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLImageSize"

class IsNSObject a => IsMLImageSize a where
  toMLImageSize :: a -> Id MLImageSize

instance IsMLImageSize (Id MLImageSize) where
  toMLImageSize = unsafeCastId

instance IsNSObject (Id MLImageSize) where
  toNSObject = unsafeCastId

-- ---------- MLImageSizeConstraint ----------

-- | Phantom type for @MLImageSizeConstraint@.
data MLImageSizeConstraint

instance IsObjCObject (Id MLImageSizeConstraint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLImageSizeConstraint"

class IsNSObject a => IsMLImageSizeConstraint a where
  toMLImageSizeConstraint :: a -> Id MLImageSizeConstraint

instance IsMLImageSizeConstraint (Id MLImageSizeConstraint) where
  toMLImageSizeConstraint = unsafeCastId

instance IsNSObject (Id MLImageSizeConstraint) where
  toNSObject = unsafeCastId

-- ---------- MLKey ----------

-- | A class representing key used to store any value against
-- 
-- Phantom type for @MLKey@.
data MLKey

instance IsObjCObject (Id MLKey) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLKey"

class IsNSObject a => IsMLKey a where
  toMLKey :: a -> Id MLKey

instance IsMLKey (Id MLKey) where
  toMLKey = unsafeCastId

instance IsNSObject (Id MLKey) where
  toNSObject = unsafeCastId

-- ---------- MLModel ----------

-- | MLModel
--
-- Construct a model and evaluate on a specific set of input features. Inputs and outputs are accessed via the MLFeatureProvider protocol. Returns a model or nil if there is an error.
-- 
-- Phantom type for @MLModel@.
data MLModel

instance IsObjCObject (Id MLModel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLModel"

class IsNSObject a => IsMLModel a where
  toMLModel :: a -> Id MLModel

instance IsMLModel (Id MLModel) where
  toMLModel = unsafeCastId

instance IsNSObject (Id MLModel) where
  toNSObject = unsafeCastId

-- ---------- MLModelAsset ----------

-- | Phantom type for @MLModelAsset@.
data MLModelAsset

instance IsObjCObject (Id MLModelAsset) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLModelAsset"

class IsNSObject a => IsMLModelAsset a where
  toMLModelAsset :: a -> Id MLModelAsset

instance IsMLModelAsset (Id MLModelAsset) where
  toMLModelAsset = unsafeCastId

instance IsNSObject (Id MLModelAsset) where
  toNSObject = unsafeCastId

-- ---------- MLModelCollection ----------

-- | MLModelCollection
--
-- A collection of models managed as part of Core ML Model Deployment.
-- 
-- Phantom type for @MLModelCollection@.
data MLModelCollection

instance IsObjCObject (Id MLModelCollection) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLModelCollection"

class IsNSObject a => IsMLModelCollection a where
  toMLModelCollection :: a -> Id MLModelCollection

instance IsMLModelCollection (Id MLModelCollection) where
  toMLModelCollection = unsafeCastId

instance IsNSObject (Id MLModelCollection) where
  toNSObject = unsafeCastId

-- ---------- MLModelCollectionEntry ----------

-- | MLModelCollectionEntry Information about a model in a model collection.
-- 
-- Phantom type for @MLModelCollectionEntry@.
data MLModelCollectionEntry

instance IsObjCObject (Id MLModelCollectionEntry) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLModelCollectionEntry"

class IsNSObject a => IsMLModelCollectionEntry a where
  toMLModelCollectionEntry :: a -> Id MLModelCollectionEntry

instance IsMLModelCollectionEntry (Id MLModelCollectionEntry) where
  toMLModelCollectionEntry = unsafeCastId

instance IsNSObject (Id MLModelCollectionEntry) where
  toNSObject = unsafeCastId

-- ---------- MLModelConfiguration ----------

-- | An object to hold options for loading a model.
-- 
-- Phantom type for @MLModelConfiguration@.
data MLModelConfiguration

instance IsObjCObject (Id MLModelConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLModelConfiguration"

class IsNSObject a => IsMLModelConfiguration a where
  toMLModelConfiguration :: a -> Id MLModelConfiguration

instance IsMLModelConfiguration (Id MLModelConfiguration) where
  toMLModelConfiguration = unsafeCastId

instance IsNSObject (Id MLModelConfiguration) where
  toNSObject = unsafeCastId

-- ---------- MLModelDescription ----------

-- | A description of a model containing input and output feature descriptions, optionally outputted features with special meaning and metadata.
-- 
-- Phantom type for @MLModelDescription@.
data MLModelDescription

instance IsObjCObject (Id MLModelDescription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLModelDescription"

class IsNSObject a => IsMLModelDescription a where
  toMLModelDescription :: a -> Id MLModelDescription

instance IsMLModelDescription (Id MLModelDescription) where
  toMLModelDescription = unsafeCastId

instance IsNSObject (Id MLModelDescription) where
  toNSObject = unsafeCastId

-- ---------- MLMultiArray ----------

-- | Multidimensional Array
-- 
-- Phantom type for @MLMultiArray@.
data MLMultiArray

instance IsObjCObject (Id MLMultiArray) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLMultiArray"

class IsNSObject a => IsMLMultiArray a where
  toMLMultiArray :: a -> Id MLMultiArray

instance IsMLMultiArray (Id MLMultiArray) where
  toMLMultiArray = unsafeCastId

instance IsNSObject (Id MLMultiArray) where
  toNSObject = unsafeCastId

-- ---------- MLMultiArrayConstraint ----------

-- | Constraint describing expected MLMultiArray properties
-- 
-- Phantom type for @MLMultiArrayConstraint@.
data MLMultiArrayConstraint

instance IsObjCObject (Id MLMultiArrayConstraint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLMultiArrayConstraint"

class IsNSObject a => IsMLMultiArrayConstraint a where
  toMLMultiArrayConstraint :: a -> Id MLMultiArrayConstraint

instance IsMLMultiArrayConstraint (Id MLMultiArrayConstraint) where
  toMLMultiArrayConstraint = unsafeCastId

instance IsNSObject (Id MLMultiArrayConstraint) where
  toNSObject = unsafeCastId

-- ---------- MLMultiArrayShapeConstraint ----------

-- | Phantom type for @MLMultiArrayShapeConstraint@.
data MLMultiArrayShapeConstraint

instance IsObjCObject (Id MLMultiArrayShapeConstraint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLMultiArrayShapeConstraint"

class IsNSObject a => IsMLMultiArrayShapeConstraint a where
  toMLMultiArrayShapeConstraint :: a -> Id MLMultiArrayShapeConstraint

instance IsMLMultiArrayShapeConstraint (Id MLMultiArrayShapeConstraint) where
  toMLMultiArrayShapeConstraint = unsafeCastId

instance IsNSObject (Id MLMultiArrayShapeConstraint) where
  toNSObject = unsafeCastId

-- ---------- MLNumericConstraint ----------

-- | Allows enforcement of constraints on the values of update parameters.
-- 
-- Phantom type for @MLNumericConstraint@.
data MLNumericConstraint

instance IsObjCObject (Id MLNumericConstraint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLNumericConstraint"

class IsNSObject a => IsMLNumericConstraint a where
  toMLNumericConstraint :: a -> Id MLNumericConstraint

instance IsMLNumericConstraint (Id MLNumericConstraint) where
  toMLNumericConstraint = unsafeCastId

instance IsNSObject (Id MLNumericConstraint) where
  toNSObject = unsafeCastId

-- ---------- MLParameterDescription ----------

-- | Describes a model parameter along with a default value and any applicable constaint on the values.
-- 
-- Phantom type for @MLParameterDescription@.
data MLParameterDescription

instance IsObjCObject (Id MLParameterDescription) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLParameterDescription"

class IsNSObject a => IsMLParameterDescription a where
  toMLParameterDescription :: a -> Id MLParameterDescription

instance IsMLParameterDescription (Id MLParameterDescription) where
  toMLParameterDescription = unsafeCastId

instance IsNSObject (Id MLParameterDescription) where
  toNSObject = unsafeCastId

-- ---------- MLPredictionOptions ----------

-- | MLPredictionOptions
--
-- An object to hold options / controls / parameters of how model prediction is performed
-- 
-- Phantom type for @MLPredictionOptions@.
data MLPredictionOptions

instance IsObjCObject (Id MLPredictionOptions) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLPredictionOptions"

class IsNSObject a => IsMLPredictionOptions a where
  toMLPredictionOptions :: a -> Id MLPredictionOptions

instance IsMLPredictionOptions (Id MLPredictionOptions) where
  toMLPredictionOptions = unsafeCastId

instance IsNSObject (Id MLPredictionOptions) where
  toNSObject = unsafeCastId

-- ---------- MLSequence ----------

-- | An immutable container holding an ordered collection of feature values of the same type.
-- 
-- Phantom type for @MLSequence@.
data MLSequence

instance IsObjCObject (Id MLSequence) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLSequence"

class IsNSObject a => IsMLSequence a where
  toMLSequence :: a -> Id MLSequence

instance IsMLSequence (Id MLSequence) where
  toMLSequence = unsafeCastId

instance IsNSObject (Id MLSequence) where
  toNSObject = unsafeCastId

-- ---------- MLSequenceConstraint ----------

-- | Constraint describing expected MLSequence properties
-- 
-- Phantom type for @MLSequenceConstraint@.
data MLSequenceConstraint

instance IsObjCObject (Id MLSequenceConstraint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLSequenceConstraint"

class IsNSObject a => IsMLSequenceConstraint a where
  toMLSequenceConstraint :: a -> Id MLSequenceConstraint

instance IsMLSequenceConstraint (Id MLSequenceConstraint) where
  toMLSequenceConstraint = unsafeCastId

instance IsNSObject (Id MLSequenceConstraint) where
  toNSObject = unsafeCastId

-- ---------- MLTask ----------

-- | Class that abstracts state transitions and basic task controls.
-- 
-- Phantom type for @MLTask@.
data MLTask

instance IsObjCObject (Id MLTask) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLTask"

class IsNSObject a => IsMLTask a where
  toMLTask :: a -> Id MLTask

instance IsMLTask (Id MLTask) where
  toMLTask = unsafeCastId

instance IsNSObject (Id MLTask) where
  toNSObject = unsafeCastId

-- ---------- MLUpdateContext ----------

-- | Provides context for the update process when the progress or completion handlers are invoked.
-- 
-- Phantom type for @MLUpdateContext@.
data MLUpdateContext

instance IsObjCObject (Id MLUpdateContext) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLUpdateContext"

class IsNSObject a => IsMLUpdateContext a where
  toMLUpdateContext :: a -> Id MLUpdateContext

instance IsMLUpdateContext (Id MLUpdateContext) where
  toMLUpdateContext = unsafeCastId

instance IsNSObject (Id MLUpdateContext) where
  toNSObject = unsafeCastId

-- ---------- MLUpdateProgressHandlers ----------

-- | Allows applications to register for progress and completion handlers.
-- 
-- Phantom type for @MLUpdateProgressHandlers@.
data MLUpdateProgressHandlers

instance IsObjCObject (Id MLUpdateProgressHandlers) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLUpdateProgressHandlers"

class IsNSObject a => IsMLUpdateProgressHandlers a where
  toMLUpdateProgressHandlers :: a -> Id MLUpdateProgressHandlers

instance IsMLUpdateProgressHandlers (Id MLUpdateProgressHandlers) where
  toMLUpdateProgressHandlers = unsafeCastId

instance IsNSObject (Id MLUpdateProgressHandlers) where
  toNSObject = unsafeCastId

-- ---------- MLMetricKey ----------

-- | A class to specify list of supported model update metrics.
-- 
-- Phantom type for @MLMetricKey@.
data MLMetricKey

instance IsObjCObject (Id MLMetricKey) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLMetricKey"

class IsMLKey a => IsMLMetricKey a where
  toMLMetricKey :: a -> Id MLMetricKey

instance IsMLMetricKey (Id MLMetricKey) where
  toMLMetricKey = unsafeCastId

instance IsMLKey (Id MLMetricKey) where
  toMLKey = unsafeCastId

instance IsNSObject (Id MLMetricKey) where
  toNSObject = unsafeCastId

-- ---------- MLParameterKey ----------

-- | A class to specify list of supported model update parameters.
-- 
-- Phantom type for @MLParameterKey@.
data MLParameterKey

instance IsObjCObject (Id MLParameterKey) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLParameterKey"

class IsMLKey a => IsMLParameterKey a where
  toMLParameterKey :: a -> Id MLParameterKey

instance IsMLParameterKey (Id MLParameterKey) where
  toMLParameterKey = unsafeCastId

instance IsMLKey (Id MLParameterKey) where
  toMLKey = unsafeCastId

instance IsNSObject (Id MLParameterKey) where
  toNSObject = unsafeCastId

-- ---------- MLUpdateTask ----------

-- | Main class for setting up and controlling a model update. It provides some utility class methods for performing an update synchronously as well as class constructors for configuring an update and give developers control for the execution of that update.
-- 
-- Phantom type for @MLUpdateTask@.
data MLUpdateTask

instance IsObjCObject (Id MLUpdateTask) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "MLUpdateTask"

class IsMLTask a => IsMLUpdateTask a where
  toMLUpdateTask :: a -> Id MLUpdateTask

instance IsMLUpdateTask (Id MLUpdateTask) where
  toMLUpdateTask = unsafeCastId

instance IsMLTask (Id MLUpdateTask) where
  toMLTask = unsafeCastId

instance IsNSObject (Id MLUpdateTask) where
  toNSObject = unsafeCastId
