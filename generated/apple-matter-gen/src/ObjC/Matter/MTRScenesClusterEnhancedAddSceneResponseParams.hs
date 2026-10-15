{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterEnhancedAddSceneResponseParams@.
module ObjC.Matter.MTRScenesClusterEnhancedAddSceneResponseParams
  ( MTRScenesClusterEnhancedAddSceneResponseParams
  , IsMTRScenesClusterEnhancedAddSceneResponseParams(..)
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
init_ :: IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams => mtrScenesClusterEnhancedAddSceneResponseParams -> IO (Id MTRScenesClusterEnhancedAddSceneResponseParams)
init_ mtrScenesClusterEnhancedAddSceneResponseParams =
  sendOwnedMessage mtrScenesClusterEnhancedAddSceneResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams => mtrScenesClusterEnhancedAddSceneResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterEnhancedAddSceneResponseParams zone =
  sendOwnedMessage mtrScenesClusterEnhancedAddSceneResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams => mtrScenesClusterEnhancedAddSceneResponseParams -> IO (Id NSNumber)
status mtrScenesClusterEnhancedAddSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedAddSceneResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedAddSceneResponseParams -> value -> IO ()
setStatus mtrScenesClusterEnhancedAddSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams => mtrScenesClusterEnhancedAddSceneResponseParams -> IO (Id NSNumber)
groupId mtrScenesClusterEnhancedAddSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedAddSceneResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedAddSceneResponseParams -> value -> IO ()
setGroupId mtrScenesClusterEnhancedAddSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneResponseParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams => mtrScenesClusterEnhancedAddSceneResponseParams -> IO (Id NSNumber)
sceneId mtrScenesClusterEnhancedAddSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedAddSceneResponseParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedAddSceneResponseParams -> value -> IO ()
setSceneId mtrScenesClusterEnhancedAddSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneResponseParams setSceneIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams => mtrScenesClusterEnhancedAddSceneResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterEnhancedAddSceneResponseParams =
  sendMessage mtrScenesClusterEnhancedAddSceneResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterEnhancedAddSceneResponseParams mtrScenesClusterEnhancedAddSceneResponseParams, IsNSNumber value) => mtrScenesClusterEnhancedAddSceneResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterEnhancedAddSceneResponseParams value =
  sendMessage mtrScenesClusterEnhancedAddSceneResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterEnhancedAddSceneResponseParams)
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

