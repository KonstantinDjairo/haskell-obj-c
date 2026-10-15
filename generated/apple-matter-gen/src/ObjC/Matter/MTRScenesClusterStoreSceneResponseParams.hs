{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterStoreSceneResponseParams@.
module ObjC.Matter.MTRScenesClusterStoreSceneResponseParams
  ( MTRScenesClusterStoreSceneResponseParams
  , IsMTRScenesClusterStoreSceneResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
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
  , setStatusSelector
  , setTimedInvokeTimeoutMsSelector
  , statusSelector
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
init_ :: IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams => mtrScenesClusterStoreSceneResponseParams -> IO (Id MTRScenesClusterStoreSceneResponseParams)
init_ mtrScenesClusterStoreSceneResponseParams =
  sendOwnedMessage mtrScenesClusterStoreSceneResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams => mtrScenesClusterStoreSceneResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterStoreSceneResponseParams zone =
  sendOwnedMessage mtrScenesClusterStoreSceneResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams => mtrScenesClusterStoreSceneResponseParams -> IO (Id NSNumber)
status mtrScenesClusterStoreSceneResponseParams =
  sendMessage mtrScenesClusterStoreSceneResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams, IsNSNumber value) => mtrScenesClusterStoreSceneResponseParams -> value -> IO ()
setStatus mtrScenesClusterStoreSceneResponseParams value =
  sendMessage mtrScenesClusterStoreSceneResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams => mtrScenesClusterStoreSceneResponseParams -> IO (Id NSNumber)
groupId mtrScenesClusterStoreSceneResponseParams =
  sendMessage mtrScenesClusterStoreSceneResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams, IsNSNumber value) => mtrScenesClusterStoreSceneResponseParams -> value -> IO ()
setGroupId mtrScenesClusterStoreSceneResponseParams value =
  sendMessage mtrScenesClusterStoreSceneResponseParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams => mtrScenesClusterStoreSceneResponseParams -> IO (Id NSNumber)
sceneId mtrScenesClusterStoreSceneResponseParams =
  sendMessage mtrScenesClusterStoreSceneResponseParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams, IsNSNumber value) => mtrScenesClusterStoreSceneResponseParams -> value -> IO ()
setSceneId mtrScenesClusterStoreSceneResponseParams value =
  sendMessage mtrScenesClusterStoreSceneResponseParams setSceneIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams => mtrScenesClusterStoreSceneResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterStoreSceneResponseParams =
  sendMessage mtrScenesClusterStoreSceneResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterStoreSceneResponseParams mtrScenesClusterStoreSceneResponseParams, IsNSNumber value) => mtrScenesClusterStoreSceneResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterStoreSceneResponseParams value =
  sendMessage mtrScenesClusterStoreSceneResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterStoreSceneResponseParams)
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

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

