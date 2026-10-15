{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @GKAccessPoint@.
module ObjC.GameKit.GKAccessPoint
  ( GKAccessPoint
  , IsGKAccessPoint(..)
  , triggerAccessPointWithHandler
  , triggerAccessPointWithState_handler
  , shared
  , active
  , setActive
  , focused
  , setFocused
  , visible
  , isPresentingGameCenter
  , showHighlights
  , setShowHighlights
  , location
  , setLocation
  , frameInScreenCoordinates
  , parentWindow
  , setParentWindow
  , activeSelector
  , focusedSelector
  , frameInScreenCoordinatesSelector
  , isPresentingGameCenterSelector
  , locationSelector
  , parentWindowSelector
  , setActiveSelector
  , setFocusedSelector
  , setLocationSelector
  , setParentWindowSelector
  , setShowHighlightsSelector
  , sharedSelector
  , showHighlightsSelector
  , triggerAccessPointWithHandlerSelector
  , triggerAccessPointWithState_handlerSelector
  , visibleSelector

  -- * Enum types
  , GKAccessPointLocation(GKAccessPointLocation)
  , pattern GKAccessPointLocationTopLeading
  , pattern GKAccessPointLocationTopTrailing
  , pattern GKAccessPointLocationBottomLeading
  , pattern GKAccessPointLocationBottomTrailing
  , GKGameCenterViewControllerState(GKGameCenterViewControllerState)
  , pattern GKGameCenterViewControllerStateDefault
  , pattern GKGameCenterViewControllerStateLeaderboards
  , pattern GKGameCenterViewControllerStateAchievements
  , pattern GKGameCenterViewControllerStateChallenges
  , pattern GKGameCenterViewControllerStateLocalPlayerProfile
  , pattern GKGameCenterViewControllerStateDashboard
  , pattern GKGameCenterViewControllerStateLocalPlayerFriendsList

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.GameKit.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.GameKit.Internal.Enums
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | this lets the developer trigger the access point as if the user had touched it.  This is useful for games that use controllers or the remote on AppleTV.  the argument lets you specify a specific state (default, profile, acheivements, leaderboards) for GameCenterViewController
--
-- ObjC selector: @- triggerAccessPointWithHandler:@
triggerAccessPointWithHandler :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> Ptr () -> IO ()
triggerAccessPointWithHandler gkAccessPoint handler =
  sendMessage gkAccessPoint triggerAccessPointWithHandlerSelector handler

-- | @- triggerAccessPointWithState:handler:@
triggerAccessPointWithState_handler :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> GKGameCenterViewControllerState -> Ptr () -> IO ()
triggerAccessPointWithState_handler gkAccessPoint state handler =
  sendMessage gkAccessPoint triggerAccessPointWithState_handlerSelector state handler

-- | @+ shared@
shared :: IO (Id GKAccessPoint)
shared  =
  do
    cls' <- getRequiredClass "GKAccessPoint"
    sendClassMessage cls' sharedSelector

-- | set this true to enable access point in your app.  Setting this will cause the access point to appear after the notification banner is presented.  If it already was presented it will appear immediately
--
-- ObjC selector: @- active@
active :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> IO Bool
active gkAccessPoint =
  sendMessage gkAccessPoint activeSelector

-- | set this true to enable access point in your app.  Setting this will cause the access point to appear after the notification banner is presented.  If it already was presented it will appear immediately
--
-- ObjC selector: @- setActive:@
setActive :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> Bool -> IO ()
setActive gkAccessPoint value =
  sendMessage gkAccessPoint setActiveSelector value

-- | set this on tvOS to put the accessPoint into focused mode
--
-- ObjC selector: @- focused@
focused :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> IO Bool
focused gkAccessPoint =
  sendMessage gkAccessPoint focusedSelector

-- | set this on tvOS to put the accessPoint into focused mode
--
-- ObjC selector: @- setFocused:@
setFocused :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> Bool -> IO ()
setFocused gkAccessPoint value =
  sendMessage gkAccessPoint setFocusedSelector value

-- | @- visible@
visible :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> IO Bool
visible gkAccessPoint =
  sendMessage gkAccessPoint visibleSelector

-- | observable property that indicates when the access point is visible.
--
-- ObjC selector: @- isPresentingGameCenter@
isPresentingGameCenter :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> IO Bool
isPresentingGameCenter gkAccessPoint =
  sendMessage gkAccessPoint isPresentingGameCenterSelector

-- | Set this property to true if you wish to show the highlights for most recent acheivement, current rank on default leaderboard, etc
--
-- ObjC selector: @- showHighlights@
showHighlights :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> IO Bool
showHighlights gkAccessPoint =
  sendMessage gkAccessPoint showHighlightsSelector

-- | Set this property to true if you wish to show the highlights for most recent acheivement, current rank on default leaderboard, etc
--
-- ObjC selector: @- setShowHighlights:@
setShowHighlights :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> Bool -> IO ()
setShowHighlights gkAccessPoint value =
  sendMessage gkAccessPoint setShowHighlightsSelector value

-- | These properties control the placement of the widget
--
-- ObjC selector: @- location@
location :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> IO GKAccessPointLocation
location gkAccessPoint =
  sendMessage gkAccessPoint locationSelector

-- | These properties control the placement of the widget
--
-- ObjC selector: @- setLocation:@
setLocation :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> GKAccessPointLocation -> IO ()
setLocation gkAccessPoint value =
  sendMessage gkAccessPoint setLocationSelector value

-- | @- frameInScreenCoordinates@
frameInScreenCoordinates :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> IO NSRect
frameInScreenCoordinates gkAccessPoint =
  sendMessage gkAccessPoint frameInScreenCoordinatesSelector

-- | @- parentWindow@
parentWindow :: IsGKAccessPoint gkAccessPoint => gkAccessPoint -> IO (Id NSWindow)
parentWindow gkAccessPoint =
  sendMessage gkAccessPoint parentWindowSelector

-- | @- setParentWindow:@
setParentWindow :: (IsGKAccessPoint gkAccessPoint, IsNSWindow value) => gkAccessPoint -> value -> IO ()
setParentWindow gkAccessPoint value =
  sendMessage gkAccessPoint setParentWindowSelector (toNSWindow value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @triggerAccessPointWithHandler:@
triggerAccessPointWithHandlerSelector :: Selector '[Ptr ()] ()
triggerAccessPointWithHandlerSelector = mkSelector "triggerAccessPointWithHandler:"

-- | @Selector@ for @triggerAccessPointWithState:handler:@
triggerAccessPointWithState_handlerSelector :: Selector '[GKGameCenterViewControllerState, Ptr ()] ()
triggerAccessPointWithState_handlerSelector = mkSelector "triggerAccessPointWithState:handler:"

-- | @Selector@ for @shared@
sharedSelector :: Selector '[] (Id GKAccessPoint)
sharedSelector = mkSelector "shared"

-- | @Selector@ for @active@
activeSelector :: Selector '[] Bool
activeSelector = mkSelector "active"

-- | @Selector@ for @setActive:@
setActiveSelector :: Selector '[Bool] ()
setActiveSelector = mkSelector "setActive:"

-- | @Selector@ for @focused@
focusedSelector :: Selector '[] Bool
focusedSelector = mkSelector "focused"

-- | @Selector@ for @setFocused:@
setFocusedSelector :: Selector '[Bool] ()
setFocusedSelector = mkSelector "setFocused:"

-- | @Selector@ for @visible@
visibleSelector :: Selector '[] Bool
visibleSelector = mkSelector "visible"

-- | @Selector@ for @isPresentingGameCenter@
isPresentingGameCenterSelector :: Selector '[] Bool
isPresentingGameCenterSelector = mkSelector "isPresentingGameCenter"

-- | @Selector@ for @showHighlights@
showHighlightsSelector :: Selector '[] Bool
showHighlightsSelector = mkSelector "showHighlights"

-- | @Selector@ for @setShowHighlights:@
setShowHighlightsSelector :: Selector '[Bool] ()
setShowHighlightsSelector = mkSelector "setShowHighlights:"

-- | @Selector@ for @location@
locationSelector :: Selector '[] GKAccessPointLocation
locationSelector = mkSelector "location"

-- | @Selector@ for @setLocation:@
setLocationSelector :: Selector '[GKAccessPointLocation] ()
setLocationSelector = mkSelector "setLocation:"

-- | @Selector@ for @frameInScreenCoordinates@
frameInScreenCoordinatesSelector :: Selector '[] NSRect
frameInScreenCoordinatesSelector = mkSelector "frameInScreenCoordinates"

-- | @Selector@ for @parentWindow@
parentWindowSelector :: Selector '[] (Id NSWindow)
parentWindowSelector = mkSelector "parentWindow"

-- | @Selector@ for @setParentWindow:@
setParentWindowSelector :: Selector '[Id NSWindow] ()
setParentWindowSelector = mkSelector "setParentWindow:"

