{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSStringDrawingContext@.
module ObjC.AppKit.NSStringDrawingContext
  ( NSStringDrawingContext
  , IsNSStringDrawingContext(..)
  , minimumScaleFactor
  , setMinimumScaleFactor
  , actualScaleFactor
  , totalBounds
  , actualScaleFactorSelector
  , minimumScaleFactorSelector
  , setMinimumScaleFactorSelector
  , totalBoundsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.Foundation.Internal.Classes

-- | @- minimumScaleFactor@
minimumScaleFactor :: IsNSStringDrawingContext nsStringDrawingContext => nsStringDrawingContext -> IO CDouble
minimumScaleFactor nsStringDrawingContext =
  sendMessage nsStringDrawingContext minimumScaleFactorSelector

-- | @- setMinimumScaleFactor:@
setMinimumScaleFactor :: IsNSStringDrawingContext nsStringDrawingContext => nsStringDrawingContext -> CDouble -> IO ()
setMinimumScaleFactor nsStringDrawingContext value =
  sendMessage nsStringDrawingContext setMinimumScaleFactorSelector value

-- | @- actualScaleFactor@
actualScaleFactor :: IsNSStringDrawingContext nsStringDrawingContext => nsStringDrawingContext -> IO CDouble
actualScaleFactor nsStringDrawingContext =
  sendMessage nsStringDrawingContext actualScaleFactorSelector

-- | @- totalBounds@
totalBounds :: IsNSStringDrawingContext nsStringDrawingContext => nsStringDrawingContext -> IO NSRect
totalBounds nsStringDrawingContext =
  sendMessage nsStringDrawingContext totalBoundsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @minimumScaleFactor@
minimumScaleFactorSelector :: Selector '[] CDouble
minimumScaleFactorSelector = mkSelector "minimumScaleFactor"

-- | @Selector@ for @setMinimumScaleFactor:@
setMinimumScaleFactorSelector :: Selector '[CDouble] ()
setMinimumScaleFactorSelector = mkSelector "setMinimumScaleFactor:"

-- | @Selector@ for @actualScaleFactor@
actualScaleFactorSelector :: Selector '[] CDouble
actualScaleFactorSelector = mkSelector "actualScaleFactor"

-- | @Selector@ for @totalBounds@
totalBoundsSelector :: Selector '[] NSRect
totalBoundsSelector = mkSelector "totalBounds"

