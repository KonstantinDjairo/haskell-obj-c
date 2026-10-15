{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterEnhancedViewSceneParams@.
module ObjC.Matter.MTRScenesClusterEnhancedViewSceneParams
  ( MTRScenesClusterEnhancedViewSceneParams
  , IsMTRScenesClusterEnhancedViewSceneParams(..)
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
init_ :: IsMTRScenesClusterEnhancedViewSceneParams mtrScenesClusterEnhancedViewSceneParams => mtrScenesClusterEnhancedViewSceneParams -> IO (Id MTRScenesClusterEnhancedViewSceneParams)
init_ mtrScenesClusterEnhancedViewSceneParams =
  sendOwnedMessage mtrScenesClusterEnhancedViewSceneParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterEnhancedViewSceneParams mtrScenesClusterEnhancedViewSceneParams => mtrScenesClusterEnhancedViewSceneParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterEnhancedViewSceneParams zone =
  sendOwnedMessage mtrScenesClusterEnhancedViewSceneParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRScenesClusterEnhancedViewSceneParams mtrScenesClusterEnhancedViewSceneParams => mtrScenesClusterEnhancedViewSceneParams -> IO (Id NSNumber)
groupId mtrScenesClusterEnhancedViewSceneParams =
  sendMessage mtrScenesClusterEnhancedViewSceneParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterEnhancedViewSceneParams mtrScenesClusterEnhancedViewSceneParams, IsNSNumber value) => mtrScenesClusterEnhancedViewSceneParams -> value -> IO ()
setGroupId mtrScenesClusterEnhancedViewSceneParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneParams setGroupIdSelector (toNSNumber value)

-- | @- sceneId@
sceneId :: IsMTRScenesClusterEnhancedViewSceneParams mtrScenesClusterEnhancedViewSceneParams => mtrScenesClusterEnhancedViewSceneParams -> IO (Id NSNumber)
sceneId mtrScenesClusterEnhancedViewSceneParams =
  sendMessage mtrScenesClusterEnhancedViewSceneParams sceneIdSelector

-- | @- setSceneId:@
setSceneId :: (IsMTRScenesClusterEnhancedViewSceneParams mtrScenesClusterEnhancedViewSceneParams, IsNSNumber value) => mtrScenesClusterEnhancedViewSceneParams -> value -> IO ()
setSceneId mtrScenesClusterEnhancedViewSceneParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneParams setSceneIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterEnhancedViewSceneParams mtrScenesClusterEnhancedViewSceneParams => mtrScenesClusterEnhancedViewSceneParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterEnhancedViewSceneParams =
  sendMessage mtrScenesClusterEnhancedViewSceneParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterEnhancedViewSceneParams mtrScenesClusterEnhancedViewSceneParams, IsNSNumber value) => mtrScenesClusterEnhancedViewSceneParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterEnhancedViewSceneParams value =
  sendMessage mtrScenesClusterEnhancedViewSceneParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterEnhancedViewSceneParams)
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

