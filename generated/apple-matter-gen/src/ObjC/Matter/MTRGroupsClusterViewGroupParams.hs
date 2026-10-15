{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupsClusterViewGroupParams@.
module ObjC.Matter.MTRGroupsClusterViewGroupParams
  ( MTRGroupsClusterViewGroupParams
  , IsMTRGroupsClusterViewGroupParams(..)
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
init_ :: IsMTRGroupsClusterViewGroupParams mtrGroupsClusterViewGroupParams => mtrGroupsClusterViewGroupParams -> IO (Id MTRGroupsClusterViewGroupParams)
init_ mtrGroupsClusterViewGroupParams =
  sendOwnedMessage mtrGroupsClusterViewGroupParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupsClusterViewGroupParams mtrGroupsClusterViewGroupParams => mtrGroupsClusterViewGroupParams -> Ptr () -> IO RawId
copyWithZone mtrGroupsClusterViewGroupParams zone =
  sendOwnedMessage mtrGroupsClusterViewGroupParams copyWithZoneSelector zone

-- | @- groupId@
groupId :: IsMTRGroupsClusterViewGroupParams mtrGroupsClusterViewGroupParams => mtrGroupsClusterViewGroupParams -> IO (Id NSNumber)
groupId mtrGroupsClusterViewGroupParams =
  sendMessage mtrGroupsClusterViewGroupParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRGroupsClusterViewGroupParams mtrGroupsClusterViewGroupParams, IsNSNumber value) => mtrGroupsClusterViewGroupParams -> value -> IO ()
setGroupId mtrGroupsClusterViewGroupParams value =
  sendMessage mtrGroupsClusterViewGroupParams setGroupIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupsClusterViewGroupParams mtrGroupsClusterViewGroupParams => mtrGroupsClusterViewGroupParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupsClusterViewGroupParams =
  sendMessage mtrGroupsClusterViewGroupParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupsClusterViewGroupParams mtrGroupsClusterViewGroupParams, IsNSNumber value) => mtrGroupsClusterViewGroupParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupsClusterViewGroupParams value =
  sendMessage mtrGroupsClusterViewGroupParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupsClusterViewGroupParams)
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

