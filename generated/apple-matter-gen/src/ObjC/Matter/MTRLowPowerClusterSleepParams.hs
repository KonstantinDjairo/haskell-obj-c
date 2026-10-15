{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRLowPowerClusterSleepParams@.
module ObjC.Matter.MTRLowPowerClusterSleepParams
  ( MTRLowPowerClusterSleepParams
  , IsMTRLowPowerClusterSleepParams(..)
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
init_ :: IsMTRLowPowerClusterSleepParams mtrLowPowerClusterSleepParams => mtrLowPowerClusterSleepParams -> IO (Id MTRLowPowerClusterSleepParams)
init_ mtrLowPowerClusterSleepParams =
  sendOwnedMessage mtrLowPowerClusterSleepParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRLowPowerClusterSleepParams mtrLowPowerClusterSleepParams => mtrLowPowerClusterSleepParams -> Ptr () -> IO RawId
copyWithZone mtrLowPowerClusterSleepParams zone =
  sendOwnedMessage mtrLowPowerClusterSleepParams copyWithZoneSelector zone

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRLowPowerClusterSleepParams mtrLowPowerClusterSleepParams => mtrLowPowerClusterSleepParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrLowPowerClusterSleepParams =
  sendMessage mtrLowPowerClusterSleepParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRLowPowerClusterSleepParams mtrLowPowerClusterSleepParams, IsNSNumber value) => mtrLowPowerClusterSleepParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrLowPowerClusterSleepParams value =
  sendMessage mtrLowPowerClusterSleepParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRLowPowerClusterSleepParams)
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

