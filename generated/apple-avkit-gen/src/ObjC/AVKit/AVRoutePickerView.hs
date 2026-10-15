{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVRoutePickerView
--
-- AVRoutePickerView is a subclass of NSView that displays controls for picking playback routes.
--
-- Generated bindings for @AVRoutePickerView@.
module ObjC.AVKit.AVRoutePickerView
  ( AVRoutePickerView
  , IsAVRoutePickerView(..)
  , routePickerButtonColorForState
  , setRoutePickerButtonColor_forState
  , delegate
  , setDelegate
  , routePickerButtonBordered
  , setRoutePickerButtonBordered
  , player
  , setPlayer
  , delegateSelector
  , playerSelector
  , routePickerButtonBorderedSelector
  , routePickerButtonColorForStateSelector
  , setDelegateSelector
  , setPlayerSelector
  , setRoutePickerButtonBorderedSelector
  , setRoutePickerButtonColor_forStateSelector

  -- * Enum types
  , AVRoutePickerViewButtonState(AVRoutePickerViewButtonState)
  , pattern AVRoutePickerViewButtonStateNormal
  , pattern AVRoutePickerViewButtonStateNormalHighlighted
  , pattern AVRoutePickerViewButtonStateActive
  , pattern AVRoutePickerViewButtonStateActiveHighlighted

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVKit.Internal.Classes
import ObjC.AVKit.Internal.Enums
import ObjC.AVFoundation.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | routePickerButtonColorForState:
--
-- @state@ — The state for which to get the picker button color.
--
-- Returns the color of the picker button for a given state.
--
-- ObjC selector: @- routePickerButtonColorForState:@
routePickerButtonColorForState :: IsAVRoutePickerView avRoutePickerView => avRoutePickerView -> AVRoutePickerViewButtonState -> IO (Id NSColor)
routePickerButtonColorForState avRoutePickerView state =
  sendMessage avRoutePickerView routePickerButtonColorForStateSelector state

-- | setRoutePickerButtonColor:forState:
--
-- @color@ — The color the button should have for a given state.
--
-- @state@ — The state for which to set the color of the button image.
--
-- Sets the color of the picker button for a given state.
--
-- If set to nil, the default color will be used for the given state.
--
-- ObjC selector: @- setRoutePickerButtonColor:forState:@
setRoutePickerButtonColor_forState :: (IsAVRoutePickerView avRoutePickerView, IsNSColor color) => avRoutePickerView -> color -> AVRoutePickerViewButtonState -> IO ()
setRoutePickerButtonColor_forState avRoutePickerView color state =
  sendMessage avRoutePickerView setRoutePickerButtonColor_forStateSelector (toNSColor color) state

-- | delegate
--
-- The route picker view's delegate.
--
-- ObjC selector: @- delegate@
delegate :: IsAVRoutePickerView avRoutePickerView => avRoutePickerView -> IO RawId
delegate avRoutePickerView =
  sendMessage avRoutePickerView delegateSelector

-- | delegate
--
-- The route picker view's delegate.
--
-- ObjC selector: @- setDelegate:@
setDelegate :: IsAVRoutePickerView avRoutePickerView => avRoutePickerView -> RawId -> IO ()
setDelegate avRoutePickerView value =
  sendMessage avRoutePickerView setDelegateSelector value

-- | routePickerButtonBordered
--
-- Whether or not the picker button has a border. Default is YES.
--
-- ObjC selector: @- routePickerButtonBordered@
routePickerButtonBordered :: IsAVRoutePickerView avRoutePickerView => avRoutePickerView -> IO Bool
routePickerButtonBordered avRoutePickerView =
  sendMessage avRoutePickerView routePickerButtonBorderedSelector

-- | routePickerButtonBordered
--
-- Whether or not the picker button has a border. Default is YES.
--
-- ObjC selector: @- setRoutePickerButtonBordered:@
setRoutePickerButtonBordered :: IsAVRoutePickerView avRoutePickerView => avRoutePickerView -> Bool -> IO ()
setRoutePickerButtonBordered avRoutePickerView value =
  sendMessage avRoutePickerView setRoutePickerButtonBorderedSelector value

-- | player
--
-- The player for which to perform routing operations.
--
-- ObjC selector: @- player@
player :: IsAVRoutePickerView avRoutePickerView => avRoutePickerView -> IO (Id AVPlayer)
player avRoutePickerView =
  sendMessage avRoutePickerView playerSelector

-- | player
--
-- The player for which to perform routing operations.
--
-- ObjC selector: @- setPlayer:@
setPlayer :: (IsAVRoutePickerView avRoutePickerView, IsAVPlayer value) => avRoutePickerView -> value -> IO ()
setPlayer avRoutePickerView value =
  sendMessage avRoutePickerView setPlayerSelector (toAVPlayer value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @routePickerButtonColorForState:@
routePickerButtonColorForStateSelector :: Selector '[AVRoutePickerViewButtonState] (Id NSColor)
routePickerButtonColorForStateSelector = mkSelector "routePickerButtonColorForState:"

-- | @Selector@ for @setRoutePickerButtonColor:forState:@
setRoutePickerButtonColor_forStateSelector :: Selector '[Id NSColor, AVRoutePickerViewButtonState] ()
setRoutePickerButtonColor_forStateSelector = mkSelector "setRoutePickerButtonColor:forState:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @routePickerButtonBordered@
routePickerButtonBorderedSelector :: Selector '[] Bool
routePickerButtonBorderedSelector = mkSelector "routePickerButtonBordered"

-- | @Selector@ for @setRoutePickerButtonBordered:@
setRoutePickerButtonBorderedSelector :: Selector '[Bool] ()
setRoutePickerButtonBorderedSelector = mkSelector "setRoutePickerButtonBordered:"

-- | @Selector@ for @player@
playerSelector :: Selector '[] (Id AVPlayer)
playerSelector = mkSelector "player"

-- | @Selector@ for @setPlayer:@
setPlayerSelector :: Selector '[Id AVPlayer] ()
setPlayerSelector = mkSelector "setPlayer:"

