{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVPlayerInterstitialEventController
--
-- An AVPlayerInterstitialEventController allows you to specify a schedule of interstitial events for items played by a primary player.    By creating an instance of AVPlayerInterstitialEventController and setting a schedule of interstitial events, you pre-empt directives the are intrinsic to the items played by the primary player, if any exist, causing them to be ignored.
--
-- The schedule of interstitial events is specified as an array of AVPlayerInterstitialEvents. For each AVPlayerInterstitialEvent, when the primary player's current item is the primary item of the interstitial event and its currentDate reaches the date of the event, playback of the primary item by the primary player is temporarily suspended, i.e. its timeControlStatus changes to AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate and its reasonForWaitingToPlay will change to AVPlayerWaitingDuringInterstitialEventReason. During this suspension, playback of items that replicate the interstitial template items of the event are played by the interstitial player, which temporarily assumes the output configuration of the primary player; for example, its visual content will be routed to AVPlayerLayers that reference the primary player. Once the interstitial player has advanced through playback of the interstitial items specified by the event or its current item otherwise becomes nil, playback of the primary content will resume, at an offset from the time at which it was suspended as specified by the event.
--
-- Generated bindings for @AVPlayerInterstitialEventController@.
module ObjC.AVFoundation.AVPlayerInterstitialEventController
  ( AVPlayerInterstitialEventController
  , IsAVPlayerInterstitialEventController(..)
  , interstitialEventControllerWithPrimaryPlayer
  , initWithPrimaryPlayer
  , events
  , setEvents
  , eventsSelector
  , initWithPrimaryPlayerSelector
  , interstitialEventControllerWithPrimaryPlayerSelector
  , setEventsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | interstitialEventControllerWithPrimaryPlayer
--
-- Returns an instance of AVPlayerInterstitialEvent for use in observing and scheduling interstitial playback.
--
-- @primaryPlayer@ — The AVPlayer that will play the primaryItems of the receiver's interstitial events.
--
-- Returns: An instance of AVPlayerInterstitialEventController.
--
-- This method throws an exception if the primary player is an interstitial player.
--
-- ObjC selector: @+ interstitialEventControllerWithPrimaryPlayer:@
interstitialEventControllerWithPrimaryPlayer :: IsAVPlayer primaryPlayer => primaryPlayer -> IO (Id AVPlayerInterstitialEventController)
interstitialEventControllerWithPrimaryPlayer primaryPlayer =
  do
    cls' <- getRequiredClass "AVPlayerInterstitialEventController"
    sendClassMessage cls' interstitialEventControllerWithPrimaryPlayerSelector (toAVPlayer primaryPlayer)

-- | initWithPrimaryPlayer:
--
-- This method throws an exception if the primary player is an interstitial player.
--
-- ObjC selector: @- initWithPrimaryPlayer:@
initWithPrimaryPlayer :: (IsAVPlayerInterstitialEventController avPlayerInterstitialEventController, IsAVPlayer primaryPlayer) => avPlayerInterstitialEventController -> primaryPlayer -> IO (Id AVPlayerInterstitialEventController)
initWithPrimaryPlayer avPlayerInterstitialEventController primaryPlayer =
  sendOwnedMessage avPlayerInterstitialEventController initWithPrimaryPlayerSelector (toAVPlayer primaryPlayer)

-- | events
--
-- Specifies the current schedule of interstitial events.
--
-- Setting this property to a non-nil value cancels and overrides all previously scheduled future interstitial events, including those that are intrinsically specified by the content of primary items, such as directives carried by HLS media playlists. Setting it to nil causes its value to be reset in accordance with the content of the current primary item.
--
-- If you change the value of events during an interstitial event and the current event is not included in the new value of events, the current event is nevertheless allowed to continue until completion. If you wish to cancel the current event, use -cancelCurrentEventWithResumptionOffset:.
--
-- If interstitial events are scheduled with dates that coincide either with the date of another scheduled interstitial event or with the date range of the primary content that's omitted according to the resumption offset of another scheduled interstitial event, the primary content will remain suspended until all coinciding interstitial events have been completed. The effective resumption offset will be the sum of the resumption offsets of the coinciding interstitial events. (Note that the sum of a numeric CMTime and kCMTimeIndefinite is kCMTimeIndefinite.)
--
-- If interstitial events are scheduled for the same date, they are ordered according to their position in the events array.
--
-- The receiver will make a copy of the events that are set on it. Subsequent mutations on the original events will have no effect on the copy.
--
-- An NSInvalidArgumentException will be raised if an under-specified AVPlayerInterstitialEvent is set, such as one with a nil primaryItem, or with neither a time nor a date.
--
-- ObjC selector: @- events@
events :: IsAVPlayerInterstitialEventController avPlayerInterstitialEventController => avPlayerInterstitialEventController -> IO (Id NSArray)
events avPlayerInterstitialEventController =
  sendMessage avPlayerInterstitialEventController eventsSelector

-- | events
--
-- Specifies the current schedule of interstitial events.
--
-- Setting this property to a non-nil value cancels and overrides all previously scheduled future interstitial events, including those that are intrinsically specified by the content of primary items, such as directives carried by HLS media playlists. Setting it to nil causes its value to be reset in accordance with the content of the current primary item.
--
-- If you change the value of events during an interstitial event and the current event is not included in the new value of events, the current event is nevertheless allowed to continue until completion. If you wish to cancel the current event, use -cancelCurrentEventWithResumptionOffset:.
--
-- If interstitial events are scheduled with dates that coincide either with the date of another scheduled interstitial event or with the date range of the primary content that's omitted according to the resumption offset of another scheduled interstitial event, the primary content will remain suspended until all coinciding interstitial events have been completed. The effective resumption offset will be the sum of the resumption offsets of the coinciding interstitial events. (Note that the sum of a numeric CMTime and kCMTimeIndefinite is kCMTimeIndefinite.)
--
-- If interstitial events are scheduled for the same date, they are ordered according to their position in the events array.
--
-- The receiver will make a copy of the events that are set on it. Subsequent mutations on the original events will have no effect on the copy.
--
-- An NSInvalidArgumentException will be raised if an under-specified AVPlayerInterstitialEvent is set, such as one with a nil primaryItem, or with neither a time nor a date.
--
-- ObjC selector: @- setEvents:@
setEvents :: (IsAVPlayerInterstitialEventController avPlayerInterstitialEventController, IsNSArray value) => avPlayerInterstitialEventController -> value -> IO ()
setEvents avPlayerInterstitialEventController value =
  sendMessage avPlayerInterstitialEventController setEventsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @interstitialEventControllerWithPrimaryPlayer:@
interstitialEventControllerWithPrimaryPlayerSelector :: Selector '[Id AVPlayer] (Id AVPlayerInterstitialEventController)
interstitialEventControllerWithPrimaryPlayerSelector = mkSelector "interstitialEventControllerWithPrimaryPlayer:"

-- | @Selector@ for @initWithPrimaryPlayer:@
initWithPrimaryPlayerSelector :: Selector '[Id AVPlayer] (Id AVPlayerInterstitialEventController)
initWithPrimaryPlayerSelector = mkSelector "initWithPrimaryPlayer:"

-- | @Selector@ for @events@
eventsSelector :: Selector '[] (Id NSArray)
eventsSelector = mkSelector "events"

-- | @Selector@ for @setEvents:@
setEventsSelector :: Selector '[Id NSArray] ()
setEventsSelector = mkSelector "setEvents:"

