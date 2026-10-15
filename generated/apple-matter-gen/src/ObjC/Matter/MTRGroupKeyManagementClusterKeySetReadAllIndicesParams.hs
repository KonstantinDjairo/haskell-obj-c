{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupKeyManagementClusterKeySetReadAllIndicesParams@.
module ObjC.Matter.MTRGroupKeyManagementClusterKeySetReadAllIndicesParams
  ( MTRGroupKeyManagementClusterKeySetReadAllIndicesParams
  , IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams(..)
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
init_ :: IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams mtrGroupKeyManagementClusterKeySetReadAllIndicesParams => mtrGroupKeyManagementClusterKeySetReadAllIndicesParams -> IO (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesParams)
init_ mtrGroupKeyManagementClusterKeySetReadAllIndicesParams =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams mtrGroupKeyManagementClusterKeySetReadAllIndicesParams => mtrGroupKeyManagementClusterKeySetReadAllIndicesParams -> Ptr () -> IO RawId
copyWithZone mtrGroupKeyManagementClusterKeySetReadAllIndicesParams zone =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesParams copyWithZoneSelector zone

-- | @- groupKeySetIDs@
groupKeySetIDs :: IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams mtrGroupKeyManagementClusterKeySetReadAllIndicesParams => mtrGroupKeyManagementClusterKeySetReadAllIndicesParams -> IO (Id NSArray)
groupKeySetIDs mtrGroupKeyManagementClusterKeySetReadAllIndicesParams =
  sendMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesParams groupKeySetIDsSelector

-- | @- setGroupKeySetIDs:@
setGroupKeySetIDs :: (IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams mtrGroupKeyManagementClusterKeySetReadAllIndicesParams, IsNSArray value) => mtrGroupKeyManagementClusterKeySetReadAllIndicesParams -> value -> IO ()
setGroupKeySetIDs mtrGroupKeyManagementClusterKeySetReadAllIndicesParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesParams setGroupKeySetIDsSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams mtrGroupKeyManagementClusterKeySetReadAllIndicesParams => mtrGroupKeyManagementClusterKeySetReadAllIndicesParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetReadAllIndicesParams =
  sendMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupKeyManagementClusterKeySetReadAllIndicesParams mtrGroupKeyManagementClusterKeySetReadAllIndicesParams, IsNSNumber value) => mtrGroupKeyManagementClusterKeySetReadAllIndicesParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetReadAllIndicesParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetReadAllIndicesParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupKeyManagementClusterKeySetReadAllIndicesParams)
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

