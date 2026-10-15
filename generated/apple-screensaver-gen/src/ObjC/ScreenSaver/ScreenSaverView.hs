{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ScreenSaverView@.
module ObjC.ScreenSaver.ScreenSaverView
  ( ScreenSaverView
  , IsScreenSaverView(..)
  , backingStoreType
  , performGammaFade
  , initWithFrame_isPreview
  , startAnimation
  , stopAnimation
  , drawRect
  , animateOneFrame
  , animationTimeInterval
  , setAnimationTimeInterval
  , animating
  , hasConfigureSheet
  , configureSheet
  , preview
  , animateOneFrameSelector
  , animatingSelector
  , animationTimeIntervalSelector
  , backingStoreTypeSelector
  , configureSheetSelector
  , drawRectSelector
  , hasConfigureSheetSelector
  , initWithFrame_isPreviewSelector
  , performGammaFadeSelector
  , previewSelector
  , setAnimationTimeIntervalSelector
  , startAnimationSelector
  , stopAnimationSelector

  -- * Enum types
  , NSBackingStoreType(NSBackingStoreType)
  , pattern NSBackingStoreRetained
  , pattern NSBackingStoreNonretained
  , pattern NSBackingStoreBuffered

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScreenSaver.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.AppKit.Internal.Enums
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ backingStoreType@
backingStoreType :: IO NSBackingStoreType
backingStoreType  =
  do
    cls' <- getRequiredClass "ScreenSaverView"
    sendClassMessage cls' backingStoreTypeSelector

-- | @+ performGammaFade@
performGammaFade :: IO Bool
performGammaFade  =
  do
    cls' <- getRequiredClass "ScreenSaverView"
    sendClassMessage cls' performGammaFadeSelector

-- | @- initWithFrame:isPreview:@
initWithFrame_isPreview :: IsScreenSaverView screenSaverView => screenSaverView -> NSRect -> Bool -> IO (Id ScreenSaverView)
initWithFrame_isPreview screenSaverView frame isPreview =
  sendOwnedMessage screenSaverView initWithFrame_isPreviewSelector frame isPreview

-- | @- startAnimation@
startAnimation :: IsScreenSaverView screenSaverView => screenSaverView -> IO ()
startAnimation screenSaverView =
  sendMessage screenSaverView startAnimationSelector

-- | @- stopAnimation@
stopAnimation :: IsScreenSaverView screenSaverView => screenSaverView -> IO ()
stopAnimation screenSaverView =
  sendMessage screenSaverView stopAnimationSelector

-- | @- drawRect:@
drawRect :: IsScreenSaverView screenSaverView => screenSaverView -> NSRect -> IO ()
drawRect screenSaverView rect =
  sendMessage screenSaverView drawRectSelector rect

-- | @- animateOneFrame@
animateOneFrame :: IsScreenSaverView screenSaverView => screenSaverView -> IO ()
animateOneFrame screenSaverView =
  sendMessage screenSaverView animateOneFrameSelector

-- | @- animationTimeInterval@
animationTimeInterval :: IsScreenSaverView screenSaverView => screenSaverView -> IO CDouble
animationTimeInterval screenSaverView =
  sendMessage screenSaverView animationTimeIntervalSelector

-- | @- setAnimationTimeInterval:@
setAnimationTimeInterval :: IsScreenSaverView screenSaverView => screenSaverView -> CDouble -> IO ()
setAnimationTimeInterval screenSaverView value =
  sendMessage screenSaverView setAnimationTimeIntervalSelector value

-- | @- animating@
animating :: IsScreenSaverView screenSaverView => screenSaverView -> IO Bool
animating screenSaverView =
  sendMessage screenSaverView animatingSelector

-- | @- hasConfigureSheet@
hasConfigureSheet :: IsScreenSaverView screenSaverView => screenSaverView -> IO Bool
hasConfigureSheet screenSaverView =
  sendMessage screenSaverView hasConfigureSheetSelector

-- | @- configureSheet@
configureSheet :: IsScreenSaverView screenSaverView => screenSaverView -> IO (Id NSWindow)
configureSheet screenSaverView =
  sendMessage screenSaverView configureSheetSelector

-- | @- preview@
preview :: IsScreenSaverView screenSaverView => screenSaverView -> IO Bool
preview screenSaverView =
  sendMessage screenSaverView previewSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @backingStoreType@
backingStoreTypeSelector :: Selector '[] NSBackingStoreType
backingStoreTypeSelector = mkSelector "backingStoreType"

-- | @Selector@ for @performGammaFade@
performGammaFadeSelector :: Selector '[] Bool
performGammaFadeSelector = mkSelector "performGammaFade"

-- | @Selector@ for @initWithFrame:isPreview:@
initWithFrame_isPreviewSelector :: Selector '[NSRect, Bool] (Id ScreenSaverView)
initWithFrame_isPreviewSelector = mkSelector "initWithFrame:isPreview:"

-- | @Selector@ for @startAnimation@
startAnimationSelector :: Selector '[] ()
startAnimationSelector = mkSelector "startAnimation"

-- | @Selector@ for @stopAnimation@
stopAnimationSelector :: Selector '[] ()
stopAnimationSelector = mkSelector "stopAnimation"

-- | @Selector@ for @drawRect:@
drawRectSelector :: Selector '[NSRect] ()
drawRectSelector = mkSelector "drawRect:"

-- | @Selector@ for @animateOneFrame@
animateOneFrameSelector :: Selector '[] ()
animateOneFrameSelector = mkSelector "animateOneFrame"

-- | @Selector@ for @animationTimeInterval@
animationTimeIntervalSelector :: Selector '[] CDouble
animationTimeIntervalSelector = mkSelector "animationTimeInterval"

-- | @Selector@ for @setAnimationTimeInterval:@
setAnimationTimeIntervalSelector :: Selector '[CDouble] ()
setAnimationTimeIntervalSelector = mkSelector "setAnimationTimeInterval:"

-- | @Selector@ for @animating@
animatingSelector :: Selector '[] Bool
animatingSelector = mkSelector "animating"

-- | @Selector@ for @hasConfigureSheet@
hasConfigureSheetSelector :: Selector '[] Bool
hasConfigureSheetSelector = mkSelector "hasConfigureSheet"

-- | @Selector@ for @configureSheet@
configureSheetSelector :: Selector '[] (Id NSWindow)
configureSheetSelector = mkSelector "configureSheet"

-- | @Selector@ for @preview@
previewSelector :: Selector '[] Bool
previewSelector = mkSelector "preview"

