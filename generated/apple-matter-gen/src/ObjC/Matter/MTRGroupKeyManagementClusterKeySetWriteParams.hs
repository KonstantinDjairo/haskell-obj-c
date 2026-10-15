{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupKeyManagementClusterKeySetWriteParams@.
module ObjC.Matter.MTRGroupKeyManagementClusterKeySetWriteParams
  ( MTRGroupKeyManagementClusterKeySetWriteParams
  , IsMTRGroupKeyManagementClusterKeySetWriteParams(..)
  , init_
  , copyWithZone
  , groupKeySet
  , setGroupKeySet
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , groupKeySetSelector
  , initSelector
  , setGroupKeySetSelector
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
init_ :: IsMTRGroupKeyManagementClusterKeySetWriteParams mtrGroupKeyManagementClusterKeySetWriteParams => mtrGroupKeyManagementClusterKeySetWriteParams -> IO (Id MTRGroupKeyManagementClusterKeySetWriteParams)
init_ mtrGroupKeyManagementClusterKeySetWriteParams =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetWriteParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupKeyManagementClusterKeySetWriteParams mtrGroupKeyManagementClusterKeySetWriteParams => mtrGroupKeyManagementClusterKeySetWriteParams -> Ptr () -> IO RawId
copyWithZone mtrGroupKeyManagementClusterKeySetWriteParams zone =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetWriteParams copyWithZoneSelector zone

-- | @- groupKeySet@
groupKeySet :: IsMTRGroupKeyManagementClusterKeySetWriteParams mtrGroupKeyManagementClusterKeySetWriteParams => mtrGroupKeyManagementClusterKeySetWriteParams -> IO (Id MTRGroupKeyManagementClusterGroupKeySetStruct)
groupKeySet mtrGroupKeyManagementClusterKeySetWriteParams =
  sendMessage mtrGroupKeyManagementClusterKeySetWriteParams groupKeySetSelector

-- | @- setGroupKeySet:@
setGroupKeySet :: (IsMTRGroupKeyManagementClusterKeySetWriteParams mtrGroupKeyManagementClusterKeySetWriteParams, IsMTRGroupKeyManagementClusterGroupKeySetStruct value) => mtrGroupKeyManagementClusterKeySetWriteParams -> value -> IO ()
setGroupKeySet mtrGroupKeyManagementClusterKeySetWriteParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetWriteParams setGroupKeySetSelector (toMTRGroupKeyManagementClusterGroupKeySetStruct value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupKeyManagementClusterKeySetWriteParams mtrGroupKeyManagementClusterKeySetWriteParams => mtrGroupKeyManagementClusterKeySetWriteParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetWriteParams =
  sendMessage mtrGroupKeyManagementClusterKeySetWriteParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupKeyManagementClusterKeySetWriteParams mtrGroupKeyManagementClusterKeySetWriteParams, IsNSNumber value) => mtrGroupKeyManagementClusterKeySetWriteParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetWriteParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetWriteParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupKeyManagementClusterKeySetWriteParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @groupKeySet@
groupKeySetSelector :: Selector '[] (Id MTRGroupKeyManagementClusterGroupKeySetStruct)
groupKeySetSelector = mkSelector "groupKeySet"

-- | @Selector@ for @setGroupKeySet:@
setGroupKeySetSelector :: Selector '[Id MTRGroupKeyManagementClusterGroupKeySetStruct] ()
setGroupKeySetSelector = mkSelector "setGroupKeySet:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

