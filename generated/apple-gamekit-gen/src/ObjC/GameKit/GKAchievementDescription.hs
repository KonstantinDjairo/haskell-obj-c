{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | GKAchievementDescription is a full description of the achievement as defined before app submission in App Store Connect.
--
-- Generated bindings for @GKAchievementDescription@.
module ObjC.GameKit.GKAchievementDescription
  ( GKAchievementDescription
  , IsGKAchievementDescription(..)
  , loadImageWithCompletionHandler
  , incompleteAchievementImage
  , placeholderCompletedAchievementImage
  , identifier
  , groupIdentifier
  , title
  , achievedDescription
  , unachievedDescription
  , maximumPoints
  , hidden
  , replayable
  , achievedDescriptionSelector
  , groupIdentifierSelector
  , hiddenSelector
  , identifierSelector
  , incompleteAchievementImageSelector
  , loadImageWithCompletionHandlerSelector
  , maximumPointsSelector
  , placeholderCompletedAchievementImageSelector
  , replayableSelector
  , titleSelector
  , unachievedDescriptionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.GameKit.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- loadImageWithCompletionHandler:@
loadImageWithCompletionHandler :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> Ptr () -> IO ()
loadImageWithCompletionHandler gkAchievementDescription completionHandler =
  sendMessage gkAchievementDescription loadImageWithCompletionHandlerSelector completionHandler

-- | @+ incompleteAchievementImage@
incompleteAchievementImage :: IO (Id NSImage)
incompleteAchievementImage  =
  do
    cls' <- getRequiredClass "GKAchievementDescription"
    sendClassMessage cls' incompleteAchievementImageSelector

-- | @+ placeholderCompletedAchievementImage@
placeholderCompletedAchievementImage :: IO (Id NSImage)
placeholderCompletedAchievementImage  =
  do
    cls' <- getRequiredClass "GKAchievementDescription"
    sendClassMessage cls' placeholderCompletedAchievementImageSelector

-- | @- identifier@
identifier :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> IO (Id NSString)
identifier gkAchievementDescription =
  sendMessage gkAchievementDescription identifierSelector

-- | The group identifier for the achievement, if one exists.
--
-- ObjC selector: @- groupIdentifier@
groupIdentifier :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> IO RawId
groupIdentifier gkAchievementDescription =
  sendMessage gkAchievementDescription groupIdentifierSelector

-- | The title of the achievement.
--
-- ObjC selector: @- title@
title :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> IO (Id NSString)
title gkAchievementDescription =
  sendMessage gkAchievementDescription titleSelector

-- | The description for an unachieved achievement.
--
-- ObjC selector: @- achievedDescription@
achievedDescription :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> IO (Id NSString)
achievedDescription gkAchievementDescription =
  sendMessage gkAchievementDescription achievedDescriptionSelector

-- | The description for an achieved achievement.
--
-- ObjC selector: @- unachievedDescription@
unachievedDescription :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> IO (Id NSString)
unachievedDescription gkAchievementDescription =
  sendMessage gkAchievementDescription unachievedDescriptionSelector

-- | Maximum points available for completing this achievement.
--
-- ObjC selector: @- maximumPoints@
maximumPoints :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> IO CLong
maximumPoints gkAchievementDescription =
  sendMessage gkAchievementDescription maximumPointsSelector

-- | Whether or not the achievement should be listed or displayed if not yet unhidden by the game.
--
-- ObjC selector: @- hidden@
hidden :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> IO Bool
hidden gkAchievementDescription =
  sendMessage gkAchievementDescription hiddenSelector

-- | Whether or not the achievement will be reported by the game when the user earns it again. This allows the achievement to be used for challenges when the recipient has previously earned it.
--
-- ObjC selector: @- replayable@
replayable :: IsGKAchievementDescription gkAchievementDescription => gkAchievementDescription -> IO Bool
replayable gkAchievementDescription =
  sendMessage gkAchievementDescription replayableSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @loadImageWithCompletionHandler:@
loadImageWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
loadImageWithCompletionHandlerSelector = mkSelector "loadImageWithCompletionHandler:"

-- | @Selector@ for @incompleteAchievementImage@
incompleteAchievementImageSelector :: Selector '[] (Id NSImage)
incompleteAchievementImageSelector = mkSelector "incompleteAchievementImage"

-- | @Selector@ for @placeholderCompletedAchievementImage@
placeholderCompletedAchievementImageSelector :: Selector '[] (Id NSImage)
placeholderCompletedAchievementImageSelector = mkSelector "placeholderCompletedAchievementImage"

-- | @Selector@ for @identifier@
identifierSelector :: Selector '[] (Id NSString)
identifierSelector = mkSelector "identifier"

-- | @Selector@ for @groupIdentifier@
groupIdentifierSelector :: Selector '[] RawId
groupIdentifierSelector = mkSelector "groupIdentifier"

-- | @Selector@ for @title@
titleSelector :: Selector '[] (Id NSString)
titleSelector = mkSelector "title"

-- | @Selector@ for @achievedDescription@
achievedDescriptionSelector :: Selector '[] (Id NSString)
achievedDescriptionSelector = mkSelector "achievedDescription"

-- | @Selector@ for @unachievedDescription@
unachievedDescriptionSelector :: Selector '[] (Id NSString)
unachievedDescriptionSelector = mkSelector "unachievedDescription"

-- | @Selector@ for @maximumPoints@
maximumPointsSelector :: Selector '[] CLong
maximumPointsSelector = mkSelector "maximumPoints"

-- | @Selector@ for @hidden@
hiddenSelector :: Selector '[] Bool
hiddenSelector = mkSelector "hidden"

-- | @Selector@ for @replayable@
replayableSelector :: Selector '[] Bool
replayableSelector = mkSelector "replayable"

