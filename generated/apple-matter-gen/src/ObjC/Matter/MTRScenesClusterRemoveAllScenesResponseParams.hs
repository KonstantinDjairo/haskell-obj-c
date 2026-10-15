{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRScenesClusterRemoveAllScenesResponseParams@.
module ObjC.Matter.MTRScenesClusterRemoveAllScenesResponseParams
  ( MTRScenesClusterRemoveAllScenesResponseParams
  , IsMTRScenesClusterRemoveAllScenesResponseParams(..)
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
init_ :: IsMTRScenesClusterRemoveAllScenesResponseParams mtrScenesClusterRemoveAllScenesResponseParams => mtrScenesClusterRemoveAllScenesResponseParams -> IO (Id MTRScenesClusterRemoveAllScenesResponseParams)
init_ mtrScenesClusterRemoveAllScenesResponseParams =
  sendOwnedMessage mtrScenesClusterRemoveAllScenesResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRScenesClusterRemoveAllScenesResponseParams mtrScenesClusterRemoveAllScenesResponseParams => mtrScenesClusterRemoveAllScenesResponseParams -> Ptr () -> IO RawId
copyWithZone mtrScenesClusterRemoveAllScenesResponseParams zone =
  sendOwnedMessage mtrScenesClusterRemoveAllScenesResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRScenesClusterRemoveAllScenesResponseParams mtrScenesClusterRemoveAllScenesResponseParams => mtrScenesClusterRemoveAllScenesResponseParams -> IO (Id NSNumber)
status mtrScenesClusterRemoveAllScenesResponseParams =
  sendMessage mtrScenesClusterRemoveAllScenesResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRScenesClusterRemoveAllScenesResponseParams mtrScenesClusterRemoveAllScenesResponseParams, IsNSNumber value) => mtrScenesClusterRemoveAllScenesResponseParams -> value -> IO ()
setStatus mtrScenesClusterRemoveAllScenesResponseParams value =
  sendMessage mtrScenesClusterRemoveAllScenesResponseParams setStatusSelector (toNSNumber value)

-- | @- groupId@
groupId :: IsMTRScenesClusterRemoveAllScenesResponseParams mtrScenesClusterRemoveAllScenesResponseParams => mtrScenesClusterRemoveAllScenesResponseParams -> IO (Id NSNumber)
groupId mtrScenesClusterRemoveAllScenesResponseParams =
  sendMessage mtrScenesClusterRemoveAllScenesResponseParams groupIdSelector

-- | @- setGroupId:@
setGroupId :: (IsMTRScenesClusterRemoveAllScenesResponseParams mtrScenesClusterRemoveAllScenesResponseParams, IsNSNumber value) => mtrScenesClusterRemoveAllScenesResponseParams -> value -> IO ()
setGroupId mtrScenesClusterRemoveAllScenesResponseParams value =
  sendMessage mtrScenesClusterRemoveAllScenesResponseParams setGroupIdSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRScenesClusterRemoveAllScenesResponseParams mtrScenesClusterRemoveAllScenesResponseParams => mtrScenesClusterRemoveAllScenesResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrScenesClusterRemoveAllScenesResponseParams =
  sendMessage mtrScenesClusterRemoveAllScenesResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRScenesClusterRemoveAllScenesResponseParams mtrScenesClusterRemoveAllScenesResponseParams, IsNSNumber value) => mtrScenesClusterRemoveAllScenesResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrScenesClusterRemoveAllScenesResponseParams value =
  sendMessage mtrScenesClusterRemoveAllScenesResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRScenesClusterRemoveAllScenesResponseParams)
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

