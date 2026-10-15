{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRThermostatClusterSetpointRaiseLowerParams@.
module ObjC.Matter.MTRThermostatClusterSetpointRaiseLowerParams
  ( MTRThermostatClusterSetpointRaiseLowerParams
  , IsMTRThermostatClusterSetpointRaiseLowerParams(..)
  , init_
  , copyWithZone
  , mode
  , setMode
  , amount
  , setAmount
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , amountSelector
  , copyWithZoneSelector
  , initSelector
  , modeSelector
  , setAmountSelector
  , setModeSelector
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
init_ :: IsMTRThermostatClusterSetpointRaiseLowerParams mtrThermostatClusterSetpointRaiseLowerParams => mtrThermostatClusterSetpointRaiseLowerParams -> IO (Id MTRThermostatClusterSetpointRaiseLowerParams)
init_ mtrThermostatClusterSetpointRaiseLowerParams =
  sendOwnedMessage mtrThermostatClusterSetpointRaiseLowerParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRThermostatClusterSetpointRaiseLowerParams mtrThermostatClusterSetpointRaiseLowerParams => mtrThermostatClusterSetpointRaiseLowerParams -> Ptr () -> IO RawId
copyWithZone mtrThermostatClusterSetpointRaiseLowerParams zone =
  sendOwnedMessage mtrThermostatClusterSetpointRaiseLowerParams copyWithZoneSelector zone

-- | @- mode@
mode :: IsMTRThermostatClusterSetpointRaiseLowerParams mtrThermostatClusterSetpointRaiseLowerParams => mtrThermostatClusterSetpointRaiseLowerParams -> IO (Id NSNumber)
mode mtrThermostatClusterSetpointRaiseLowerParams =
  sendMessage mtrThermostatClusterSetpointRaiseLowerParams modeSelector

-- | @- setMode:@
setMode :: (IsMTRThermostatClusterSetpointRaiseLowerParams mtrThermostatClusterSetpointRaiseLowerParams, IsNSNumber value) => mtrThermostatClusterSetpointRaiseLowerParams -> value -> IO ()
setMode mtrThermostatClusterSetpointRaiseLowerParams value =
  sendMessage mtrThermostatClusterSetpointRaiseLowerParams setModeSelector (toNSNumber value)

-- | @- amount@
amount :: IsMTRThermostatClusterSetpointRaiseLowerParams mtrThermostatClusterSetpointRaiseLowerParams => mtrThermostatClusterSetpointRaiseLowerParams -> IO (Id NSNumber)
amount mtrThermostatClusterSetpointRaiseLowerParams =
  sendMessage mtrThermostatClusterSetpointRaiseLowerParams amountSelector

-- | @- setAmount:@
setAmount :: (IsMTRThermostatClusterSetpointRaiseLowerParams mtrThermostatClusterSetpointRaiseLowerParams, IsNSNumber value) => mtrThermostatClusterSetpointRaiseLowerParams -> value -> IO ()
setAmount mtrThermostatClusterSetpointRaiseLowerParams value =
  sendMessage mtrThermostatClusterSetpointRaiseLowerParams setAmountSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRThermostatClusterSetpointRaiseLowerParams mtrThermostatClusterSetpointRaiseLowerParams => mtrThermostatClusterSetpointRaiseLowerParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrThermostatClusterSetpointRaiseLowerParams =
  sendMessage mtrThermostatClusterSetpointRaiseLowerParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRThermostatClusterSetpointRaiseLowerParams mtrThermostatClusterSetpointRaiseLowerParams, IsNSNumber value) => mtrThermostatClusterSetpointRaiseLowerParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrThermostatClusterSetpointRaiseLowerParams value =
  sendMessage mtrThermostatClusterSetpointRaiseLowerParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRThermostatClusterSetpointRaiseLowerParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @mode@
modeSelector :: Selector '[] (Id NSNumber)
modeSelector = mkSelector "mode"

-- | @Selector@ for @setMode:@
setModeSelector :: Selector '[Id NSNumber] ()
setModeSelector = mkSelector "setMode:"

-- | @Selector@ for @amount@
amountSelector :: Selector '[] (Id NSNumber)
amountSelector = mkSelector "amount"

-- | @Selector@ for @setAmount:@
setAmountSelector :: Selector '[Id NSNumber] ()
setAmountSelector = mkSelector "setAmount:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

