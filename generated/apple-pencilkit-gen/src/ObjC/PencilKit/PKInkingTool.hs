{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A tool for drawing on a PKCanvasView.
--
-- Generated bindings for @PKInkingTool@.
module ObjC.PencilKit.PKInkingTool
  ( PKInkingTool
  , IsPKInkingTool(..)
  , initWithInkType_color_width
  , initWithInkType_color
  , initWithInk_width
  , defaultWidthForInkType
  , minimumWidthForInkType
  , maximumWidthForInkType
  , inkType
  , color
  , width
  , ink
  , colorSelector
  , defaultWidthForInkTypeSelector
  , initWithInkType_colorSelector
  , initWithInkType_color_widthSelector
  , initWithInk_widthSelector
  , inkSelector
  , inkTypeSelector
  , maximumWidthForInkTypeSelector
  , minimumWidthForInkTypeSelector
  , widthSelector


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

-- | @- initWithInkType:color:width:@
initWithInkType_color_width :: (IsPKInkingTool pkInkingTool, IsNSString type_, IsNSColor color) => pkInkingTool -> type_ -> color -> CDouble -> IO (Id PKInkingTool)
initWithInkType_color_width pkInkingTool type_ color width =
  sendOwnedMessage pkInkingTool initWithInkType_color_widthSelector (toNSString type_) (toNSColor color) width

-- | @- initWithInkType:color:@
initWithInkType_color :: (IsPKInkingTool pkInkingTool, IsNSString type_, IsNSColor color) => pkInkingTool -> type_ -> color -> IO (Id PKInkingTool)
initWithInkType_color pkInkingTool type_ color =
  sendOwnedMessage pkInkingTool initWithInkType_colorSelector (toNSString type_) (toNSColor color)

-- | Create a new inking tool for the provided ink.
--
-- @ink@ — The ink to use.
--
-- @width@ — The width of stroke to create.
--
-- ObjC selector: @- initWithInk:width:@
initWithInk_width :: (IsPKInkingTool pkInkingTool, IsPKInk ink) => pkInkingTool -> ink -> CDouble -> IO (Id PKInkingTool)
initWithInk_width pkInkingTool ink width =
  sendOwnedMessage pkInkingTool initWithInk_widthSelector (toPKInk ink) width

-- | The default width for an ink of a type.
--
-- ObjC selector: @+ defaultWidthForInkType:@
defaultWidthForInkType :: IsNSString inkType => inkType -> IO CDouble
defaultWidthForInkType inkType =
  do
    cls' <- getRequiredClass "PKInkingTool"
    sendClassMessage cls' defaultWidthForInkTypeSelector (toNSString inkType)

-- | The minimum width for an ink of a type.
--
-- ObjC selector: @+ minimumWidthForInkType:@
minimumWidthForInkType :: IsNSString inkType => inkType -> IO CDouble
minimumWidthForInkType inkType =
  do
    cls' <- getRequiredClass "PKInkingTool"
    sendClassMessage cls' minimumWidthForInkTypeSelector (toNSString inkType)

-- | The maximum width for an ink of a type.
--
-- ObjC selector: @+ maximumWidthForInkType:@
maximumWidthForInkType :: IsNSString inkType => inkType -> IO CDouble
maximumWidthForInkType inkType =
  do
    cls' <- getRequiredClass "PKInkingTool"
    sendClassMessage cls' maximumWidthForInkTypeSelector (toNSString inkType)

-- | The type of ink, eg. pen, pencil...
--
-- ObjC selector: @- inkType@
inkType :: IsPKInkingTool pkInkingTool => pkInkingTool -> IO (Id NSString)
inkType pkInkingTool =
  sendMessage pkInkingTool inkTypeSelector

-- | @- color@
color :: IsPKInkingTool pkInkingTool => pkInkingTool -> IO (Id NSColor)
color pkInkingTool =
  sendMessage pkInkingTool colorSelector

-- | The base width of the ink.
--
-- ObjC selector: @- width@
width :: IsPKInkingTool pkInkingTool => pkInkingTool -> IO CDouble
width pkInkingTool =
  sendMessage pkInkingTool widthSelector

-- | The ink that this tool will create strokes with.
--
-- ObjC selector: @- ink@
ink :: IsPKInkingTool pkInkingTool => pkInkingTool -> IO RawId
ink pkInkingTool =
  sendMessage pkInkingTool inkSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithInkType:color:width:@
initWithInkType_color_widthSelector :: Selector '[Id NSString, Id NSColor, CDouble] (Id PKInkingTool)
initWithInkType_color_widthSelector = mkSelector "initWithInkType:color:width:"

-- | @Selector@ for @initWithInkType:color:@
initWithInkType_colorSelector :: Selector '[Id NSString, Id NSColor] (Id PKInkingTool)
initWithInkType_colorSelector = mkSelector "initWithInkType:color:"

-- | @Selector@ for @initWithInk:width:@
initWithInk_widthSelector :: Selector '[Id PKInk, CDouble] (Id PKInkingTool)
initWithInk_widthSelector = mkSelector "initWithInk:width:"

-- | @Selector@ for @defaultWidthForInkType:@
defaultWidthForInkTypeSelector :: Selector '[Id NSString] CDouble
defaultWidthForInkTypeSelector = mkSelector "defaultWidthForInkType:"

-- | @Selector@ for @minimumWidthForInkType:@
minimumWidthForInkTypeSelector :: Selector '[Id NSString] CDouble
minimumWidthForInkTypeSelector = mkSelector "minimumWidthForInkType:"

-- | @Selector@ for @maximumWidthForInkType:@
maximumWidthForInkTypeSelector :: Selector '[Id NSString] CDouble
maximumWidthForInkTypeSelector = mkSelector "maximumWidthForInkType:"

-- | @Selector@ for @inkType@
inkTypeSelector :: Selector '[] (Id NSString)
inkTypeSelector = mkSelector "inkType"

-- | @Selector@ for @color@
colorSelector :: Selector '[] (Id NSColor)
colorSelector = mkSelector "color"

-- | @Selector@ for @width@
widthSelector :: Selector '[] CDouble
widthSelector = mkSelector "width"

-- | @Selector@ for @ink@
inkSelector :: Selector '[] RawId
inkSelector = mkSelector "ink"

