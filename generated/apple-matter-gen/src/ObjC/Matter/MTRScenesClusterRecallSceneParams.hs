{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterRecallSceneParams@.
module ObjC.Matter.MTRScenesClusterRecallSceneParams
  ( MTRScenesClusterRecallSceneParams
  , IsMTRScenesClusterRecallSceneParams(..)
  , init_
  , copyWithZone
  , groupId
  , setGroupId
  , sceneId
  , setSceneId
  , transitionTime
  , setTransitionTime
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupIdSelector
  , initSelector
  , sceneIdSelector
  , setGroupIdSelector
  , setSceneIdSelector
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
init_ :: IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams => mtrScenesClusterRecallSceneParams -> IO (Id MTRScenesClusterRecallSceneParams)
init_ mtrScenesClusterRecallSceneParams =
  sendOwnedMessage mtrScenesClusterRecallSceneParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams => mtrScenesClusterRecallSceneParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterRecallSceneParams zone =
  sendOwnedMessage mtrScenesClusterRecallSceneParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams => mtrScenesClusterRecallSceneParams -> IO (Id NSNumber)
groupId mtrScenesClusterRecallSceneParams =
  sendMessage mtrScenesClusterRecallSceneParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams, IsNSNumber value) => mtrScenesClusterRecallSceneParams -> value -> IO ()
setGroupId mtrScenesClusterRecallSceneParams value =
  sendMessage mtrScenesClusterRecallSceneParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams => mtrScenesClusterRecallSceneParams -> IO (Id NSNumber)
sceneId mtrScenesClusterRecallSceneParams =
  sendMessage mtrScenesClusterRecallSceneParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams, IsNSNumber value) => mtrScenesClusterRecallSceneParams -> value -> IO ()
setSceneId mtrScenesClusterRecallSceneParams value =
  sendMessage mtrScenesClusterRecallSceneParams setSceneIdSelector (toNSNumber value)

-- | @- transitionTime@
transitionTime :: IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams => mtrScenesClusterRecallSceneParams -> IO (Id NSNumber)
transitionTime mtrScenesClusterRecallSceneParams =
  sendMessage mtrScenesClusterRecallSceneParams transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams, IsNSNumber value) => mtrScenesClusterRecallSceneParams -> value -> IO ()
setTransitionTime mtrScenesClusterRecallSceneParams value =
  sendMessage mtrScenesClusterRecallSceneParams setTransitionTimeSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams => mtrScenesClusterRecallSceneParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterRecallSceneParams =
  sendMessage mtrScenesClusterRecallSceneParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterRecallSceneParams mtrScenesClusterRecallSceneParams, IsNSNumber value) => mtrScenesClusterRecallSceneParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterRecallSceneParams value =
  sendMessage mtrScenesClusterRecallSceneParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterRecallSceneParams)
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

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

