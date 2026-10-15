{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSSlider@.
module ObjC.AppKit.NSSlider
  ( NSSlider
  , IsNSSlider(..)
  , acceptsFirstMouse
  , setTitleCell
  , titleCell
  , setTitleColor
  , titleColor
  , setTitleFont
  , titleFont
  , title
  , setTitle
  , setKnobThickness
  , setImage
  , image
  , sliderWithTarget_action
  , sliderWithValue_minValue_maxValue_target_action
  , tickMarkValueAtIndex
  , rectOfTickMarkAtIndex
  , indexOfTickMarkAtPoint
  , closestTickMarkValueToValue
  , sliderType
  , setSliderType
  , minValue
  , setMinValue
  , maxValue
  , setMaxValue
  , altIncrementValue
  , setAltIncrementValue
  , knobThickness
  , vertical
  , setVertical
  , trackFillColor
  , setTrackFillColor
  , numberOfTickMarks
  , setNumberOfTickMarks
  , tickMarkPosition
  , setTickMarkPosition
  , allowsTickMarkValuesOnly
  , setAllowsTickMarkValuesOnly
  , acceptsFirstMouseSelector
  , allowsTickMarkValuesOnlySelector
  , altIncrementValueSelector
  , closestTickMarkValueToValueSelector
  , imageSelector
  , indexOfTickMarkAtPointSelector
  , knobThicknessSelector
  , maxValueSelector
  , minValueSelector
  , numberOfTickMarksSelector
  , rectOfTickMarkAtIndexSelector
  , setAllowsTickMarkValuesOnlySelector
  , setAltIncrementValueSelector
  , setImageSelector
  , setKnobThicknessSelector
  , setMaxValueSelector
  , setMinValueSelector
  , setNumberOfTickMarksSelector
  , setSliderTypeSelector
  , setTickMarkPositionSelector
  , setTitleCellSelector
  , setTitleColorSelector
  , setTitleFontSelector
  , setTitleSelector
  , setTrackFillColorSelector
  , setVerticalSelector
  , sliderTypeSelector
  , sliderWithTarget_actionSelector
  , sliderWithValue_minValue_maxValue_target_actionSelector
  , tickMarkPositionSelector
  , tickMarkValueAtIndexSelector
  , titleCellSelector
  , titleColorSelector
  , titleFontSelector
  , titleSelector
  , trackFillColorSelector
  , verticalSelector

  -- * Enum types
  , NSSliderType(NSSliderType)
  , pattern NSSliderTypeLinear
  , pattern NSSliderTypeCircular
  , NSTickMarkPosition(NSTickMarkPosition)
  , pattern NSTickMarkPositionBelow
  , pattern NSTickMarkPositionAbove
  , pattern NSTickMarkPositionLeading
  , pattern NSTickMarkPositionTrailing

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.AppKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- acceptsFirstMouse:@
acceptsFirstMouse :: (IsNSSlider nsSlider, IsNSEvent event) => nsSlider -> event -> IO Bool
acceptsFirstMouse nsSlider event =
  sendMessage nsSlider acceptsFirstMouseSelector (toNSEvent event)

-- | @- setTitleCell:@
setTitleCell :: (IsNSSlider nsSlider, IsNSCell cell) => nsSlider -> cell -> IO ()
setTitleCell nsSlider cell =
  sendMessage nsSlider setTitleCellSelector (toNSCell cell)

-- | @- titleCell@
titleCell :: IsNSSlider nsSlider => nsSlider -> IO RawId
titleCell nsSlider =
  sendMessage nsSlider titleCellSelector

-- | @- setTitleColor:@
setTitleColor :: (IsNSSlider nsSlider, IsNSColor newColor) => nsSlider -> newColor -> IO ()
setTitleColor nsSlider newColor =
  sendMessage nsSlider setTitleColorSelector (toNSColor newColor)

-- | @- titleColor@
titleColor :: IsNSSlider nsSlider => nsSlider -> IO (Id NSColor)
titleColor nsSlider =
  sendMessage nsSlider titleColorSelector

-- | @- setTitleFont:@
setTitleFont :: (IsNSSlider nsSlider, IsNSFont fontObj) => nsSlider -> fontObj -> IO ()
setTitleFont nsSlider fontObj =
  sendMessage nsSlider setTitleFontSelector (toNSFont fontObj)

-- | @- titleFont@
titleFont :: IsNSSlider nsSlider => nsSlider -> IO (Id NSFont)
titleFont nsSlider =
  sendMessage nsSlider titleFontSelector

-- | @- title@
title :: IsNSSlider nsSlider => nsSlider -> IO (Id NSString)
title nsSlider =
  sendMessage nsSlider titleSelector

-- | @- setTitle:@
setTitle :: (IsNSSlider nsSlider, IsNSString string) => nsSlider -> string -> IO ()
setTitle nsSlider string =
  sendMessage nsSlider setTitleSelector (toNSString string)

-- | @- setKnobThickness:@
setKnobThickness :: IsNSSlider nsSlider => nsSlider -> CDouble -> IO ()
setKnobThickness nsSlider thickness =
  sendMessage nsSlider setKnobThicknessSelector thickness

-- | @- setImage:@
setImage :: (IsNSSlider nsSlider, IsNSImage backgroundImage) => nsSlider -> backgroundImage -> IO ()
setImage nsSlider backgroundImage =
  sendMessage nsSlider setImageSelector (toNSImage backgroundImage)

-- | @- image@
image :: IsNSSlider nsSlider => nsSlider -> IO (Id NSImage)
image nsSlider =
  sendMessage nsSlider imageSelector

-- | Creates a continuous horizontal slider over the range 0.0 to 1.0. The default value is 0.0.
--
-- @target@ — The target object that receives action messages from the control.
--
-- @action@ — The action message sent by the control.
--
-- Returns: An initialized slider control.
--
-- ObjC selector: @+ sliderWithTarget:action:@
sliderWithTarget_action :: RawId -> Sel -> IO (Id NSSlider)
sliderWithTarget_action target action =
  do
    cls' <- getRequiredClass "NSSlider"
    sendClassMessage cls' sliderWithTarget_actionSelector target action

-- | Creates a continuous horizontal slider that represents values over a specified range.
--
-- @value@ — The initial value displayed by the control.
--
-- @minValue@ — The minimum value represented by the control.
--
-- @maxValue@ — The maximum value represented by the control.
--
-- @target@ — The target object that receives action messages from the control.
--
-- @action@ — The action message sent by the control.
--
-- Returns: An initialized slider control.
--
-- ObjC selector: @+ sliderWithValue:minValue:maxValue:target:action:@
sliderWithValue_minValue_maxValue_target_action :: CDouble -> CDouble -> CDouble -> RawId -> Sel -> IO (Id NSSlider)
sliderWithValue_minValue_maxValue_target_action value minValue maxValue target action =
  do
    cls' <- getRequiredClass "NSSlider"
    sendClassMessage cls' sliderWithValue_minValue_maxValue_target_actionSelector value minValue maxValue target action

-- | @- tickMarkValueAtIndex:@
tickMarkValueAtIndex :: IsNSSlider nsSlider => nsSlider -> CLong -> IO CDouble
tickMarkValueAtIndex nsSlider index =
  sendMessage nsSlider tickMarkValueAtIndexSelector index

-- | @- rectOfTickMarkAtIndex:@
rectOfTickMarkAtIndex :: IsNSSlider nsSlider => nsSlider -> CLong -> IO NSRect
rectOfTickMarkAtIndex nsSlider index =
  sendMessage nsSlider rectOfTickMarkAtIndexSelector index

-- | @- indexOfTickMarkAtPoint:@
indexOfTickMarkAtPoint :: IsNSSlider nsSlider => nsSlider -> NSPoint -> IO CLong
indexOfTickMarkAtPoint nsSlider point =
  sendMessage nsSlider indexOfTickMarkAtPointSelector point

-- | @- closestTickMarkValueToValue:@
closestTickMarkValueToValue :: IsNSSlider nsSlider => nsSlider -> CDouble -> IO CDouble
closestTickMarkValueToValue nsSlider value =
  sendMessage nsSlider closestTickMarkValueToValueSelector value

-- | @- sliderType@
sliderType :: IsNSSlider nsSlider => nsSlider -> IO NSSliderType
sliderType nsSlider =
  sendMessage nsSlider sliderTypeSelector

-- | @- setSliderType:@
setSliderType :: IsNSSlider nsSlider => nsSlider -> NSSliderType -> IO ()
setSliderType nsSlider value =
  sendMessage nsSlider setSliderTypeSelector value

-- | @- minValue@
minValue :: IsNSSlider nsSlider => nsSlider -> IO CDouble
minValue nsSlider =
  sendMessage nsSlider minValueSelector

-- | @- setMinValue:@
setMinValue :: IsNSSlider nsSlider => nsSlider -> CDouble -> IO ()
setMinValue nsSlider value =
  sendMessage nsSlider setMinValueSelector value

-- | @- maxValue@
maxValue :: IsNSSlider nsSlider => nsSlider -> IO CDouble
maxValue nsSlider =
  sendMessage nsSlider maxValueSelector

-- | @- setMaxValue:@
setMaxValue :: IsNSSlider nsSlider => nsSlider -> CDouble -> IO ()
setMaxValue nsSlider value =
  sendMessage nsSlider setMaxValueSelector value

-- | @- altIncrementValue@
altIncrementValue :: IsNSSlider nsSlider => nsSlider -> IO CDouble
altIncrementValue nsSlider =
  sendMessage nsSlider altIncrementValueSelector

-- | @- setAltIncrementValue:@
setAltIncrementValue :: IsNSSlider nsSlider => nsSlider -> CDouble -> IO ()
setAltIncrementValue nsSlider value =
  sendMessage nsSlider setAltIncrementValueSelector value

-- | @- knobThickness@
knobThickness :: IsNSSlider nsSlider => nsSlider -> IO CDouble
knobThickness nsSlider =
  sendMessage nsSlider knobThicknessSelector

-- | @- vertical@
vertical :: IsNSSlider nsSlider => nsSlider -> IO Bool
vertical nsSlider =
  sendMessage nsSlider verticalSelector

-- | @- setVertical:@
setVertical :: IsNSSlider nsSlider => nsSlider -> Bool -> IO ()
setVertical nsSlider value =
  sendMessage nsSlider setVerticalSelector value

-- | @- trackFillColor@
trackFillColor :: IsNSSlider nsSlider => nsSlider -> IO RawId
trackFillColor nsSlider =
  sendMessage nsSlider trackFillColorSelector

-- | @- setTrackFillColor:@
setTrackFillColor :: IsNSSlider nsSlider => nsSlider -> RawId -> IO ()
setTrackFillColor nsSlider value =
  sendMessage nsSlider setTrackFillColorSelector value

-- | @- numberOfTickMarks@
numberOfTickMarks :: IsNSSlider nsSlider => nsSlider -> IO CLong
numberOfTickMarks nsSlider =
  sendMessage nsSlider numberOfTickMarksSelector

-- | @- setNumberOfTickMarks:@
setNumberOfTickMarks :: IsNSSlider nsSlider => nsSlider -> CLong -> IO ()
setNumberOfTickMarks nsSlider value =
  sendMessage nsSlider setNumberOfTickMarksSelector value

-- | @- tickMarkPosition@
tickMarkPosition :: IsNSSlider nsSlider => nsSlider -> IO NSTickMarkPosition
tickMarkPosition nsSlider =
  sendMessage nsSlider tickMarkPositionSelector

-- | @- setTickMarkPosition:@
setTickMarkPosition :: IsNSSlider nsSlider => nsSlider -> NSTickMarkPosition -> IO ()
setTickMarkPosition nsSlider value =
  sendMessage nsSlider setTickMarkPositionSelector value

-- | @- allowsTickMarkValuesOnly@
allowsTickMarkValuesOnly :: IsNSSlider nsSlider => nsSlider -> IO Bool
allowsTickMarkValuesOnly nsSlider =
  sendMessage nsSlider allowsTickMarkValuesOnlySelector

-- | @- setAllowsTickMarkValuesOnly:@
setAllowsTickMarkValuesOnly :: IsNSSlider nsSlider => nsSlider -> Bool -> IO ()
setAllowsTickMarkValuesOnly nsSlider value =
  sendMessage nsSlider setAllowsTickMarkValuesOnlySelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @acceptsFirstMouse:@
acceptsFirstMouseSelector :: Selector '[Id NSEvent] Bool
acceptsFirstMouseSelector = mkSelector "acceptsFirstMouse:"

-- | @Selector@ for @setTitleCell:@
setTitleCellSelector :: Selector '[Id NSCell] ()
setTitleCellSelector = mkSelector "setTitleCell:"

-- | @Selector@ for @titleCell@
titleCellSelector :: Selector '[] RawId
titleCellSelector = mkSelector "titleCell"

-- | @Selector@ for @setTitleColor:@
setTitleColorSelector :: Selector '[Id NSColor] ()
setTitleColorSelector = mkSelector "setTitleColor:"

-- | @Selector@ for @titleColor@
titleColorSelector :: Selector '[] (Id NSColor)
titleColorSelector = mkSelector "titleColor"

-- | @Selector@ for @setTitleFont:@
setTitleFontSelector :: Selector '[Id NSFont] ()
setTitleFontSelector = mkSelector "setTitleFont:"

-- | @Selector@ for @titleFont@
titleFontSelector :: Selector '[] (Id NSFont)
titleFontSelector = mkSelector "titleFont"

-- | @Selector@ for @title@
titleSelector :: Selector '[] (Id NSString)
titleSelector = mkSelector "title"

-- | @Selector@ for @setTitle:@
setTitleSelector :: Selector '[Id NSString] ()
setTitleSelector = mkSelector "setTitle:"

-- | @Selector@ for @setKnobThickness:@
setKnobThicknessSelector :: Selector '[CDouble] ()
setKnobThicknessSelector = mkSelector "setKnobThickness:"

-- | @Selector@ for @setImage:@
setImageSelector :: Selector '[Id NSImage] ()
setImageSelector = mkSelector "setImage:"

-- | @Selector@ for @image@
imageSelector :: Selector '[] (Id NSImage)
imageSelector = mkSelector "image"

-- | @Selector@ for @sliderWithTarget:action:@
sliderWithTarget_actionSelector :: Selector '[RawId, Sel] (Id NSSlider)
sliderWithTarget_actionSelector = mkSelector "sliderWithTarget:action:"

-- | @Selector@ for @sliderWithValue:minValue:maxValue:target:action:@
sliderWithValue_minValue_maxValue_target_actionSelector :: Selector '[CDouble, CDouble, CDouble, RawId, Sel] (Id NSSlider)
sliderWithValue_minValue_maxValue_target_actionSelector = mkSelector "sliderWithValue:minValue:maxValue:target:action:"

-- | @Selector@ for @tickMarkValueAtIndex:@
tickMarkValueAtIndexSelector :: Selector '[CLong] CDouble
tickMarkValueAtIndexSelector = mkSelector "tickMarkValueAtIndex:"

-- | @Selector@ for @rectOfTickMarkAtIndex:@
rectOfTickMarkAtIndexSelector :: Selector '[CLong] NSRect
rectOfTickMarkAtIndexSelector = mkSelector "rectOfTickMarkAtIndex:"

-- | @Selector@ for @indexOfTickMarkAtPoint:@
indexOfTickMarkAtPointSelector :: Selector '[NSPoint] CLong
indexOfTickMarkAtPointSelector = mkSelector "indexOfTickMarkAtPoint:"

-- | @Selector@ for @closestTickMarkValueToValue:@
closestTickMarkValueToValueSelector :: Selector '[CDouble] CDouble
closestTickMarkValueToValueSelector = mkSelector "closestTickMarkValueToValue:"

-- | @Selector@ for @sliderType@
sliderTypeSelector :: Selector '[] NSSliderType
sliderTypeSelector = mkSelector "sliderType"

-- | @Selector@ for @setSliderType:@
setSliderTypeSelector :: Selector '[NSSliderType] ()
setSliderTypeSelector = mkSelector "setSliderType:"

-- | @Selector@ for @minValue@
minValueSelector :: Selector '[] CDouble
minValueSelector = mkSelector "minValue"

-- | @Selector@ for @setMinValue:@
setMinValueSelector :: Selector '[CDouble] ()
setMinValueSelector = mkSelector "setMinValue:"

-- | @Selector@ for @maxValue@
maxValueSelector :: Selector '[] CDouble
maxValueSelector = mkSelector "maxValue"

-- | @Selector@ for @setMaxValue:@
setMaxValueSelector :: Selector '[CDouble] ()
setMaxValueSelector = mkSelector "setMaxValue:"

-- | @Selector@ for @altIncrementValue@
altIncrementValueSelector :: Selector '[] CDouble
altIncrementValueSelector = mkSelector "altIncrementValue"

-- | @Selector@ for @setAltIncrementValue:@
setAltIncrementValueSelector :: Selector '[CDouble] ()
setAltIncrementValueSelector = mkSelector "setAltIncrementValue:"

-- | @Selector@ for @knobThickness@
knobThicknessSelector :: Selector '[] CDouble
knobThicknessSelector = mkSelector "knobThickness"

-- | @Selector@ for @vertical@
verticalSelector :: Selector '[] Bool
verticalSelector = mkSelector "vertical"

-- | @Selector@ for @setVertical:@
setVerticalSelector :: Selector '[Bool] ()
setVerticalSelector = mkSelector "setVertical:"

-- | @Selector@ for @trackFillColor@
trackFillColorSelector :: Selector '[] RawId
trackFillColorSelector = mkSelector "trackFillColor"

-- | @Selector@ for @setTrackFillColor:@
setTrackFillColorSelector :: Selector '[RawId] ()
setTrackFillColorSelector = mkSelector "setTrackFillColor:"

-- | @Selector@ for @numberOfTickMarks@
numberOfTickMarksSelector :: Selector '[] CLong
numberOfTickMarksSelector = mkSelector "numberOfTickMarks"

-- | @Selector@ for @setNumberOfTickMarks:@
setNumberOfTickMarksSelector :: Selector '[CLong] ()
setNumberOfTickMarksSelector = mkSelector "setNumberOfTickMarks:"

-- | @Selector@ for @tickMarkPosition@
tickMarkPositionSelector :: Selector '[] NSTickMarkPosition
tickMarkPositionSelector = mkSelector "tickMarkPosition"

-- | @Selector@ for @setTickMarkPosition:@
setTickMarkPositionSelector :: Selector '[NSTickMarkPosition] ()
setTickMarkPositionSelector = mkSelector "setTickMarkPosition:"

-- | @Selector@ for @allowsTickMarkValuesOnly@
allowsTickMarkValuesOnlySelector :: Selector '[] Bool
allowsTickMarkValuesOnlySelector = mkSelector "allowsTickMarkValuesOnly"

-- | @Selector@ for @setAllowsTickMarkValuesOnly:@
setAllowsTickMarkValuesOnlySelector :: Selector '[Bool] ()
setAllowsTickMarkValuesOnlySelector = mkSelector "setAllowsTickMarkValuesOnly:"

