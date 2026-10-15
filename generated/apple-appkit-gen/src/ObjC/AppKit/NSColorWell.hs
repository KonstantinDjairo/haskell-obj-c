{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSColorWell@.
module ObjC.AppKit.NSColorWell
  ( NSColorWell
  , IsNSColorWell(..)
  , colorWellWithStyle
  , deactivate
  , activate
  , drawWellInside
  , takeColorFrom
  , active
  , bordered
  , setBordered
  , color
  , setColor
  , colorWellStyle
  , setColorWellStyle
  , image
  , setImage
  , pulldownTarget
  , setPulldownTarget
  , pulldownAction
  , setPulldownAction
  , activateSelector
  , activeSelector
  , borderedSelector
  , colorSelector
  , colorWellStyleSelector
  , colorWellWithStyleSelector
  , deactivateSelector
  , drawWellInsideSelector
  , imageSelector
  , pulldownActionSelector
  , pulldownTargetSelector
  , setBorderedSelector
  , setColorSelector
  , setColorWellStyleSelector
  , setImageSelector
  , setPulldownActionSelector
  , setPulldownTargetSelector
  , takeColorFromSelector

  -- * Enum types
  , NSColorWellStyle(NSColorWellStyle)
  , pattern NSColorWellStyleDefault
  , pattern NSColorWellStyleMinimal
  , pattern NSColorWellStyleExpanded

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

-- | @+ colorWellWithStyle:@
colorWellWithStyle :: NSColorWellStyle -> IO (Id NSColorWell)
colorWellWithStyle style =
  do
    cls' <- getRequiredClass "NSColorWell"
    sendClassMessage cls' colorWellWithStyleSelector style

-- | Instantiates a well in the given style with a default configuration.
--
-- ObjC selector: @- deactivate@
deactivate :: IsNSColorWell nsColorWell => nsColorWell -> IO ()
deactivate nsColorWell =
  sendMessage nsColorWell deactivateSelector

-- | @- activate:@
activate :: IsNSColorWell nsColorWell => nsColorWell -> Bool -> IO ()
activate nsColorWell exclusive =
  sendMessage nsColorWell activateSelector exclusive

-- | @- drawWellInside:@
drawWellInside :: IsNSColorWell nsColorWell => nsColorWell -> NSRect -> IO ()
drawWellInside nsColorWell insideRect =
  sendMessage nsColorWell drawWellInsideSelector insideRect

-- | @- takeColorFrom:@
takeColorFrom :: IsNSColorWell nsColorWell => nsColorWell -> RawId -> IO ()
takeColorFrom nsColorWell sender =
  sendMessage nsColorWell takeColorFromSelector sender

-- | @- active@
active :: IsNSColorWell nsColorWell => nsColorWell -> IO Bool
active nsColorWell =
  sendMessage nsColorWell activeSelector

-- | @- bordered@
bordered :: IsNSColorWell nsColorWell => nsColorWell -> IO Bool
bordered nsColorWell =
  sendMessage nsColorWell borderedSelector

-- | @- setBordered:@
setBordered :: IsNSColorWell nsColorWell => nsColorWell -> Bool -> IO ()
setBordered nsColorWell value =
  sendMessage nsColorWell setBorderedSelector value

-- | @- color@
color :: IsNSColorWell nsColorWell => nsColorWell -> IO (Id NSColor)
color nsColorWell =
  sendMessage nsColorWell colorSelector

-- | @- setColor:@
setColor :: (IsNSColorWell nsColorWell, IsNSColor value) => nsColorWell -> value -> IO ()
setColor nsColorWell value =
  sendMessage nsColorWell setColorSelector (toNSColor value)

-- | @- colorWellStyle@
colorWellStyle :: IsNSColorWell nsColorWell => nsColorWell -> IO NSColorWellStyle
colorWellStyle nsColorWell =
  sendMessage nsColorWell colorWellStyleSelector

-- | @- setColorWellStyle:@
setColorWellStyle :: IsNSColorWell nsColorWell => nsColorWell -> NSColorWellStyle -> IO ()
setColorWellStyle nsColorWell value =
  sendMessage nsColorWell setColorWellStyleSelector value

-- | @- image@
image :: IsNSColorWell nsColorWell => nsColorWell -> IO RawId
image nsColorWell =
  sendMessage nsColorWell imageSelector

-- | @- setImage:@
setImage :: IsNSColorWell nsColorWell => nsColorWell -> RawId -> IO ()
setImage nsColorWell value =
  sendMessage nsColorWell setImageSelector value

-- | The image that appears on the button portion of the expanded control. This property only applicable when @colorWellStyle@ is @NSColorWellStyleExpanded@.
--
-- ObjC selector: @- pulldownTarget@
pulldownTarget :: IsNSColorWell nsColorWell => nsColorWell -> IO RawId
pulldownTarget nsColorWell =
  sendMessage nsColorWell pulldownTargetSelector

-- | The image that appears on the button portion of the expanded control. This property only applicable when @colorWellStyle@ is @NSColorWellStyleExpanded@.
--
-- ObjC selector: @- setPulldownTarget:@
setPulldownTarget :: IsNSColorWell nsColorWell => nsColorWell -> RawId -> IO ()
setPulldownTarget nsColorWell value =
  sendMessage nsColorWell setPulldownTargetSelector value

-- | The target which @pulldownAction@ is sent to. This property only applicable when @colorWellStyle@ is @NSColorWellStyleExpanded@ or @NSColorWellStyleMinimal@.
--
-- ObjC selector: @- pulldownAction@
pulldownAction :: IsNSColorWell nsColorWell => nsColorWell -> IO Sel
pulldownAction nsColorWell =
  sendMessage nsColorWell pulldownActionSelector

-- | The target which @pulldownAction@ is sent to. This property only applicable when @colorWellStyle@ is @NSColorWellStyleExpanded@ or @NSColorWellStyleMinimal@.
--
-- ObjC selector: @- setPulldownAction:@
setPulldownAction :: IsNSColorWell nsColorWell => nsColorWell -> Sel -> IO ()
setPulldownAction nsColorWell value =
  sendMessage nsColorWell setPulldownActionSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @colorWellWithStyle:@
colorWellWithStyleSelector :: Selector '[NSColorWellStyle] (Id NSColorWell)
colorWellWithStyleSelector = mkSelector "colorWellWithStyle:"

-- | @Selector@ for @deactivate@
deactivateSelector :: Selector '[] ()
deactivateSelector = mkSelector "deactivate"

-- | @Selector@ for @activate:@
activateSelector :: Selector '[Bool] ()
activateSelector = mkSelector "activate:"

-- | @Selector@ for @drawWellInside:@
drawWellInsideSelector :: Selector '[NSRect] ()
drawWellInsideSelector = mkSelector "drawWellInside:"

-- | @Selector@ for @takeColorFrom:@
takeColorFromSelector :: Selector '[RawId] ()
takeColorFromSelector = mkSelector "takeColorFrom:"

-- | @Selector@ for @active@
activeSelector :: Selector '[] Bool
activeSelector = mkSelector "active"

-- | @Selector@ for @bordered@
borderedSelector :: Selector '[] Bool
borderedSelector = mkSelector "bordered"

-- | @Selector@ for @setBordered:@
setBorderedSelector :: Selector '[Bool] ()
setBorderedSelector = mkSelector "setBordered:"

-- | @Selector@ for @color@
colorSelector :: Selector '[] (Id NSColor)
colorSelector = mkSelector "color"

-- | @Selector@ for @setColor:@
setColorSelector :: Selector '[Id NSColor] ()
setColorSelector = mkSelector "setColor:"

-- | @Selector@ for @colorWellStyle@
colorWellStyleSelector :: Selector '[] NSColorWellStyle
colorWellStyleSelector = mkSelector "colorWellStyle"

-- | @Selector@ for @setColorWellStyle:@
setColorWellStyleSelector :: Selector '[NSColorWellStyle] ()
setColorWellStyleSelector = mkSelector "setColorWellStyle:"

-- | @Selector@ for @image@
imageSelector :: Selector '[] RawId
imageSelector = mkSelector "image"

-- | @Selector@ for @setImage:@
setImageSelector :: Selector '[RawId] ()
setImageSelector = mkSelector "setImage:"

-- | @Selector@ for @pulldownTarget@
pulldownTargetSelector :: Selector '[] RawId
pulldownTargetSelector = mkSelector "pulldownTarget"

-- | @Selector@ for @setPulldownTarget:@
setPulldownTargetSelector :: Selector '[RawId] ()
setPulldownTargetSelector = mkSelector "setPulldownTarget:"

-- | @Selector@ for @pulldownAction@
pulldownActionSelector :: Selector '[] Sel
pulldownActionSelector = mkSelector "pulldownAction"

-- | @Selector@ for @setPulldownAction:@
setPulldownActionSelector :: Selector '[Sel] ()
setPulldownActionSelector = mkSelector "setPulldownAction:"

