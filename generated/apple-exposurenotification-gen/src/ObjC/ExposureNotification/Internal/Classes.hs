{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.ExposureNotification.Internal.Classes (
    module ObjC.ExposureNotification.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- ENExposureConfiguration ----------

-- | Configuration parameters for exposure detection.
--
-- Configuration parameters are used to calculate an exposure duration for each exposure using the following formula.
--
-- exposureDuration = 		( ( immediateDuration * immediateDurationWeight ) + 		  ( nearDuration      * nearDurationWeight ) + 		  ( mediumDuration    * mediumDurationWeight ) + 		  ( otherDuration     * otherDurationWeight ) ) infectiousnessWeight ) reportTypeWeight )
-- 
-- Phantom type for @ENExposureConfiguration@.
data ENExposureConfiguration

instance IsObjCObject (Id ENExposureConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENExposureConfiguration"

class IsNSObject a => IsENExposureConfiguration a where
  toENExposureConfiguration :: a -> Id ENExposureConfiguration

instance IsENExposureConfiguration (Id ENExposureConfiguration) where
  toENExposureConfiguration = unsafeCastId

instance IsNSObject (Id ENExposureConfiguration) where
  toNSObject = unsafeCastId

-- ---------- ENExposureDaySummary ----------

-- | Summary of exposure info for a single day.
-- 
-- Phantom type for @ENExposureDaySummary@.
data ENExposureDaySummary

instance IsObjCObject (Id ENExposureDaySummary) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENExposureDaySummary"

class IsNSObject a => IsENExposureDaySummary a where
  toENExposureDaySummary :: a -> Id ENExposureDaySummary

instance IsENExposureDaySummary (Id ENExposureDaySummary) where
  toENExposureDaySummary = unsafeCastId

instance IsNSObject (Id ENExposureDaySummary) where
  toNSObject = unsafeCastId

-- ---------- ENExposureDetectionSummary ----------

-- | Summary of exposure detection.
-- 
-- Phantom type for @ENExposureDetectionSummary@.
data ENExposureDetectionSummary

instance IsObjCObject (Id ENExposureDetectionSummary) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENExposureDetectionSummary"

class IsNSObject a => IsENExposureDetectionSummary a where
  toENExposureDetectionSummary :: a -> Id ENExposureDetectionSummary

instance IsENExposureDetectionSummary (Id ENExposureDetectionSummary) where
  toENExposureDetectionSummary = unsafeCastId

instance IsNSObject (Id ENExposureDetectionSummary) where
  toNSObject = unsafeCastId

-- ---------- ENExposureInfo ----------

-- | Info about an exposure.
-- 
-- Phantom type for @ENExposureInfo@.
data ENExposureInfo

instance IsObjCObject (Id ENExposureInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENExposureInfo"

class IsNSObject a => IsENExposureInfo a where
  toENExposureInfo :: a -> Id ENExposureInfo

instance IsENExposureInfo (Id ENExposureInfo) where
  toENExposureInfo = unsafeCastId

instance IsNSObject (Id ENExposureInfo) where
  toNSObject = unsafeCastId

-- ---------- ENExposureSummaryItem ----------

-- | Summary for a specific time period or report type.
-- 
-- Phantom type for @ENExposureSummaryItem@.
data ENExposureSummaryItem

instance IsObjCObject (Id ENExposureSummaryItem) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENExposureSummaryItem"

class IsNSObject a => IsENExposureSummaryItem a where
  toENExposureSummaryItem :: a -> Id ENExposureSummaryItem

instance IsENExposureSummaryItem (Id ENExposureSummaryItem) where
  toENExposureSummaryItem = unsafeCastId

instance IsNSObject (Id ENExposureSummaryItem) where
  toNSObject = unsafeCastId

-- ---------- ENExposureWindow ----------

-- | A duration of up to 30 minutes during which beacons from a TEK were observed.
-- 
-- Phantom type for @ENExposureWindow@.
data ENExposureWindow

instance IsObjCObject (Id ENExposureWindow) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENExposureWindow"

class IsNSObject a => IsENExposureWindow a where
  toENExposureWindow :: a -> Id ENExposureWindow

instance IsENExposureWindow (Id ENExposureWindow) where
  toENExposureWindow = unsafeCastId

instance IsNSObject (Id ENExposureWindow) where
  toNSObject = unsafeCastId

-- ---------- ENManager ----------

-- | Manages Exposure Notification functionality.
-- 
-- Phantom type for @ENManager@.
data ENManager

instance IsObjCObject (Id ENManager) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENManager"

class IsNSObject a => IsENManager a where
  toENManager :: a -> Id ENManager

instance IsENManager (Id ENManager) where
  toENManager = unsafeCastId

instance IsNSObject (Id ENManager) where
  toNSObject = unsafeCastId

-- ---------- ENScanInstance ----------

-- | Aggregation of attenuations of all of this TEK's beacons received during a scan.
-- 
-- Phantom type for @ENScanInstance@.
data ENScanInstance

instance IsObjCObject (Id ENScanInstance) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENScanInstance"

class IsNSObject a => IsENScanInstance a where
  toENScanInstance :: a -> Id ENScanInstance

instance IsENScanInstance (Id ENScanInstance) where
  toENScanInstance = unsafeCastId

instance IsNSObject (Id ENScanInstance) where
  toNSObject = unsafeCastId

-- ---------- ENTemporaryExposureKey ----------

-- | Key used to generate rolling proximity identifiers.
-- 
-- Phantom type for @ENTemporaryExposureKey@.
data ENTemporaryExposureKey

instance IsObjCObject (Id ENTemporaryExposureKey) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ENTemporaryExposureKey"

class IsNSObject a => IsENTemporaryExposureKey a where
  toENTemporaryExposureKey :: a -> Id ENTemporaryExposureKey

instance IsENTemporaryExposureKey (Id ENTemporaryExposureKey) where
  toENTemporaryExposureKey = unsafeCastId

instance IsNSObject (Id ENTemporaryExposureKey) where
  toNSObject = unsafeCastId
