{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterCopySceneParams@.
module ObjC.Matter.MTRScenesClusterCopySceneParams
  ( MTRScenesClusterCopySceneParams
  , IsMTRScenesClusterCopySceneParams(..)
  , init_
  , copyWithZone
  , mode
  , setMode
  , groupIdFrom
  , setGroupIdFrom
  , sceneIdFrom
  , setSceneIdFrom
  , groupIdTo
  , setGroupIdTo
  , sceneIdTo
  , setSceneIdTo
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupIdFromSelector
  , groupIdToSelector
  , initSelector
  , modeSelector
  , sceneIdFromSelector
  , sceneIdToSelector
  , setGroupIdFromSelector
  , setGroupIdToSelector
  , setModeSelector
  , setSceneIdFromSelector
  , setSceneIdToSelector
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
init_ :: IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams => mtrScenesClusterCopySceneParams -> IO (Id MTRScenesClusterCopySceneParams)
init_ mtrScenesClusterCopySceneParams =
  sendOwnedMessage mtrScenesClusterCopySceneParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams => mtrScenesClusterCopySceneParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterCopySceneParams zone =
  sendOwnedMessage mtrScenesClusterCopySceneParams copyWithZoneSelector zone

-- | @- mode@
mode :: IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams => mtrScenesClusterCopySceneParams -> IO (Id NSNumber)
mode mtrScenesClusterCopySceneParams =
  sendMessage mtrScenesClusterCopySceneParams modeSelector

-- | @- setMode:@
setMode :: (IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams, IsNSNumber value) => mtrScenesClusterCopySceneParams -> value -> IO ()
setMode mtrScenesClusterCopySceneParams value =
  sendMessage mtrScenesClusterCopySceneParams setModeSelector (toNSNumber value)

-- | @- groupIdFrom@
groupIdFrom :: IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams => mtrScenesClusterCopySceneParams -> IO (Id NSNumber)
groupIdFrom mtrScenesClusterCopySceneParams =
  sendMessage mtrScenesClusterCopySceneParams groupIdFromSelector

-- | @- setGroupIdFrom:@
setGroupIdFrom :: (IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams, IsNSNumber value) => mtrScenesClusterCopySceneParams -> value -> IO ()
setGroupIdFrom mtrScenesClusterCopySceneParams value =
  sendMessage mtrScenesClusterCopySceneParams setGroupIdFromSelector (toNSNumber value)

-- | @- sceneIdFrom@
sceneIdFrom :: IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams => mtrScenesClusterCopySceneParams -> IO (Id NSNumber)
sceneIdFrom mtrScenesClusterCopySceneParams =
  sendMessage mtrScenesClusterCopySceneParams sceneIdFromSelector

-- | @- setSceneIdFrom:@
setSceneIdFrom :: (IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams, IsNSNumber value) => mtrScenesClusterCopySceneParams -> value -> IO ()
setSceneIdFrom mtrScenesClusterCopySceneParams value =
  sendMessage mtrScenesClusterCopySceneParams setSceneIdFromSelector (toNSNumber value)

-- | @- groupIdTo@
groupIdTo :: IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams => mtrScenesClusterCopySceneParams -> IO (Id NSNumber)
groupIdTo mtrScenesClusterCopySceneParams =
  sendMessage mtrScenesClusterCopySceneParams groupIdToSelector

-- | @- setGroupIdTo:@
setGroupIdTo :: (IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams, IsNSNumber value) => mtrScenesClusterCopySceneParams -> value -> IO ()
setGroupIdTo mtrScenesClusterCopySceneParams value =
  sendMessage mtrScenesClusterCopySceneParams setGroupIdToSelector (toNSNumber value)

-- | @- sceneIdTo@
sceneIdTo :: IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams => mtrScenesClusterCopySceneParams -> IO (Id NSNumber)
sceneIdTo mtrScenesClusterCopySceneParams =
  sendMessage mtrScenesClusterCopySceneParams sceneIdToSelector

-- | @- setSceneIdTo:@
setSceneIdTo :: (IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams, IsNSNumber value) => mtrScenesClusterCopySceneParams -> value -> IO ()
setSceneIdTo mtrScenesClusterCopySceneParams value =
  sendMessage mtrScenesClusterCopySceneParams setSceneIdToSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams => mtrScenesClusterCopySceneParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterCopySceneParams =
  sendMessage mtrScenesClusterCopySceneParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterCopySceneParams mtrScenesClusterCopySceneParams, IsNSNumber value) => mtrScenesClusterCopySceneParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterCopySceneParams value =
  sendMessage mtrScenesClusterCopySceneParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterCopySceneParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @mode@
modeSelector :: Selector '[] (Id NSNumber)
modeSelector = mkSelector "mode"

-- | @Selector@ for @setMode:@
setModeSelector :: Selector '[Id NSNumber] ()
setModeSelector = mkSelector "setMode:"

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

-- | @Selector@ for @groupIdTo@
groupIdToSelector :: Selector '[] (Id NSNumber)
groupIdToSelector = mkSelector "groupIdTo"

-- | @Selector@ for @setGroupIdTo:@
setGroupIdToSelector :: Selector '[Id NSNumber] ()
setGroupIdToSelector = mkSelector "setGroupIdTo:"

-- | @Selector@ for @sceneIdTo@
sceneIdToSelector :: Selector '[] (Id NSNumber)
sceneIdToSelector = mkSelector "sceneIdTo"

-- | @Selector@ for @setSceneIdTo:@
setSceneIdToSelector :: Selector '[Id NSNumber] ()
setSceneIdToSelector = mkSelector "setSceneIdTo:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

