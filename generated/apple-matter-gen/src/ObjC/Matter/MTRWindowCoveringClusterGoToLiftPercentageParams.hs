{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRWindowCoveringClusterGoToLiftPercentageParams@.
module ObjC.Matter.MTRWindowCoveringClusterGoToLiftPercentageParams
  ( MTRWindowCoveringClusterGoToLiftPercentageParams
  , IsMTRWindowCoveringClusterGoToLiftPercentageParams(..)
  , init_
  , copyWithZone
  , liftPercent100thsValue
  , setLiftPercent100thsValue
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , liftPercent100thsValueSelector
  , setLiftPercent100thsValueSelector
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
init_ :: IsMTRWindowCoveringClusterGoToLiftPercentageParams mtrWindowCoveringClusterGoToLiftPercentageParams => mtrWindowCoveringClusterGoToLiftPercentageParams -> IO (Id MTRWindowCoveringClusterGoToLiftPercentageParams)
init_ mtrWindowCoveringClusterGoToLiftPercentageParams =
  sendOwnedMessage mtrWindowCoveringClusterGoToLiftPercentageParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRWindowCoveringClusterGoToLiftPercentageParams mtrWindowCoveringClusterGoToLiftPercentageParams => mtrWindowCoveringClusterGoToLiftPercentageParams -> Ptr () -> IO RawId
copyWithZone mtrWindowCoveringClusterGoToLiftPercentageParams zone =
  sendOwnedMessage mtrWindowCoveringClusterGoToLiftPercentageParams copyWithZoneSelector zone

-- | @- liftPercent100thsValue@
liftPercent100thsValue :: IsMTRWindowCoveringClusterGoToLiftPercentageParams mtrWindowCoveringClusterGoToLiftPercentageParams => mtrWindowCoveringClusterGoToLiftPercentageParams -> IO (Id NSNumber)
liftPercent100thsValue mtrWindowCoveringClusterGoToLiftPercentageParams =
  sendMessage mtrWindowCoveringClusterGoToLiftPercentageParams liftPercent100thsValueSelector

-- | @- setLiftPercent100thsValue:@
setLiftPercent100thsValue :: (IsMTRWindowCoveringClusterGoToLiftPercentageParams mtrWindowCoveringClusterGoToLiftPercentageParams, IsNSNumber value) => mtrWindowCoveringClusterGoToLiftPercentageParams -> value -> IO ()
setLiftPercent100thsValue mtrWindowCoveringClusterGoToLiftPercentageParams value =
  sendMessage mtrWindowCoveringClusterGoToLiftPercentageParams setLiftPercent100thsValueSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRWindowCoveringClusterGoToLiftPercentageParams mtrWindowCoveringClusterGoToLiftPercentageParams => mtrWindowCoveringClusterGoToLiftPercentageParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrWindowCoveringClusterGoToLiftPercentageParams =
  sendMessage mtrWindowCoveringClusterGoToLiftPercentageParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRWindowCoveringClusterGoToLiftPercentageParams mtrWindowCoveringClusterGoToLiftPercentageParams, IsNSNumber value) => mtrWindowCoveringClusterGoToLiftPercentageParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrWindowCoveringClusterGoToLiftPercentageParams value =
  sendMessage mtrWindowCoveringClusterGoToLiftPercentageParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRWindowCoveringClusterGoToLiftPercentageParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @liftPercent100thsValue@
liftPercent100thsValueSelector :: Selector '[] (Id NSNumber)
liftPercent100thsValueSelector = mkSelector "liftPercent100thsValue"

-- | @Selector@ for @setLiftPercent100thsValue:@
setLiftPercent100thsValueSelector :: Selector '[Id NSNumber] ()
setLiftPercent100thsValueSelector = mkSelector "setLiftPercent100thsValue:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

