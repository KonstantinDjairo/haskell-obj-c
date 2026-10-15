{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBasicClusterMfgSpecificPingParams@.
module ObjC.Matter.MTRBasicClusterMfgSpecificPingParams
  ( MTRBasicClusterMfgSpecificPingParams
  , IsMTRBasicClusterMfgSpecificPingParams(..)
  , init_
  , copyWithZone
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
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
init_ :: IsMTRBasicClusterMfgSpecificPingParams mtrBasicClusterMfgSpecificPingParams => mtrBasicClusterMfgSpecificPingParams -> IO (Id MTRBasicClusterMfgSpecificPingParams)
init_ mtrBasicClusterMfgSpecificPingParams =
  sendOwnedMessage mtrBasicClusterMfgSpecificPingParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBasicClusterMfgSpecificPingParams mtrBasicClusterMfgSpecificPingParams => mtrBasicClusterMfgSpecificPingParams -> Ptr () -> IO RawId
copyWithZone mtrBasicClusterMfgSpecificPingParams zone =
  sendOwnedMessage mtrBasicClusterMfgSpecificPingParams copyWithZoneSelector zone

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRBasicClusterMfgSpecificPingParams mtrBasicClusterMfgSpecificPingParams => mtrBasicClusterMfgSpecificPingParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrBasicClusterMfgSpecificPingParams =
  sendMessage mtrBasicClusterMfgSpecificPingParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRBasicClusterMfgSpecificPingParams mtrBasicClusterMfgSpecificPingParams, IsNSNumber value) => mtrBasicClusterMfgSpecificPingParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrBasicClusterMfgSpecificPingParams value =
  sendMessage mtrBasicClusterMfgSpecificPingParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBasicClusterMfgSpecificPingParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

