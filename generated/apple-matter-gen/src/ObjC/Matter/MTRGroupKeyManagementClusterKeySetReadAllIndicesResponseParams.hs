{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams@.
module ObjC.Matter.MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams
  ( MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams
  , IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams(..)
  , init_
  , copyWithZone
  , groupKeySetIDs
  , setGroupKeySetIDs
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupKeySetIDsSelector
  , initSelector
  , setGroupKeySetIDsSelector
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
init_ :: IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams => mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams -> IO (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams)
init_ mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams => mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams -> Ptr () -> IO RawId
copyWithZone mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams zone =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams copyWithZoneSelector zone

-- | @- groupKeySetIDs@
groupKeySetIDs :: IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams => mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams -> IO (Id NSArray)
groupKeySetIDs mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams =
  sendMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams groupKeySetIDsSelector

-- | @- setGroupKeySetIDs:@
setGroupKeySetIDs :: (IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams, IsNSArray value) => mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams -> value -> IO ()
setGroupKeySetIDs mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams setGroupKeySetIDsSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams => mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams =
  sendMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams, IsNSNumber value) => mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @groupKeySetIDs@
groupKeySetIDsSelector :: Selector '[] (Id NSArray)
groupKeySetIDsSelector = mkSelector "groupKeySetIDs"

-- | @Selector@ for @setGroupKeySetIDs:@
setGroupKeySetIDsSelector :: Selector '[Id NSArray] ()
setGroupKeySetIDsSelector = mkSelector "setGroupKeySetIDs:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

