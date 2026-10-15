{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterRemoveAllScenesParams@.
module ObjC.Matter.MTRScenesClusterRemoveAllScenesParams
  ( MTRScenesClusterRemoveAllScenesParams
  , IsMTRScenesClusterRemoveAllScenesParams(..)
  , init_
  , copyWithZone
  , groupId
  , setGroupId
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupIdSelector
  , initSelector
  , setGroupIdSelector
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
init_ :: IsMTRScenesClusterRemoveAllScenesParams mtrScenesClusterRemoveAllScenesParams => mtrScenesClusterRemoveAllScenesParams -> IO (Id MTRScenesClusterRemoveAllScenesParams)
init_ mtrScenesClusterRemoveAllScenesParams =
  sendOwnedMessage mtrScenesClusterRemoveAllScenesParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterRemoveAllScenesParams mtrScenesClusterRemoveAllScenesParams => mtrScenesClusterRemoveAllScenesParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterRemoveAllScenesParams zone =
  sendOwnedMessage mtrScenesClusterRemoveAllScenesParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRScenesClusterRemoveAllScenesParams mtrScenesClusterRemoveAllScenesParams => mtrScenesClusterRemoveAllScenesParams -> IO (Id NSNumber)
groupId mtrScenesClusterRemoveAllScenesParams =
  sendMessage mtrScenesClusterRemoveAllScenesParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterRemoveAllScenesParams mtrScenesClusterRemoveAllScenesParams, IsNSNumber value) => mtrScenesClusterRemoveAllScenesParams -> value -> IO ()
setGroupId mtrScenesClusterRemoveAllScenesParams value =
  sendMessage mtrScenesClusterRemoveAllScenesParams setGroupIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterRemoveAllScenesParams mtrScenesClusterRemoveAllScenesParams => mtrScenesClusterRemoveAllScenesParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterRemoveAllScenesParams =
  sendMessage mtrScenesClusterRemoveAllScenesParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterRemoveAllScenesParams mtrScenesClusterRemoveAllScenesParams, IsNSNumber value) => mtrScenesClusterRemoveAllScenesParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterRemoveAllScenesParams value =
  sendMessage mtrScenesClusterRemoveAllScenesParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterRemoveAllScenesParams)
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

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

