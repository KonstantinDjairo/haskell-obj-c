{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSImageView@.
module ObjC.AppKit.NSImageView
  ( NSImageView
  , IsNSImageView(..)
  , imageViewWithImage
  , image
  , setImage
  , editable
  , setEditable
  , imageAlignment
  , setImageAlignment
  , imageScaling
  , setImageScaling
  , imageFrameStyle
  , setImageFrameStyle
  , symbolConfiguration
  , setSymbolConfiguration
  , contentTintColor
  , setContentTintColor
  , animates
  , setAnimates
  , allowsCutCopyPaste
  , setAllowsCutCopyPaste
  , allowsCutCopyPasteSelector
  , animatesSelector
  , contentTintColorSelector
  , editableSelector
  , imageAlignmentSelector
  , imageFrameStyleSelector
  , imageScalingSelector
  , imageSelector
  , imageViewWithImageSelector
  , setAllowsCutCopyPasteSelector
  , setAnimatesSelector
  , setContentTintColorSelector
  , setEditableSelector
  , setImageAlignmentSelector
  , setImageFrameStyleSelector
  , setImageScalingSelector
  , setImageSelector
  , setSymbolConfigurationSelector
  , symbolConfigurationSelector

  -- * Enum types
  , NSImageAlignment(NSImageAlignment)
  , pattern NSImageAlignCenter
  , pattern NSImageAlignTop
  , pattern NSImageAlignTopLeft
  , pattern NSImageAlignTopRight
  , pattern NSImageAlignLeft
  , pattern NSImageAlignBottom
  , pattern NSImageAlignBottomLeft
  , pattern NSImageAlignBottomRight
  , pattern NSImageAlignRight
  , NSImageFrameStyle(NSImageFrameStyle)
  , pattern NSImageFrameNone
  , pattern NSImageFramePhoto
  , pattern NSImageFrameGrayBezel
  , pattern NSImageFrameGroove
  , pattern NSImageFrameButton
  , NSImageScaling(NSImageScaling)
  , pattern NSImageScaleProportionallyDown
  , pattern NSImageScaleAxesIndependently
  , pattern NSImageScaleNone
  , pattern NSImageScaleProportionallyUpOrDown
  , pattern NSScaleProportionally
  , pattern NSScaleToFit
  , pattern NSScaleNone

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.AppKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | Creates a non-editable image view containing the provided image. The image is scaled proportionally down to fit the view, and is centered within the view.
--
-- @image@ — The image to display within the view.
--
-- Returns: An initialized image view.
--
-- ObjC selector: @+ imageViewWithImage:@
imageViewWithImage :: IsNSImage image => image -> IO (Id NSImageView)
imageViewWithImage image =
  do
    cls' <- getRequiredClass "NSImageView"
    sendClassMessage cls' imageViewWithImageSelector (toNSImage image)

-- | @- image@
image :: IsNSImageView nsImageView => nsImageView -> IO (Id NSImage)
image nsImageView =
  sendMessage nsImageView imageSelector

-- | @- setImage:@
setImage :: (IsNSImageView nsImageView, IsNSImage value) => nsImageView -> value -> IO ()
setImage nsImageView value =
  sendMessage nsImageView setImageSelector (toNSImage value)

-- | @- editable@
editable :: IsNSImageView nsImageView => nsImageView -> IO Bool
editable nsImageView =
  sendMessage nsImageView editableSelector

-- | @- setEditable:@
setEditable :: IsNSImageView nsImageView => nsImageView -> Bool -> IO ()
setEditable nsImageView value =
  sendMessage nsImageView setEditableSelector value

-- | @- imageAlignment@
imageAlignment :: IsNSImageView nsImageView => nsImageView -> IO NSImageAlignment
imageAlignment nsImageView =
  sendMessage nsImageView imageAlignmentSelector

-- | @- setImageAlignment:@
setImageAlignment :: IsNSImageView nsImageView => nsImageView -> NSImageAlignment -> IO ()
setImageAlignment nsImageView value =
  sendMessage nsImageView setImageAlignmentSelector value

-- | @- imageScaling@
imageScaling :: IsNSImageView nsImageView => nsImageView -> IO NSImageScaling
imageScaling nsImageView =
  sendMessage nsImageView imageScalingSelector

-- | @- setImageScaling:@
setImageScaling :: IsNSImageView nsImageView => nsImageView -> NSImageScaling -> IO ()
setImageScaling nsImageView value =
  sendMessage nsImageView setImageScalingSelector value

-- | @- imageFrameStyle@
imageFrameStyle :: IsNSImageView nsImageView => nsImageView -> IO NSImageFrameStyle
imageFrameStyle nsImageView =
  sendMessage nsImageView imageFrameStyleSelector

-- | @- setImageFrameStyle:@
setImageFrameStyle :: IsNSImageView nsImageView => nsImageView -> NSImageFrameStyle -> IO ()
setImageFrameStyle nsImageView value =
  sendMessage nsImageView setImageFrameStyleSelector value

-- | Specifies a combination of point size, weight, and scale to use when sizing and displaying symbol images. If a symbol configuration isn't provided, the image view uses a default size, weight, and scale provided by the system. The default value is @nil@.
--
-- ObjC selector: @- symbolConfiguration@
symbolConfiguration :: IsNSImageView nsImageView => nsImageView -> IO RawId
symbolConfiguration nsImageView =
  sendMessage nsImageView symbolConfigurationSelector

-- | Specifies a combination of point size, weight, and scale to use when sizing and displaying symbol images. If a symbol configuration isn't provided, the image view uses a default size, weight, and scale provided by the system. The default value is @nil@.
--
-- ObjC selector: @- setSymbolConfiguration:@
setSymbolConfiguration :: IsNSImageView nsImageView => nsImageView -> RawId -> IO ()
setSymbolConfiguration nsImageView value =
  sendMessage nsImageView setSymbolConfigurationSelector value

-- | A tint color to be used when rendering template image content. This color may be combined with other effects to produce a theme-appropriate rendition of the template image. A nil value indicates the standard set of effects without color modification. The default value is nil.
--
-- ObjC selector: @- contentTintColor@
contentTintColor :: IsNSImageView nsImageView => nsImageView -> IO RawId
contentTintColor nsImageView =
  sendMessage nsImageView contentTintColorSelector

-- | A tint color to be used when rendering template image content. This color may be combined with other effects to produce a theme-appropriate rendition of the template image. A nil value indicates the standard set of effects without color modification. The default value is nil.
--
-- ObjC selector: @- setContentTintColor:@
setContentTintColor :: IsNSImageView nsImageView => nsImageView -> RawId -> IO ()
setContentTintColor nsImageView value =
  sendMessage nsImageView setContentTintColorSelector value

-- | @- animates@
animates :: IsNSImageView nsImageView => nsImageView -> IO Bool
animates nsImageView =
  sendMessage nsImageView animatesSelector

-- | @- setAnimates:@
setAnimates :: IsNSImageView nsImageView => nsImageView -> Bool -> IO ()
setAnimates nsImageView value =
  sendMessage nsImageView setAnimatesSelector value

-- | @- allowsCutCopyPaste@
allowsCutCopyPaste :: IsNSImageView nsImageView => nsImageView -> IO Bool
allowsCutCopyPaste nsImageView =
  sendMessage nsImageView allowsCutCopyPasteSelector

-- | @- setAllowsCutCopyPaste:@
setAllowsCutCopyPaste :: IsNSImageView nsImageView => nsImageView -> Bool -> IO ()
setAllowsCutCopyPaste nsImageView value =
  sendMessage nsImageView setAllowsCutCopyPasteSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @imageViewWithImage:@
imageViewWithImageSelector :: Selector '[Id NSImage] (Id NSImageView)
imageViewWithImageSelector = mkSelector "imageViewWithImage:"

-- | @Selector@ for @image@
imageSelector :: Selector '[] (Id NSImage)
imageSelector = mkSelector "image"

-- | @Selector@ for @setImage:@
setImageSelector :: Selector '[Id NSImage] ()
setImageSelector = mkSelector "setImage:"

-- | @Selector@ for @editable@
editableSelector :: Selector '[] Bool
editableSelector = mkSelector "editable"

-- | @Selector@ for @setEditable:@
setEditableSelector :: Selector '[Bool] ()
setEditableSelector = mkSelector "setEditable:"

-- | @Selector@ for @imageAlignment@
imageAlignmentSelector :: Selector '[] NSImageAlignment
imageAlignmentSelector = mkSelector "imageAlignment"

-- | @Selector@ for @setImageAlignment:@
setImageAlignmentSelector :: Selector '[NSImageAlignment] ()
setImageAlignmentSelector = mkSelector "setImageAlignment:"

-- | @Selector@ for @imageScaling@
imageScalingSelector :: Selector '[] NSImageScaling
imageScalingSelector = mkSelector "imageScaling"

-- | @Selector@ for @setImageScaling:@
setImageScalingSelector :: Selector '[NSImageScaling] ()
setImageScalingSelector = mkSelector "setImageScaling:"

-- | @Selector@ for @imageFrameStyle@
imageFrameStyleSelector :: Selector '[] NSImageFrameStyle
imageFrameStyleSelector = mkSelector "imageFrameStyle"

-- | @Selector@ for @setImageFrameStyle:@
setImageFrameStyleSelector :: Selector '[NSImageFrameStyle] ()
setImageFrameStyleSelector = mkSelector "setImageFrameStyle:"

-- | @Selector@ for @symbolConfiguration@
symbolConfigurationSelector :: Selector '[] RawId
symbolConfigurationSelector = mkSelector "symbolConfiguration"

-- | @Selector@ for @setSymbolConfiguration:@
setSymbolConfigurationSelector :: Selector '[RawId] ()
setSymbolConfigurationSelector = mkSelector "setSymbolConfiguration:"

-- | @Selector@ for @contentTintColor@
contentTintColorSelector :: Selector '[] RawId
contentTintColorSelector = mkSelector "contentTintColor"

-- | @Selector@ for @setContentTintColor:@
setContentTintColorSelector :: Selector '[RawId] ()
setContentTintColorSelector = mkSelector "setContentTintColor:"

-- | @Selector@ for @animates@
animatesSelector :: Selector '[] Bool
animatesSelector = mkSelector "animates"

-- | @Selector@ for @setAnimates:@
setAnimatesSelector :: Selector '[Bool] ()
setAnimatesSelector = mkSelector "setAnimates:"

-- | @Selector@ for @allowsCutCopyPaste@
allowsCutCopyPasteSelector :: Selector '[] Bool
allowsCutCopyPasteSelector = mkSelector "allowsCutCopyPaste"

-- | @Selector@ for @setAllowsCutCopyPaste:@
setAllowsCutCopyPasteSelector :: Selector '[Bool] ()
setAllowsCutCopyPasteSelector = mkSelector "setAllowsCutCopyPaste:"

