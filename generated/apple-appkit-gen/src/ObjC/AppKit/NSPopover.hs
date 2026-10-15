{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSPopover@.
module ObjC.AppKit.NSPopover
  ( NSPopover
  , IsNSPopover(..)
  , init_
  , initWithCoder
  , showRelativeToRect_ofView_preferredEdge
  , performClose
  , close
  , delegate
  , setDelegate
  , appearance
  , setAppearance
  , effectiveAppearance
  , behavior
  , setBehavior
  , animates
  , setAnimates
  , contentViewController
  , setContentViewController
  , contentSize
  , setContentSize
  , shown
  , detached
  , positioningRect
  , setPositioningRect
  , animatesSelector
  , appearanceSelector
  , behaviorSelector
  , closeSelector
  , contentSizeSelector
  , contentViewControllerSelector
  , delegateSelector
  , detachedSelector
  , effectiveAppearanceSelector
  , initSelector
  , initWithCoderSelector
  , performCloseSelector
  , positioningRectSelector
  , setAnimatesSelector
  , setAppearanceSelector
  , setBehaviorSelector
  , setContentSizeSelector
  , setContentViewControllerSelector
  , setDelegateSelector
  , setPositioningRectSelector
  , showRelativeToRect_ofView_preferredEdgeSelector
  , shownSelector

  -- * Enum types
  , NSPopoverBehavior(NSPopoverBehavior)
  , pattern NSPopoverBehaviorApplicationDefined
  , pattern NSPopoverBehaviorTransient
  , pattern NSPopoverBehaviorSemitransient
  , NSRectEdge(NSRectEdge)
  , pattern NSRectEdgeMinX
  , pattern NSRectEdgeMinY
  , pattern NSRectEdgeMaxX
  , pattern NSRectEdgeMaxY
  , pattern NSMinXEdge
  , pattern NSMinYEdge
  , pattern NSMaxXEdge
  , pattern NSMaxYEdge

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
import ObjC.Foundation.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsNSPopover nsPopover => nsPopover -> IO (Id NSPopover)
init_ nsPopover =
  sendOwnedMessage nsPopover initSelector

-- | @- initWithCoder:@
initWithCoder :: (IsNSPopover nsPopover, IsNSCoder coder) => nsPopover -> coder -> IO (Id NSPopover)
initWithCoder nsPopover coder =
  sendOwnedMessage nsPopover initWithCoderSelector (toNSCoder coder)

-- | @- showRelativeToRect:ofView:preferredEdge:@
showRelativeToRect_ofView_preferredEdge :: (IsNSPopover nsPopover, IsNSView positioningView) => nsPopover -> NSRect -> positioningView -> NSRectEdge -> IO ()
showRelativeToRect_ofView_preferredEdge nsPopover positioningRect positioningView preferredEdge =
  sendMessage nsPopover showRelativeToRect_ofView_preferredEdgeSelector positioningRect (toNSView positioningView) preferredEdge

-- | @- performClose:@
performClose :: IsNSPopover nsPopover => nsPopover -> RawId -> IO ()
performClose nsPopover sender =
  sendMessage nsPopover performCloseSelector sender

-- | @- close@
close :: IsNSPopover nsPopover => nsPopover -> IO ()
close nsPopover =
  sendMessage nsPopover closeSelector

-- | @- delegate@
delegate :: IsNSPopover nsPopover => nsPopover -> IO RawId
delegate nsPopover =
  sendMessage nsPopover delegateSelector

-- | @- setDelegate:@
setDelegate :: IsNSPopover nsPopover => nsPopover -> RawId -> IO ()
setDelegate nsPopover value =
  sendMessage nsPopover setDelegateSelector value

-- | The appearance of the popover. The popover's contentView will inherit this appearance. The default effective appearance is the NSAppearanceNameVibrantLight appearance. If nil is set, nil will be returned, and the effective appearance will return to the default. To prevent conflicts with the previous appearance property, this is only available for apps that target 10.10 and higher.
--
-- ObjC selector: @- appearance@
appearance :: IsNSPopover nsPopover => nsPopover -> IO RawId
appearance nsPopover =
  sendMessage nsPopover appearanceSelector

-- | The appearance of the popover. The popover's contentView will inherit this appearance. The default effective appearance is the NSAppearanceNameVibrantLight appearance. If nil is set, nil will be returned, and the effective appearance will return to the default. To prevent conflicts with the previous appearance property, this is only available for apps that target 10.10 and higher.
--
-- ObjC selector: @- setAppearance:@
setAppearance :: IsNSPopover nsPopover => nsPopover -> RawId -> IO ()
setAppearance nsPopover value =
  sendMessage nsPopover setAppearanceSelector value

-- | @- effectiveAppearance@
effectiveAppearance :: IsNSPopover nsPopover => nsPopover -> IO RawId
effectiveAppearance nsPopover =
  sendMessage nsPopover effectiveAppearanceSelector

-- | @- behavior@
behavior :: IsNSPopover nsPopover => nsPopover -> IO NSPopoverBehavior
behavior nsPopover =
  sendMessage nsPopover behaviorSelector

-- | @- setBehavior:@
setBehavior :: IsNSPopover nsPopover => nsPopover -> NSPopoverBehavior -> IO ()
setBehavior nsPopover value =
  sendMessage nsPopover setBehaviorSelector value

-- | @- animates@
animates :: IsNSPopover nsPopover => nsPopover -> IO Bool
animates nsPopover =
  sendMessage nsPopover animatesSelector

-- | @- setAnimates:@
setAnimates :: IsNSPopover nsPopover => nsPopover -> Bool -> IO ()
setAnimates nsPopover value =
  sendMessage nsPopover setAnimatesSelector value

-- | @- contentViewController@
contentViewController :: IsNSPopover nsPopover => nsPopover -> IO (Id NSViewController)
contentViewController nsPopover =
  sendMessage nsPopover contentViewControllerSelector

-- | @- setContentViewController:@
setContentViewController :: (IsNSPopover nsPopover, IsNSViewController value) => nsPopover -> value -> IO ()
setContentViewController nsPopover value =
  sendMessage nsPopover setContentViewControllerSelector (toNSViewController value)

-- | @- contentSize@
contentSize :: IsNSPopover nsPopover => nsPopover -> IO NSSize
contentSize nsPopover =
  sendMessage nsPopover contentSizeSelector

-- | @- setContentSize:@
setContentSize :: IsNSPopover nsPopover => nsPopover -> NSSize -> IO ()
setContentSize nsPopover value =
  sendMessage nsPopover setContentSizeSelector value

-- | @- shown@
shown :: IsNSPopover nsPopover => nsPopover -> IO Bool
shown nsPopover =
  sendMessage nsPopover shownSelector

-- | Returns @YES@ if the window is detached to an implicitly created detached window, @NO@ otherwise. This method does not apply when the popover is detached to a window returned with @-detachableWindowForPopover:.@
--
-- ObjC selector: @- detached@
detached :: IsNSPopover nsPopover => nsPopover -> IO Bool
detached nsPopover =
  sendMessage nsPopover detachedSelector

-- | @- positioningRect@
positioningRect :: IsNSPopover nsPopover => nsPopover -> IO NSRect
positioningRect nsPopover =
  sendMessage nsPopover positioningRectSelector

-- | @- setPositioningRect:@
setPositioningRect :: IsNSPopover nsPopover => nsPopover -> NSRect -> IO ()
setPositioningRect nsPopover value =
  sendMessage nsPopover setPositioningRectSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id NSPopover)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithCoder:@
initWithCoderSelector :: Selector '[Id NSCoder] (Id NSPopover)
initWithCoderSelector = mkSelector "initWithCoder:"

-- | @Selector@ for @showRelativeToRect:ofView:preferredEdge:@
showRelativeToRect_ofView_preferredEdgeSelector :: Selector '[NSRect, Id NSView, NSRectEdge] ()
showRelativeToRect_ofView_preferredEdgeSelector = mkSelector "showRelativeToRect:ofView:preferredEdge:"

-- | @Selector@ for @performClose:@
performCloseSelector :: Selector '[RawId] ()
performCloseSelector = mkSelector "performClose:"

-- | @Selector@ for @close@
closeSelector :: Selector '[] ()
closeSelector = mkSelector "close"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @appearance@
appearanceSelector :: Selector '[] RawId
appearanceSelector = mkSelector "appearance"

-- | @Selector@ for @setAppearance:@
setAppearanceSelector :: Selector '[RawId] ()
setAppearanceSelector = mkSelector "setAppearance:"

-- | @Selector@ for @effectiveAppearance@
effectiveAppearanceSelector :: Selector '[] RawId
effectiveAppearanceSelector = mkSelector "effectiveAppearance"

-- | @Selector@ for @behavior@
behaviorSelector :: Selector '[] NSPopoverBehavior
behaviorSelector = mkSelector "behavior"

-- | @Selector@ for @setBehavior:@
setBehaviorSelector :: Selector '[NSPopoverBehavior] ()
setBehaviorSelector = mkSelector "setBehavior:"

-- | @Selector@ for @animates@
animatesSelector :: Selector '[] Bool
animatesSelector = mkSelector "animates"

-- | @Selector@ for @setAnimates:@
setAnimatesSelector :: Selector '[Bool] ()
setAnimatesSelector = mkSelector "setAnimates:"

-- | @Selector@ for @contentViewController@
contentViewControllerSelector :: Selector '[] (Id NSViewController)
contentViewControllerSelector = mkSelector "contentViewController"

-- | @Selector@ for @setContentViewController:@
setContentViewControllerSelector :: Selector '[Id NSViewController] ()
setContentViewControllerSelector = mkSelector "setContentViewController:"

-- | @Selector@ for @contentSize@
contentSizeSelector :: Selector '[] NSSize
contentSizeSelector = mkSelector "contentSize"

-- | @Selector@ for @setContentSize:@
setContentSizeSelector :: Selector '[NSSize] ()
setContentSizeSelector = mkSelector "setContentSize:"

-- | @Selector@ for @shown@
shownSelector :: Selector '[] Bool
shownSelector = mkSelector "shown"

-- | @Selector@ for @detached@
detachedSelector :: Selector '[] Bool
detachedSelector = mkSelector "detached"

-- | @Selector@ for @positioningRect@
positioningRectSelector :: Selector '[] NSRect
positioningRectSelector = mkSelector "positioningRect"

-- | @Selector@ for @setPositioningRect:@
setPositioningRectSelector :: Selector '[NSRect] ()
setPositioningRectSelector = mkSelector "setPositioningRect:"

