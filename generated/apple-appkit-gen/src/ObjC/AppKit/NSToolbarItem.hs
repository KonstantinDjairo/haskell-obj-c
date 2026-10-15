{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSToolbarItem@.
module ObjC.AppKit.NSToolbarItem
  ( NSToolbarItem
  , IsNSToolbarItem(..)
  , initWithItemIdentifier
  , validate
  , itemIdentifier
  , toolbar
  , label
  , setLabel
  , paletteLabel
  , setPaletteLabel
  , toolTip
  , setToolTip
  , menuFormRepresentation
  , setMenuFormRepresentation
  , tag
  , setTag
  , target
  , setTarget
  , action
  , setAction
  , enabled
  , setEnabled
  , image
  , setImage
  , title
  , setTitle
  , bordered
  , setBordered
  , navigational
  , setNavigational
  , view
  , setView
  , visible
  , minSize
  , setMinSize
  , maxSize
  , setMaxSize
  , visibilityPriority
  , setVisibilityPriority
  , autovalidates
  , setAutovalidates
  , allowsDuplicatesInToolbar
  , actionSelector
  , allowsDuplicatesInToolbarSelector
  , autovalidatesSelector
  , borderedSelector
  , enabledSelector
  , imageSelector
  , initWithItemIdentifierSelector
  , itemIdentifierSelector
  , labelSelector
  , maxSizeSelector
  , menuFormRepresentationSelector
  , minSizeSelector
  , navigationalSelector
  , paletteLabelSelector
  , setActionSelector
  , setAutovalidatesSelector
  , setBorderedSelector
  , setEnabledSelector
  , setImageSelector
  , setLabelSelector
  , setMaxSizeSelector
  , setMenuFormRepresentationSelector
  , setMinSizeSelector
  , setNavigationalSelector
  , setPaletteLabelSelector
  , setTagSelector
  , setTargetSelector
  , setTitleSelector
  , setToolTipSelector
  , setViewSelector
  , setVisibilityPrioritySelector
  , tagSelector
  , targetSelector
  , titleSelector
  , toolTipSelector
  , toolbarSelector
  , validateSelector
  , viewSelector
  , visibilityPrioritySelector
  , visibleSelector


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

-- | @- initWithItemIdentifier:@
initWithItemIdentifier :: (IsNSToolbarItem nsToolbarItem, IsNSString itemIdentifier) => nsToolbarItem -> itemIdentifier -> IO (Id NSToolbarItem)
initWithItemIdentifier nsToolbarItem itemIdentifier =
  sendOwnedMessage nsToolbarItem initWithItemIdentifierSelector (toNSString itemIdentifier)

-- | @- validate@
validate :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO ()
validate nsToolbarItem =
  sendMessage nsToolbarItem validateSelector

-- | @- itemIdentifier@
itemIdentifier :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSString)
itemIdentifier nsToolbarItem =
  sendMessage nsToolbarItem itemIdentifierSelector

-- | @- toolbar@
toolbar :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSToolbar)
toolbar nsToolbarItem =
  sendMessage nsToolbarItem toolbarSelector

-- | @- label@
label :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSString)
label nsToolbarItem =
  sendMessage nsToolbarItem labelSelector

-- | @- setLabel:@
setLabel :: (IsNSToolbarItem nsToolbarItem, IsNSString value) => nsToolbarItem -> value -> IO ()
setLabel nsToolbarItem value =
  sendMessage nsToolbarItem setLabelSelector (toNSString value)

-- | @- paletteLabel@
paletteLabel :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSString)
paletteLabel nsToolbarItem =
  sendMessage nsToolbarItem paletteLabelSelector

-- | @- setPaletteLabel:@
setPaletteLabel :: (IsNSToolbarItem nsToolbarItem, IsNSString value) => nsToolbarItem -> value -> IO ()
setPaletteLabel nsToolbarItem value =
  sendMessage nsToolbarItem setPaletteLabelSelector (toNSString value)

-- | @- toolTip@
toolTip :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSString)
toolTip nsToolbarItem =
  sendMessage nsToolbarItem toolTipSelector

-- | @- setToolTip:@
setToolTip :: (IsNSToolbarItem nsToolbarItem, IsNSString value) => nsToolbarItem -> value -> IO ()
setToolTip nsToolbarItem value =
  sendMessage nsToolbarItem setToolTipSelector (toNSString value)

-- | @- menuFormRepresentation@
menuFormRepresentation :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSMenuItem)
menuFormRepresentation nsToolbarItem =
  sendMessage nsToolbarItem menuFormRepresentationSelector

-- | @- setMenuFormRepresentation:@
setMenuFormRepresentation :: (IsNSToolbarItem nsToolbarItem, IsNSMenuItem value) => nsToolbarItem -> value -> IO ()
setMenuFormRepresentation nsToolbarItem value =
  sendMessage nsToolbarItem setMenuFormRepresentationSelector (toNSMenuItem value)

-- | @- tag@
tag :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO CLong
tag nsToolbarItem =
  sendMessage nsToolbarItem tagSelector

-- | @- setTag:@
setTag :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> CLong -> IO ()
setTag nsToolbarItem value =
  sendMessage nsToolbarItem setTagSelector value

-- | @- target@
target :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO RawId
target nsToolbarItem =
  sendMessage nsToolbarItem targetSelector

-- | @- setTarget:@
setTarget :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> RawId -> IO ()
setTarget nsToolbarItem value =
  sendMessage nsToolbarItem setTargetSelector value

-- | @- action@
action :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO Sel
action nsToolbarItem =
  sendMessage nsToolbarItem actionSelector

-- | @- setAction:@
setAction :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> Sel -> IO ()
setAction nsToolbarItem value =
  sendMessage nsToolbarItem setActionSelector value

-- | @- enabled@
enabled :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO Bool
enabled nsToolbarItem =
  sendMessage nsToolbarItem enabledSelector

-- | @- setEnabled:@
setEnabled :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> Bool -> IO ()
setEnabled nsToolbarItem value =
  sendMessage nsToolbarItem setEnabledSelector value

-- | @- image@
image :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSImage)
image nsToolbarItem =
  sendMessage nsToolbarItem imageSelector

-- | @- setImage:@
setImage :: (IsNSToolbarItem nsToolbarItem, IsNSImage value) => nsToolbarItem -> value -> IO ()
setImage nsToolbarItem value =
  sendMessage nsToolbarItem setImageSelector (toNSImage value)

-- | @- title@
title :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSString)
title nsToolbarItem =
  sendMessage nsToolbarItem titleSelector

-- | @- setTitle:@
setTitle :: (IsNSToolbarItem nsToolbarItem, IsNSString value) => nsToolbarItem -> value -> IO ()
setTitle nsToolbarItem value =
  sendMessage nsToolbarItem setTitleSelector (toNSString value)

-- | @- bordered@
bordered :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO Bool
bordered nsToolbarItem =
  sendMessage nsToolbarItem borderedSelector

-- | @- setBordered:@
setBordered :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> Bool -> IO ()
setBordered nsToolbarItem value =
  sendMessage nsToolbarItem setBorderedSelector value

-- | @- navigational@
navigational :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO Bool
navigational nsToolbarItem =
  sendMessage nsToolbarItem navigationalSelector

-- | @- setNavigational:@
setNavigational :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> Bool -> IO ()
setNavigational nsToolbarItem value =
  sendMessage nsToolbarItem setNavigationalSelector value

-- | @- view@
view :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO (Id NSView)
view nsToolbarItem =
  sendMessage nsToolbarItem viewSelector

-- | @- setView:@
setView :: (IsNSToolbarItem nsToolbarItem, IsNSView value) => nsToolbarItem -> value -> IO ()
setView nsToolbarItem value =
  sendMessage nsToolbarItem setViewSelector (toNSView value)

-- | An item is visible if it is present in the NSToolbar and not in the overflow menu. This property is key value observable.
--
-- ObjC selector: @- visible@
visible :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO Bool
visible nsToolbarItem =
  sendMessage nsToolbarItem visibleSelector

-- | @- minSize@
minSize :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO NSSize
minSize nsToolbarItem =
  sendMessage nsToolbarItem minSizeSelector

-- | @- setMinSize:@
setMinSize :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> NSSize -> IO ()
setMinSize nsToolbarItem value =
  sendMessage nsToolbarItem setMinSizeSelector value

-- | @- maxSize@
maxSize :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO NSSize
maxSize nsToolbarItem =
  sendMessage nsToolbarItem maxSizeSelector

-- | @- setMaxSize:@
setMaxSize :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> NSSize -> IO ()
setMaxSize nsToolbarItem value =
  sendMessage nsToolbarItem setMaxSizeSelector value

-- | @- visibilityPriority@
visibilityPriority :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO CLong
visibilityPriority nsToolbarItem =
  sendMessage nsToolbarItem visibilityPrioritySelector

-- | @- setVisibilityPriority:@
setVisibilityPriority :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> CLong -> IO ()
setVisibilityPriority nsToolbarItem value =
  sendMessage nsToolbarItem setVisibilityPrioritySelector value

-- | @- autovalidates@
autovalidates :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO Bool
autovalidates nsToolbarItem =
  sendMessage nsToolbarItem autovalidatesSelector

-- | @- setAutovalidates:@
setAutovalidates :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> Bool -> IO ()
setAutovalidates nsToolbarItem value =
  sendMessage nsToolbarItem setAutovalidatesSelector value

-- | @- allowsDuplicatesInToolbar@
allowsDuplicatesInToolbar :: IsNSToolbarItem nsToolbarItem => nsToolbarItem -> IO Bool
allowsDuplicatesInToolbar nsToolbarItem =
  sendMessage nsToolbarItem allowsDuplicatesInToolbarSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithItemIdentifier:@
initWithItemIdentifierSelector :: Selector '[Id NSString] (Id NSToolbarItem)
initWithItemIdentifierSelector = mkSelector "initWithItemIdentifier:"

-- | @Selector@ for @validate@
validateSelector :: Selector '[] ()
validateSelector = mkSelector "validate"

-- | @Selector@ for @itemIdentifier@
itemIdentifierSelector :: Selector '[] (Id NSString)
itemIdentifierSelector = mkSelector "itemIdentifier"

-- | @Selector@ for @toolbar@
toolbarSelector :: Selector '[] (Id NSToolbar)
toolbarSelector = mkSelector "toolbar"

-- | @Selector@ for @label@
labelSelector :: Selector '[] (Id NSString)
labelSelector = mkSelector "label"

-- | @Selector@ for @setLabel:@
setLabelSelector :: Selector '[Id NSString] ()
setLabelSelector = mkSelector "setLabel:"

-- | @Selector@ for @paletteLabel@
paletteLabelSelector :: Selector '[] (Id NSString)
paletteLabelSelector = mkSelector "paletteLabel"

-- | @Selector@ for @setPaletteLabel:@
setPaletteLabelSelector :: Selector '[Id NSString] ()
setPaletteLabelSelector = mkSelector "setPaletteLabel:"

-- | @Selector@ for @toolTip@
toolTipSelector :: Selector '[] (Id NSString)
toolTipSelector = mkSelector "toolTip"

-- | @Selector@ for @setToolTip:@
setToolTipSelector :: Selector '[Id NSString] ()
setToolTipSelector = mkSelector "setToolTip:"

-- | @Selector@ for @menuFormRepresentation@
menuFormRepresentationSelector :: Selector '[] (Id NSMenuItem)
menuFormRepresentationSelector = mkSelector "menuFormRepresentation"

-- | @Selector@ for @setMenuFormRepresentation:@
setMenuFormRepresentationSelector :: Selector '[Id NSMenuItem] ()
setMenuFormRepresentationSelector = mkSelector "setMenuFormRepresentation:"

-- | @Selector@ for @tag@
tagSelector :: Selector '[] CLong
tagSelector = mkSelector "tag"

-- | @Selector@ for @setTag:@
setTagSelector :: Selector '[CLong] ()
setTagSelector = mkSelector "setTag:"

-- | @Selector@ for @target@
targetSelector :: Selector '[] RawId
targetSelector = mkSelector "target"

-- | @Selector@ for @setTarget:@
setTargetSelector :: Selector '[RawId] ()
setTargetSelector = mkSelector "setTarget:"

-- | @Selector@ for @action@
actionSelector :: Selector '[] Sel
actionSelector = mkSelector "action"

-- | @Selector@ for @setAction:@
setActionSelector :: Selector '[Sel] ()
setActionSelector = mkSelector "setAction:"

-- | @Selector@ for @enabled@
enabledSelector :: Selector '[] Bool
enabledSelector = mkSelector "enabled"

-- | @Selector@ for @setEnabled:@
setEnabledSelector :: Selector '[Bool] ()
setEnabledSelector = mkSelector "setEnabled:"

-- | @Selector@ for @image@
imageSelector :: Selector '[] (Id NSImage)
imageSelector = mkSelector "image"

-- | @Selector@ for @setImage:@
setImageSelector :: Selector '[Id NSImage] ()
setImageSelector = mkSelector "setImage:"

-- | @Selector@ for @title@
titleSelector :: Selector '[] (Id NSString)
titleSelector = mkSelector "title"

-- | @Selector@ for @setTitle:@
setTitleSelector :: Selector '[Id NSString] ()
setTitleSelector = mkSelector "setTitle:"

-- | @Selector@ for @bordered@
borderedSelector :: Selector '[] Bool
borderedSelector = mkSelector "bordered"

-- | @Selector@ for @setBordered:@
setBorderedSelector :: Selector '[Bool] ()
setBorderedSelector = mkSelector "setBordered:"

-- | @Selector@ for @navigational@
navigationalSelector :: Selector '[] Bool
navigationalSelector = mkSelector "navigational"

-- | @Selector@ for @setNavigational:@
setNavigationalSelector :: Selector '[Bool] ()
setNavigationalSelector = mkSelector "setNavigational:"

-- | @Selector@ for @view@
viewSelector :: Selector '[] (Id NSView)
viewSelector = mkSelector "view"

-- | @Selector@ for @setView:@
setViewSelector :: Selector '[Id NSView] ()
setViewSelector = mkSelector "setView:"

-- | @Selector@ for @visible@
visibleSelector :: Selector '[] Bool
visibleSelector = mkSelector "visible"

-- | @Selector@ for @minSize@
minSizeSelector :: Selector '[] NSSize
minSizeSelector = mkSelector "minSize"

-- | @Selector@ for @setMinSize:@
setMinSizeSelector :: Selector '[NSSize] ()
setMinSizeSelector = mkSelector "setMinSize:"

-- | @Selector@ for @maxSize@
maxSizeSelector :: Selector '[] NSSize
maxSizeSelector = mkSelector "maxSize"

-- | @Selector@ for @setMaxSize:@
setMaxSizeSelector :: Selector '[NSSize] ()
setMaxSizeSelector = mkSelector "setMaxSize:"

-- | @Selector@ for @visibilityPriority@
visibilityPrioritySelector :: Selector '[] CLong
visibilityPrioritySelector = mkSelector "visibilityPriority"

-- | @Selector@ for @setVisibilityPriority:@
setVisibilityPrioritySelector :: Selector '[CLong] ()
setVisibilityPrioritySelector = mkSelector "setVisibilityPriority:"

-- | @Selector@ for @autovalidates@
autovalidatesSelector :: Selector '[] Bool
autovalidatesSelector = mkSelector "autovalidates"

-- | @Selector@ for @setAutovalidates:@
setAutovalidatesSelector :: Selector '[Bool] ()
setAutovalidatesSelector = mkSelector "setAutovalidates:"

-- | @Selector@ for @allowsDuplicatesInToolbar@
allowsDuplicatesInToolbarSelector :: Selector '[] Bool
allowsDuplicatesInToolbarSelector = mkSelector "allowsDuplicatesInToolbar"

