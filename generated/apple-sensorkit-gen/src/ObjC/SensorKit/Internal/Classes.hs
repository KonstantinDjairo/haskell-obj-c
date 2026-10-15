{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.SensorKit.Internal.Classes (
    module ObjC.SensorKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- SRAmbientLightSample ----------

-- | Phantom type for @SRAmbientLightSample@.
data SRAmbientLightSample

instance IsObjCObject (Id SRAmbientLightSample) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRAmbientLightSample"

class IsNSObject a => IsSRAmbientLightSample a where
  toSRAmbientLightSample :: a -> Id SRAmbientLightSample

instance IsSRAmbientLightSample (Id SRAmbientLightSample) where
  toSRAmbientLightSample = unsafeCastId

instance IsNSObject (Id SRAmbientLightSample) where
  toNSObject = unsafeCastId

-- ---------- SRApplicationUsage ----------

-- | Phantom type for @SRApplicationUsage@.
data SRApplicationUsage

instance IsObjCObject (Id SRApplicationUsage) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRApplicationUsage"

class IsNSObject a => IsSRApplicationUsage a where
  toSRApplicationUsage :: a -> Id SRApplicationUsage

instance IsSRApplicationUsage (Id SRApplicationUsage) where
  toSRApplicationUsage = unsafeCastId

instance IsNSObject (Id SRApplicationUsage) where
  toNSObject = unsafeCastId

-- ---------- SRDeletionRecord ----------

-- | Phantom type for @SRDeletionRecord@.
data SRDeletionRecord

instance IsObjCObject (Id SRDeletionRecord) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRDeletionRecord"

class IsNSObject a => IsSRDeletionRecord a where
  toSRDeletionRecord :: a -> Id SRDeletionRecord

instance IsSRDeletionRecord (Id SRDeletionRecord) where
  toSRDeletionRecord = unsafeCastId

instance IsNSObject (Id SRDeletionRecord) where
  toNSObject = unsafeCastId

-- ---------- SRDevice ----------

-- | Phantom type for @SRDevice@.
data SRDevice

instance IsObjCObject (Id SRDevice) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRDevice"

class IsNSObject a => IsSRDevice a where
  toSRDevice :: a -> Id SRDevice

instance IsSRDevice (Id SRDevice) where
  toSRDevice = unsafeCastId

instance IsNSObject (Id SRDevice) where
  toNSObject = unsafeCastId

-- ---------- SRDeviceUsageReport ----------

-- | Phantom type for @SRDeviceUsageReport@.
data SRDeviceUsageReport

instance IsObjCObject (Id SRDeviceUsageReport) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRDeviceUsageReport"

class IsNSObject a => IsSRDeviceUsageReport a where
  toSRDeviceUsageReport :: a -> Id SRDeviceUsageReport

instance IsSRDeviceUsageReport (Id SRDeviceUsageReport) where
  toSRDeviceUsageReport = unsafeCastId

instance IsNSObject (Id SRDeviceUsageReport) where
  toNSObject = unsafeCastId

-- ---------- SRFetchRequest ----------

-- | Phantom type for @SRFetchRequest@.
data SRFetchRequest

instance IsObjCObject (Id SRFetchRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRFetchRequest"

class IsNSObject a => IsSRFetchRequest a where
  toSRFetchRequest :: a -> Id SRFetchRequest

instance IsSRFetchRequest (Id SRFetchRequest) where
  toSRFetchRequest = unsafeCastId

instance IsNSObject (Id SRFetchRequest) where
  toNSObject = unsafeCastId

-- ---------- SRFetchResult ----------

-- | Phantom type for @SRFetchResult@.
data SRFetchResult

instance IsObjCObject (Id SRFetchResult) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRFetchResult"

class IsNSObject a => IsSRFetchResult a where
  toSRFetchResult :: a -> Id SRFetchResult

instance IsSRFetchResult (Id SRFetchResult) where
  toSRFetchResult = unsafeCastId

instance IsNSObject (Id SRFetchResult) where
  toNSObject = unsafeCastId

-- ---------- SRKeyboardMetrics ----------

-- | Phantom type for @SRKeyboardMetrics@.
data SRKeyboardMetrics

instance IsObjCObject (Id SRKeyboardMetrics) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRKeyboardMetrics"

class IsNSObject a => IsSRKeyboardMetrics a where
  toSRKeyboardMetrics :: a -> Id SRKeyboardMetrics

instance IsSRKeyboardMetrics (Id SRKeyboardMetrics) where
  toSRKeyboardMetrics = unsafeCastId

instance IsNSObject (Id SRKeyboardMetrics) where
  toNSObject = unsafeCastId

-- ---------- SRKeyboardProbabilityMetric ----------

-- | Phantom type for @SRKeyboardProbabilityMetric@.
data SRKeyboardProbabilityMetric

instance IsObjCObject (Id SRKeyboardProbabilityMetric) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRKeyboardProbabilityMetric"

class IsNSObject a => IsSRKeyboardProbabilityMetric a where
  toSRKeyboardProbabilityMetric :: a -> Id SRKeyboardProbabilityMetric

instance IsSRKeyboardProbabilityMetric (Id SRKeyboardProbabilityMetric) where
  toSRKeyboardProbabilityMetric = unsafeCastId

instance IsNSObject (Id SRKeyboardProbabilityMetric) where
  toNSObject = unsafeCastId

-- ---------- SRMessagesUsageReport ----------

-- | Phantom type for @SRMessagesUsageReport@.
data SRMessagesUsageReport

instance IsObjCObject (Id SRMessagesUsageReport) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRMessagesUsageReport"

class IsNSObject a => IsSRMessagesUsageReport a where
  toSRMessagesUsageReport :: a -> Id SRMessagesUsageReport

instance IsSRMessagesUsageReport (Id SRMessagesUsageReport) where
  toSRMessagesUsageReport = unsafeCastId

instance IsNSObject (Id SRMessagesUsageReport) where
  toNSObject = unsafeCastId

-- ---------- SRNotificationUsage ----------

-- | Phantom type for @SRNotificationUsage@.
data SRNotificationUsage

instance IsObjCObject (Id SRNotificationUsage) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRNotificationUsage"

class IsNSObject a => IsSRNotificationUsage a where
  toSRNotificationUsage :: a -> Id SRNotificationUsage

instance IsSRNotificationUsage (Id SRNotificationUsage) where
  toSRNotificationUsage = unsafeCastId

instance IsNSObject (Id SRNotificationUsage) where
  toNSObject = unsafeCastId

-- ---------- SRPhoneUsageReport ----------

-- | Phantom type for @SRPhoneUsageReport@.
data SRPhoneUsageReport

instance IsObjCObject (Id SRPhoneUsageReport) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRPhoneUsageReport"

class IsNSObject a => IsSRPhoneUsageReport a where
  toSRPhoneUsageReport :: a -> Id SRPhoneUsageReport

instance IsSRPhoneUsageReport (Id SRPhoneUsageReport) where
  toSRPhoneUsageReport = unsafeCastId

instance IsNSObject (Id SRPhoneUsageReport) where
  toNSObject = unsafeCastId

-- ---------- SRSensorReader ----------

-- | Phantom type for @SRSensorReader@.
data SRSensorReader

instance IsObjCObject (Id SRSensorReader) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRSensorReader"

class IsNSObject a => IsSRSensorReader a where
  toSRSensorReader :: a -> Id SRSensorReader

instance IsSRSensorReader (Id SRSensorReader) where
  toSRSensorReader = unsafeCastId

instance IsNSObject (Id SRSensorReader) where
  toNSObject = unsafeCastId

-- ---------- SRSupplementalCategory ----------

-- | SRSupplementalCategory
--
-- A supplemental category to provide more context than just the app category
--
-- The app categories are very general. Providing a supplemental category will allow more context about the specific app while not revealing the exact app name.
-- 
-- Phantom type for @SRSupplementalCategory@.
data SRSupplementalCategory

instance IsObjCObject (Id SRSupplementalCategory) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRSupplementalCategory"

class IsNSObject a => IsSRSupplementalCategory a where
  toSRSupplementalCategory :: a -> Id SRSupplementalCategory

instance IsSRSupplementalCategory (Id SRSupplementalCategory) where
  toSRSupplementalCategory = unsafeCastId

instance IsNSObject (Id SRSupplementalCategory) where
  toNSObject = unsafeCastId

-- ---------- SRTextInputSession ----------

-- | Phantom type for @SRTextInputSession@.
data SRTextInputSession

instance IsObjCObject (Id SRTextInputSession) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRTextInputSession"

class IsNSObject a => IsSRTextInputSession a where
  toSRTextInputSession :: a -> Id SRTextInputSession

instance IsSRTextInputSession (Id SRTextInputSession) where
  toSRTextInputSession = unsafeCastId

instance IsNSObject (Id SRTextInputSession) where
  toNSObject = unsafeCastId

-- ---------- SRVisit ----------

-- | Phantom type for @SRVisit@.
data SRVisit

instance IsObjCObject (Id SRVisit) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRVisit"

class IsNSObject a => IsSRVisit a where
  toSRVisit :: a -> Id SRVisit

instance IsSRVisit (Id SRVisit) where
  toSRVisit = unsafeCastId

instance IsNSObject (Id SRVisit) where
  toNSObject = unsafeCastId

-- ---------- SRWebUsage ----------

-- | Phantom type for @SRWebUsage@.
data SRWebUsage

instance IsObjCObject (Id SRWebUsage) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRWebUsage"

class IsNSObject a => IsSRWebUsage a where
  toSRWebUsage :: a -> Id SRWebUsage

instance IsSRWebUsage (Id SRWebUsage) where
  toSRWebUsage = unsafeCastId

instance IsNSObject (Id SRWebUsage) where
  toNSObject = unsafeCastId

-- ---------- SRWristDetection ----------

-- | Phantom type for @SRWristDetection@.
data SRWristDetection

instance IsObjCObject (Id SRWristDetection) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "SRWristDetection"

class IsNSObject a => IsSRWristDetection a where
  toSRWristDetection :: a -> Id SRWristDetection

instance IsSRWristDetection (Id SRWristDetection) where
  toSRWristDetection = unsafeCastId

instance IsNSObject (Id SRWristDetection) where
  toNSObject = unsafeCastId
