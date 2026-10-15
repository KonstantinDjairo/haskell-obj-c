{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVPlayerPlaybackCoordinator
--
-- An AVPlaybackCoordinator subclass for controlling an AVPlayer
--
-- While the coordinator is connected to other participants, it will intercept rate changes and seeks issued to the player to share these with other participants if appropriate.				Clients of AVPlayer can thus use the AVPlayer interfaces to modify the playback state of connected participants. When appropriate, the coordinator will also impose rate changes and seeks from other participants on the player. If this occurs, the corresponding notifications will carry an originating participant in their payload.				See AVPlayer's playbackCoordinator property for more details about player behavior changes.				AVPlayerPlaybackCoordinator may begin suspensions on behalf of the player when the player's timeControlStatus changes from AVPlayerTimeControlStatusPlaying to AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate or AVPlayerTimeControlStatusPaused. These suspensions will end when the player's timeControlStatus changes back to AVPlayerTimeControlStatusPlaying. This means that a suspension that begun because the player entered a waiting state, will end automatically when the player is done waiting. A suspension that begun because the player paused, will only end once the player's rate changes back to non-zero.
--
-- Generated bindings for @AVPlayerPlaybackCoordinator@.
module ObjC.AVFoundation.AVPlayerPlaybackCoordinator
  ( AVPlayerPlaybackCoordinator
  , IsAVPlayerPlaybackCoordinator(..)
  , init_
  , new
  , player
  , delegate
  , setDelegate
  , delegateSelector
  , initSelector
  , newSelector
  , playerSelector
  , setDelegateSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVPlayerPlaybackCoordinator avPlayerPlaybackCoordinator => avPlayerPlaybackCoordinator -> IO (Id AVPlayerPlaybackCoordinator)
init_ avPlayerPlaybackCoordinator =
  sendOwnedMessage avPlayerPlaybackCoordinator initSelector

-- | @+ new@
new :: IO (Id AVPlayerPlaybackCoordinator)
new  =
  do
    cls' <- getRequiredClass "AVPlayerPlaybackCoordinator"
    sendOwnedClassMessage cls' newSelector

-- | player
--
-- The AVPlayer this coordinator is controlling.
--
-- ObjC selector: @- player@
player :: IsAVPlayerPlaybackCoordinator avPlayerPlaybackCoordinator => avPlayerPlaybackCoordinator -> IO (Id AVPlayer)
player avPlayerPlaybackCoordinator =
  sendMessage avPlayerPlaybackCoordinator playerSelector

-- | delegate
--
-- An object implementing the AVPlaybackCoordinatorDelegate protocol.
--
-- ObjC selector: @- delegate@
delegate :: IsAVPlayerPlaybackCoordinator avPlayerPlaybackCoordinator => avPlayerPlaybackCoordinator -> IO RawId
delegate avPlayerPlaybackCoordinator =
  sendMessage avPlayerPlaybackCoordinator delegateSelector

-- | delegate
--
-- An object implementing the AVPlaybackCoordinatorDelegate protocol.
--
-- ObjC selector: @- setDelegate:@
setDelegate :: IsAVPlayerPlaybackCoordinator avPlayerPlaybackCoordinator => avPlayerPlaybackCoordinator -> RawId -> IO ()
setDelegate avPlayerPlaybackCoordinator value =
  sendMessage avPlayerPlaybackCoordinator setDelegateSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVPlayerPlaybackCoordinator)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVPlayerPlaybackCoordinator)
newSelector = mkSelector "new"

-- | @Selector@ for @player@
playerSelector :: Selector '[] (Id AVPlayer)
playerSelector = mkSelector "player"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

