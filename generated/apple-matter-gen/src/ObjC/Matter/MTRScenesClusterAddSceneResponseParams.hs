{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterAddSceneResponseParams@.
module ObjC.Matter.MTRScenesClusterAddSceneResponseParams
  ( MTRScenesClusterAddSceneResponseParams
  , IsMTRScenesClusterAddSceneResponseParams(..)
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
init_ :: IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams => mtrScenesClusterAddSceneResponseParams -> IO (Id MTRScenesClusterAddSceneResponseParams)
init_ mtrScenesClusterAddSceneResponseParams =
  sendOwnedMessage mtrScenesClusterAddSceneResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams => mtrScenesClusterAddSceneResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterAddSceneResponseParams zone =
  sendOwnedMessage mtrScenesClusterAddSceneResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams => mtrScenesClusterAddSceneResponseParams -> IO (Id NSNumber)
status mtrScenesClusterAddSceneResponseParams =
  sendMessage mtrScenesClusterAddSceneResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams, IsNSNumber value) => mtrScenesClusterAddSceneResponseParams -> value -> IO ()
setStatus mtrScenesClusterAddSceneResponseParams value =
  sendMessage mtrScenesClusterAddSceneResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams => mtrScenesClusterAddSceneResponseParams -> IO (Id NSNumber)
groupId mtrScenesClusterAddSceneResponseParams =
  sendMessage mtrScenesClusterAddSceneResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams, IsNSNumber value) => mtrScenesClusterAddSceneResponseParams -> value -> IO ()
setGroupId mtrScenesClusterAddSceneResponseParams value =
  sendMessage mtrScenesClusterAddSceneResponseParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams => mtrScenesClusterAddSceneResponseParams -> IO (Id NSNumber)
sceneId mtrScenesClusterAddSceneResponseParams =
  sendMessage mtrScenesClusterAddSceneResponseParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams, IsNSNumber value) => mtrScenesClusterAddSceneResponseParams -> value -> IO ()
setSceneId mtrScenesClusterAddSceneResponseParams value =
  sendMessage mtrScenesClusterAddSceneResponseParams setSceneIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams => mtrScenesClusterAddSceneResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterAddSceneResponseParams =
  sendMessage mtrScenesClusterAddSceneResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterAddSceneResponseParams mtrScenesClusterAddSceneResponseParams, IsNSNumber value) => mtrScenesClusterAddSceneResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterAddSceneResponseParams value =
  sendMessage mtrScenesClusterAddSceneResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterAddSceneResponseParams)
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

