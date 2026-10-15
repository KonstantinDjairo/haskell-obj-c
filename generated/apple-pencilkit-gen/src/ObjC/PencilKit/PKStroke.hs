{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | The data model value representing a stroke in a @PKDrawing@.
--
-- Generated bindings for @PKStroke@.
module ObjC.PencilKit.PKStroke
  ( PKStroke
  , IsPKStroke(..)
  , ink
  , path
  , mask
  , maskedPathRanges
  , randomSeed
  , inkSelector
  , maskSelector
  , maskedPathRangesSelector
  , pathSelector
  , randomSeedSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PencilKit.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | The ink used to render this stroke.
--
-- ObjC selector: @- ink@
ink :: IsPKStroke pkStroke => pkStroke -> IO (Id PKInk)
ink pkStroke =
  sendMessage pkStroke inkSelector

-- | The B-spline path that describes this stroke.
--
-- ObjC selector: @- path@
path :: IsPKStroke pkStroke => pkStroke -> IO (Id PKStrokePath)
path pkStroke =
  sendMessage pkStroke pathSelector

-- | @- mask@
mask :: IsPKStroke pkStroke => pkStroke -> IO (Id NSBezierPath)
mask pkStroke =
  sendMessage pkStroke maskSelector

-- | These are the parametric parameter ranges of points in @strokePath@ that intersect the stroke's mask.
--
-- ObjC selector: @- maskedPathRanges@
maskedPathRanges :: IsPKStroke pkStroke => pkStroke -> IO (Id NSArray)
maskedPathRanges pkStroke =
  sendMessage pkStroke maskedPathRangesSelector

-- | The random seed for drawing strokes that use randomized effects.
--
-- ObjC selector: @- randomSeed@
randomSeed :: IsPKStroke pkStroke => pkStroke -> IO CUInt
randomSeed pkStroke =
  sendMessage pkStroke randomSeedSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @ink@
inkSelector :: Selector '[] (Id PKInk)
inkSelector = mkSelector "ink"

-- | @Selector@ for @path@
pathSelector :: Selector '[] (Id PKStrokePath)
pathSelector = mkSelector "path"

-- | @Selector@ for @mask@
maskSelector :: Selector '[] (Id NSBezierPath)
maskSelector = mkSelector "mask"

-- | @Selector@ for @maskedPathRanges@
maskedPathRangesSelector :: Selector '[] (Id NSArray)
maskedPathRangesSelector = mkSelector "maskedPathRanges"

-- | @Selector@ for @randomSeed@
randomSeedSelector :: Selector '[] CUInt
randomSeedSelector = mkSelector "randomSeed"

