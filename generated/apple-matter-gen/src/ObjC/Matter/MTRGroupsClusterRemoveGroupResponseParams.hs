{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupsClusterRemoveGroupResponseParams@.
module ObjC.Matter.MTRGroupsClusterRemoveGroupResponseParams
  ( MTRGroupsClusterRemoveGroupResponseParams
  , IsMTRGroupsClusterRemoveGroupResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , groupId
  , setGroupId
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupIdSelector
  , initSelector
  , setGroupIdSelector
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
init_ :: IsMTRGroupsClusterRemoveGroupResponseParams mtrGroupsClusterRemoveGroupResponseParams => mtrGroupsClusterRemoveGroupResponseParams -> IO (Id MTRGroupsClusterRemoveGroupResponseParams)
init_ mtrGroupsClusterRemoveGroupResponseParams =
  sendOwnedMessage mtrGroupsClusterRemoveGroupResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupsClusterRemoveGroupResponseParams mtrGroupsClusterRemoveGroupResponseParams => mtrGroupsClusterRemoveGroupResponseParams -> Ptr () -> IO RawId
copyWithZone mtrGroupsClusterRemoveGroupResponseParams zone =
  sendOwnedMessage mtrGroupsClusterRemoveGroupResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRGroupsClusterRemoveGroupResponseParams mtrGroupsClusterRemoveGroupResponseParams => mtrGroupsClusterRemoveGroupResponseParams -> IO (Id NSNumber)
status mtrGroupsClusterRemoveGroupResponseParams =
  sendMessage mtrGroupsClusterRemoveGroupResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRGroupsClusterRemoveGroupResponseParams mtrGroupsClusterRemoveGroupResponseParams, IsNSNumber value) => mtrGroupsClusterRemoveGroupResponseParams -> value -> IO ()
setStatus mtrGroupsClusterRemoveGroupResponseParams value =
  sendMessage mtrGroupsClusterRemoveGroupResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRGroupsClusterRemoveGroupResponseParams mtrGroupsClusterRemoveGroupResponseParams => mtrGroupsClusterRemoveGroupResponseParams -> IO (Id NSNumber)
groupId mtrGroupsClusterRemoveGroupResponseParams =
  sendMessage mtrGroupsClusterRemoveGroupResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRGroupsClusterRemoveGroupResponseParams mtrGroupsClusterRemoveGroupResponseParams, IsNSNumber value) => mtrGroupsClusterRemoveGroupResponseParams -> value -> IO ()
setGroupId mtrGroupsClusterRemoveGroupResponseParams value =
  sendMessage mtrGroupsClusterRemoveGroupResponseParams setGroupIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupsClusterRemoveGroupResponseParams mtrGroupsClusterRemoveGroupResponseParams => mtrGroupsClusterRemoveGroupResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupsClusterRemoveGroupResponseParams =
  sendMessage mtrGroupsClusterRemoveGroupResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupsClusterRemoveGroupResponseParams mtrGroupsClusterRemoveGroupResponseParams, IsNSNumber value) => mtrGroupsClusterRemoveGroupResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupsClusterRemoveGroupResponseParams value =
  sendMessage mtrGroupsClusterRemoveGroupResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupsClusterRemoveGroupResponseParams)
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

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

