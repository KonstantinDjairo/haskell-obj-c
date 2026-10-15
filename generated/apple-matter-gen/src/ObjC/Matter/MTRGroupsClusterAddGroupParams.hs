{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupsClusterAddGroupParams@.
module ObjC.Matter.MTRGroupsClusterAddGroupParams
  ( MTRGroupsClusterAddGroupParams
  , IsMTRGroupsClusterAddGroupParams(..)
  , init_
  , copyWithZone
  , groupId
  , setGroupId
  , groupName
  , setGroupName
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupIdSelector
  , groupNameSelector
  , initSelector
  , setGroupIdSelector
  , setGroupNameSelector
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
init_ :: IsMTRGroupsClusterAddGroupParams mtrGroupsClusterAddGroupParams => mtrGroupsClusterAddGroupParams -> IO (Id MTRGroupsClusterAddGroupParams)
init_ mtrGroupsClusterAddGroupParams =
  sendOwnedMessage mtrGroupsClusterAddGroupParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupsClusterAddGroupParams mtrGroupsClusterAddGroupParams => mtrGroupsClusterAddGroupParams -> Ptr () -> IO RawId
copyWithZone mtrGroupsClusterAddGroupParams zone =
  sendOwnedMessage mtrGroupsClusterAddGroupParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRGroupsClusterAddGroupParams mtrGroupsClusterAddGroupParams => mtrGroupsClusterAddGroupParams -> IO (Id NSNumber)
groupId mtrGroupsClusterAddGroupParams =
  sendMessage mtrGroupsClusterAddGroupParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRGroupsClusterAddGroupParams mtrGroupsClusterAddGroupParams, IsNSNumber value) => mtrGroupsClusterAddGroupParams -> value -> IO ()
setGroupId mtrGroupsClusterAddGroupParams value =
  sendMessage mtrGroupsClusterAddGroupParams setGroupIdSelector (toNSNumber value)

-- | @- groupName@
groupName :: IsMTRGroupsClusterAddGroupParams mtrGroupsClusterAddGroupParams => mtrGroupsClusterAddGroupParams -> IO (Id NSString)
groupName mtrGroupsClusterAddGroupParams =
  sendMessage mtrGroupsClusterAddGroupParams groupNameSelector

-- | @- setGroupName:@
setGroupName :: (IsMTRGroupsClusterAddGroupParams mtrGroupsClusterAddGroupParams, IsNSString value) => mtrGroupsClusterAddGroupParams -> value -> IO ()
setGroupName mtrGroupsClusterAddGroupParams value =
  sendMessage mtrGroupsClusterAddGroupParams setGroupNameSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupsClusterAddGroupParams mtrGroupsClusterAddGroupParams => mtrGroupsClusterAddGroupParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupsClusterAddGroupParams =
  sendMessage mtrGroupsClusterAddGroupParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupsClusterAddGroupParams mtrGroupsClusterAddGroupParams, IsNSNumber value) => mtrGroupsClusterAddGroupParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupsClusterAddGroupParams value =
  sendMessage mtrGroupsClusterAddGroupParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupsClusterAddGroupParams)
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

-- | @Selector@ for @groupName@
groupNameSelector :: Selector '[] (Id NSString)
groupNameSelector = mkSelector "groupName"

-- | @Selector@ for @setGroupName:@
setGroupNameSelector :: Selector '[Id NSString] ()
setGroupNameSelector = mkSelector "setGroupName:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

