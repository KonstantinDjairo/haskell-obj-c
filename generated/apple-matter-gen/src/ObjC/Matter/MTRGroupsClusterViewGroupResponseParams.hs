{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupsClusterViewGroupResponseParams@.
module ObjC.Matter.MTRGroupsClusterViewGroupResponseParams
  ( MTRGroupsClusterViewGroupResponseParams
  , IsMTRGroupsClusterViewGroupResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
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
init_ :: IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams => mtrGroupsClusterViewGroupResponseParams -> IO (Id MTRGroupsClusterViewGroupResponseParams)
init_ mtrGroupsClusterViewGroupResponseParams =
  sendOwnedMessage mtrGroupsClusterViewGroupResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams => mtrGroupsClusterViewGroupResponseParams -> Ptr () -> IO RawId
copyWithZone mtrGroupsClusterViewGroupResponseParams zone =
  sendOwnedMessage mtrGroupsClusterViewGroupResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams => mtrGroupsClusterViewGroupResponseParams -> IO (Id NSNumber)
status mtrGroupsClusterViewGroupResponseParams =
  sendMessage mtrGroupsClusterViewGroupResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams, IsNSNumber value) => mtrGroupsClusterViewGroupResponseParams -> value -> IO ()
setStatus mtrGroupsClusterViewGroupResponseParams value =
  sendMessage mtrGroupsClusterViewGroupResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams => mtrGroupsClusterViewGroupResponseParams -> IO (Id NSNumber)
groupId mtrGroupsClusterViewGroupResponseParams =
  sendMessage mtrGroupsClusterViewGroupResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams, IsNSNumber value) => mtrGroupsClusterViewGroupResponseParams -> value -> IO ()
setGroupId mtrGroupsClusterViewGroupResponseParams value =
  sendMessage mtrGroupsClusterViewGroupResponseParams setGroupIdSelector (toNSNumber value)

-- | @- groupName@
groupName :: IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams => mtrGroupsClusterViewGroupResponseParams -> IO (Id NSString)
groupName mtrGroupsClusterViewGroupResponseParams =
  sendMessage mtrGroupsClusterViewGroupResponseParams groupNameSelector

-- | @- setGroupName:@
setGroupName :: (IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams, IsNSString value) => mtrGroupsClusterViewGroupResponseParams -> value -> IO ()
setGroupName mtrGroupsClusterViewGroupResponseParams value =
  sendMessage mtrGroupsClusterViewGroupResponseParams setGroupNameSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams => mtrGroupsClusterViewGroupResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupsClusterViewGroupResponseParams =
  sendMessage mtrGroupsClusterViewGroupResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupsClusterViewGroupResponseParams mtrGroupsClusterViewGroupResponseParams, IsNSNumber value) => mtrGroupsClusterViewGroupResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupsClusterViewGroupResponseParams value =
  sendMessage mtrGroupsClusterViewGroupResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupsClusterViewGroupResponseParams)
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

