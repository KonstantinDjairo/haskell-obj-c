{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterEnhancedViewSceneResponseParams@.
module ObjC.Matter.MTRScenesClusterEnhancedViewSceneResponseParams
  ( MTRScenesClusterEnhancedViewSceneResponseParams
  , IsMTRScenesClusterEnhancedViewSceneResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
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
  , setStatusSelector
  , setTimedInvokeTimeoutMsSelector
  , setTransitionTimeSelector
  , statusSelector
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
init_ :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> IO (Id MTRScenesClusterEnhancedViewSceneResponseParams)
init_ mtrScenesClusterEnhancedViewSceneResponseParams =
  sendOwnedMessage mtrScenesClusterEnhancedViewSceneResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterEnhancedViewSceneResponseParams zone =
  sendOwnedMessage mtrScenesClusterEnhancedViewSceneResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> IO (Id NSNumber)
status mtrScenesClusterEnhancedViewSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedViewSceneResponseParams -> value -> IO ()
setStatus mtrScenesClusterEnhancedViewSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> IO (Id NSNumber)
groupId mtrScenesClusterEnhancedViewSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedViewSceneResponseParams -> value -> IO ()
setGroupId mtrScenesClusterEnhancedViewSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> IO (Id NSNumber)
sceneId mtrScenesClusterEnhancedViewSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedViewSceneResponseParams -> value -> IO ()
setSceneId mtrScenesClusterEnhancedViewSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams setSceneIdSelector (toNSNumber value)

-- | @- transitionTime@
transitionTime :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> IO (Id NSNumber)
transitionTime mtrScenesClusterEnhancedViewSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedViewSceneResponseParams -> value -> IO ()
setTransitionTime mtrScenesClusterEnhancedViewSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams setTransitionTimeSelector (toNSNumber value)

-- | @- sceneName@
sceneName :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> IO (Id NSString)
sceneName mtrScenesClusterEnhancedViewSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams sceneNameSelector

-- | @- setSceneName:@
setSceneName :: (IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams, IsNSString value) => mtrScenesClusterEnhancedViewSceneResponseParams -> value -> IO ()
setSceneName mtrScenesClusterEnhancedViewSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams setSceneNameSelector (toNSString value)

-- | @- extensionFieldSets@
extensionFieldSets :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> IO (Id NSArray)
extensionFieldSets mtrScenesClusterEnhancedViewSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams extensionFieldSetsSelector

-- | @- setExtensionFieldSets:@
setExtensionFieldSets :: (IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams, IsNSArray value) => mtrScenesClusterEnhancedViewSceneResponseParams -> value -> IO ()
setExtensionFieldSets mtrScenesClusterEnhancedViewSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams setExtensionFieldSetsSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams => mtrScenesClusterEnhancedViewSceneResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterEnhancedViewSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterEnhancedViewSceneResponseParams mtrScenesClusterEnhancedViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedViewSceneResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterEnhancedViewSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterEnhancedViewSceneResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @status@
statusSelector :: Selector '[] (Id NSNumber)
statusSelector = mkSelector "status"

-- | @Selector@ for @setStatus:@
setStatusSelector :: Selector '[Id NSNumber] ()
setStatusSelector = mkSelector "setStatus:"

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

