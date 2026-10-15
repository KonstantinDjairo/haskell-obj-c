{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A point value stores all the attributes of a PKStroke at a specific point. @PKStrokePoint@ stores its properties compressed, the value read for a property may not exactly equal the value set for a property.
--
-- Generated bindings for @PKStrokePoint@.
module ObjC.PencilKit.PKStrokePoint
  ( PKStrokePoint
  , IsPKStrokePoint(..)
  , init_
  , timeOffset
  , opacity
  , azimuth
  , force
  , altitude
  , altitudeSelector
  , azimuthSelector
  , forceSelector
  , initSelector
  , opacitySelector
  , timeOffsetSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PencilKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsPKStrokePoint pkStrokePoint => pkStrokePoint -> IO (Id PKStrokePoint)
init_ pkStrokePoint =
  sendOwnedMessage pkStrokePoint initSelector

-- | Time offset since the start of the stroke path in seconds.
--
-- ObjC selector: @- timeOffset@
timeOffset :: IsPKStrokePoint pkStrokePoint => pkStrokePoint -> IO CDouble
timeOffset pkStrokePoint =
  sendMessage pkStrokePoint timeOffsetSelector

-- | Opacity of the point 0-2.
--
-- ObjC selector: @- opacity@
opacity :: IsPKStrokePoint pkStrokePoint => pkStrokePoint -> IO CDouble
opacity pkStrokePoint =
  sendMessage pkStrokePoint opacitySelector

-- | Azimuth of the point in radians, 0.0-2π radians
--
-- ObjC selector: @- azimuth@
azimuth :: IsPKStrokePoint pkStrokePoint => pkStrokePoint -> IO CDouble
azimuth pkStrokePoint =
  sendMessage pkStrokePoint azimuthSelector

-- | Force used to create this point.
--
-- ObjC selector: @- force@
force :: IsPKStrokePoint pkStrokePoint => pkStrokePoint -> IO CDouble
force pkStrokePoint =
  sendMessage pkStrokePoint forceSelector

-- | Altitude used to create this point in radians, 0.0-π/2 radians
--
-- ObjC selector: @- altitude@
altitude :: IsPKStrokePoint pkStrokePoint => pkStrokePoint -> IO CDouble
altitude pkStrokePoint =
  sendMessage pkStrokePoint altitudeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id PKStrokePoint)
initSelector = mkSelector "init"

-- | @Selector@ for @timeOffset@
timeOffsetSelector :: Selector '[] CDouble
timeOffsetSelector = mkSelector "timeOffset"

-- | @Selector@ for @opacity@
opacitySelector :: Selector '[] CDouble
opacitySelector = mkSelector "opacity"

-- | @Selector@ for @azimuth@
azimuthSelector :: Selector '[] CDouble
azimuthSelector = mkSelector "azimuth"

-- | @Selector@ for @force@
forceSelector :: Selector '[] CDouble
forceSelector = mkSelector "force"

-- | @Selector@ for @altitude@
altitudeSelector :: Selector '[] CDouble
altitudeSelector = mkSelector "altitude"

