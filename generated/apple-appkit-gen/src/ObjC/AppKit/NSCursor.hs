{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSCursor@.
module ObjC.AppKit.NSCursor
  ( NSCursor
  , IsNSCursor(..)
  , initWithImage_hotSpot
  , initWithCoder
  , hide
  , unhide
  , setHiddenUntilMouseMoves
  , nsCursorPop
  , push
  , pop
  , set
  , initWithImage_foregroundColorHint_backgroundColorHint_hotSpot
  , setOnMouseExited
  , setOnMouseEntered
  , mouseEntered
  , mouseExited
  , currentCursor
  , currentSystemCursor
  , arrowCursor
  , iBeamCursor
  , pointingHandCursor
  , closedHandCursor
  , openHandCursor
  , resizeLeftCursor
  , resizeRightCursor
  , resizeLeftRightCursor
  , resizeUpCursor
  , resizeDownCursor
  , resizeUpDownCursor
  , crosshairCursor
  , disappearingItemCursor
  , operationNotAllowedCursor
  , dragLinkCursor
  , dragCopyCursor
  , contextualMenuCursor
  , iBeamCursorForVerticalLayout
  , image
  , hotSpot
  , arrowCursorSelector
  , closedHandCursorSelector
  , contextualMenuCursorSelector
  , crosshairCursorSelector
  , currentCursorSelector
  , currentSystemCursorSelector
  , disappearingItemCursorSelector
  , dragCopyCursorSelector
  , dragLinkCursorSelector
  , hideSelector
  , hotSpotSelector
  , iBeamCursorForVerticalLayoutSelector
  , iBeamCursorSelector
  , imageSelector
  , initWithCoderSelector
  , initWithImage_foregroundColorHint_backgroundColorHint_hotSpotSelector
  , initWithImage_hotSpotSelector
  , mouseEnteredSelector
  , mouseExitedSelector
  , nsCursorPopSelector
  , openHandCursorSelector
  , operationNotAllowedCursorSelector
  , pointingHandCursorSelector
  , popSelector
  , pushSelector
  , resizeDownCursorSelector
  , resizeLeftCursorSelector
  , resizeLeftRightCursorSelector
  , resizeRightCursorSelector
  , resizeUpCursorSelector
  , resizeUpDownCursorSelector
  , setHiddenUntilMouseMovesSelector
  , setOnMouseEnteredSelector
  , setOnMouseExitedSelector
  , setSelector
  , unhideSelector


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

-- | @- initWithImage:hotSpot:@
initWithImage_hotSpot :: (IsNSCursor nsCursor, IsNSImage newImage) => nsCursor -> newImage -> NSPoint -> IO (Id NSCursor)
initWithImage_hotSpot nsCursor newImage point =
  sendOwnedMessage nsCursor initWithImage_hotSpotSelector (toNSImage newImage) point

-- | @- initWithCoder:@
initWithCoder :: (IsNSCursor nsCursor, IsNSCoder coder) => nsCursor -> coder -> IO (Id NSCursor)
initWithCoder nsCursor coder =
  sendOwnedMessage nsCursor initWithCoderSelector (toNSCoder coder)

-- | @+ hide@
hide :: IO ()
hide  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' hideSelector

-- | @+ unhide@
unhide :: IO ()
unhide  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' unhideSelector

-- | @+ setHiddenUntilMouseMoves:@
setHiddenUntilMouseMoves :: Bool -> IO ()
setHiddenUntilMouseMoves flag =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' setHiddenUntilMouseMovesSelector flag

-- | @+ pop@
nsCursorPop :: IO ()
nsCursorPop  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' nsCursorPopSelector

-- | @- push@
push :: IsNSCursor nsCursor => nsCursor -> IO ()
push nsCursor =
  sendMessage nsCursor pushSelector

-- | @- pop@
pop :: IsNSCursor nsCursor => nsCursor -> IO ()
pop nsCursor =
  sendMessage nsCursor popSelector

-- | @- set@
set :: IsNSCursor nsCursor => nsCursor -> IO ()
set nsCursor =
  sendMessage nsCursor setSelector

-- | @- initWithImage:foregroundColorHint:backgroundColorHint:hotSpot:@
initWithImage_foregroundColorHint_backgroundColorHint_hotSpot :: (IsNSCursor nsCursor, IsNSImage newImage, IsNSColor fg, IsNSColor bg) => nsCursor -> newImage -> fg -> bg -> NSPoint -> IO (Id NSCursor)
initWithImage_foregroundColorHint_backgroundColorHint_hotSpot nsCursor newImage fg bg hotSpot =
  sendOwnedMessage nsCursor initWithImage_foregroundColorHint_backgroundColorHint_hotSpotSelector (toNSImage newImage) (toNSColor fg) (toNSColor bg) hotSpot

-- | @- setOnMouseExited:@
setOnMouseExited :: IsNSCursor nsCursor => nsCursor -> Bool -> IO ()
setOnMouseExited nsCursor flag =
  sendMessage nsCursor setOnMouseExitedSelector flag

-- | @- setOnMouseEntered:@
setOnMouseEntered :: IsNSCursor nsCursor => nsCursor -> Bool -> IO ()
setOnMouseEntered nsCursor flag =
  sendMessage nsCursor setOnMouseEnteredSelector flag

-- | @- mouseEntered:@
mouseEntered :: (IsNSCursor nsCursor, IsNSEvent event) => nsCursor -> event -> IO ()
mouseEntered nsCursor event =
  sendMessage nsCursor mouseEnteredSelector (toNSEvent event)

-- | @- mouseExited:@
mouseExited :: (IsNSCursor nsCursor, IsNSEvent event) => nsCursor -> event -> IO ()
mouseExited nsCursor event =
  sendMessage nsCursor mouseExitedSelector (toNSEvent event)

-- | Returns the application’s current cursor. This is not necessarily the cursor that is currently being displayed on the system. If you need the currently displayed cursor, use @NSCursor.currentSystemCursor@.
--
-- ObjC selector: @+ currentCursor@
currentCursor :: IO (Id NSCursor)
currentCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' currentCursorSelector

-- | Returns an @NSCursor@ whose image and hot spot match those of the cursor that is currently being displayed on the system, regardless of which application set that cursor.
--
-- For example, this allows an inactive application to examine the image and hot spot of a cursor set by the active application.
--
-- In the case that the current system cursor is hidden, this property is an @NSCursor@ whose image matches the cursor you would see if it were visible.
--
-- Only the cursor image and hot spot are replicated in the returned @NSCursor@. Other properties (such as @isSetOnMouseExited@ and @isSetOnMouseEntered@) will not necessarily be accurate. The returned instance **cannot** be used for pointer (@==@) or object (@-isEqual:@) equality operations, since a new instance is created lazily on each access of this property.
--
-- This property is @nil@ if the currently displayed cursor couldn’t be fetched.
--
-- ObjC selector: @+ currentSystemCursor@
currentSystemCursor :: IO RawId
currentSystemCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' currentSystemCursorSelector

-- | @+ arrowCursor@
arrowCursor :: IO (Id NSCursor)
arrowCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' arrowCursorSelector

-- | @+ IBeamCursor@
iBeamCursor :: IO (Id NSCursor)
iBeamCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' iBeamCursorSelector

-- | @+ pointingHandCursor@
pointingHandCursor :: IO (Id NSCursor)
pointingHandCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' pointingHandCursorSelector

-- | @+ closedHandCursor@
closedHandCursor :: IO (Id NSCursor)
closedHandCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' closedHandCursorSelector

-- | @+ openHandCursor@
openHandCursor :: IO (Id NSCursor)
openHandCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' openHandCursorSelector

-- | @+ resizeLeftCursor@
resizeLeftCursor :: IO (Id NSCursor)
resizeLeftCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' resizeLeftCursorSelector

-- | @+ resizeRightCursor@
resizeRightCursor :: IO (Id NSCursor)
resizeRightCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' resizeRightCursorSelector

-- | @+ resizeLeftRightCursor@
resizeLeftRightCursor :: IO (Id NSCursor)
resizeLeftRightCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' resizeLeftRightCursorSelector

-- | @+ resizeUpCursor@
resizeUpCursor :: IO (Id NSCursor)
resizeUpCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' resizeUpCursorSelector

-- | @+ resizeDownCursor@
resizeDownCursor :: IO (Id NSCursor)
resizeDownCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' resizeDownCursorSelector

-- | @+ resizeUpDownCursor@
resizeUpDownCursor :: IO (Id NSCursor)
resizeUpDownCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' resizeUpDownCursorSelector

-- | @+ crosshairCursor@
crosshairCursor :: IO (Id NSCursor)
crosshairCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' crosshairCursorSelector

-- | @+ disappearingItemCursor@
disappearingItemCursor :: IO (Id NSCursor)
disappearingItemCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' disappearingItemCursorSelector

-- | @+ operationNotAllowedCursor@
operationNotAllowedCursor :: IO RawId
operationNotAllowedCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' operationNotAllowedCursorSelector

-- | @+ dragLinkCursor@
dragLinkCursor :: IO RawId
dragLinkCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' dragLinkCursorSelector

-- | @+ dragCopyCursor@
dragCopyCursor :: IO RawId
dragCopyCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' dragCopyCursorSelector

-- | @+ contextualMenuCursor@
contextualMenuCursor :: IO RawId
contextualMenuCursor  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' contextualMenuCursorSelector

-- | @+ IBeamCursorForVerticalLayout@
iBeamCursorForVerticalLayout :: IO RawId
iBeamCursorForVerticalLayout  =
  do
    cls' <- getRequiredClass "NSCursor"
    sendClassMessage cls' iBeamCursorForVerticalLayoutSelector

-- | @- image@
image :: IsNSCursor nsCursor => nsCursor -> IO (Id NSImage)
image nsCursor =
  sendMessage nsCursor imageSelector

-- | @- hotSpot@
hotSpot :: IsNSCursor nsCursor => nsCursor -> IO NSPoint
hotSpot nsCursor =
  sendMessage nsCursor hotSpotSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithImage:hotSpot:@
initWithImage_hotSpotSelector :: Selector '[Id NSImage, NSPoint] (Id NSCursor)
initWithImage_hotSpotSelector = mkSelector "initWithImage:hotSpot:"

-- | @Selector@ for @initWithCoder:@
initWithCoderSelector :: Selector '[Id NSCoder] (Id NSCursor)
initWithCoderSelector = mkSelector "initWithCoder:"

-- | @Selector@ for @hide@
hideSelector :: Selector '[] ()
hideSelector = mkSelector "hide"

-- | @Selector@ for @unhide@
unhideSelector :: Selector '[] ()
unhideSelector = mkSelector "unhide"

-- | @Selector@ for @setHiddenUntilMouseMoves:@
setHiddenUntilMouseMovesSelector :: Selector '[Bool] ()
setHiddenUntilMouseMovesSelector = mkSelector "setHiddenUntilMouseMoves:"

-- | @Selector@ for @pop@
nsCursorPopSelector :: Selector '[] ()
nsCursorPopSelector = mkSelector "pop"

-- | @Selector@ for @push@
pushSelector :: Selector '[] ()
pushSelector = mkSelector "push"

-- | @Selector@ for @pop@
popSelector :: Selector '[] ()
popSelector = mkSelector "pop"

-- | @Selector@ for @set@
setSelector :: Selector '[] ()
setSelector = mkSelector "set"

-- | @Selector@ for @initWithImage:foregroundColorHint:backgroundColorHint:hotSpot:@
initWithImage_foregroundColorHint_backgroundColorHint_hotSpotSelector :: Selector '[Id NSImage, Id NSColor, Id NSColor, NSPoint] (Id NSCursor)
initWithImage_foregroundColorHint_backgroundColorHint_hotSpotSelector = mkSelector "initWithImage:foregroundColorHint:backgroundColorHint:hotSpot:"

-- | @Selector@ for @setOnMouseExited:@
setOnMouseExitedSelector :: Selector '[Bool] ()
setOnMouseExitedSelector = mkSelector "setOnMouseExited:"

-- | @Selector@ for @setOnMouseEntered:@
setOnMouseEnteredSelector :: Selector '[Bool] ()
setOnMouseEnteredSelector = mkSelector "setOnMouseEntered:"

-- | @Selector@ for @mouseEntered:@
mouseEnteredSelector :: Selector '[Id NSEvent] ()
mouseEnteredSelector = mkSelector "mouseEntered:"

-- | @Selector@ for @mouseExited:@
mouseExitedSelector :: Selector '[Id NSEvent] ()
mouseExitedSelector = mkSelector "mouseExited:"

-- | @Selector@ for @currentCursor@
currentCursorSelector :: Selector '[] (Id NSCursor)
currentCursorSelector = mkSelector "currentCursor"

-- | @Selector@ for @currentSystemCursor@
currentSystemCursorSelector :: Selector '[] RawId
currentSystemCursorSelector = mkSelector "currentSystemCursor"

-- | @Selector@ for @arrowCursor@
arrowCursorSelector :: Selector '[] (Id NSCursor)
arrowCursorSelector = mkSelector "arrowCursor"

-- | @Selector@ for @IBeamCursor@
iBeamCursorSelector :: Selector '[] (Id NSCursor)
iBeamCursorSelector = mkSelector "IBeamCursor"

-- | @Selector@ for @pointingHandCursor@
pointingHandCursorSelector :: Selector '[] (Id NSCursor)
pointingHandCursorSelector = mkSelector "pointingHandCursor"

-- | @Selector@ for @closedHandCursor@
closedHandCursorSelector :: Selector '[] (Id NSCursor)
closedHandCursorSelector = mkSelector "closedHandCursor"

-- | @Selector@ for @openHandCursor@
openHandCursorSelector :: Selector '[] (Id NSCursor)
openHandCursorSelector = mkSelector "openHandCursor"

-- | @Selector@ for @resizeLeftCursor@
resizeLeftCursorSelector :: Selector '[] (Id NSCursor)
resizeLeftCursorSelector = mkSelector "resizeLeftCursor"

-- | @Selector@ for @resizeRightCursor@
resizeRightCursorSelector :: Selector '[] (Id NSCursor)
resizeRightCursorSelector = mkSelector "resizeRightCursor"

-- | @Selector@ for @resizeLeftRightCursor@
resizeLeftRightCursorSelector :: Selector '[] (Id NSCursor)
resizeLeftRightCursorSelector = mkSelector "resizeLeftRightCursor"

-- | @Selector@ for @resizeUpCursor@
resizeUpCursorSelector :: Selector '[] (Id NSCursor)
resizeUpCursorSelector = mkSelector "resizeUpCursor"

-- | @Selector@ for @resizeDownCursor@
resizeDownCursorSelector :: Selector '[] (Id NSCursor)
resizeDownCursorSelector = mkSelector "resizeDownCursor"

-- | @Selector@ for @resizeUpDownCursor@
resizeUpDownCursorSelector :: Selector '[] (Id NSCursor)
resizeUpDownCursorSelector = mkSelector "resizeUpDownCursor"

-- | @Selector@ for @crosshairCursor@
crosshairCursorSelector :: Selector '[] (Id NSCursor)
crosshairCursorSelector = mkSelector "crosshairCursor"

-- | @Selector@ for @disappearingItemCursor@
disappearingItemCursorSelector :: Selector '[] (Id NSCursor)
disappearingItemCursorSelector = mkSelector "disappearingItemCursor"

-- | @Selector@ for @operationNotAllowedCursor@
operationNotAllowedCursorSelector :: Selector '[] RawId
operationNotAllowedCursorSelector = mkSelector "operationNotAllowedCursor"

-- | @Selector@ for @dragLinkCursor@
dragLinkCursorSelector :: Selector '[] RawId
dragLinkCursorSelector = mkSelector "dragLinkCursor"

-- | @Selector@ for @dragCopyCursor@
dragCopyCursorSelector :: Selector '[] RawId
dragCopyCursorSelector = mkSelector "dragCopyCursor"

-- | @Selector@ for @contextualMenuCursor@
contextualMenuCursorSelector :: Selector '[] RawId
contextualMenuCursorSelector = mkSelector "contextualMenuCursor"

-- | @Selector@ for @IBeamCursorForVerticalLayout@
iBeamCursorForVerticalLayoutSelector :: Selector '[] RawId
iBeamCursorForVerticalLayoutSelector = mkSelector "IBeamCursorForVerticalLayout"

-- | @Selector@ for @image@
imageSelector :: Selector '[] (Id NSImage)
imageSelector = mkSelector "image"

-- | @Selector@ for @hotSpot@
hotSpotSelector :: Selector '[] NSPoint
hotSpotSelector = mkSelector "hotSpot"

