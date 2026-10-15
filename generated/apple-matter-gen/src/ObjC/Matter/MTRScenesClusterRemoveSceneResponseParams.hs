{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterRemoveSceneResponseParams@.
module ObjC.Matter.MTRScenesClusterRemoveSceneResponseParams
  ( MTRScenesClusterRemoveSceneResponseParams
  , IsMTRScenesClusterRemoveSceneResponseParams(..)
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
init_ :: IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams => mtrScenesClusterRemoveSceneResponseParams -> IO (Id MTRScenesClusterRemoveSceneResponseParams)
init_ mtrScenesClusterRemoveSceneResponseParams =
  sendOwnedMessage mtrScenesClusterRemoveSceneResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams => mtrScenesClusterRemoveSceneResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterRemoveSceneResponseParams zone =
  sendOwnedMessage mtrScenesClusterRemoveSceneResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams => mtrScenesClusterRemoveSceneResponseParams -> IO (Id NSNumber)
status mtrScenesClusterRemoveSceneResponseParams =
  sendMessage mtrScenesClusterRemoveSceneResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams, IsNSNumber value) => mtrScenesClusterRemoveSceneResponseParams -> value -> IO ()
setStatus mtrScenesClusterRemoveSceneResponseParams value =
  sendMessage mtrScenesClusterRemoveSceneResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams => mtrScenesClusterRemoveSceneResponseParams -> IO (Id NSNumber)
groupId mtrScenesClusterRemoveSceneResponseParams =
  sendMessage mtrScenesClusterRemoveSceneResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams, IsNSNumber value) => mtrScenesClusterRemoveSceneResponseParams -> value -> IO ()
setGroupId mtrScenesClusterRemoveSceneResponseParams value =
  sendMessage mtrScenesClusterRemoveSceneResponseParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams => mtrScenesClusterRemoveSceneResponseParams -> IO (Id NSNumber)
sceneId mtrScenesClusterRemoveSceneResponseParams =
  sendMessage mtrScenesClusterRemoveSceneResponseParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams, IsNSNumber value) => mtrScenesClusterRemoveSceneResponseParams -> value -> IO ()
setSceneId mtrScenesClusterRemoveSceneResponseParams value =
  sendMessage mtrScenesClusterRemoveSceneResponseParams setSceneIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams => mtrScenesClusterRemoveSceneResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterRemoveSceneResponseParams =
  sendMessage mtrScenesClusterRemoveSceneResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterRemoveSceneResponseParams mtrScenesClusterRemoveSceneResponseParams, IsNSNumber value) => mtrScenesClusterRemoveSceneResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterRemoveSceneResponseParams value =
  sendMessage mtrScenesClusterRemoveSceneResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterRemoveSceneResponseParams)
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

