{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterGetSceneMembershipResponseParams@.
module ObjC.Matter.MTRScenesClusterGetSceneMembershipResponseParams
  ( MTRScenesClusterGetSceneMembershipResponseParams
  , IsMTRScenesClusterGetSceneMembershipResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , capacity
  , setCapacity
  , groupId
  , setGroupId
  , sceneList
  , setSceneList
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , capacitySelector
  , copyWithZoneSelector
  , groupIdSelector
  , initSelector
  , sceneListSelector
  , setCapacitySelector
  , setGroupIdSelector
  , setSceneListSelector
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
init_ :: IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams => mtrScenesClusterGetSceneMembershipResponseParams -> IO (Id MTRScenesClusterGetSceneMembershipResponseParams)
init_ mtrScenesClusterGetSceneMembershipResponseParams =
  sendOwnedMessage mtrScenesClusterGetSceneMembershipResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams => mtrScenesClusterGetSceneMembershipResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterGetSceneMembershipResponseParams zone =
  sendOwnedMessage mtrScenesClusterGetSceneMembershipResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams => mtrScenesClusterGetSceneMembershipResponseParams -> IO (Id NSNumber)
status mtrScenesClusterGetSceneMembershipResponseParams =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams, IsNSNumber value) => mtrScenesClusterGetSceneMembershipResponseParams -> value -> IO ()
setStatus mtrScenesClusterGetSceneMembershipResponseParams value =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams setStatusSelector (toNSNumber value)

-- | @- capacity@
capacity :: IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams => mtrScenesClusterGetSceneMembershipResponseParams -> IO (Id NSNumber)
capacity mtrScenesClusterGetSceneMembershipResponseParams =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams capacitySelector

-- | @- setCapacity:@
setCapacity :: (IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams, IsNSNumber value) => mtrScenesClusterGetSceneMembershipResponseParams -> value -> IO ()
setCapacity mtrScenesClusterGetSceneMembershipResponseParams value =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams setCapacitySelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams => mtrScenesClusterGetSceneMembershipResponseParams -> IO (Id NSNumber)
groupId mtrScenesClusterGetSceneMembershipResponseParams =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams, IsNSNumber value) => mtrScenesClusterGetSceneMembershipResponseParams -> value -> IO ()
setGroupId mtrScenesClusterGetSceneMembershipResponseParams value =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams setGroupIdSelector (toNSNumber value)

-- | @- sceneList@
sceneList :: IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams => mtrScenesClusterGetSceneMembershipResponseParams -> IO (Id NSArray)
sceneList mtrScenesClusterGetSceneMembershipResponseParams =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams sceneListSelector

-- | @- setSceneList:@
setSceneList :: (IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams, IsNSArray value) => mtrScenesClusterGetSceneMembershipResponseParams -> value -> IO ()
setSceneList mtrScenesClusterGetSceneMembershipResponseParams value =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams setSceneListSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams => mtrScenesClusterGetSceneMembershipResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterGetSceneMembershipResponseParams =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterGetSceneMembershipResponseParams mtrScenesClusterGetSceneMembershipResponseParams, IsNSNumber value) => mtrScenesClusterGetSceneMembershipResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterGetSceneMembershipResponseParams value =
  sendMessage mtrScenesClusterGetSceneMembershipResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterGetSceneMembershipResponseParams)
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

-- | @Selector@ for @capacity@
capacitySelector :: Selector '[] (Id NSNumber)
capacitySelector = mkSelector "capacity"

-- | @Selector@ for @setCapacity:@
setCapacitySelector :: Selector '[Id NSNumber] ()
setCapacitySelector = mkSelector "setCapacity:"

-- | @Selector@ for @groupId@
groupIdSelector :: Selector '[] (Id NSNumber)
groupIdSelector = mkSelector "groupId"

-- | @Selector@ for @setGroupId:@
setGroupIdSelector :: Selector '[Id NSNumber] ()
setGroupIdSelector = mkSelector "setGroupId:"

-- | @Selector@ for @sceneList@
sceneListSelector :: Selector '[] (Id NSArray)
sceneListSelector = mkSelector "sceneList"

-- | @Selector@ for @setSceneList:@
setSceneListSelector :: Selector '[Id NSArray] ()
setSceneListSelector = mkSelector "setSceneList:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

