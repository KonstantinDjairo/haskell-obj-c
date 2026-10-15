{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupsClusterGetGroupMembershipParams@.
module ObjC.Matter.MTRGroupsClusterGetGroupMembershipParams
  ( MTRGroupsClusterGetGroupMembershipParams
  , IsMTRGroupsClusterGetGroupMembershipParams(..)
  , init_
  , copyWithZone
  , groupList
  , setGroupList
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupListSelector
  , initSelector
  , setGroupListSelector
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
init_ :: IsMTRGroupsClusterGetGroupMembershipParams mtrGroupsClusterGetGroupMembershipParams => mtrGroupsClusterGetGroupMembershipParams -> IO (Id MTRGroupsClusterGetGroupMembershipParams)
init_ mtrGroupsClusterGetGroupMembershipParams =
  sendOwnedMessage mtrGroupsClusterGetGroupMembershipParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupsClusterGetGroupMembershipParams mtrGroupsClusterGetGroupMembershipParams => mtrGroupsClusterGetGroupMembershipParams -> Ptr () -> IO RawId
copyWithZone mtrGroupsClusterGetGroupMembershipParams zone =
  sendOwnedMessage mtrGroupsClusterGetGroupMembershipParams copyWithZoneSelector zone

-- | @- groupList@
groupList :: IsMTRGroupsClusterGetGroupMembershipParams mtrGroupsClusterGetGroupMembershipParams => mtrGroupsClusterGetGroupMembershipParams -> IO (Id NSArray)
groupList mtrGroupsClusterGetGroupMembershipParams =
  sendMessage mtrGroupsClusterGetGroupMembershipParams groupListSelector

-- | @- setGroupList:@
setGroupList :: (IsMTRGroupsClusterGetGroupMembershipParams mtrGroupsClusterGetGroupMembershipParams, IsNSArray value) => mtrGroupsClusterGetGroupMembershipParams -> value -> IO ()
setGroupList mtrGroupsClusterGetGroupMembershipParams value =
  sendMessage mtrGroupsClusterGetGroupMembershipParams setGroupListSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupsClusterGetGroupMembershipParams mtrGroupsClusterGetGroupMembershipParams => mtrGroupsClusterGetGroupMembershipParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupsClusterGetGroupMembershipParams =
  sendMessage mtrGroupsClusterGetGroupMembershipParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupsClusterGetGroupMembershipParams mtrGroupsClusterGetGroupMembershipParams, IsNSNumber value) => mtrGroupsClusterGetGroupMembershipParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupsClusterGetGroupMembershipParams value =
  sendMessage mtrGroupsClusterGetGroupMembershipParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupsClusterGetGroupMembershipParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @groupList@
groupListSelector :: Selector '[] (Id NSArray)
groupListSelector = mkSelector "groupList"

-- | @Selector@ for @setGroupList:@
setGroupListSelector :: Selector '[Id NSArray] ()
setGroupListSelector = mkSelector "setGroupList:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

