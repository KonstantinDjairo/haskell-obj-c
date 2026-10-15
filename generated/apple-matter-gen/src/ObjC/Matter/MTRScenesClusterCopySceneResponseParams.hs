{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterCopySceneResponseParams@.
module ObjC.Matter.MTRScenesClusterCopySceneResponseParams
  ( MTRScenesClusterCopySceneResponseParams
  , IsMTRScenesClusterCopySceneResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , groupIdFrom
  , setGroupIdFrom
  , sceneIdFrom
  , setSceneIdFrom
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupIdFromSelector
  , initSelector
  , sceneIdFromSelector
  , setGroupIdFromSelector
  , setSceneIdFromSelector
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
init_ :: IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams => mtrScenesClusterCopySceneResponseParams -> IO (Id MTRScenesClusterCopySceneResponseParams)
init_ mtrScenesClusterCopySceneResponseParams =
  sendOwnedMessage mtrScenesClusterCopySceneResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams => mtrScenesClusterCopySceneResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterCopySceneResponseParams zone =
  sendOwnedMessage mtrScenesClusterCopySceneResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams => mtrScenesClusterCopySceneResponseParams -> IO (Id NSNumber)
status mtrScenesClusterCopySceneResponseParams =
  sendMessage mtrScenesClusterCopySceneResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams, IsNSNumber value) => mtrScenesClusterCopySceneResponseParams -> value -> IO ()
setStatus mtrScenesClusterCopySceneResponseParams value =
  sendMessage mtrScenesClusterCopySceneResponseParams setStatusSelector (toNSNumber value)

-- | @- groupIdFrom@
groupIdFrom :: IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams => mtrScenesClusterCopySceneResponseParams -> IO (Id NSNumber)
groupIdFrom mtrScenesClusterCopySceneResponseParams =
  sendMessage mtrScenesClusterCopySceneResponseParams groupIdFromSelector

-- | @- setGroupIdFrom:@
setGroupIdFrom :: (IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams, IsNSNumber value) => mtrScenesClusterCopySceneResponseParams -> value -> IO ()
setGroupIdFrom mtrScenesClusterCopySceneResponseParams value =
  sendMessage mtrScenesClusterCopySceneResponseParams setGroupIdFromSelector (toNSNumber value)

-- | @- sceneIdFrom@
sceneIdFrom :: IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams => mtrScenesClusterCopySceneResponseParams -> IO (Id NSNumber)
sceneIdFrom mtrScenesClusterCopySceneResponseParams =
  sendMessage mtrScenesClusterCopySceneResponseParams sceneIdFromSelector

-- | @- setSceneIdFrom:@
setSceneIdFrom :: (IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams, IsNSNumber value) => mtrScenesClusterCopySceneResponseParams -> value -> IO ()
setSceneIdFrom mtrScenesClusterCopySceneResponseParams value =
  sendMessage mtrScenesClusterCopySceneResponseParams setSceneIdFromSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams => mtrScenesClusterCopySceneResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterCopySceneResponseParams =
  sendMessage mtrScenesClusterCopySceneResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterCopySceneResponseParams mtrScenesClusterCopySceneResponseParams, IsNSNumber value) => mtrScenesClusterCopySceneResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterCopySceneResponseParams value =
  sendMessage mtrScenesClusterCopySceneResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterCopySceneResponseParams)
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

-- | @Selector@ for @groupIdFrom@
groupIdFromSelector :: Selector '[] (Id NSNumber)
groupIdFromSelector = mkSelector "groupIdFrom"

-- | @Selector@ for @setGroupIdFrom:@
setGroupIdFromSelector :: Selector '[Id NSNumber] ()
setGroupIdFromSelector = mkSelector "setGroupIdFrom:"

-- | @Selector@ for @sceneIdFrom@
sceneIdFromSelector :: Selector '[] (Id NSNumber)
sceneIdFromSelector = mkSelector "sceneIdFrom"

-- | @Selector@ for @setSceneIdFrom:@
setSceneIdFromSelector :: Selector '[Id NSNumber] ()
setSceneIdFromSelector = mkSelector "setSceneIdFrom:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

