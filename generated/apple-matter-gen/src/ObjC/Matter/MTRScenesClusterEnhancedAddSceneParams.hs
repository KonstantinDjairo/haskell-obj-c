{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterEnhancedAddSceneParams@.
module ObjC.Matter.MTRScenesClusterEnhancedAddSceneParams
  ( MTRScenesClusterEnhancedAddSceneParams
  , IsMTRScenesClusterEnhancedAddSceneParams(..)
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
init_ :: IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams => mtrScenesClusterEnhancedAddSceneParams -> IO (Id MTRScenesClusterEnhancedAddSceneParams)
init_ mtrScenesClusterEnhancedAddSceneParams =
  sendOwnedMessage mtrScenesClusterEnhancedAddSceneParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams => mtrScenesClusterEnhancedAddSceneParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterEnhancedAddSceneParams zone =
  sendOwnedMessage mtrScenesClusterEnhancedAddSceneParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams => mtrScenesClusterEnhancedAddSceneParams -> IO (Id NSNumber)
groupId mtrScenesClusterEnhancedAddSceneParams =
  sendMessage mtrScenesClusterEnhancedAddSceneParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams, IsNSNumber value) => mtrScenesClusterEnhancedAddSceneParams -> value -> IO ()
setGroupId mtrScenesClusterEnhancedAddSceneParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams => mtrScenesClusterEnhancedAddSceneParams -> IO (Id NSNumber)
sceneId mtrScenesClusterEnhancedAddSceneParams =
  sendMessage mtrScenesClusterEnhancedAddSceneParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams, IsNSNumber value) => mtrScenesClusterEnhancedAddSceneParams -> value -> IO ()
setSceneId mtrScenesClusterEnhancedAddSceneParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneParams setSceneIdSelector (toNSNumber value)

-- | @- transitionTime@
transitionTime :: IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams => mtrScenesClusterEnhancedAddSceneParams -> IO (Id NSNumber)
transitionTime mtrScenesClusterEnhancedAddSceneParams =
  sendMessage mtrScenesClusterEnhancedAddSceneParams transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams, IsNSNumber value) => mtrScenesClusterEnhancedAddSceneParams -> value -> IO ()
setTransitionTime mtrScenesClusterEnhancedAddSceneParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneParams setTransitionTimeSelector (toNSNumber value)

-- | @- sceneName@
sceneName :: IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams => mtrScenesClusterEnhancedAddSceneParams -> IO (Id NSString)
sceneName mtrScenesClusterEnhancedAddSceneParams =
  sendMessage mtrScenesClusterEnhancedAddSceneParams sceneNameSelector

-- | @- setSceneName:@
setSceneName :: (IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams, IsNSString value) => mtrScenesClusterEnhancedAddSceneParams -> value -> IO ()
setSceneName mtrScenesClusterEnhancedAddSceneParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneParams setSceneNameSelector (toNSString value)

-- | @- extensionFieldSets@
extensionFieldSets :: IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams => mtrScenesClusterEnhancedAddSceneParams -> IO (Id NSArray)
extensionFieldSets mtrScenesClusterEnhancedAddSceneParams =
  sendMessage mtrScenesClusterEnhancedAddSceneParams extensionFieldSetsSelector

-- | @- setExtensionFieldSets:@
setExtensionFieldSets :: (IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams, IsNSArray value) => mtrScenesClusterEnhancedAddSceneParams -> value -> IO ()
setExtensionFieldSets mtrScenesClusterEnhancedAddSceneParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneParams setExtensionFieldSetsSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams => mtrScenesClusterEnhancedAddSceneParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterEnhancedAddSceneParams =
  sendMessage mtrScenesClusterEnhancedAddSceneParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterEnhancedAddSceneParams mtrScenesClusterEnhancedAddSceneParams, IsNSNumber value) => mtrScenesClusterEnhancedAddSceneParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterEnhancedAddSceneParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterEnhancedAddSceneParams)
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

