{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterRemoveSceneParams@.
module ObjC.Matter.MTRScenesClusterRemoveSceneParams
  ( MTRScenesClusterRemoveSceneParams
  , IsMTRScenesClusterRemoveSceneParams(..)
  , init_
  , copyWithZone
  , groupId
  , setGroupId
  , sceneId
  , setSceneId
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupIdSelector
  , initSelector
  , sceneIdSelector
  , setGroupIdSelector
  , setSceneIdSelector
  , setTimedInvokeTimeoutMsSelector
  , timedInvokeTimeoutMsSelector


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
init_ :: IsMTRScenesClusterRemoveSceneParams mtrScenesClusterRemoveSceneParams => mtrScenesClusterRemoveSceneParams -> IO (Id MTRScenesClusterRemoveSceneParams)
init_ mtrScenesClusterRemoveSceneParams =
  sendOwnedMessage mtrScenesClusterRemoveSceneParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterRemoveSceneParams mtrScenesClusterRemoveSceneParams => mtrScenesClusterRemoveSceneParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterRemoveSceneParams zone =
  sendOwnedMessage mtrScenesClusterRemoveSceneParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRScenesClusterRemoveSceneParams mtrScenesClusterRemoveSceneParams => mtrScenesClusterRemoveSceneParams -> IO (Id NSNumber)
groupId mtrScenesClusterRemoveSceneParams =
  sendMessage mtrScenesClusterRemoveSceneParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterRemoveSceneParams mtrScenesClusterRemoveSceneParams, IsNSNumber value) => mtrScenesClusterRemoveSceneParams -> value -> IO ()
setGroupId mtrScenesClusterRemoveSceneParams value =
  sendMessage mtrScenesClusterRemoveSceneParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterRemoveSceneParams mtrScenesClusterRemoveSceneParams => mtrScenesClusterRemoveSceneParams -> IO (Id NSNumber)
sceneId mtrScenesClusterRemoveSceneParams =
  sendMessage mtrScenesClusterRemoveSceneParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterRemoveSceneParams mtrScenesClusterRemoveSceneParams, IsNSNumber value) => mtrScenesClusterRemoveSceneParams -> value -> IO ()
setSceneId mtrScenesClusterRemoveSceneParams value =
  sendMessage mtrScenesClusterRemoveSceneParams setSceneIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterRemoveSceneParams mtrScenesClusterRemoveSceneParams => mtrScenesClusterRemoveSceneParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterRemoveSceneParams =
  sendMessage mtrScenesClusterRemoveSceneParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterRemoveSceneParams mtrScenesClusterRemoveSceneParams, IsNSNumber value) => mtrScenesClusterRemoveSceneParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterRemoveSceneParams value =
  sendMessage mtrScenesClusterRemoveSceneParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterRemoveSceneParams)
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

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

