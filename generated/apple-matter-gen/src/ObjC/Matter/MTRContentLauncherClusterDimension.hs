{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRContentLauncherClusterDimension@.
module ObjC.Matter.MTRContentLauncherClusterDimension
  ( MTRContentLauncherClusterDimension
  , IsMTRContentLauncherClusterDimension(..)
  , init_
  , copyWithZone
  , width
  , setWidth
  , height
  , setHeight
  , metric
  , setMetric
  , copyWithZoneSelector
  , heightSelector
  , initSelector
  , metricSelector
  , setHeightSelector
  , setMetricSelector
  , setWidthSelector
  , widthSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTRContentLauncherClusterDimension mtrContentLauncherClusterDimension => mtrContentLauncherClusterDimension -> IO (Id MTRContentLauncherClusterDimension)
init_ mtrContentLauncherClusterDimension =
  sendOwnedMessage mtrContentLauncherClusterDimension initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRContentLauncherClusterDimension mtrContentLauncherClusterDimension => mtrContentLauncherClusterDimension -> Ptr () -> IO RawId
copyWithZone mtrContentLauncherClusterDimension zone =
  sendOwnedMessage mtrContentLauncherClusterDimension copyWithZoneSelector zone

-- | @- width@
width :: IsMTRContentLauncherClusterDimension mtrContentLauncherClusterDimension => mtrContentLauncherClusterDimension -> IO (Id NSNumber)
width mtrContentLauncherClusterDimension =
  sendMessage mtrContentLauncherClusterDimension widthSelector

-- | @- setWidth:@
setWidth :: (IsMTRContentLauncherClusterDimension mtrContentLauncherClusterDimension, IsNSNumber value) => mtrContentLauncherClusterDimension -> value -> IO ()
setWidth mtrContentLauncherClusterDimension value =
  sendMessage mtrContentLauncherClusterDimension setWidthSelector (toNSNumber value)

-- | @- height@
height :: IsMTRContentLauncherClusterDimension mtrContentLauncherClusterDimension => mtrContentLauncherClusterDimension -> IO (Id NSNumber)
height mtrContentLauncherClusterDimension =
  sendMessage mtrContentLauncherClusterDimension heightSelector

-- | @- setHeight:@
setHeight :: (IsMTRContentLauncherClusterDimension mtrContentLauncherClusterDimension, IsNSNumber value) => mtrContentLauncherClusterDimension -> value -> IO ()
setHeight mtrContentLauncherClusterDimension value =
  sendMessage mtrContentLauncherClusterDimension setHeightSelector (toNSNumber value)

-- | @- metric@
metric :: IsMTRContentLauncherClusterDimension mtrContentLauncherClusterDimension => mtrContentLauncherClusterDimension -> IO (Id NSNumber)
metric mtrContentLauncherClusterDimension =
  sendMessage mtrContentLauncherClusterDimension metricSelector

-- | @- setMetric:@
setMetric :: (IsMTRContentLauncherClusterDimension mtrContentLauncherClusterDimension, IsNSNumber value) => mtrContentLauncherClusterDimension -> value -> IO ()
setMetric mtrContentLauncherClusterDimension value =
  sendMessage mtrContentLauncherClusterDimension setMetricSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRContentLauncherClusterDimension)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @width@
widthSelector :: Selector '[] (Id NSNumber)
widthSelector = mkSelector "width"

-- | @Selector@ for @setWidth:@
setWidthSelector :: Selector '[Id NSNumber] ()
setWidthSelector = mkSelector "setWidth:"

-- | @Selector@ for @height@
heightSelector :: Selector '[] (Id NSNumber)
heightSelector = mkSelector "height"

-- | @Selector@ for @setHeight:@
setHeightSelector :: Selector '[Id NSNumber] ()
setHeightSelector = mkSelector "setHeight:"

-- | @Selector@ for @metric@
metricSelector :: Selector '[] (Id NSNumber)
metricSelector = mkSelector "metric"

-- | @Selector@ for @setMetric:@
setMetricSelector :: Selector '[Id NSNumber] ()
setMetricSelector = mkSelector "setMetric:"

