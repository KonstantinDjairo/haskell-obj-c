{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupsClusterAddGroupIfIdentifyingParams@.
module ObjC.Matter.MTRGroupsClusterAddGroupIfIdentifyingParams
  ( MTRGroupsClusterAddGroupIfIdentifyingParams
  , IsMTRGroupsClusterAddGroupIfIdentifyingParams(..)
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
init_ :: IsMTRGroupsClusterAddGroupIfIdentifyingParams mtrGroupsClusterAddGroupIfIdentifyingParams => mtrGroupsClusterAddGroupIfIdentifyingParams -> IO (Id MTRGroupsClusterAddGroupIfIdentifyingParams)
init_ mtrGroupsClusterAddGroupIfIdentifyingParams =
  sendOwnedMessage mtrGroupsClusterAddGroupIfIdentifyingParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupsClusterAddGroupIfIdentifyingParams mtrGroupsClusterAddGroupIfIdentifyingParams => mtrGroupsClusterAddGroupIfIdentifyingParams -> Ptr () -> IO RawId
copyWithZone mtrGroupsClusterAddGroupIfIdentifyingParams zone =
  sendOwnedMessage mtrGroupsClusterAddGroupIfIdentifyingParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRGroupsClusterAddGroupIfIdentifyingParams mtrGroupsClusterAddGroupIfIdentifyingParams => mtrGroupsClusterAddGroupIfIdentifyingParams -> IO (Id NSNumber)
groupId mtrGroupsClusterAddGroupIfIdentifyingParams =
  sendMessage mtrGroupsClusterAddGroupIfIdentifyingParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRGroupsClusterAddGroupIfIdentifyingParams mtrGroupsClusterAddGroupIfIdentifyingParams, IsNSNumber value) => mtrGroupsClusterAddGroupIfIdentifyingParams -> value -> IO ()
setGroupId mtrGroupsClusterAddGroupIfIdentifyingParams value =
  sendMessage mtrGroupsClusterAddGroupIfIdentifyingParams setGroupIdSelector (toNSNumber value)

-- | @- groupName@
groupName :: IsMTRGroupsClusterAddGroupIfIdentifyingParams mtrGroupsClusterAddGroupIfIdentifyingParams => mtrGroupsClusterAddGroupIfIdentifyingParams -> IO (Id NSString)
groupName mtrGroupsClusterAddGroupIfIdentifyingParams =
  sendMessage mtrGroupsClusterAddGroupIfIdentifyingParams groupNameSelector

-- | @- setGroupName:@
setGroupName :: (IsMTRGroupsClusterAddGroupIfIdentifyingParams mtrGroupsClusterAddGroupIfIdentifyingParams, IsNSString value) => mtrGroupsClusterAddGroupIfIdentifyingParams -> value -> IO ()
setGroupName mtrGroupsClusterAddGroupIfIdentifyingParams value =
  sendMessage mtrGroupsClusterAddGroupIfIdentifyingParams setGroupNameSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupsClusterAddGroupIfIdentifyingParams mtrGroupsClusterAddGroupIfIdentifyingParams => mtrGroupsClusterAddGroupIfIdentifyingParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupsClusterAddGroupIfIdentifyingParams =
  sendMessage mtrGroupsClusterAddGroupIfIdentifyingParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupsClusterAddGroupIfIdentifyingParams mtrGroupsClusterAddGroupIfIdentifyingParams, IsNSNumber value) => mtrGroupsClusterAddGroupIfIdentifyingParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupsClusterAddGroupIfIdentifyingParams value =
  sendMessage mtrGroupsClusterAddGroupIfIdentifyingParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupsClusterAddGroupIfIdentifyingParams)
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

