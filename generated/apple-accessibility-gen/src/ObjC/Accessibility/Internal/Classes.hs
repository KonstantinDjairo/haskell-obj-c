{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.Accessibility.Internal.Classes (
    module ObjC.Accessibility.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes

-- ---------- AXBrailleMap ----------

-- | Phantom type for @AXBrailleMap@.
data AXBrailleMap

instance IsObjCObject (Id AXBrailleMap) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXBrailleMap"

class IsNSObject a => IsAXBrailleMap a where
  toAXBrailleMap :: a -> Id AXBrailleMap

instance IsAXBrailleMap (Id AXBrailleMap) where
  toAXBrailleMap = unsafeCastId

instance IsNSObject (Id AXBrailleMap) where
  toNSObject = unsafeCastId

-- ---------- AXCategoricalDataAxisDescriptor ----------

-- | Phantom type for @AXCategoricalDataAxisDescriptor@.
data AXCategoricalDataAxisDescriptor

instance IsObjCObject (Id AXCategoricalDataAxisDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXCategoricalDataAxisDescriptor"

class IsNSObject a => IsAXCategoricalDataAxisDescriptor a where
  toAXCategoricalDataAxisDescriptor :: a -> Id AXCategoricalDataAxisDescriptor

instance IsAXCategoricalDataAxisDescriptor (Id AXCategoricalDataAxisDescriptor) where
  toAXCategoricalDataAxisDescriptor = unsafeCastId

instance IsNSObject (Id AXCategoricalDataAxisDescriptor) where
  toNSObject = unsafeCastId

-- ---------- AXChartDescriptor ----------

-- | The top-level descriptor object for an accessible chart.
-- 
-- Phantom type for @AXChartDescriptor@.
data AXChartDescriptor

instance IsObjCObject (Id AXChartDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXChartDescriptor"

class IsNSObject a => IsAXChartDescriptor a where
  toAXChartDescriptor :: a -> Id AXChartDescriptor

instance IsAXChartDescriptor (Id AXChartDescriptor) where
  toAXChartDescriptor = unsafeCastId

instance IsNSObject (Id AXChartDescriptor) where
  toNSObject = unsafeCastId

-- ---------- AXCustomContent ----------

-- | Phantom type for @AXCustomContent@.
data AXCustomContent

instance IsObjCObject (Id AXCustomContent) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXCustomContent"

class IsNSObject a => IsAXCustomContent a where
  toAXCustomContent :: a -> Id AXCustomContent

instance IsAXCustomContent (Id AXCustomContent) where
  toAXCustomContent = unsafeCastId

instance IsNSObject (Id AXCustomContent) where
  toNSObject = unsafeCastId

-- ---------- AXDataPoint ----------

-- | Provides axis values for a single data point within a series.
-- 
-- Phantom type for @AXDataPoint@.
data AXDataPoint

instance IsObjCObject (Id AXDataPoint) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXDataPoint"

class IsNSObject a => IsAXDataPoint a where
  toAXDataPoint :: a -> Id AXDataPoint

instance IsAXDataPoint (Id AXDataPoint) where
  toAXDataPoint = unsafeCastId

instance IsNSObject (Id AXDataPoint) where
  toNSObject = unsafeCastId

-- ---------- AXDataPointValue ----------

-- | Describes a single data value, either numeric or categorical. Only the @number@ property will be used for data points in a numeric axis, and only the @category@ property will be used for data points in a categorical axis.
-- 
-- Phantom type for @AXDataPointValue@.
data AXDataPointValue

instance IsObjCObject (Id AXDataPointValue) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXDataPointValue"

class IsNSObject a => IsAXDataPointValue a where
  toAXDataPointValue :: a -> Id AXDataPointValue

instance IsAXDataPointValue (Id AXDataPointValue) where
  toAXDataPointValue = unsafeCastId

instance IsNSObject (Id AXDataPointValue) where
  toNSObject = unsafeCastId

-- ---------- AXDataSeriesDescriptor ----------

-- | Provides information about a data series. A chart may have one or many data series.
-- 
-- Phantom type for @AXDataSeriesDescriptor@.
data AXDataSeriesDescriptor

instance IsObjCObject (Id AXDataSeriesDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXDataSeriesDescriptor"

class IsNSObject a => IsAXDataSeriesDescriptor a where
  toAXDataSeriesDescriptor :: a -> Id AXDataSeriesDescriptor

instance IsAXDataSeriesDescriptor (Id AXDataSeriesDescriptor) where
  toAXDataSeriesDescriptor = unsafeCastId

instance IsNSObject (Id AXDataSeriesDescriptor) where
  toNSObject = unsafeCastId

-- ---------- AXLiveAudioGraph ----------

-- | Phantom type for @AXLiveAudioGraph@.
data AXLiveAudioGraph

instance IsObjCObject (Id AXLiveAudioGraph) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXLiveAudioGraph"

class IsNSObject a => IsAXLiveAudioGraph a where
  toAXLiveAudioGraph :: a -> Id AXLiveAudioGraph

instance IsAXLiveAudioGraph (Id AXLiveAudioGraph) where
  toAXLiveAudioGraph = unsafeCastId

instance IsNSObject (Id AXLiveAudioGraph) where
  toNSObject = unsafeCastId

-- ---------- AXNumericDataAxisDescriptor ----------

-- | Phantom type for @AXNumericDataAxisDescriptor@.
data AXNumericDataAxisDescriptor

instance IsObjCObject (Id AXNumericDataAxisDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "AXNumericDataAxisDescriptor"

class IsNSObject a => IsAXNumericDataAxisDescriptor a where
  toAXNumericDataAxisDescriptor :: a -> Id AXNumericDataAxisDescriptor

instance IsAXNumericDataAxisDescriptor (Id AXNumericDataAxisDescriptor) where
  toAXNumericDataAxisDescriptor = unsafeCastId

instance IsNSObject (Id AXNumericDataAxisDescriptor) where
  toNSObject = unsafeCastId
