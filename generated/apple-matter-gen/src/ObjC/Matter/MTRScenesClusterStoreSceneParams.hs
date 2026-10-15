{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterStoreSceneParams@.
module ObjC.Matter.MTRScenesClusterStoreSceneParams
  ( MTRScenesClusterStoreSceneParams
  , IsMTRScenesClusterStoreSceneParams(..)
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
init_ :: IsMTRScenesClusterStoreSceneParams mtrScenesClusterStoreSceneParams => mtrScenesClusterStoreSceneParams -> IO (Id MTRScenesClusterStoreSceneParams)
init_ mtrScenesClusterStoreSceneParams =
  sendOwnedMessage mtrScenesClusterStoreSceneParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterStoreSceneParams mtrScenesClusterStoreSceneParams => mtrScenesClusterStoreSceneParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterStoreSceneParams zone =
  sendOwnedMessage mtrScenesClusterStoreSceneParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRScenesClusterStoreSceneParams mtrScenesClusterStoreSceneParams => mtrScenesClusterStoreSceneParams -> IO (Id NSNumber)
groupId mtrScenesClusterStoreSceneParams =
  sendMessage mtrScenesClusterStoreSceneParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterStoreSceneParams mtrScenesClusterStoreSceneParams, IsNSNumber value) => mtrScenesClusterStoreSceneParams -> value -> IO ()
setGroupId mtrScenesClusterStoreSceneParams value =
  sendMessage mtrScenesClusterStoreSceneParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterStoreSceneParams mtrScenesClusterStoreSceneParams => mtrScenesClusterStoreSceneParams -> IO (Id NSNumber)
sceneId mtrScenesClusterStoreSceneParams =
  sendMessage mtrScenesClusterStoreSceneParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterStoreSceneParams mtrScenesClusterStoreSceneParams, IsNSNumber value) => mtrScenesClusterStoreSceneParams -> value -> IO ()
setSceneId mtrScenesClusterStoreSceneParams value =
  sendMessage mtrScenesClusterStoreSceneParams setSceneIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterStoreSceneParams mtrScenesClusterStoreSceneParams => mtrScenesClusterStoreSceneParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterStoreSceneParams =
  sendMessage mtrScenesClusterStoreSceneParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterStoreSceneParams mtrScenesClusterStoreSceneParams, IsNSNumber value) => mtrScenesClusterStoreSceneParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterStoreSceneParams value =
  sendMessage mtrScenesClusterStoreSceneParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterStoreSceneParams)
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

