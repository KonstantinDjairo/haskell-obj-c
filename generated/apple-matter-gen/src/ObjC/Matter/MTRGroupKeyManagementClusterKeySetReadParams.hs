{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGroupKeyManagementClusterKeySetReadParams@.
module ObjC.Matter.MTRGroupKeyManagementClusterKeySetReadParams
  ( MTRGroupKeyManagementClusterKeySetReadParams
  , IsMTRGroupKeyManagementClusterKeySetReadParams(..)
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
init_ :: IsMTRGroupKeyManagementClusterKeySetReadParams mtrGroupKeyManagementClusterKeySetReadParams => mtrGroupKeyManagementClusterKeySetReadParams -> IO (Id MTRGroupKeyManagementClusterKeySetReadParams)
init_ mtrGroupKeyManagementClusterKeySetReadParams =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetReadParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGroupKeyManagementClusterKeySetReadParams mtrGroupKeyManagementClusterKeySetReadParams => mtrGroupKeyManagementClusterKeySetReadParams -> Ptr () -> IO RawId
copyWithZone mtrGroupKeyManagementClusterKeySetReadParams zone =
  sendOwnedMessage mtrGroupKeyManagementClusterKeySetReadParams copyWithZoneSelector zone

-- | @- groupKeySetID@
groupKeySetID :: IsMTRGroupKeyManagementClusterKeySetReadParams mtrGroupKeyManagementClusterKeySetReadParams => mtrGroupKeyManagementClusterKeySetReadParams -> IO (Id NSNumber)
groupKeySetID mtrGroupKeyManagementClusterKeySetReadParams =
  sendMessage mtrGroupKeyManagementClusterKeySetReadParams groupKeySetIDSelector

-- | @- setGroupKeySetID:@
setGroupKeySetID :: (IsMTRGroupKeyManagementClusterKeySetReadParams mtrGroupKeyManagementClusterKeySetReadParams, IsNSNumber value) => mtrGroupKeyManagementClusterKeySetReadParams -> value -> IO ()
setGroupKeySetID mtrGroupKeyManagementClusterKeySetReadParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetReadParams setGroupKeySetIDSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGroupKeyManagementClusterKeySetReadParams mtrGroupKeyManagementClusterKeySetReadParams => mtrGroupKeyManagementClusterKeySetReadParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetReadParams =
  sendMessage mtrGroupKeyManagementClusterKeySetReadParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGroupKeyManagementClusterKeySetReadParams mtrGroupKeyManagementClusterKeySetReadParams, IsNSNumber value) => mtrGroupKeyManagementClusterKeySetReadParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGroupKeyManagementClusterKeySetReadParams value =
  sendMessage mtrGroupKeyManagementClusterKeySetReadParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGroupKeyManagementClusterKeySetReadParams)
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

