{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams@.
module ObjC.Matter.MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams
  ( MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams
  , IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams(..)
  , init_
  , copyWithZone
  , commissioningTimeout
  , setCommissioningTimeout
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , commissioningTimeoutSelector
  , copyWithZoneSelector
  , initSelector
  , setCommissioningTimeoutSelector
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
init_ :: IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams -> IO (Id MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams)
init_ mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams =
  sendOwnedMessage mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams -> Ptr () -> IO RawId
copyWithZone mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams zone =
  sendOwnedMessage mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams copyWithZoneSelector zone

-- | @- commissioningTimeout@
commissioningTimeout :: IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams -> IO (Id NSNumber)
commissioningTimeout mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams =
  sendMessage mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams commissioningTimeoutSelector

-- | @- setCommissioningTimeout:@
setCommissioningTimeout :: (IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams, IsNSNumber value) => mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams -> value -> IO ()
setCommissioningTimeout mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams value =
  sendMessage mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams setCommissioningTimeoutSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams => mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams =
  sendMessage mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams, IsNSNumber value) => mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams value =
  sendMessage mtrAdministratorCommissioningClusterOpenBasicCommissioningWindowParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @commissioningTimeout@
commissioningTimeoutSelector :: Selector '[] (Id NSNumber)
commissioningTimeoutSelector = mkSelector "commissioningTimeout"

-- | @Selector@ for @setCommissioningTimeout:@
setCommissioningTimeoutSelector :: Selector '[Id NSNumber] ()
setCommissioningTimeoutSelector = mkSelector "setCommissioningTimeout:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

