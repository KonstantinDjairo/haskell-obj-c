{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | GKMatchRequest represents the parameters needed to create the match.
--
-- Generated bindings for @GKMatchRequest@.
module ObjC.GameKit.GKMatchRequest
  ( GKMatchRequest
  , IsGKMatchRequest(..)
  , maxPlayersAllowedForMatchOfType
  , minPlayers
  , setMinPlayers
  , maxPlayers
  , setMaxPlayers
  , playerGroup
  , setPlayerGroup
  , playerAttributes
  , setPlayerAttributes
  , inviteMessage
  , setInviteMessage
  , defaultNumberOfPlayers
  , setDefaultNumberOfPlayers
  , restrictToAutomatch
  , setRestrictToAutomatch
  , recipientResponseHandler
  , setRecipientResponseHandler
  , inviteeResponseHandler
  , setInviteeResponseHandler
  , defaultNumberOfPlayersSelector
  , inviteMessageSelector
  , inviteeResponseHandlerSelector
  , maxPlayersAllowedForMatchOfTypeSelector
  , maxPlayersSelector
  , minPlayersSelector
  , playerAttributesSelector
  , playerGroupSelector
  , recipientResponseHandlerSelector
  , restrictToAutomatchSelector
  , setDefaultNumberOfPlayersSelector
  , setInviteMessageSelector
  , setInviteeResponseHandlerSelector
  , setMaxPlayersSelector
  , setMinPlayersSelector
  , setPlayerAttributesSelector
  , setPlayerGroupSelector
  , setRecipientResponseHandlerSelector
  , setRestrictToAutomatchSelector

  -- * Enum types
  , GKMatchType(GKMatchType)
  , pattern GKMatchTypePeerToPeer
  , pattern GKMatchTypeHosted
  , pattern GKMatchTypeTurnBased

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.GameKit.Internal.Classes
import ObjC.GameKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | To determine the maximum allowed players for each type of match supported.
--
-- ObjC selector: @+ maxPlayersAllowedForMatchOfType:@
maxPlayersAllowedForMatchOfType :: GKMatchType -> IO CULong
maxPlayersAllowedForMatchOfType matchType =
  do
    cls' <- getRequiredClass "GKMatchRequest"
    sendClassMessage cls' maxPlayersAllowedForMatchOfTypeSelector matchType

-- | Minimum number of players for the match
--
-- ObjC selector: @- minPlayers@
minPlayers :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO CULong
minPlayers gkMatchRequest =
  sendMessage gkMatchRequest minPlayersSelector

-- | Minimum number of players for the match
--
-- ObjC selector: @- setMinPlayers:@
setMinPlayers :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> CULong -> IO ()
setMinPlayers gkMatchRequest value =
  sendMessage gkMatchRequest setMinPlayersSelector value

-- | Maximum number of players for the match
--
-- ObjC selector: @- maxPlayers@
maxPlayers :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO CULong
maxPlayers gkMatchRequest =
  sendMessage gkMatchRequest maxPlayersSelector

-- | Maximum number of players for the match
--
-- ObjC selector: @- setMaxPlayers:@
setMaxPlayers :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> CULong -> IO ()
setMaxPlayers gkMatchRequest value =
  sendMessage gkMatchRequest setMaxPlayersSelector value

-- | The player group identifier. Matchmaking will only take place between players in the same group.
--
-- ObjC selector: @- playerGroup@
playerGroup :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO CULong
playerGroup gkMatchRequest =
  sendMessage gkMatchRequest playerGroupSelector

-- | The player group identifier. Matchmaking will only take place between players in the same group.
--
-- ObjC selector: @- setPlayerGroup:@
setPlayerGroup :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> CULong -> IO ()
setPlayerGroup gkMatchRequest value =
  sendMessage gkMatchRequest setPlayerGroupSelector value

-- | optional mask that specifies the role that the local player would like to play in the game.  If this value is 0, it will be set to 0xFFFFFFFF (the default), and this property will be ignored. If the value is nonzero, then automatching uses the value as a mask that restricts the role the player can play in the group. Automatching with player attributes matches new players into the game so that the bitwise OR of the masks of all the players in the resulting match equals 0xFFFFFFFF.
--
-- ObjC selector: @- playerAttributes@
playerAttributes :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO CUInt
playerAttributes gkMatchRequest =
  sendMessage gkMatchRequest playerAttributesSelector

-- | optional mask that specifies the role that the local player would like to play in the game.  If this value is 0, it will be set to 0xFFFFFFFF (the default), and this property will be ignored. If the value is nonzero, then automatching uses the value as a mask that restricts the role the player can play in the group. Automatching with player attributes matches new players into the game so that the bitwise OR of the masks of all the players in the resulting match equals 0xFFFFFFFF.
--
-- ObjC selector: @- setPlayerAttributes:@
setPlayerAttributes :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> CUInt -> IO ()
setPlayerAttributes gkMatchRequest value =
  sendMessage gkMatchRequest setPlayerAttributesSelector value

-- | Message sent to invited players, may be modified if using GKMatchmakerViewController Will return nil if the player is underage or restricted.
--
-- ObjC selector: @- inviteMessage@
inviteMessage :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO RawId
inviteMessage gkMatchRequest =
  sendMessage gkMatchRequest inviteMessageSelector

-- | Message sent to invited players, may be modified if using GKMatchmakerViewController Will return nil if the player is underage or restricted.
--
-- ObjC selector: @- setInviteMessage:@
setInviteMessage :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> RawId -> IO ()
setInviteMessage gkMatchRequest value =
  sendMessage gkMatchRequest setInviteMessageSelector value

-- | Default number of players to use during matchmaking. If not set we will default to the number that the player previously set for this game, or maxPlayers.
--
-- ObjC selector: @- defaultNumberOfPlayers@
defaultNumberOfPlayers :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO CULong
defaultNumberOfPlayers gkMatchRequest =
  sendMessage gkMatchRequest defaultNumberOfPlayersSelector

-- | Default number of players to use during matchmaking. If not set we will default to the number that the player previously set for this game, or maxPlayers.
--
-- ObjC selector: @- setDefaultNumberOfPlayers:@
setDefaultNumberOfPlayers :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> CULong -> IO ()
setDefaultNumberOfPlayers gkMatchRequest value =
  sendMessage gkMatchRequest setDefaultNumberOfPlayersSelector value

-- | Whether or not a match will be created only using automatch.  If YES, then a player will not be able to invite anyone (including contacts, friends, and nearby players) to the match, but rely on automatching to find players for the match.  Default is NO.
--
-- ObjC selector: @- restrictToAutomatch@
restrictToAutomatch :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO Bool
restrictToAutomatch gkMatchRequest =
  sendMessage gkMatchRequest restrictToAutomatchSelector

-- | Whether or not a match will be created only using automatch.  If YES, then a player will not be able to invite anyone (including contacts, friends, and nearby players) to the match, but rely on automatching to find players for the match.  Default is NO.
--
-- ObjC selector: @- setRestrictToAutomatch:@
setRestrictToAutomatch :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> Bool -> IO ()
setRestrictToAutomatch gkMatchRequest value =
  sendMessage gkMatchRequest setRestrictToAutomatchSelector value

-- | An recipientResponseHandler can be set in order to receive responses from programmatically invited players.
--
-- ObjC selector: @- recipientResponseHandler@
recipientResponseHandler :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO (Ptr ())
recipientResponseHandler gkMatchRequest =
  sendMessage gkMatchRequest recipientResponseHandlerSelector

-- | An recipientResponseHandler can be set in order to receive responses from programmatically invited players.
--
-- ObjC selector: @- setRecipientResponseHandler:@
setRecipientResponseHandler :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> Ptr () -> IO ()
setRecipientResponseHandler gkMatchRequest value =
  sendMessage gkMatchRequest setRecipientResponseHandlerSelector value

-- | @- inviteeResponseHandler@
inviteeResponseHandler :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> IO (Ptr ())
inviteeResponseHandler gkMatchRequest =
  sendMessage gkMatchRequest inviteeResponseHandlerSelector

-- | @- setInviteeResponseHandler:@
setInviteeResponseHandler :: IsGKMatchRequest gkMatchRequest => gkMatchRequest -> Ptr () -> IO ()
setInviteeResponseHandler gkMatchRequest value =
  sendMessage gkMatchRequest setInviteeResponseHandlerSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @maxPlayersAllowedForMatchOfType:@
maxPlayersAllowedForMatchOfTypeSelector :: Selector '[GKMatchType] CULong
maxPlayersAllowedForMatchOfTypeSelector = mkSelector "maxPlayersAllowedForMatchOfType:"

-- | @Selector@ for @minPlayers@
minPlayersSelector :: Selector '[] CULong
minPlayersSelector = mkSelector "minPlayers"

-- | @Selector@ for @setMinPlayers:@
setMinPlayersSelector :: Selector '[CULong] ()
setMinPlayersSelector = mkSelector "setMinPlayers:"

-- | @Selector@ for @maxPlayers@
maxPlayersSelector :: Selector '[] CULong
maxPlayersSelector = mkSelector "maxPlayers"

-- | @Selector@ for @setMaxPlayers:@
setMaxPlayersSelector :: Selector '[CULong] ()
setMaxPlayersSelector = mkSelector "setMaxPlayers:"

-- | @Selector@ for @playerGroup@
playerGroupSelector :: Selector '[] CULong
playerGroupSelector = mkSelector "playerGroup"

-- | @Selector@ for @setPlayerGroup:@
setPlayerGroupSelector :: Selector '[CULong] ()
setPlayerGroupSelector = mkSelector "setPlayerGroup:"

-- | @Selector@ for @playerAttributes@
playerAttributesSelector :: Selector '[] CUInt
playerAttributesSelector = mkSelector "playerAttributes"

-- | @Selector@ for @setPlayerAttributes:@
setPlayerAttributesSelector :: Selector '[CUInt] ()
setPlayerAttributesSelector = mkSelector "setPlayerAttributes:"

-- | @Selector@ for @inviteMessage@
inviteMessageSelector :: Selector '[] RawId
inviteMessageSelector = mkSelector "inviteMessage"

-- | @Selector@ for @setInviteMessage:@
setInviteMessageSelector :: Selector '[RawId] ()
setInviteMessageSelector = mkSelector "setInviteMessage:"

-- | @Selector@ for @defaultNumberOfPlayers@
defaultNumberOfPlayersSelector :: Selector '[] CULong
defaultNumberOfPlayersSelector = mkSelector "defaultNumberOfPlayers"

-- | @Selector@ for @setDefaultNumberOfPlayers:@
setDefaultNumberOfPlayersSelector :: Selector '[CULong] ()
setDefaultNumberOfPlayersSelector = mkSelector "setDefaultNumberOfPlayers:"

-- | @Selector@ for @restrictToAutomatch@
restrictToAutomatchSelector :: Selector '[] Bool
restrictToAutomatchSelector = mkSelector "restrictToAutomatch"

-- | @Selector@ for @setRestrictToAutomatch:@
setRestrictToAutomatchSelector :: Selector '[Bool] ()
setRestrictToAutomatchSelector = mkSelector "setRestrictToAutomatch:"

-- | @Selector@ for @recipientResponseHandler@
recipientResponseHandlerSelector :: Selector '[] (Ptr ())
recipientResponseHandlerSelector = mkSelector "recipientResponseHandler"

-- | @Selector@ for @setRecipientResponseHandler:@
setRecipientResponseHandlerSelector :: Selector '[Ptr ()] ()
setRecipientResponseHandlerSelector = mkSelector "setRecipientResponseHandler:"

-- | @Selector@ for @inviteeResponseHandler@
inviteeResponseHandlerSelector :: Selector '[] (Ptr ())
inviteeResponseHandlerSelector = mkSelector "inviteeResponseHandler"

-- | @Selector@ for @setInviteeResponseHandler:@
setInviteeResponseHandlerSelector :: Selector '[Ptr ()] ()
setInviteeResponseHandlerSelector = mkSelector "setInviteeResponseHandler:"

