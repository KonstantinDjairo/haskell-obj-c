{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupKeyManagementClusterKeySetRemoveParams@.
module ObjC.Matter.MTRGroupKeyManagementClusterKeySetRemoveParams
  ( MTRGroupKeyManagementClusterKeySetRemoveParams
  , IsMTRGroupKeyManagementClusterKeySetRemoveParams(..)
  , init_
  , copyWithZone
  , groupKeySetID
  , setGroupKeySetID
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupKeySetIDSelector
  , initSelector
  , setGroupKeySetIDSelector
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
init_ :: IsMTRGroupKeyManagementClusterKeySetRemoveParams mtrGroupKeyManagementClusterKeySetRemoveParams => mtrGroupKeyManagementClusterKeySetRemoveParams -> IO (Id MTRGroupKeyManagementClusterKeySetRemoveParams)
init_ mtrGroupKeyManagementClusterKeySetRemoveParams =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetRemoveParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupKeyManagementClusterKeySetRemoveParams mtrGroupKeyManagementClusterKeySetRemoveParams => mtrGroupKeyManagementClusterKeySetRemoveParams -> Ptr () -> IO RawId
copyWithZone mtrGroupKeyManagementClusterKeySetRemoveParams zone =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetRemoveParams copyWithZoneSelector zone

-- | @- groupKeySetID@
groupKeySetID :: IsMTRGroupKeyManagementClusterKeySetRemoveParams mtrGroupKeyManagementClusterKeySetRemoveParams => mtrGroupKeyManagementClusterKeySetRemoveParams -> IO (Id NSNumber)
groupKeySetID mtrGroupKeyManagementClusterKeySetRemoveParams =
  sendMessage mtrGroupKeyManagementClusterKeySetRemoveParams groupKeySetIDSelector

-- | @- setGroupKeySetID:@
setGroupKeySetID :: (IsMTRGroupKeyManagementClusterKeySetRemoveParams mtrGroupKeyManagementClusterKeySetRemoveParams, IsNSNumber value) => mtrGroupKeyManagementClusterKeySetRemoveParams -> value -> IO ()
setGroupKeySetID mtrGroupKeyManagementClusterKeySetRemoveParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetRemoveParams setGroupKeySetIDSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupKeyManagementClusterKeySetRemoveParams mtrGroupKeyManagementClusterKeySetRemoveParams => mtrGroupKeyManagementClusterKeySetRemoveParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetRemoveParams =
  sendMessage mtrGroupKeyManagementClusterKeySetRemoveParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupKeyManagementClusterKeySetRemoveParams mtrGroupKeyManagementClusterKeySetRemoveParams, IsNSNumber value) => mtrGroupKeyManagementClusterKeySetRemoveParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetRemoveParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetRemoveParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupKeyManagementClusterKeySetRemoveParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @groupKeySetID@
groupKeySetIDSelector :: Selector '[] (Id NSNumber)
groupKeySetIDSelector = mkSelector "groupKeySetID"

-- | @Selector@ for @setGroupKeySetID:@
setGroupKeySetIDSelector :: Selector '[Id NSNumber] ()
setGroupKeySetIDSelector = mkSelector "setGroupKeySetID:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

