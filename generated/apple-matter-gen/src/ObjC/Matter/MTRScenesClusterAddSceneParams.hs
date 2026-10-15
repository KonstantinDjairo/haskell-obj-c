{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterAddSceneParams@.
module ObjC.Matter.MTRScenesClusterAddSceneParams
  ( MTRScenesClusterAddSceneParams
  , IsMTRScenesClusterAddSceneParams(..)
  , init_
  , copyWithZone
  , groupId
  , setGroupId
  , sceneId
  , setSceneId
  , transitionTime
  , setTransitionTime
  , sceneName
  , setSceneName
  , extensionFieldSets
  , setExtensionFieldSets
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , extensionFieldSetsSelector
  , groupIdSelector
  , initSelector
  , sceneIdSelector
  , sceneNameSelector
  , setExtensionFieldSetsSelector
  , setGroupIdSelector
  , setSceneIdSelector
  , setSceneNameSelector
  , setTimedInvokeTimeoutMsSelector
  , setTransitionTimeSelector
  , timedInvokeTimeoutMsSelector
  , transitionTimeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams => mtrScenesClusterAddSceneParams -> IO (Id MTRScenesClusterAddSceneParams)
init_ mtrScenesClusterAddSceneParams =
  sendOwnedMessage mtrScenesClusterAddSceneParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams => mtrScenesClusterAddSceneParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterAddSceneParams zone =
  sendOwnedMessage mtrScenesClusterAddSceneParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams => mtrScenesClusterAddSceneParams -> IO (Id NSNumber)
groupId mtrScenesClusterAddSceneParams =
  sendMessage mtrScenesClusterAddSceneParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams, IsNSNumber value) => mtrScenesClusterAddSceneParams -> value -> IO ()
setGroupId mtrScenesClusterAddSceneParams value =
  sendMessage mtrScenesClusterAddSceneParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams => mtrScenesClusterAddSceneParams -> IO (Id NSNumber)
sceneId mtrScenesClusterAddSceneParams =
  sendMessage mtrScenesClusterAddSceneParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams, IsNSNumber value) => mtrScenesClusterAddSceneParams -> value -> IO ()
setSceneId mtrScenesClusterAddSceneParams value =
  sendMessage mtrScenesClusterAddSceneParams setSceneIdSelector (toNSNumber value)

-- | @- transitionTime@
transitionTime :: IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams => mtrScenesClusterAddSceneParams -> IO (Id NSNumber)
transitionTime mtrScenesClusterAddSceneParams =
  sendMessage mtrScenesClusterAddSceneParams transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams, IsNSNumber value) => mtrScenesClusterAddSceneParams -> value -> IO ()
setTransitionTime mtrScenesClusterAddSceneParams value =
  sendMessage mtrScenesClusterAddSceneParams setTransitionTimeSelector (toNSNumber value)

-- | @- sceneName@
sceneName :: IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams => mtrScenesClusterAddSceneParams -> IO (Id NSString)
sceneName mtrScenesClusterAddSceneParams =
  sendMessage mtrScenesClusterAddSceneParams sceneNameSelector

-- | @- setSceneName:@
setSceneName :: (IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams, IsNSString value) => mtrScenesClusterAddSceneParams -> value -> IO ()
setSceneName mtrScenesClusterAddSceneParams value =
  sendMessage mtrScenesClusterAddSceneParams setSceneNameSelector (toNSString value)

-- | @- extensionFieldSets@
extensionFieldSets :: IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams => mtrScenesClusterAddSceneParams -> IO (Id NSArray)
extensionFieldSets mtrScenesClusterAddSceneParams =
  sendMessage mtrScenesClusterAddSceneParams extensionFieldSetsSelector

-- | @- setExtensionFieldSets:@
setExtensionFieldSets :: (IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams, IsNSArray value) => mtrScenesClusterAddSceneParams -> value -> IO ()
setExtensionFieldSets mtrScenesClusterAddSceneParams value =
  sendMessage mtrScenesClusterAddSceneParams setExtensionFieldSetsSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams => mtrScenesClusterAddSceneParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterAddSceneParams =
  sendMessage mtrScenesClusterAddSceneParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterAddSceneParams mtrScenesClusterAddSceneParams, IsNSNumber value) => mtrScenesClusterAddSceneParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterAddSceneParams value =
  sendMessage mtrScenesClusterAddSceneParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterAddSceneParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @groupId@
groupIdSelector :: Selector '[] (Id NSNumber)
groupIdSelector = mkSelector "groupId"

-- | @Selector@ for @setGroupId:@
setGroupIdSelector :: Selector '[Id NSNumber] ()
setGroupIdSelector = mkSelector "setGroupId:"

-- | @Selector@ for @sceneId@
sceneIdSelector :: Selector '[] (Id NSNumber)
sceneIdSelector = mkSelector "sceneId"

-- | @Selector@ for @setSceneId:@
setSceneIdSelector :: Selector '[Id NSNumber] ()
setSceneIdSelector = mkSelector "setSceneId:"

-- | @Selector@ for @transitionTime@
transitionTimeSelector :: Selector '[] (Id NSNumber)
transitionTimeSelector = mkSelector "transitionTime"

-- | @Selector@ for @setTransitionTime:@
setTransitionTimeSelector :: Selector '[Id NSNumber] ()
setTransitionTimeSelector = mkSelector "setTransitionTime:"

-- | @Selector@ for @sceneName@
sceneNameSelector :: Selector '[] (Id NSString)
sceneNameSelector = mkSelector "sceneName"

-- | @Selector@ for @setSceneName:@
setSceneNameSelector :: Selector '[Id NSString] ()
setSceneNameSelector = mkSelector "setSceneName:"

-- | @Selector@ for @extensionFieldSets@
extensionFieldSetsSelector :: Selector '[] (Id NSArray)
extensionFieldSetsSelector = mkSelector "extensionFieldSets"

-- | @Selector@ for @setExtensionFieldSets:@
setExtensionFieldSetsSelector :: Selector '[Id NSArray] ()
setExtensionFieldSetsSelector = mkSelector "setExtensionFieldSets:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

