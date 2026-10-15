{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVPlayerInterstitialEventMonitor
--
-- An AVPlayerInterstitialEventMonitor allows you to observe the scheduling and progress of interstitial events, specified either intrinsically within the content of primary items, such as via use of directives carried by HLS media playlists, or via use of an AVPlayerInterstitialEventController.
--
-- The schedule of interstitial events is provided as an array of AVPlayerInterstitialEvents. For each AVPlayerInterstitialEvent, when the primary player's current item is the primary item of the interstitial event and its currentDate reaches the date of the event, playback of the primary item by the primary player is temporarily suspended, i.e. its timeControlStatus changes to AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate and its reasonForWaitingToPlay will change to AVPlayerWaitingDuringInterstitialEventReason. During this suspension, playback of items that replicate the interstitial template items of the event are played by the interstitial player, which temporarily assumes the output configuration of the primary player; for example, its visual content will be routed to AVPlayerLayers that reference the primary player. Once the interstitial player has advanced through playback of the interstitial items specified by the event or its current item otherwise becomes nil, playback of the primary content will resume, at an offset from the time at which it was suspended as specified by the event.
--
-- Generated bindings for @AVPlayerInterstitialEventMonitor@.
module ObjC.AVFoundation.AVPlayerInterstitialEventMonitor
  ( AVPlayerInterstitialEventMonitor
  , IsAVPlayerInterstitialEventMonitor(..)
  , interstitialEventMonitorWithPrimaryPlayer
  , initWithPrimaryPlayer
  , primaryPlayer
  , interstitialPlayer
  , events
  , currentEvent
  , currentEventSelector
  , eventsSelector
  , initWithPrimaryPlayerSelector
  , interstitialEventMonitorWithPrimaryPlayerSelector
  , interstitialPlayerSelector
  , primaryPlayerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | interstitialEventMonitorWithPrimaryPlayer:
--
-- Returns an instance of AVPlayerInterstitialEvent for use in observing and scheduling interstitial playback.
--
-- @primaryPlayer@ — The AVPlayer that will play the primaryItems of the receiver's interstitial events.
--
-- Returns: An instance of AVPlayerInterstitialEventMonitor.
--
-- ObjC selector: @+ interstitialEventMonitorWithPrimaryPlayer:@
interstitialEventMonitorWithPrimaryPlayer :: IsAVPlayer primaryPlayer => primaryPlayer -> IO (Id AVPlayerInterstitialEventMonitor)
interstitialEventMonitorWithPrimaryPlayer primaryPlayer =
  do
    cls' <- getRequiredClass "AVPlayerInterstitialEventMonitor"
    sendClassMessage cls' interstitialEventMonitorWithPrimaryPlayerSelector (toAVPlayer primaryPlayer)

-- | @- initWithPrimaryPlayer:@
initWithPrimaryPlayer :: (IsAVPlayerInterstitialEventMonitor avPlayerInterstitialEventMonitor, IsAVPlayer primaryPlayer) => avPlayerInterstitialEventMonitor -> primaryPlayer -> IO (Id AVPlayerInterstitialEventMonitor)
initWithPrimaryPlayer avPlayerInterstitialEventMonitor primaryPlayer =
  sendOwnedMessage avPlayerInterstitialEventMonitor initWithPrimaryPlayerSelector (toAVPlayer primaryPlayer)

-- | primaryPlayer
--
-- The AVPlayer that will play the primaryItems of the receiver's interstitial events.
--
-- ObjC selector: @- primaryPlayer@
primaryPlayer :: IsAVPlayerInterstitialEventMonitor avPlayerInterstitialEventMonitor => avPlayerInterstitialEventMonitor -> IO (Id AVPlayer)
primaryPlayer avPlayerInterstitialEventMonitor =
  sendMessage avPlayerInterstitialEventMonitor primaryPlayerSelector

-- | interstitialPlayer
--
-- The AVQueuePlayer that will play interstitial items during suspension of playback of primary items.
--
-- ObjC selector: @- interstitialPlayer@
interstitialPlayer :: IsAVPlayerInterstitialEventMonitor avPlayerInterstitialEventMonitor => avPlayerInterstitialEventMonitor -> IO (Id AVQueuePlayer)
interstitialPlayer avPlayerInterstitialEventMonitor =
  sendMessage avPlayerInterstitialEventMonitor interstitialPlayerSelector

-- | events
--
-- Provides the current schedule of interstitial events, specified either intrinsically within the content of primary items, such as via use of directives carried by HLS media playlists, or via use of an AVPlayerInterstitialEventController.
--
-- When interstitial events follow a schedule specified intrinsically within the content of primary items, the value of this property will typically change whenever the currentItem of the primaryPlayer changes. For HLS content that specifies interstitials via the use of DATERANGE tags, the value of this property may also change whenever the set of DATERANGE tags in the currentItem's media playlist changes.    When interstitial events follow a schedule specified via use of an AVPlayerInterstitialEventController, the value of this property changes only when a new schedule is set on the AVPlayerInterstitialEventController.    The events returned in this array are immutable. Attempting to mutate them will trigger an exception. To alter an event, make a copy and mutate the copy.
--
-- ObjC selector: @- events@
events :: IsAVPlayerInterstitialEventMonitor avPlayerInterstitialEventMonitor => avPlayerInterstitialEventMonitor -> IO (Id NSArray)
events avPlayerInterstitialEventMonitor =
  sendMessage avPlayerInterstitialEventMonitor eventsSelector

-- | currentEvent
--
-- The current interstitial event. Has a value of nil during playback of primary content by the primary player.
--
-- ObjC selector: @- currentEvent@
currentEvent :: IsAVPlayerInterstitialEventMonitor avPlayerInterstitialEventMonitor => avPlayerInterstitialEventMonitor -> IO (Id AVPlayerInterstitialEvent)
currentEvent avPlayerInterstitialEventMonitor =
  sendMessage avPlayerInterstitialEventMonitor currentEventSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @interstitialEventMonitorWithPrimaryPlayer:@
interstitialEventMonitorWithPrimaryPlayerSelector :: Selector '[Id AVPlayer] (Id AVPlayerInterstitialEventMonitor)
interstitialEventMonitorWithPrimaryPlayerSelector = mkSelector "interstitialEventMonitorWithPrimaryPlayer:"

-- | @Selector@ for @initWithPrimaryPlayer:@
initWithPrimaryPlayerSelector :: Selector '[Id AVPlayer] (Id AVPlayerInterstitialEventMonitor)
initWithPrimaryPlayerSelector = mkSelector "initWithPrimaryPlayer:"

-- | @Selector@ for @primaryPlayer@
primaryPlayerSelector :: Selector '[] (Id AVPlayer)
primaryPlayerSelector = mkSelector "primaryPlayer"

-- | @Selector@ for @interstitialPlayer@
interstitialPlayerSelector :: Selector '[] (Id AVQueuePlayer)
interstitialPlayerSelector = mkSelector "interstitialPlayer"

-- | @Selector@ for @events@
eventsSelector :: Selector '[] (Id NSArray)
eventsSelector = mkSelector "events"

-- | @Selector@ for @currentEvent@
currentEventSelector :: Selector '[] (Id AVPlayerInterstitialEvent)
currentEventSelector = mkSelector "currentEvent"

