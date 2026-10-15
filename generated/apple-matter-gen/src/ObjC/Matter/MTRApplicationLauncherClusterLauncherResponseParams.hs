{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRApplicationLauncherClusterLauncherResponseParams@.
module ObjC.Matter.MTRApplicationLauncherClusterLauncherResponseParams
  ( MTRApplicationLauncherClusterLauncherResponseParams
  , IsMTRApplicationLauncherClusterLauncherResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , data_
  , setData
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , dataSelector
  , initSelector
  , setDataSelector
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
init_ :: IsMTRApplicationLauncherClusterLauncherResponseParams mtrApplicationLauncherClusterLauncherResponseParams => mtrApplicationLauncherClusterLauncherResponseParams -> IO (Id MTRApplicationLauncherClusterLauncherResponseParams)
init_ mtrApplicationLauncherClusterLauncherResponseParams =
  sendOwnedMessage mtrApplicationLauncherClusterLauncherResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRApplicationLauncherClusterLauncherResponseParams mtrApplicationLauncherClusterLauncherResponseParams => mtrApplicationLauncherClusterLauncherResponseParams -> Ptr () -> IO RawId
copyWithZone mtrApplicationLauncherClusterLauncherResponseParams zone =
  sendOwnedMessage mtrApplicationLauncherClusterLauncherResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRApplicationLauncherClusterLauncherResponseParams mtrApplicationLauncherClusterLauncherResponseParams => mtrApplicationLauncherClusterLauncherResponseParams -> IO (Id NSNumber)
status mtrApplicationLauncherClusterLauncherResponseParams =
  sendMessage mtrApplicationLauncherClusterLauncherResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRApplicationLauncherClusterLauncherResponseParams mtrApplicationLauncherClusterLauncherResponseParams, IsNSNumber value) => mtrApplicationLauncherClusterLauncherResponseParams -> value -> IO ()
setStatus mtrApplicationLauncherClusterLauncherResponseParams value =
  sendMessage mtrApplicationLauncherClusterLauncherResponseParams setStatusSelector (toNSNumber value)

-- | @- data@
data_ :: IsMTRApplicationLauncherClusterLauncherResponseParams mtrApplicationLauncherClusterLauncherResponseParams => mtrApplicationLauncherClusterLauncherResponseParams -> IO (Id NSData)
data_ mtrApplicationLauncherClusterLauncherResponseParams =
  sendMessage mtrApplicationLauncherClusterLauncherResponseParams dataSelector

-- | @- setData:@
setData :: (IsMTRApplicationLauncherClusterLauncherResponseParams mtrApplicationLauncherClusterLauncherResponseParams, IsNSData value) => mtrApplicationLauncherClusterLauncherResponseParams -> value -> IO ()
setData mtrApplicationLauncherClusterLauncherResponseParams value =
  sendMessage mtrApplicationLauncherClusterLauncherResponseParams setDataSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRApplicationLauncherClusterLauncherResponseParams mtrApplicationLauncherClusterLauncherResponseParams => mtrApplicationLauncherClusterLauncherResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrApplicationLauncherClusterLauncherResponseParams =
  sendMessage mtrApplicationLauncherClusterLauncherResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRApplicationLauncherClusterLauncherResponseParams mtrApplicationLauncherClusterLauncherResponseParams, IsNSNumber value) => mtrApplicationLauncherClusterLauncherResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrApplicationLauncherClusterLauncherResponseParams value =
  sendMessage mtrApplicationLauncherClusterLauncherResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRApplicationLauncherClusterLauncherResponseParams)
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

-- | @Selector@ for @data@
dataSelector :: Selector '[] (Id NSData)
dataSelector = mkSelector "data"

-- | @Selector@ for @setData:@
setDataSelector :: Selector '[Id NSData] ()
setDataSelector = mkSelector "setData:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

