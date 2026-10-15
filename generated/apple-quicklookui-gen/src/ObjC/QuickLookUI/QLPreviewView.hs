{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A QLPreviewView shows a preview of an item.
--
-- Generated bindings for @QLPreviewView@.
module ObjC.QuickLookUI.QLPreviewView
  ( QLPreviewView
  , IsQLPreviewView(..)
  , initWithFrame_style
  , initWithFrame
  , refreshPreviewItem
  , close
  , previewItem
  , setPreviewItem
  , displayState
  , setDisplayState
  , shouldCloseWithWindow
  , setShouldCloseWithWindow
  , autostarts
  , setAutostarts
  , autostartsSelector
  , closeSelector
  , displayStateSelector
  , initWithFrameSelector
  , initWithFrame_styleSelector
  , previewItemSelector
  , refreshPreviewItemSelector
  , setAutostartsSelector
  , setDisplayStateSelector
  , setPreviewItemSelector
  , setShouldCloseWithWindowSelector
  , shouldCloseWithWindowSelector

  -- * Enum types
  , QLPreviewViewStyle(QLPreviewViewStyle)
  , pattern QLPreviewViewStyleNormal
  , pattern QLPreviewViewStyleCompact

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.QuickLookUI.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.QuickLookUI.Internal.Enums
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | This is the designated initializer
--
-- ObjC selector: @- initWithFrame:style:@
initWithFrame_style :: IsQLPreviewView qlPreviewView => qlPreviewView -> NSRect -> QLPreviewViewStyle -> IO RawId
initWithFrame_style qlPreviewView frame style =
  sendOwnedMessage qlPreviewView initWithFrame_styleSelector frame style

-- | Equivalent to initWithFrame:style: with style being QLPreviewViewStyleNormal
--
-- ObjC selector: @- initWithFrame:@
initWithFrame :: IsQLPreviewView qlPreviewView => qlPreviewView -> NSRect -> IO RawId
initWithFrame qlPreviewView frame =
  sendOwnedMessage qlPreviewView initWithFrameSelector frame

-- | Asks the Preview view to recompute the preview of the currently previewed item.
--
-- ObjC selector: @- refreshPreviewItem@
refreshPreviewItem :: IsQLPreviewView qlPreviewView => qlPreviewView -> IO ()
refreshPreviewItem qlPreviewView =
  sendMessage qlPreviewView refreshPreviewItemSelector

-- | Closes the receiver, releasing the current preview item. Once the receiver has closed, it will no longer accept preview items.
--
-- The application is required to call close when the receiver is no longer needed if shouldCloseWithWindow is NO. The close method will be called automatically when the window closes if shouldCloseWithWindow is YES.
--
-- ObjC selector: @- close@
close :: IsQLPreviewView qlPreviewView => qlPreviewView -> IO ()
close qlPreviewView =
  sendMessage qlPreviewView closeSelector

-- | The item to preview.
--
-- ObjC selector: @- previewItem@
previewItem :: IsQLPreviewView qlPreviewView => qlPreviewView -> IO RawId
previewItem qlPreviewView =
  sendMessage qlPreviewView previewItemSelector

-- | The item to preview.
--
-- ObjC selector: @- setPreviewItem:@
setPreviewItem :: IsQLPreviewView qlPreviewView => qlPreviewView -> RawId -> IO ()
setPreviewItem qlPreviewView value =
  sendMessage qlPreviewView setPreviewItemSelector value

-- | The current display state (e.g. visible page) of the preview item.
--
-- The display state is an opaque object used by the Preview Panel and Preview Views.
--
-- ObjC selector: @- displayState@
displayState :: IsQLPreviewView qlPreviewView => qlPreviewView -> IO RawId
displayState qlPreviewView =
  sendMessage qlPreviewView displayStateSelector

-- | The current display state (e.g. visible page) of the preview item.
--
-- The display state is an opaque object used by the Preview Panel and Preview Views.
--
-- ObjC selector: @- setDisplayState:@
setDisplayState :: IsQLPreviewView qlPreviewView => qlPreviewView -> RawId -> IO ()
setDisplayState qlPreviewView value =
  sendMessage qlPreviewView setDisplayStateSelector value

-- | Set whether the receiver closes when its window closes (see discussion of -close).
--
-- ObjC selector: @- shouldCloseWithWindow@
shouldCloseWithWindow :: IsQLPreviewView qlPreviewView => qlPreviewView -> IO Bool
shouldCloseWithWindow qlPreviewView =
  sendMessage qlPreviewView shouldCloseWithWindowSelector

-- | Set whether the receiver closes when its window closes (see discussion of -close).
--
-- ObjC selector: @- setShouldCloseWithWindow:@
setShouldCloseWithWindow :: IsQLPreviewView qlPreviewView => qlPreviewView -> Bool -> IO ()
setShouldCloseWithWindow qlPreviewView value =
  sendMessage qlPreviewView setShouldCloseWithWindowSelector value

-- | @- autostarts@
autostarts :: IsQLPreviewView qlPreviewView => qlPreviewView -> IO Bool
autostarts qlPreviewView =
  sendMessage qlPreviewView autostartsSelector

-- | @- setAutostarts:@
setAutostarts :: IsQLPreviewView qlPreviewView => qlPreviewView -> Bool -> IO ()
setAutostarts qlPreviewView value =
  sendMessage qlPreviewView setAutostartsSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithFrame:style:@
initWithFrame_styleSelector :: Selector '[NSRect, QLPreviewViewStyle] RawId
initWithFrame_styleSelector = mkSelector "initWithFrame:style:"

-- | @Selector@ for @initWithFrame:@
initWithFrameSelector :: Selector '[NSRect] RawId
initWithFrameSelector = mkSelector "initWithFrame:"

-- | @Selector@ for @refreshPreviewItem@
refreshPreviewItemSelector :: Selector '[] ()
refreshPreviewItemSelector = mkSelector "refreshPreviewItem"

-- | @Selector@ for @close@
closeSelector :: Selector '[] ()
closeSelector = mkSelector "close"

-- | @Selector@ for @previewItem@
previewItemSelector :: Selector '[] RawId
previewItemSelector = mkSelector "previewItem"

-- | @Selector@ for @setPreviewItem:@
setPreviewItemSelector :: Selector '[RawId] ()
setPreviewItemSelector = mkSelector "setPreviewItem:"

-- | @Selector@ for @displayState@
displayStateSelector :: Selector '[] RawId
displayStateSelector = mkSelector "displayState"

-- | @Selector@ for @setDisplayState:@
setDisplayStateSelector :: Selector '[RawId] ()
setDisplayStateSelector = mkSelector "setDisplayState:"

-- | @Selector@ for @shouldCloseWithWindow@
shouldCloseWithWindowSelector :: Selector '[] Bool
shouldCloseWithWindowSelector = mkSelector "shouldCloseWithWindow"

-- | @Selector@ for @setShouldCloseWithWindow:@
setShouldCloseWithWindowSelector :: Selector '[Bool] ()
setShouldCloseWithWindowSelector = mkSelector "setShouldCloseWithWindow:"

-- | @Selector@ for @autostarts@
autostartsSelector :: Selector '[] Bool
autostartsSelector = mkSelector "autostarts"

-- | @Selector@ for @setAutostarts:@
setAutostartsSelector :: Selector '[Bool] ()
setAutostartsSelector = mkSelector "setAutostarts:"

