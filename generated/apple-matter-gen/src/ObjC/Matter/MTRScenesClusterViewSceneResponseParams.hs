{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterViewSceneResponseParams@.
module ObjC.Matter.MTRScenesClusterViewSceneResponseParams
  ( MTRScenesClusterViewSceneResponseParams
  , IsMTRScenesClusterViewSceneResponseParams(..)
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
init_ :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> IO (Id MTRScenesClusterViewSceneResponseParams)
init_ mtrScenesClusterViewSceneResponseParams =
  sendOwnedMessage mtrScenesClusterViewSceneResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterViewSceneResponseParams zone =
  sendOwnedMessage mtrScenesClusterViewSceneResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> IO (Id NSNumber)
status mtrScenesClusterViewSceneResponseParams =
  sendMessage mtrScenesClusterViewSceneResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterViewSceneResponseParams -> value -> IO ()
setStatus mtrScenesClusterViewSceneResponseParams value =
  sendMessage mtrScenesClusterViewSceneResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> IO (Id NSNumber)
groupId mtrScenesClusterViewSceneResponseParams =
  sendMessage mtrScenesClusterViewSceneResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterViewSceneResponseParams -> value -> IO ()
setGroupId mtrScenesClusterViewSceneResponseParams value =
  sendMessage mtrScenesClusterViewSceneResponseParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> IO (Id NSNumber)
sceneId mtrScenesClusterViewSceneResponseParams =
  sendMessage mtrScenesClusterViewSceneResponseParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterViewSceneResponseParams -> value -> IO ()
setSceneId mtrScenesClusterViewSceneResponseParams value =
  sendMessage mtrScenesClusterViewSceneResponseParams setSceneIdSelector (toNSNumber value)

-- | @- transitionTime@
transitionTime :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> IO (Id NSNumber)
transitionTime mtrScenesClusterViewSceneResponseParams =
  sendMessage mtrScenesClusterViewSceneResponseParams transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterViewSceneResponseParams -> value -> IO ()
setTransitionTime mtrScenesClusterViewSceneResponseParams value =
  sendMessage mtrScenesClusterViewSceneResponseParams setTransitionTimeSelector (toNSNumber value)

-- | @- sceneName@
sceneName :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> IO (Id NSString)
sceneName mtrScenesClusterViewSceneResponseParams =
  sendMessage mtrScenesClusterViewSceneResponseParams sceneNameSelector

-- | @- setSceneName:@
setSceneName :: (IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams, IsNSString value) => mtrScenesClusterViewSceneResponseParams -> value -> IO ()
setSceneName mtrScenesClusterViewSceneResponseParams value =
  sendMessage mtrScenesClusterViewSceneResponseParams setSceneNameSelector (toNSString value)

-- | @- extensionFieldSets@
extensionFieldSets :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> IO (Id NSArray)
extensionFieldSets mtrScenesClusterViewSceneResponseParams =
  sendMessage mtrScenesClusterViewSceneResponseParams extensionFieldSetsSelector

-- | @- setExtensionFieldSets:@
setExtensionFieldSets :: (IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams, IsNSArray value) => mtrScenesClusterViewSceneResponseParams -> value -> IO ()
setExtensionFieldSets mtrScenesClusterViewSceneResponseParams value =
  sendMessage mtrScenesClusterViewSceneResponseParams setExtensionFieldSetsSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams => mtrScenesClusterViewSceneResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterViewSceneResponseParams =
  sendMessage mtrScenesClusterViewSceneResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterViewSceneResponseParams mtrScenesClusterViewSceneResponseParams, IsNSNumber value) => mtrScenesClusterViewSceneResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterViewSceneResponseParams value =
  sendMessage mtrScenesClusterViewSceneResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterViewSceneResponseParams)
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

