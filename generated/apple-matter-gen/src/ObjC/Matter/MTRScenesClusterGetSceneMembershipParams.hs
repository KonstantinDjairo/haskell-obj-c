{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterGetSceneMembershipParams@.
module ObjC.Matter.MTRScenesClusterGetSceneMembershipParams
  ( MTRScenesClusterGetSceneMembershipParams
  , IsMTRScenesClusterGetSceneMembershipParams(..)
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
init_ :: IsMTRScenesClusterGetSceneMembershipParams mtrScenesClusterGetSceneMembershipParams => mtrScenesClusterGetSceneMembershipParams -> IO (Id MTRScenesClusterGetSceneMembershipParams)
init_ mtrScenesClusterGetSceneMembershipParams =
  sendOwnedMessage mtrScenesClusterGetSceneMembershipParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterGetSceneMembershipParams mtrScenesClusterGetSceneMembershipParams => mtrScenesClusterGetSceneMembershipParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterGetSceneMembershipParams zone =
  sendOwnedMessage mtrScenesClusterGetSceneMembershipParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRScenesClusterGetSceneMembershipParams mtrScenesClusterGetSceneMembershipParams => mtrScenesClusterGetSceneMembershipParams -> IO (Id NSNumber)
groupId mtrScenesClusterGetSceneMembershipParams =
  sendMessage mtrScenesClusterGetSceneMembershipParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterGetSceneMembershipParams mtrScenesClusterGetSceneMembershipParams, IsNSNumber value) => mtrScenesClusterGetSceneMembershipParams -> value -> IO ()
setGroupId mtrScenesClusterGetSceneMembershipParams value =
  sendMessage mtrScenesClusterGetSceneMembershipParams setGroupIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterGetSceneMembershipParams mtrScenesClusterGetSceneMembershipParams => mtrScenesClusterGetSceneMembershipParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterGetSceneMembershipParams =
  sendMessage mtrScenesClusterGetSceneMembershipParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterGetSceneMembershipParams mtrScenesClusterGetSceneMembershipParams, IsNSNumber value) => mtrScenesClusterGetSceneMembershipParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterGetSceneMembershipParams value =
  sendMessage mtrScenesClusterGetSceneMembershipParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterGetSceneMembershipParams)
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

