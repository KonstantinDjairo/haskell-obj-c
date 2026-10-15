{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSColor@.
module ObjC.AppKit.NSColor
  ( NSColor
  , IsNSColor(..)
  , init_
  , initWithCoder
  , colorWithColorSpace_components_count
  , colorWithSRGBRed_green_blue_alpha
  , colorWithGenericGamma22White_alpha
  , colorWithDisplayP3Red_green_blue_alpha
  , colorWithWhite_alpha
  , colorWithRed_green_blue_alpha
  , colorWithHue_saturation_brightness_alpha
  , colorWithColorSpace_hue_saturation_brightness_alpha
  , colorWithCatalogName_colorName
  , colorNamed_bundle
  , colorNamed
  , colorWithName_dynamicProvider
  , colorWithDeviceWhite_alpha
  , colorWithDeviceRed_green_blue_alpha
  , colorWithDeviceHue_saturation_brightness_alpha
  , colorWithDeviceCyan_magenta_yellow_black_alpha
  , colorWithCalibratedWhite_alpha
  , colorWithCalibratedRed_green_blue_alpha
  , colorWithCalibratedHue_saturation_brightness_alpha
  , colorWithPatternImage
  , colorUsingType
  , colorUsingColorSpace
  , colorForControlTint
  , highlightWithLevel
  , shadowWithLevel
  , colorWithSystemEffect
  , set
  , setFill
  , setStroke
  , blendedColorWithFraction_ofColor
  , colorWithAlphaComponent
  , getRed_green_blue_alpha
  , getHue_saturation_brightness_alpha
  , getWhite_alpha
  , getCyan_magenta_yellow_black_alpha
  , getComponents
  , colorFromPasteboard
  , writeToPasteboard
  , drawSwatchInRect
  , colorWithCGColor
  , colorWithCIColor
  , colorUsingColorSpaceName_device
  , colorUsingColorSpaceName
  , type_
  , blackColor
  , darkGrayColor
  , lightGrayColor
  , whiteColor
  , grayColor
  , redColor
  , greenColor
  , blueColor
  , cyanColor
  , yellowColor
  , magentaColor
  , orangeColor
  , purpleColor
  , brownColor
  , clearColor
  , labelColor
  , secondaryLabelColor
  , tertiaryLabelColor
  , quaternaryLabelColor
  , linkColor
  , placeholderTextColor
  , windowFrameTextColor
  , selectedMenuItemTextColor
  , alternateSelectedControlTextColor
  , headerTextColor
  , separatorColor
  , gridColor
  , windowBackgroundColor
  , underPageBackgroundColor
  , controlBackgroundColor
  , selectedContentBackgroundColor
  , unemphasizedSelectedContentBackgroundColor
  , findHighlightColor
  , textColor
  , textBackgroundColor
  , selectedTextColor
  , selectedTextBackgroundColor
  , unemphasizedSelectedTextBackgroundColor
  , unemphasizedSelectedTextColor
  , controlColor
  , controlTextColor
  , selectedControlColor
  , selectedControlTextColor
  , disabledControlTextColor
  , keyboardFocusIndicatorColor
  , scrubberTexturedBackgroundColor
  , systemRedColor
  , systemGreenColor
  , systemBlueColor
  , systemOrangeColor
  , systemYellowColor
  , systemBrownColor
  , systemPinkColor
  , systemPurpleColor
  , systemGrayColor
  , systemTealColor
  , systemIndigoColor
  , systemMintColor
  , systemCyanColor
  , controlAccentColor
  , currentControlTint
  , highlightColor
  , shadowColor
  , catalogNameComponent
  , colorNameComponent
  , localizedCatalogNameComponent
  , localizedColorNameComponent
  , redComponent
  , greenComponent
  , blueComponent
  , hueComponent
  , saturationComponent
  , brightnessComponent
  , whiteComponent
  , cyanComponent
  , magentaComponent
  , yellowComponent
  , blackComponent
  , colorSpace
  , numberOfComponents
  , patternImage
  , alphaComponent
  , cgColor
  , ignoresAlpha
  , setIgnoresAlpha
  , controlHighlightColor
  , controlLightHighlightColor
  , controlShadowColor
  , controlDarkShadowColor
  , scrollBarColor
  , knobColor
  , selectedKnobColor
  , windowFrameColor
  , selectedMenuItemColor
  , headerColor
  , secondarySelectedControlColor
  , alternateSelectedControlColor
  , colorSpaceName
  , alphaComponentSelector
  , alternateSelectedControlColorSelector
  , alternateSelectedControlTextColorSelector
  , blackColorSelector
  , blackComponentSelector
  , blendedColorWithFraction_ofColorSelector
  , blueColorSelector
  , blueComponentSelector
  , brightnessComponentSelector
  , brownColorSelector
  , catalogNameComponentSelector
  , cgColorSelector
  , clearColorSelector
  , colorForControlTintSelector
  , colorFromPasteboardSelector
  , colorNameComponentSelector
  , colorNamedSelector
  , colorNamed_bundleSelector
  , colorSpaceNameSelector
  , colorSpaceSelector
  , colorUsingColorSpaceNameSelector
  , colorUsingColorSpaceName_deviceSelector
  , colorUsingColorSpaceSelector
  , colorUsingTypeSelector
  , colorWithAlphaComponentSelector
  , colorWithCGColorSelector
  , colorWithCIColorSelector
  , colorWithCalibratedHue_saturation_brightness_alphaSelector
  , colorWithCalibratedRed_green_blue_alphaSelector
  , colorWithCalibratedWhite_alphaSelector
  , colorWithCatalogName_colorNameSelector
  , colorWithColorSpace_components_countSelector
  , colorWithColorSpace_hue_saturation_brightness_alphaSelector
  , colorWithDeviceCyan_magenta_yellow_black_alphaSelector
  , colorWithDeviceHue_saturation_brightness_alphaSelector
  , colorWithDeviceRed_green_blue_alphaSelector
  , colorWithDeviceWhite_alphaSelector
  , colorWithDisplayP3Red_green_blue_alphaSelector
  , colorWithGenericGamma22White_alphaSelector
  , colorWithHue_saturation_brightness_alphaSelector
  , colorWithName_dynamicProviderSelector
  , colorWithPatternImageSelector
  , colorWithRed_green_blue_alphaSelector
  , colorWithSRGBRed_green_blue_alphaSelector
  , colorWithSystemEffectSelector
  , colorWithWhite_alphaSelector
  , controlAccentColorSelector
  , controlBackgroundColorSelector
  , controlColorSelector
  , controlDarkShadowColorSelector
  , controlHighlightColorSelector
  , controlLightHighlightColorSelector
  , controlShadowColorSelector
  , controlTextColorSelector
  , currentControlTintSelector
  , cyanColorSelector
  , cyanComponentSelector
  , darkGrayColorSelector
  , disabledControlTextColorSelector
  , drawSwatchInRectSelector
  , findHighlightColorSelector
  , getComponentsSelector
  , getCyan_magenta_yellow_black_alphaSelector
  , getHue_saturation_brightness_alphaSelector
  , getRed_green_blue_alphaSelector
  , getWhite_alphaSelector
  , grayColorSelector
  , greenColorSelector
  , greenComponentSelector
  , gridColorSelector
  , headerColorSelector
  , headerTextColorSelector
  , highlightColorSelector
  , highlightWithLevelSelector
  , hueComponentSelector
  , ignoresAlphaSelector
  , initSelector
  , initWithCoderSelector
  , keyboardFocusIndicatorColorSelector
  , knobColorSelector
  , labelColorSelector
  , lightGrayColorSelector
  , linkColorSelector
  , localizedCatalogNameComponentSelector
  , localizedColorNameComponentSelector
  , magentaColorSelector
  , magentaComponentSelector
  , numberOfComponentsSelector
  , orangeColorSelector
  , patternImageSelector
  , placeholderTextColorSelector
  , purpleColorSelector
  , quaternaryLabelColorSelector
  , redColorSelector
  , redComponentSelector
  , saturationComponentSelector
  , scrollBarColorSelector
  , scrubberTexturedBackgroundColorSelector
  , secondaryLabelColorSelector
  , secondarySelectedControlColorSelector
  , selectedContentBackgroundColorSelector
  , selectedControlColorSelector
  , selectedControlTextColorSelector
  , selectedKnobColorSelector
  , selectedMenuItemColorSelector
  , selectedMenuItemTextColorSelector
  , selectedTextBackgroundColorSelector
  , selectedTextColorSelector
  , separatorColorSelector
  , setFillSelector
  , setIgnoresAlphaSelector
  , setSelector
  , setStrokeSelector
  , shadowColorSelector
  , shadowWithLevelSelector
  , systemBlueColorSelector
  , systemBrownColorSelector
  , systemCyanColorSelector
  , systemGrayColorSelector
  , systemGreenColorSelector
  , systemIndigoColorSelector
  , systemMintColorSelector
  , systemOrangeColorSelector
  , systemPinkColorSelector
  , systemPurpleColorSelector
  , systemRedColorSelector
  , systemTealColorSelector
  , systemYellowColorSelector
  , tertiaryLabelColorSelector
  , textBackgroundColorSelector
  , textColorSelector
  , typeSelector
  , underPageBackgroundColorSelector
  , unemphasizedSelectedContentBackgroundColorSelector
  , unemphasizedSelectedTextBackgroundColorSelector
  , unemphasizedSelectedTextColorSelector
  , whiteColorSelector
  , whiteComponentSelector
  , windowBackgroundColorSelector
  , windowFrameColorSelector
  , windowFrameTextColorSelector
  , writeToPasteboardSelector
  , yellowColorSelector
  , yellowComponentSelector

  -- * Enum types
  , NSColorSystemEffect(NSColorSystemEffect)
  , pattern NSColorSystemEffectNone
  , pattern NSColorSystemEffectPressed
  , pattern NSColorSystemEffectDeepPressed
  , pattern NSColorSystemEffectDisabled
  , pattern NSColorSystemEffectRollover
  , NSColorType(NSColorType)
  , pattern NSColorTypeComponentBased
  , pattern NSColorTypePattern
  , pattern NSColorTypeCatalog
  , NSControlTint(NSControlTint)
  , pattern NSDefaultControlTint
  , pattern NSBlueControlTint
  , pattern NSGraphiteControlTint
  , pattern NSClearControlTint

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
import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsNSColor nsColor => nsColor -> IO (Id NSColor)
init_ nsColor =
  sendOwnedMessage nsColor initSelector

-- | @- initWithCoder:@
initWithCoder :: (IsNSColor nsColor, IsNSCoder coder) => nsColor -> coder -> IO (Id NSColor)
initWithCoder nsColor coder =
  sendOwnedMessage nsColor initWithCoderSelector (toNSCoder coder)

-- | @+ colorWithColorSpace:components:count:@
colorWithColorSpace_components_count :: IsNSColorSpace space => space -> Const (Ptr CDouble) -> CLong -> IO (Id NSColor)
colorWithColorSpace_components_count space components numberOfComponents =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithColorSpace_components_countSelector (toNSColorSpace space) components numberOfComponents

-- | @+ colorWithSRGBRed:green:blue:alpha:@
colorWithSRGBRed_green_blue_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithSRGBRed_green_blue_alpha red green blue alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithSRGBRed_green_blue_alphaSelector red green blue alpha

-- | @+ colorWithGenericGamma22White:alpha:@
colorWithGenericGamma22White_alpha :: CDouble -> CDouble -> IO (Id NSColor)
colorWithGenericGamma22White_alpha white alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithGenericGamma22White_alphaSelector white alpha

-- | @+ colorWithDisplayP3Red:green:blue:alpha:@
colorWithDisplayP3Red_green_blue_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithDisplayP3Red_green_blue_alpha red green blue alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithDisplayP3Red_green_blue_alphaSelector red green blue alpha

-- | @+ colorWithWhite:alpha:@
colorWithWhite_alpha :: CDouble -> CDouble -> IO (Id NSColor)
colorWithWhite_alpha white alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithWhite_alphaSelector white alpha

-- | @+ colorWithRed:green:blue:alpha:@
colorWithRed_green_blue_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithRed_green_blue_alpha red green blue alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithRed_green_blue_alphaSelector red green blue alpha

-- | @+ colorWithHue:saturation:brightness:alpha:@
colorWithHue_saturation_brightness_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithHue_saturation_brightness_alpha hue saturation brightness alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithHue_saturation_brightness_alphaSelector hue saturation brightness alpha

-- | @+ colorWithColorSpace:hue:saturation:brightness:alpha:@
colorWithColorSpace_hue_saturation_brightness_alpha :: IsNSColorSpace space => space -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithColorSpace_hue_saturation_brightness_alpha space hue saturation brightness alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithColorSpace_hue_saturation_brightness_alphaSelector (toNSColorSpace space) hue saturation brightness alpha

-- | @+ colorWithCatalogName:colorName:@
colorWithCatalogName_colorName :: (IsNSString listName, IsNSString colorName) => listName -> colorName -> IO (Id NSColor)
colorWithCatalogName_colorName listName colorName =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithCatalogName_colorNameSelector (toNSString listName) (toNSString colorName)

-- | @+ colorNamed:bundle:@
colorNamed_bundle :: (IsNSString name, IsNSBundle bundle) => name -> bundle -> IO (Id NSColor)
colorNamed_bundle name bundle =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorNamed_bundleSelector (toNSString name) (toNSBundle bundle)

-- | @+ colorNamed:@
colorNamed :: IsNSString name => name -> IO (Id NSColor)
colorNamed name =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorNamedSelector (toNSString name)

-- | @+ colorWithName:dynamicProvider:@
colorWithName_dynamicProvider :: IsNSString colorName => colorName -> Ptr () -> IO (Id NSColor)
colorWithName_dynamicProvider colorName dynamicProvider =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithName_dynamicProviderSelector (toNSString colorName) dynamicProvider

-- | @+ colorWithDeviceWhite:alpha:@
colorWithDeviceWhite_alpha :: CDouble -> CDouble -> IO (Id NSColor)
colorWithDeviceWhite_alpha white alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithDeviceWhite_alphaSelector white alpha

-- | @+ colorWithDeviceRed:green:blue:alpha:@
colorWithDeviceRed_green_blue_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithDeviceRed_green_blue_alpha red green blue alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithDeviceRed_green_blue_alphaSelector red green blue alpha

-- | @+ colorWithDeviceHue:saturation:brightness:alpha:@
colorWithDeviceHue_saturation_brightness_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithDeviceHue_saturation_brightness_alpha hue saturation brightness alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithDeviceHue_saturation_brightness_alphaSelector hue saturation brightness alpha

-- | @+ colorWithDeviceCyan:magenta:yellow:black:alpha:@
colorWithDeviceCyan_magenta_yellow_black_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithDeviceCyan_magenta_yellow_black_alpha cyan magenta yellow black alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithDeviceCyan_magenta_yellow_black_alphaSelector cyan magenta yellow black alpha

-- | @+ colorWithCalibratedWhite:alpha:@
colorWithCalibratedWhite_alpha :: CDouble -> CDouble -> IO (Id NSColor)
colorWithCalibratedWhite_alpha white alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithCalibratedWhite_alphaSelector white alpha

-- | @+ colorWithCalibratedRed:green:blue:alpha:@
colorWithCalibratedRed_green_blue_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithCalibratedRed_green_blue_alpha red green blue alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithCalibratedRed_green_blue_alphaSelector red green blue alpha

-- | @+ colorWithCalibratedHue:saturation:brightness:alpha:@
colorWithCalibratedHue_saturation_brightness_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id NSColor)
colorWithCalibratedHue_saturation_brightness_alpha hue saturation brightness alpha =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithCalibratedHue_saturation_brightness_alphaSelector hue saturation brightness alpha

-- | @+ colorWithPatternImage:@
colorWithPatternImage :: IsNSImage image => image -> IO (Id NSColor)
colorWithPatternImage image =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithPatternImageSelector (toNSImage image)

-- | @- colorUsingType:@
colorUsingType :: IsNSColor nsColor => nsColor -> NSColorType -> IO (Id NSColor)
colorUsingType nsColor type_ =
  sendMessage nsColor colorUsingTypeSelector type_

-- | @- colorUsingColorSpace:@
colorUsingColorSpace :: (IsNSColor nsColor, IsNSColorSpace space) => nsColor -> space -> IO (Id NSColor)
colorUsingColorSpace nsColor space =
  sendMessage nsColor colorUsingColorSpaceSelector (toNSColorSpace space)

-- | @+ colorForControlTint:@
colorForControlTint :: NSControlTint -> IO (Id NSColor)
colorForControlTint controlTint =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorForControlTintSelector controlTint

-- | @- highlightWithLevel:@
highlightWithLevel :: IsNSColor nsColor => nsColor -> CDouble -> IO (Id NSColor)
highlightWithLevel nsColor val =
  sendMessage nsColor highlightWithLevelSelector val

-- | @- shadowWithLevel:@
shadowWithLevel :: IsNSColor nsColor => nsColor -> CDouble -> IO (Id NSColor)
shadowWithLevel nsColor val =
  sendMessage nsColor shadowWithLevelSelector val

-- | Returns a color representing the base color with a system defined effect applied to it. This color is safe to create before draw time, as the resolution of the final color only happens when being @-set@, retrieving its @CGColor@, resolving with @-colorWithType:@, etc. The return color type is @.named@.
--
-- ObjC selector: @- colorWithSystemEffect:@
colorWithSystemEffect :: IsNSColor nsColor => nsColor -> NSColorSystemEffect -> IO (Id NSColor)
colorWithSystemEffect nsColor systemEffect =
  sendMessage nsColor colorWithSystemEffectSelector systemEffect

-- | @- set@
set :: IsNSColor nsColor => nsColor -> IO ()
set nsColor =
  sendMessage nsColor setSelector

-- | @- setFill@
setFill :: IsNSColor nsColor => nsColor -> IO ()
setFill nsColor =
  sendMessage nsColor setFillSelector

-- | @- setStroke@
setStroke :: IsNSColor nsColor => nsColor -> IO ()
setStroke nsColor =
  sendMessage nsColor setStrokeSelector

-- | @- blendedColorWithFraction:ofColor:@
blendedColorWithFraction_ofColor :: (IsNSColor nsColor, IsNSColor color) => nsColor -> CDouble -> color -> IO (Id NSColor)
blendedColorWithFraction_ofColor nsColor fraction color =
  sendMessage nsColor blendedColorWithFraction_ofColorSelector fraction (toNSColor color)

-- | @- colorWithAlphaComponent:@
colorWithAlphaComponent :: IsNSColor nsColor => nsColor -> CDouble -> IO (Id NSColor)
colorWithAlphaComponent nsColor alpha =
  sendMessage nsColor colorWithAlphaComponentSelector alpha

-- | @- getRed:green:blue:alpha:@
getRed_green_blue_alpha :: IsNSColor nsColor => nsColor -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
getRed_green_blue_alpha nsColor red green blue alpha =
  sendMessage nsColor getRed_green_blue_alphaSelector red green blue alpha

-- | @- getHue:saturation:brightness:alpha:@
getHue_saturation_brightness_alpha :: IsNSColor nsColor => nsColor -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
getHue_saturation_brightness_alpha nsColor hue saturation brightness alpha =
  sendMessage nsColor getHue_saturation_brightness_alphaSelector hue saturation brightness alpha

-- | @- getWhite:alpha:@
getWhite_alpha :: IsNSColor nsColor => nsColor -> Ptr CDouble -> Ptr CDouble -> IO ()
getWhite_alpha nsColor white alpha =
  sendMessage nsColor getWhite_alphaSelector white alpha

-- | @- getCyan:magenta:yellow:black:alpha:@
getCyan_magenta_yellow_black_alpha :: IsNSColor nsColor => nsColor -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
getCyan_magenta_yellow_black_alpha nsColor cyan magenta yellow black alpha =
  sendMessage nsColor getCyan_magenta_yellow_black_alphaSelector cyan magenta yellow black alpha

-- | @- getComponents:@
getComponents :: IsNSColor nsColor => nsColor -> Ptr CDouble -> IO ()
getComponents nsColor components =
  sendMessage nsColor getComponentsSelector components

-- | @+ colorFromPasteboard:@
colorFromPasteboard :: IsNSPasteboard pasteBoard => pasteBoard -> IO (Id NSColor)
colorFromPasteboard pasteBoard =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorFromPasteboardSelector (toNSPasteboard pasteBoard)

-- | @- writeToPasteboard:@
writeToPasteboard :: (IsNSColor nsColor, IsNSPasteboard pasteBoard) => nsColor -> pasteBoard -> IO ()
writeToPasteboard nsColor pasteBoard =
  sendMessage nsColor writeToPasteboardSelector (toNSPasteboard pasteBoard)

-- | @- drawSwatchInRect:@
drawSwatchInRect :: IsNSColor nsColor => nsColor -> NSRect -> IO ()
drawSwatchInRect nsColor rect =
  sendMessage nsColor drawSwatchInRectSelector rect

-- | @+ colorWithCGColor:@
colorWithCGColor :: Ptr () -> IO (Id NSColor)
colorWithCGColor cgColor =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithCGColorSelector cgColor

-- | @+ colorWithCIColor:@
colorWithCIColor :: IsCIColor color => color -> IO (Id NSColor)
colorWithCIColor color =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' colorWithCIColorSelector (toCIColor color)

-- | @- colorUsingColorSpaceName:device:@
colorUsingColorSpaceName_device :: (IsNSColor nsColor, IsNSString name, IsNSDictionary deviceDescription) => nsColor -> name -> deviceDescription -> IO (Id NSColor)
colorUsingColorSpaceName_device nsColor name deviceDescription =
  sendMessage nsColor colorUsingColorSpaceName_deviceSelector (toNSString name) (toNSDictionary deviceDescription)

-- | @- colorUsingColorSpaceName:@
colorUsingColorSpaceName :: (IsNSColor nsColor, IsNSString name) => nsColor -> name -> IO (Id NSColor)
colorUsingColorSpaceName nsColor name =
  sendMessage nsColor colorUsingColorSpaceNameSelector (toNSString name)

-- | @- type@
type_ :: IsNSColor nsColor => nsColor -> IO NSColorType
type_ nsColor =
  sendMessage nsColor typeSelector

-- | @+ blackColor@
blackColor :: IO (Id NSColor)
blackColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' blackColorSelector

-- | @+ darkGrayColor@
darkGrayColor :: IO (Id NSColor)
darkGrayColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' darkGrayColorSelector

-- | @+ lightGrayColor@
lightGrayColor :: IO (Id NSColor)
lightGrayColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' lightGrayColorSelector

-- | @+ whiteColor@
whiteColor :: IO (Id NSColor)
whiteColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' whiteColorSelector

-- | @+ grayColor@
grayColor :: IO (Id NSColor)
grayColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' grayColorSelector

-- | @+ redColor@
redColor :: IO (Id NSColor)
redColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' redColorSelector

-- | @+ greenColor@
greenColor :: IO (Id NSColor)
greenColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' greenColorSelector

-- | @+ blueColor@
blueColor :: IO (Id NSColor)
blueColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' blueColorSelector

-- | @+ cyanColor@
cyanColor :: IO (Id NSColor)
cyanColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' cyanColorSelector

-- | @+ yellowColor@
yellowColor :: IO (Id NSColor)
yellowColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' yellowColorSelector

-- | @+ magentaColor@
magentaColor :: IO (Id NSColor)
magentaColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' magentaColorSelector

-- | @+ orangeColor@
orangeColor :: IO (Id NSColor)
orangeColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' orangeColorSelector

-- | @+ purpleColor@
purpleColor :: IO (Id NSColor)
purpleColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' purpleColorSelector

-- | @+ brownColor@
brownColor :: IO (Id NSColor)
brownColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' brownColorSelector

-- | @+ clearColor@
clearColor :: IO (Id NSColor)
clearColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' clearColorSelector

-- | @+ labelColor@
labelColor :: IO RawId
labelColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' labelColorSelector

-- | @+ secondaryLabelColor@
secondaryLabelColor :: IO RawId
secondaryLabelColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' secondaryLabelColorSelector

-- | @+ tertiaryLabelColor@
tertiaryLabelColor :: IO RawId
tertiaryLabelColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' tertiaryLabelColorSelector

-- | @+ quaternaryLabelColor@
quaternaryLabelColor :: IO RawId
quaternaryLabelColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' quaternaryLabelColorSelector

-- | @+ linkColor@
linkColor :: IO RawId
linkColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' linkColorSelector

-- | @+ placeholderTextColor@
placeholderTextColor :: IO RawId
placeholderTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' placeholderTextColorSelector

-- | @+ windowFrameTextColor@
windowFrameTextColor :: IO (Id NSColor)
windowFrameTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' windowFrameTextColorSelector

-- | @+ selectedMenuItemTextColor@
selectedMenuItemTextColor :: IO (Id NSColor)
selectedMenuItemTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' selectedMenuItemTextColorSelector

-- | @+ alternateSelectedControlTextColor@
alternateSelectedControlTextColor :: IO (Id NSColor)
alternateSelectedControlTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' alternateSelectedControlTextColorSelector

-- | @+ headerTextColor@
headerTextColor :: IO (Id NSColor)
headerTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' headerTextColorSelector

-- | @+ separatorColor@
separatorColor :: IO RawId
separatorColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' separatorColorSelector

-- | @+ gridColor@
gridColor :: IO (Id NSColor)
gridColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' gridColorSelector

-- | @+ windowBackgroundColor@
windowBackgroundColor :: IO (Id NSColor)
windowBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' windowBackgroundColorSelector

-- | @+ underPageBackgroundColor@
underPageBackgroundColor :: IO RawId
underPageBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' underPageBackgroundColorSelector

-- | @+ controlBackgroundColor@
controlBackgroundColor :: IO (Id NSColor)
controlBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' controlBackgroundColorSelector

-- | @+ selectedContentBackgroundColor@
selectedContentBackgroundColor :: IO RawId
selectedContentBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' selectedContentBackgroundColorSelector

-- | @+ unemphasizedSelectedContentBackgroundColor@
unemphasizedSelectedContentBackgroundColor :: IO RawId
unemphasizedSelectedContentBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' unemphasizedSelectedContentBackgroundColorSelector

-- | @+ findHighlightColor@
findHighlightColor :: IO RawId
findHighlightColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' findHighlightColorSelector

-- | @+ textColor@
textColor :: IO (Id NSColor)
textColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' textColorSelector

-- | @+ textBackgroundColor@
textBackgroundColor :: IO (Id NSColor)
textBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' textBackgroundColorSelector

-- | @+ selectedTextColor@
selectedTextColor :: IO (Id NSColor)
selectedTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' selectedTextColorSelector

-- | @+ selectedTextBackgroundColor@
selectedTextBackgroundColor :: IO (Id NSColor)
selectedTextBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' selectedTextBackgroundColorSelector

-- | @+ unemphasizedSelectedTextBackgroundColor@
unemphasizedSelectedTextBackgroundColor :: IO RawId
unemphasizedSelectedTextBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' unemphasizedSelectedTextBackgroundColorSelector

-- | @+ unemphasizedSelectedTextColor@
unemphasizedSelectedTextColor :: IO RawId
unemphasizedSelectedTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' unemphasizedSelectedTextColorSelector

-- | @+ controlColor@
controlColor :: IO (Id NSColor)
controlColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' controlColorSelector

-- | @+ controlTextColor@
controlTextColor :: IO (Id NSColor)
controlTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' controlTextColorSelector

-- | @+ selectedControlColor@
selectedControlColor :: IO (Id NSColor)
selectedControlColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' selectedControlColorSelector

-- | @+ selectedControlTextColor@
selectedControlTextColor :: IO (Id NSColor)
selectedControlTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' selectedControlTextColorSelector

-- | @+ disabledControlTextColor@
disabledControlTextColor :: IO (Id NSColor)
disabledControlTextColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' disabledControlTextColorSelector

-- | @+ keyboardFocusIndicatorColor@
keyboardFocusIndicatorColor :: IO (Id NSColor)
keyboardFocusIndicatorColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' keyboardFocusIndicatorColorSelector

-- | @+ scrubberTexturedBackgroundColor@
scrubberTexturedBackgroundColor :: IO RawId
scrubberTexturedBackgroundColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' scrubberTexturedBackgroundColorSelector

-- | @+ systemRedColor@
systemRedColor :: IO RawId
systemRedColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemRedColorSelector

-- | @+ systemGreenColor@
systemGreenColor :: IO RawId
systemGreenColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemGreenColorSelector

-- | @+ systemBlueColor@
systemBlueColor :: IO RawId
systemBlueColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemBlueColorSelector

-- | @+ systemOrangeColor@
systemOrangeColor :: IO RawId
systemOrangeColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemOrangeColorSelector

-- | @+ systemYellowColor@
systemYellowColor :: IO RawId
systemYellowColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemYellowColorSelector

-- | @+ systemBrownColor@
systemBrownColor :: IO RawId
systemBrownColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemBrownColorSelector

-- | @+ systemPinkColor@
systemPinkColor :: IO RawId
systemPinkColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemPinkColorSelector

-- | @+ systemPurpleColor@
systemPurpleColor :: IO RawId
systemPurpleColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemPurpleColorSelector

-- | @+ systemGrayColor@
systemGrayColor :: IO RawId
systemGrayColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemGrayColorSelector

-- | @+ systemTealColor@
systemTealColor :: IO RawId
systemTealColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemTealColorSelector

-- | @+ systemIndigoColor@
systemIndigoColor :: IO RawId
systemIndigoColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemIndigoColorSelector

-- | @+ systemMintColor@
systemMintColor :: IO RawId
systemMintColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemMintColorSelector

-- | @+ systemCyanColor@
systemCyanColor :: IO RawId
systemCyanColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' systemCyanColorSelector

-- | A dynamic color that reflects the user's current preferred accent color. This color automatically updates when the accent color preference changes. Do not make assumptions about the color space of this color, which may change across releases.
--
-- ObjC selector: @+ controlAccentColor@
controlAccentColor :: IO RawId
controlAccentColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' controlAccentColorSelector

-- | @+ currentControlTint@
currentControlTint :: IO NSControlTint
currentControlTint  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' currentControlTintSelector

-- | @+ highlightColor@
highlightColor :: IO (Id NSColor)
highlightColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' highlightColorSelector

-- | @+ shadowColor@
shadowColor :: IO (Id NSColor)
shadowColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' shadowColorSelector

-- | * Methods to get various components of colors. Not all of the methods apply to all colors; if called, they raise. **
--
-- ObjC selector: @- catalogNameComponent@
catalogNameComponent :: IsNSColor nsColor => nsColor -> IO (Id NSString)
catalogNameComponent nsColor =
  sendMessage nsColor catalogNameComponentSelector

-- | @- colorNameComponent@
colorNameComponent :: IsNSColor nsColor => nsColor -> IO (Id NSString)
colorNameComponent nsColor =
  sendMessage nsColor colorNameComponentSelector

-- | @- localizedCatalogNameComponent@
localizedCatalogNameComponent :: IsNSColor nsColor => nsColor -> IO (Id NSString)
localizedCatalogNameComponent nsColor =
  sendMessage nsColor localizedCatalogNameComponentSelector

-- | @- localizedColorNameComponent@
localizedColorNameComponent :: IsNSColor nsColor => nsColor -> IO (Id NSString)
localizedColorNameComponent nsColor =
  sendMessage nsColor localizedColorNameComponentSelector

-- | @- redComponent@
redComponent :: IsNSColor nsColor => nsColor -> IO CDouble
redComponent nsColor =
  sendMessage nsColor redComponentSelector

-- | @- greenComponent@
greenComponent :: IsNSColor nsColor => nsColor -> IO CDouble
greenComponent nsColor =
  sendMessage nsColor greenComponentSelector

-- | @- blueComponent@
blueComponent :: IsNSColor nsColor => nsColor -> IO CDouble
blueComponent nsColor =
  sendMessage nsColor blueComponentSelector

-- | @- hueComponent@
hueComponent :: IsNSColor nsColor => nsColor -> IO CDouble
hueComponent nsColor =
  sendMessage nsColor hueComponentSelector

-- | @- saturationComponent@
saturationComponent :: IsNSColor nsColor => nsColor -> IO CDouble
saturationComponent nsColor =
  sendMessage nsColor saturationComponentSelector

-- | @- brightnessComponent@
brightnessComponent :: IsNSColor nsColor => nsColor -> IO CDouble
brightnessComponent nsColor =
  sendMessage nsColor brightnessComponentSelector

-- | @- whiteComponent@
whiteComponent :: IsNSColor nsColor => nsColor -> IO CDouble
whiteComponent nsColor =
  sendMessage nsColor whiteComponentSelector

-- | @- cyanComponent@
cyanComponent :: IsNSColor nsColor => nsColor -> IO CDouble
cyanComponent nsColor =
  sendMessage nsColor cyanComponentSelector

-- | @- magentaComponent@
magentaComponent :: IsNSColor nsColor => nsColor -> IO CDouble
magentaComponent nsColor =
  sendMessage nsColor magentaComponentSelector

-- | @- yellowComponent@
yellowComponent :: IsNSColor nsColor => nsColor -> IO CDouble
yellowComponent nsColor =
  sendMessage nsColor yellowComponentSelector

-- | @- blackComponent@
blackComponent :: IsNSColor nsColor => nsColor -> IO CDouble
blackComponent nsColor =
  sendMessage nsColor blackComponentSelector

-- | @- colorSpace@
colorSpace :: IsNSColor nsColor => nsColor -> IO (Id NSColorSpace)
colorSpace nsColor =
  sendMessage nsColor colorSpaceSelector

-- | @- numberOfComponents@
numberOfComponents :: IsNSColor nsColor => nsColor -> IO CLong
numberOfComponents nsColor =
  sendMessage nsColor numberOfComponentsSelector

-- | @- patternImage@
patternImage :: IsNSColor nsColor => nsColor -> IO (Id NSImage)
patternImage nsColor =
  sendMessage nsColor patternImageSelector

-- | @- alphaComponent@
alphaComponent :: IsNSColor nsColor => nsColor -> IO CDouble
alphaComponent nsColor =
  sendMessage nsColor alphaComponentSelector

-- | @- CGColor@
cgColor :: IsNSColor nsColor => nsColor -> IO (Ptr ())
cgColor nsColor =
  sendMessage nsColor cgColorSelector

-- | @+ ignoresAlpha@
ignoresAlpha :: IO Bool
ignoresAlpha  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' ignoresAlphaSelector

-- | @+ setIgnoresAlpha:@
setIgnoresAlpha :: Bool -> IO ()
setIgnoresAlpha value =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' setIgnoresAlphaSelector value

-- | Historically used as the inner border highlight color for beveled buttons. No longer used.
--
-- ObjC selector: @+ controlHighlightColor@
controlHighlightColor :: IO RawId
controlHighlightColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' controlHighlightColorSelector

-- | Historically used as the outer border highlight color for beveled buttons. No longer used.
--
-- ObjC selector: @+ controlLightHighlightColor@
controlLightHighlightColor :: IO RawId
controlLightHighlightColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' controlLightHighlightColorSelector

-- | Historically used as the inner border shadow color for beveled buttons. No longer used.
--
-- ObjC selector: @+ controlShadowColor@
controlShadowColor :: IO RawId
controlShadowColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' controlShadowColorSelector

-- | Historically used as the outer border shadow color for beveled buttons. No longer used.
--
-- ObjC selector: @+ controlDarkShadowColor@
controlDarkShadowColor :: IO RawId
controlDarkShadowColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' controlDarkShadowColorSelector

-- | Historically used as the color of scroll bars. No longer used.
--
-- ObjC selector: @+ scrollBarColor@
scrollBarColor :: IO RawId
scrollBarColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' scrollBarColorSelector

-- | Historically used as the color of scroll bar knobs. No longer used.
--
-- ObjC selector: @+ knobColor@
knobColor :: IO RawId
knobColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' knobColorSelector

-- | Historically used as the color of scroll bar knobs being dragged. No longer used.
--
-- ObjC selector: @+ selectedKnobColor@
selectedKnobColor :: IO RawId
selectedKnobColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' selectedKnobColorSelector

-- | Historically used as the color of the window chrome, which is no longer able to be represented by a color. No longer used.
--
-- ObjC selector: @+ windowFrameColor@
windowFrameColor :: IO RawId
windowFrameColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' windowFrameColorSelector

-- | Historically used as the color of selected menu items, which is no longer a color but a tinted blur effect. No longer used.
--
-- ObjC selector: @+ selectedMenuItemColor@
selectedMenuItemColor :: IO RawId
selectedMenuItemColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' selectedMenuItemColorSelector

-- | Historically used as the color of table headers, which is no longer a color but a tinted blur effect.
--
-- ObjC selector: @+ headerColor@
headerColor :: IO RawId
headerColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' headerColorSelector

-- | The background color of selected content or text that is unemphasized. Older alias for +unemphasizedSelectedContentBackgroundColor and +unemphasizedSelectedTextBackgroundColor
--
-- ObjC selector: @+ secondarySelectedControlColor@
secondarySelectedControlColor :: IO RawId
secondarySelectedControlColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' secondarySelectedControlColorSelector

-- | The background color of selected and emphasized (focused) content: table views rows, collection views, etc. Older alias for +selectedContentBackgroundColor
--
-- ObjC selector: @+ alternateSelectedControlColor@
alternateSelectedControlColor :: IO RawId
alternateSelectedControlColor  =
  do
    cls' <- getRequiredClass "NSColor"
    sendClassMessage cls' alternateSelectedControlColorSelector

-- | @- colorSpaceName@
colorSpaceName :: IsNSColor nsColor => nsColor -> IO (Id NSString)
colorSpaceName nsColor =
  sendMessage nsColor colorSpaceNameSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id NSColor)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithCoder:@
initWithCoderSelector :: Selector '[Id NSCoder] (Id NSColor)
initWithCoderSelector = mkSelector "initWithCoder:"

-- | @Selector@ for @colorWithColorSpace:components:count:@
colorWithColorSpace_components_countSelector :: Selector '[Id NSColorSpace, Const (Ptr CDouble), CLong] (Id NSColor)
colorWithColorSpace_components_countSelector = mkSelector "colorWithColorSpace:components:count:"

-- | @Selector@ for @colorWithSRGBRed:green:blue:alpha:@
colorWithSRGBRed_green_blue_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithSRGBRed_green_blue_alphaSelector = mkSelector "colorWithSRGBRed:green:blue:alpha:"

-- | @Selector@ for @colorWithGenericGamma22White:alpha:@
colorWithGenericGamma22White_alphaSelector :: Selector '[CDouble, CDouble] (Id NSColor)
colorWithGenericGamma22White_alphaSelector = mkSelector "colorWithGenericGamma22White:alpha:"

-- | @Selector@ for @colorWithDisplayP3Red:green:blue:alpha:@
colorWithDisplayP3Red_green_blue_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithDisplayP3Red_green_blue_alphaSelector = mkSelector "colorWithDisplayP3Red:green:blue:alpha:"

-- | @Selector@ for @colorWithWhite:alpha:@
colorWithWhite_alphaSelector :: Selector '[CDouble, CDouble] (Id NSColor)
colorWithWhite_alphaSelector = mkSelector "colorWithWhite:alpha:"

-- | @Selector@ for @colorWithRed:green:blue:alpha:@
colorWithRed_green_blue_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithRed_green_blue_alphaSelector = mkSelector "colorWithRed:green:blue:alpha:"

-- | @Selector@ for @colorWithHue:saturation:brightness:alpha:@
colorWithHue_saturation_brightness_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithHue_saturation_brightness_alphaSelector = mkSelector "colorWithHue:saturation:brightness:alpha:"

-- | @Selector@ for @colorWithColorSpace:hue:saturation:brightness:alpha:@
colorWithColorSpace_hue_saturation_brightness_alphaSelector :: Selector '[Id NSColorSpace, CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithColorSpace_hue_saturation_brightness_alphaSelector = mkSelector "colorWithColorSpace:hue:saturation:brightness:alpha:"

-- | @Selector@ for @colorWithCatalogName:colorName:@
colorWithCatalogName_colorNameSelector :: Selector '[Id NSString, Id NSString] (Id NSColor)
colorWithCatalogName_colorNameSelector = mkSelector "colorWithCatalogName:colorName:"

-- | @Selector@ for @colorNamed:bundle:@
colorNamed_bundleSelector :: Selector '[Id NSString, Id NSBundle] (Id NSColor)
colorNamed_bundleSelector = mkSelector "colorNamed:bundle:"

-- | @Selector@ for @colorNamed:@
colorNamedSelector :: Selector '[Id NSString] (Id NSColor)
colorNamedSelector = mkSelector "colorNamed:"

-- | @Selector@ for @colorWithName:dynamicProvider:@
colorWithName_dynamicProviderSelector :: Selector '[Id NSString, Ptr ()] (Id NSColor)
colorWithName_dynamicProviderSelector = mkSelector "colorWithName:dynamicProvider:"

-- | @Selector@ for @colorWithDeviceWhite:alpha:@
colorWithDeviceWhite_alphaSelector :: Selector '[CDouble, CDouble] (Id NSColor)
colorWithDeviceWhite_alphaSelector = mkSelector "colorWithDeviceWhite:alpha:"

-- | @Selector@ for @colorWithDeviceRed:green:blue:alpha:@
colorWithDeviceRed_green_blue_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithDeviceRed_green_blue_alphaSelector = mkSelector "colorWithDeviceRed:green:blue:alpha:"

-- | @Selector@ for @colorWithDeviceHue:saturation:brightness:alpha:@
colorWithDeviceHue_saturation_brightness_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithDeviceHue_saturation_brightness_alphaSelector = mkSelector "colorWithDeviceHue:saturation:brightness:alpha:"

-- | @Selector@ for @colorWithDeviceCyan:magenta:yellow:black:alpha:@
colorWithDeviceCyan_magenta_yellow_black_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithDeviceCyan_magenta_yellow_black_alphaSelector = mkSelector "colorWithDeviceCyan:magenta:yellow:black:alpha:"

-- | @Selector@ for @colorWithCalibratedWhite:alpha:@
colorWithCalibratedWhite_alphaSelector :: Selector '[CDouble, CDouble] (Id NSColor)
colorWithCalibratedWhite_alphaSelector = mkSelector "colorWithCalibratedWhite:alpha:"

-- | @Selector@ for @colorWithCalibratedRed:green:blue:alpha:@
colorWithCalibratedRed_green_blue_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithCalibratedRed_green_blue_alphaSelector = mkSelector "colorWithCalibratedRed:green:blue:alpha:"

-- | @Selector@ for @colorWithCalibratedHue:saturation:brightness:alpha:@
colorWithCalibratedHue_saturation_brightness_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id NSColor)
colorWithCalibratedHue_saturation_brightness_alphaSelector = mkSelector "colorWithCalibratedHue:saturation:brightness:alpha:"

-- | @Selector@ for @colorWithPatternImage:@
colorWithPatternImageSelector :: Selector '[Id NSImage] (Id NSColor)
colorWithPatternImageSelector = mkSelector "colorWithPatternImage:"

-- | @Selector@ for @colorUsingType:@
colorUsingTypeSelector :: Selector '[NSColorType] (Id NSColor)
colorUsingTypeSelector = mkSelector "colorUsingType:"

-- | @Selector@ for @colorUsingColorSpace:@
colorUsingColorSpaceSelector :: Selector '[Id NSColorSpace] (Id NSColor)
colorUsingColorSpaceSelector = mkSelector "colorUsingColorSpace:"

-- | @Selector@ for @colorForControlTint:@
colorForControlTintSelector :: Selector '[NSControlTint] (Id NSColor)
colorForControlTintSelector = mkSelector "colorForControlTint:"

-- | @Selector@ for @highlightWithLevel:@
highlightWithLevelSelector :: Selector '[CDouble] (Id NSColor)
highlightWithLevelSelector = mkSelector "highlightWithLevel:"

-- | @Selector@ for @shadowWithLevel:@
shadowWithLevelSelector :: Selector '[CDouble] (Id NSColor)
shadowWithLevelSelector = mkSelector "shadowWithLevel:"

-- | @Selector@ for @colorWithSystemEffect:@
colorWithSystemEffectSelector :: Selector '[NSColorSystemEffect] (Id NSColor)
colorWithSystemEffectSelector = mkSelector "colorWithSystemEffect:"

-- | @Selector@ for @set@
setSelector :: Selector '[] ()
setSelector = mkSelector "set"

-- | @Selector@ for @setFill@
setFillSelector :: Selector '[] ()
setFillSelector = mkSelector "setFill"

-- | @Selector@ for @setStroke@
setStrokeSelector :: Selector '[] ()
setStrokeSelector = mkSelector "setStroke"

-- | @Selector@ for @blendedColorWithFraction:ofColor:@
blendedColorWithFraction_ofColorSelector :: Selector '[CDouble, Id NSColor] (Id NSColor)
blendedColorWithFraction_ofColorSelector = mkSelector "blendedColorWithFraction:ofColor:"

-- | @Selector@ for @colorWithAlphaComponent:@
colorWithAlphaComponentSelector :: Selector '[CDouble] (Id NSColor)
colorWithAlphaComponentSelector = mkSelector "colorWithAlphaComponent:"

-- | @Selector@ for @getRed:green:blue:alpha:@
getRed_green_blue_alphaSelector :: Selector '[Ptr CDouble, Ptr CDouble, Ptr CDouble, Ptr CDouble] ()
getRed_green_blue_alphaSelector = mkSelector "getRed:green:blue:alpha:"

-- | @Selector@ for @getHue:saturation:brightness:alpha:@
getHue_saturation_brightness_alphaSelector :: Selector '[Ptr CDouble, Ptr CDouble, Ptr CDouble, Ptr CDouble] ()
getHue_saturation_brightness_alphaSelector = mkSelector "getHue:saturation:brightness:alpha:"

-- | @Selector@ for @getWhite:alpha:@
getWhite_alphaSelector :: Selector '[Ptr CDouble, Ptr CDouble] ()
getWhite_alphaSelector = mkSelector "getWhite:alpha:"

-- | @Selector@ for @getCyan:magenta:yellow:black:alpha:@
getCyan_magenta_yellow_black_alphaSelector :: Selector '[Ptr CDouble, Ptr CDouble, Ptr CDouble, Ptr CDouble, Ptr CDouble] ()
getCyan_magenta_yellow_black_alphaSelector = mkSelector "getCyan:magenta:yellow:black:alpha:"

-- | @Selector@ for @getComponents:@
getComponentsSelector :: Selector '[Ptr CDouble] ()
getComponentsSelector = mkSelector "getComponents:"

-- | @Selector@ for @colorFromPasteboard:@
colorFromPasteboardSelector :: Selector '[Id NSPasteboard] (Id NSColor)
colorFromPasteboardSelector = mkSelector "colorFromPasteboard:"

-- | @Selector@ for @writeToPasteboard:@
writeToPasteboardSelector :: Selector '[Id NSPasteboard] ()
writeToPasteboardSelector = mkSelector "writeToPasteboard:"

-- | @Selector@ for @drawSwatchInRect:@
drawSwatchInRectSelector :: Selector '[NSRect] ()
drawSwatchInRectSelector = mkSelector "drawSwatchInRect:"

-- | @Selector@ for @colorWithCGColor:@
colorWithCGColorSelector :: Selector '[Ptr ()] (Id NSColor)
colorWithCGColorSelector = mkSelector "colorWithCGColor:"

-- | @Selector@ for @colorWithCIColor:@
colorWithCIColorSelector :: Selector '[Id CIColor] (Id NSColor)
colorWithCIColorSelector = mkSelector "colorWithCIColor:"

-- | @Selector@ for @colorUsingColorSpaceName:device:@
colorUsingColorSpaceName_deviceSelector :: Selector '[Id NSString, Id NSDictionary] (Id NSColor)
colorUsingColorSpaceName_deviceSelector = mkSelector "colorUsingColorSpaceName:device:"

-- | @Selector@ for @colorUsingColorSpaceName:@
colorUsingColorSpaceNameSelector :: Selector '[Id NSString] (Id NSColor)
colorUsingColorSpaceNameSelector = mkSelector "colorUsingColorSpaceName:"

-- | @Selector@ for @type@
typeSelector :: Selector '[] NSColorType
typeSelector = mkSelector "type"

-- | @Selector@ for @blackColor@
blackColorSelector :: Selector '[] (Id NSColor)
blackColorSelector = mkSelector "blackColor"

-- | @Selector@ for @darkGrayColor@
darkGrayColorSelector :: Selector '[] (Id NSColor)
darkGrayColorSelector = mkSelector "darkGrayColor"

-- | @Selector@ for @lightGrayColor@
lightGrayColorSelector :: Selector '[] (Id NSColor)
lightGrayColorSelector = mkSelector "lightGrayColor"

-- | @Selector@ for @whiteColor@
whiteColorSelector :: Selector '[] (Id NSColor)
whiteColorSelector = mkSelector "whiteColor"

-- | @Selector@ for @grayColor@
grayColorSelector :: Selector '[] (Id NSColor)
grayColorSelector = mkSelector "grayColor"

-- | @Selector@ for @redColor@
redColorSelector :: Selector '[] (Id NSColor)
redColorSelector = mkSelector "redColor"

-- | @Selector@ for @greenColor@
greenColorSelector :: Selector '[] (Id NSColor)
greenColorSelector = mkSelector "greenColor"

-- | @Selector@ for @blueColor@
blueColorSelector :: Selector '[] (Id NSColor)
blueColorSelector = mkSelector "blueColor"

-- | @Selector@ for @cyanColor@
cyanColorSelector :: Selector '[] (Id NSColor)
cyanColorSelector = mkSelector "cyanColor"

-- | @Selector@ for @yellowColor@
yellowColorSelector :: Selector '[] (Id NSColor)
yellowColorSelector = mkSelector "yellowColor"

-- | @Selector@ for @magentaColor@
magentaColorSelector :: Selector '[] (Id NSColor)
magentaColorSelector = mkSelector "magentaColor"

-- | @Selector@ for @orangeColor@
orangeColorSelector :: Selector '[] (Id NSColor)
orangeColorSelector = mkSelector "orangeColor"

-- | @Selector@ for @purpleColor@
purpleColorSelector :: Selector '[] (Id NSColor)
purpleColorSelector = mkSelector "purpleColor"

-- | @Selector@ for @brownColor@
brownColorSelector :: Selector '[] (Id NSColor)
brownColorSelector = mkSelector "brownColor"

-- | @Selector@ for @clearColor@
clearColorSelector :: Selector '[] (Id NSColor)
clearColorSelector = mkSelector "clearColor"

-- | @Selector@ for @labelColor@
labelColorSelector :: Selector '[] RawId
labelColorSelector = mkSelector "labelColor"

-- | @Selector@ for @secondaryLabelColor@
secondaryLabelColorSelector :: Selector '[] RawId
secondaryLabelColorSelector = mkSelector "secondaryLabelColor"

-- | @Selector@ for @tertiaryLabelColor@
tertiaryLabelColorSelector :: Selector '[] RawId
tertiaryLabelColorSelector = mkSelector "tertiaryLabelColor"

-- | @Selector@ for @quaternaryLabelColor@
quaternaryLabelColorSelector :: Selector '[] RawId
quaternaryLabelColorSelector = mkSelector "quaternaryLabelColor"

-- | @Selector@ for @linkColor@
linkColorSelector :: Selector '[] RawId
linkColorSelector = mkSelector "linkColor"

-- | @Selector@ for @placeholderTextColor@
placeholderTextColorSelector :: Selector '[] RawId
placeholderTextColorSelector = mkSelector "placeholderTextColor"

-- | @Selector@ for @windowFrameTextColor@
windowFrameTextColorSelector :: Selector '[] (Id NSColor)
windowFrameTextColorSelector = mkSelector "windowFrameTextColor"

-- | @Selector@ for @selectedMenuItemTextColor@
selectedMenuItemTextColorSelector :: Selector '[] (Id NSColor)
selectedMenuItemTextColorSelector = mkSelector "selectedMenuItemTextColor"

-- | @Selector@ for @alternateSelectedControlTextColor@
alternateSelectedControlTextColorSelector :: Selector '[] (Id NSColor)
alternateSelectedControlTextColorSelector = mkSelector "alternateSelectedControlTextColor"

-- | @Selector@ for @headerTextColor@
headerTextColorSelector :: Selector '[] (Id NSColor)
headerTextColorSelector = mkSelector "headerTextColor"

-- | @Selector@ for @separatorColor@
separatorColorSelector :: Selector '[] RawId
separatorColorSelector = mkSelector "separatorColor"

-- | @Selector@ for @gridColor@
gridColorSelector :: Selector '[] (Id NSColor)
gridColorSelector = mkSelector "gridColor"

-- | @Selector@ for @windowBackgroundColor@
windowBackgroundColorSelector :: Selector '[] (Id NSColor)
windowBackgroundColorSelector = mkSelector "windowBackgroundColor"

-- | @Selector@ for @underPageBackgroundColor@
underPageBackgroundColorSelector :: Selector '[] RawId
underPageBackgroundColorSelector = mkSelector "underPageBackgroundColor"

-- | @Selector@ for @controlBackgroundColor@
controlBackgroundColorSelector :: Selector '[] (Id NSColor)
controlBackgroundColorSelector = mkSelector "controlBackgroundColor"

-- | @Selector@ for @selectedContentBackgroundColor@
selectedContentBackgroundColorSelector :: Selector '[] RawId
selectedContentBackgroundColorSelector = mkSelector "selectedContentBackgroundColor"

-- | @Selector@ for @unemphasizedSelectedContentBackgroundColor@
unemphasizedSelectedContentBackgroundColorSelector :: Selector '[] RawId
unemphasizedSelectedContentBackgroundColorSelector = mkSelector "unemphasizedSelectedContentBackgroundColor"

-- | @Selector@ for @findHighlightColor@
findHighlightColorSelector :: Selector '[] RawId
findHighlightColorSelector = mkSelector "findHighlightColor"

-- | @Selector@ for @textColor@
textColorSelector :: Selector '[] (Id NSColor)
textColorSelector = mkSelector "textColor"

-- | @Selector@ for @textBackgroundColor@
textBackgroundColorSelector :: Selector '[] (Id NSColor)
textBackgroundColorSelector = mkSelector "textBackgroundColor"

-- | @Selector@ for @selectedTextColor@
selectedTextColorSelector :: Selector '[] (Id NSColor)
selectedTextColorSelector = mkSelector "selectedTextColor"

-- | @Selector@ for @selectedTextBackgroundColor@
selectedTextBackgroundColorSelector :: Selector '[] (Id NSColor)
selectedTextBackgroundColorSelector = mkSelector "selectedTextBackgroundColor"

-- | @Selector@ for @unemphasizedSelectedTextBackgroundColor@
unemphasizedSelectedTextBackgroundColorSelector :: Selector '[] RawId
unemphasizedSelectedTextBackgroundColorSelector = mkSelector "unemphasizedSelectedTextBackgroundColor"

-- | @Selector@ for @unemphasizedSelectedTextColor@
unemphasizedSelectedTextColorSelector :: Selector '[] RawId
unemphasizedSelectedTextColorSelector = mkSelector "unemphasizedSelectedTextColor"

-- | @Selector@ for @controlColor@
controlColorSelector :: Selector '[] (Id NSColor)
controlColorSelector = mkSelector "controlColor"

-- | @Selector@ for @controlTextColor@
controlTextColorSelector :: Selector '[] (Id NSColor)
controlTextColorSelector = mkSelector "controlTextColor"

-- | @Selector@ for @selectedControlColor@
selectedControlColorSelector :: Selector '[] (Id NSColor)
selectedControlColorSelector = mkSelector "selectedControlColor"

-- | @Selector@ for @selectedControlTextColor@
selectedControlTextColorSelector :: Selector '[] (Id NSColor)
selectedControlTextColorSelector = mkSelector "selectedControlTextColor"

-- | @Selector@ for @disabledControlTextColor@
disabledControlTextColorSelector :: Selector '[] (Id NSColor)
disabledControlTextColorSelector = mkSelector "disabledControlTextColor"

-- | @Selector@ for @keyboardFocusIndicatorColor@
keyboardFocusIndicatorColorSelector :: Selector '[] (Id NSColor)
keyboardFocusIndicatorColorSelector = mkSelector "keyboardFocusIndicatorColor"

-- | @Selector@ for @scrubberTexturedBackgroundColor@
scrubberTexturedBackgroundColorSelector :: Selector '[] RawId
scrubberTexturedBackgroundColorSelector = mkSelector "scrubberTexturedBackgroundColor"

-- | @Selector@ for @systemRedColor@
systemRedColorSelector :: Selector '[] RawId
systemRedColorSelector = mkSelector "systemRedColor"

-- | @Selector@ for @systemGreenColor@
systemGreenColorSelector :: Selector '[] RawId
systemGreenColorSelector = mkSelector "systemGreenColor"

-- | @Selector@ for @systemBlueColor@
systemBlueColorSelector :: Selector '[] RawId
systemBlueColorSelector = mkSelector "systemBlueColor"

-- | @Selector@ for @systemOrangeColor@
systemOrangeColorSelector :: Selector '[] RawId
systemOrangeColorSelector = mkSelector "systemOrangeColor"

-- | @Selector@ for @systemYellowColor@
systemYellowColorSelector :: Selector '[] RawId
systemYellowColorSelector = mkSelector "systemYellowColor"

-- | @Selector@ for @systemBrownColor@
systemBrownColorSelector :: Selector '[] RawId
systemBrownColorSelector = mkSelector "systemBrownColor"

-- | @Selector@ for @systemPinkColor@
systemPinkColorSelector :: Selector '[] RawId
systemPinkColorSelector = mkSelector "systemPinkColor"

-- | @Selector@ for @systemPurpleColor@
systemPurpleColorSelector :: Selector '[] RawId
systemPurpleColorSelector = mkSelector "systemPurpleColor"

-- | @Selector@ for @systemGrayColor@
systemGrayColorSelector :: Selector '[] RawId
systemGrayColorSelector = mkSelector "systemGrayColor"

-- | @Selector@ for @systemTealColor@
systemTealColorSelector :: Selector '[] RawId
systemTealColorSelector = mkSelector "systemTealColor"

-- | @Selector@ for @systemIndigoColor@
systemIndigoColorSelector :: Selector '[] RawId
systemIndigoColorSelector = mkSelector "systemIndigoColor"

-- | @Selector@ for @systemMintColor@
systemMintColorSelector :: Selector '[] RawId
systemMintColorSelector = mkSelector "systemMintColor"

-- | @Selector@ for @systemCyanColor@
systemCyanColorSelector :: Selector '[] RawId
systemCyanColorSelector = mkSelector "systemCyanColor"

-- | @Selector@ for @controlAccentColor@
controlAccentColorSelector :: Selector '[] RawId
controlAccentColorSelector = mkSelector "controlAccentColor"

-- | @Selector@ for @currentControlTint@
currentControlTintSelector :: Selector '[] NSControlTint
currentControlTintSelector = mkSelector "currentControlTint"

-- | @Selector@ for @highlightColor@
highlightColorSelector :: Selector '[] (Id NSColor)
highlightColorSelector = mkSelector "highlightColor"

-- | @Selector@ for @shadowColor@
shadowColorSelector :: Selector '[] (Id NSColor)
shadowColorSelector = mkSelector "shadowColor"

-- | @Selector@ for @catalogNameComponent@
catalogNameComponentSelector :: Selector '[] (Id NSString)
catalogNameComponentSelector = mkSelector "catalogNameComponent"

-- | @Selector@ for @colorNameComponent@
colorNameComponentSelector :: Selector '[] (Id NSString)
colorNameComponentSelector = mkSelector "colorNameComponent"

-- | @Selector@ for @localizedCatalogNameComponent@
localizedCatalogNameComponentSelector :: Selector '[] (Id NSString)
localizedCatalogNameComponentSelector = mkSelector "localizedCatalogNameComponent"

-- | @Selector@ for @localizedColorNameComponent@
localizedColorNameComponentSelector :: Selector '[] (Id NSString)
localizedColorNameComponentSelector = mkSelector "localizedColorNameComponent"

-- | @Selector@ for @redComponent@
redComponentSelector :: Selector '[] CDouble
redComponentSelector = mkSelector "redComponent"

-- | @Selector@ for @greenComponent@
greenComponentSelector :: Selector '[] CDouble
greenComponentSelector = mkSelector "greenComponent"

-- | @Selector@ for @blueComponent@
blueComponentSelector :: Selector '[] CDouble
blueComponentSelector = mkSelector "blueComponent"

-- | @Selector@ for @hueComponent@
hueComponentSelector :: Selector '[] CDouble
hueComponentSelector = mkSelector "hueComponent"

-- | @Selector@ for @saturationComponent@
saturationComponentSelector :: Selector '[] CDouble
saturationComponentSelector = mkSelector "saturationComponent"

-- | @Selector@ for @brightnessComponent@
brightnessComponentSelector :: Selector '[] CDouble
brightnessComponentSelector = mkSelector "brightnessComponent"

-- | @Selector@ for @whiteComponent@
whiteComponentSelector :: Selector '[] CDouble
whiteComponentSelector = mkSelector "whiteComponent"

-- | @Selector@ for @cyanComponent@
cyanComponentSelector :: Selector '[] CDouble
cyanComponentSelector = mkSelector "cyanComponent"

-- | @Selector@ for @magentaComponent@
magentaComponentSelector :: Selector '[] CDouble
magentaComponentSelector = mkSelector "magentaComponent"

-- | @Selector@ for @yellowComponent@
yellowComponentSelector :: Selector '[] CDouble
yellowComponentSelector = mkSelector "yellowComponent"

-- | @Selector@ for @blackComponent@
blackComponentSelector :: Selector '[] CDouble
blackComponentSelector = mkSelector "blackComponent"

-- | @Selector@ for @colorSpace@
colorSpaceSelector :: Selector '[] (Id NSColorSpace)
colorSpaceSelector = mkSelector "colorSpace"

-- | @Selector@ for @numberOfComponents@
numberOfComponentsSelector :: Selector '[] CLong
numberOfComponentsSelector = mkSelector "numberOfComponents"

-- | @Selector@ for @patternImage@
patternImageSelector :: Selector '[] (Id NSImage)
patternImageSelector = mkSelector "patternImage"

-- | @Selector@ for @alphaComponent@
alphaComponentSelector :: Selector '[] CDouble
alphaComponentSelector = mkSelector "alphaComponent"

-- | @Selector@ for @CGColor@
cgColorSelector :: Selector '[] (Ptr ())
cgColorSelector = mkSelector "CGColor"

-- | @Selector@ for @ignoresAlpha@
ignoresAlphaSelector :: Selector '[] Bool
ignoresAlphaSelector = mkSelector "ignoresAlpha"

-- | @Selector@ for @setIgnoresAlpha:@
setIgnoresAlphaSelector :: Selector '[Bool] ()
setIgnoresAlphaSelector = mkSelector "setIgnoresAlpha:"

-- | @Selector@ for @controlHighlightColor@
controlHighlightColorSelector :: Selector '[] RawId
controlHighlightColorSelector = mkSelector "controlHighlightColor"

-- | @Selector@ for @controlLightHighlightColor@
controlLightHighlightColorSelector :: Selector '[] RawId
controlLightHighlightColorSelector = mkSelector "controlLightHighlightColor"

-- | @Selector@ for @controlShadowColor@
controlShadowColorSelector :: Selector '[] RawId
controlShadowColorSelector = mkSelector "controlShadowColor"

-- | @Selector@ for @controlDarkShadowColor@
controlDarkShadowColorSelector :: Selector '[] RawId
controlDarkShadowColorSelector = mkSelector "controlDarkShadowColor"

-- | @Selector@ for @scrollBarColor@
scrollBarColorSelector :: Selector '[] RawId
scrollBarColorSelector = mkSelector "scrollBarColor"

-- | @Selector@ for @knobColor@
knobColorSelector :: Selector '[] RawId
knobColorSelector = mkSelector "knobColor"

-- | @Selector@ for @selectedKnobColor@
selectedKnobColorSelector :: Selector '[] RawId
selectedKnobColorSelector = mkSelector "selectedKnobColor"

-- | @Selector@ for @windowFrameColor@
windowFrameColorSelector :: Selector '[] RawId
windowFrameColorSelector = mkSelector "windowFrameColor"

-- | @Selector@ for @selectedMenuItemColor@
selectedMenuItemColorSelector :: Selector '[] RawId
selectedMenuItemColorSelector = mkSelector "selectedMenuItemColor"

-- | @Selector@ for @headerColor@
headerColorSelector :: Selector '[] RawId
headerColorSelector = mkSelector "headerColor"

-- | @Selector@ for @secondarySelectedControlColor@
secondarySelectedControlColorSelector :: Selector '[] RawId
secondarySelectedControlColorSelector = mkSelector "secondarySelectedControlColor"

-- | @Selector@ for @alternateSelectedControlColor@
alternateSelectedControlColorSelector :: Selector '[] RawId
alternateSelectedControlColorSelector = mkSelector "alternateSelectedControlColor"

-- | @Selector@ for @colorSpaceName@
colorSpaceNameSelector :: Selector '[] (Id NSString)
colorSpaceNameSelector = mkSelector "colorSpaceName"

