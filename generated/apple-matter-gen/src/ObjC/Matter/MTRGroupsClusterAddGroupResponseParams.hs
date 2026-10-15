{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupsClusterAddGroupResponseParams@.
module ObjC.Matter.MTRGroupsClusterAddGroupResponseParams
  ( MTRGroupsClusterAddGroupResponseParams
  , IsMTRGroupsClusterAddGroupResponseParams(..)
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
init_ :: IsMTRGroupsClusterAddGroupResponseParams mtrGroupsClusterAddGroupResponseParams => mtrGroupsClusterAddGroupResponseParams -> IO (Id MTRGroupsClusterAddGroupResponseParams)
init_ mtrGroupsClusterAddGroupResponseParams =
  sendOwnedMessage mtrGroupsClusterAddGroupResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupsClusterAddGroupResponseParams mtrGroupsClusterAddGroupResponseParams => mtrGroupsClusterAddGroupResponseParams -> Ptr () -> IO RawId
copyWithZone mtrGroupsClusterAddGroupResponseParams zone =
  sendOwnedMessage mtrGroupsClusterAddGroupResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRGroupsClusterAddGroupResponseParams mtrGroupsClusterAddGroupResponseParams => mtrGroupsClusterAddGroupResponseParams -> IO (Id NSNumber)
status mtrGroupsClusterAddGroupResponseParams =
  sendMessage mtrGroupsClusterAddGroupResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRGroupsClusterAddGroupResponseParams mtrGroupsClusterAddGroupResponseParams, IsNSNumber value) => mtrGroupsClusterAddGroupResponseParams -> value -> IO ()
setStatus mtrGroupsClusterAddGroupResponseParams value =
  sendMessage mtrGroupsClusterAddGroupResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRGroupsClusterAddGroupResponseParams mtrGroupsClusterAddGroupResponseParams => mtrGroupsClusterAddGroupResponseParams -> IO (Id NSNumber)
groupId mtrGroupsClusterAddGroupResponseParams =
  sendMessage mtrGroupsClusterAddGroupResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRGroupsClusterAddGroupResponseParams mtrGroupsClusterAddGroupResponseParams, IsNSNumber value) => mtrGroupsClusterAddGroupResponseParams -> value -> IO ()
setGroupId mtrGroupsClusterAddGroupResponseParams value =
  sendMessage mtrGroupsClusterAddGroupResponseParams setGroupIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupsClusterAddGroupResponseParams mtrGroupsClusterAddGroupResponseParams => mtrGroupsClusterAddGroupResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupsClusterAddGroupResponseParams =
  sendMessage mtrGroupsClusterAddGroupResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupsClusterAddGroupResponseParams mtrGroupsClusterAddGroupResponseParams, IsNSNumber value) => mtrGroupsClusterAddGroupResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupsClusterAddGroupResponseParams value =
  sendMessage mtrGroupsClusterAddGroupResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupsClusterAddGroupResponseParams)
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

