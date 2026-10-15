{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams@.
module ObjC.Matter.MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams
  ( MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams
  , IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams(..)
  , init_
  , copyWithZone
  , action
  , setAction
  , delayedActionTime
  , setDelayedActionTime
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , actionSelector
  , copyWithZoneSelector
  , delayedActionTimeSelector
  , initSelector
  , setActionSelector
  , setDelayedActionTimeSelector
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
init_ :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams -> IO (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams)
init_ mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams zone =
  sendOwnedMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams copyWithZoneSelector zone

-- | @- action@
action :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams -> IO (Id NSNumber)
action mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams actionSelector

-- | @- setAction:@
setAction :: (IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams -> value -> IO ()
setAction mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams setActionSelector (toNSNumber value)

-- | @- delayedActionTime@
delayedActionTime :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams -> IO (Id NSNumber)
delayedActionTime mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams delayedActionTimeSelector

-- | @- setDelayedActionTime:@
setDelayedActionTime :: (IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams -> value -> IO ()
setDelayedActionTime mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams setDelayedActionTimeSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams => mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams, IsNSNumber value) => mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams value =
  sendMessage mtrOtaSoftwareUpdateProviderClusterApplyUpdateResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateProviderClusterApplyUpdateResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @action@
actionSelector :: Selector '[] (Id NSNumber)
actionSelector = mkSelector "action"

-- | @Selector@ for @setAction:@
setActionSelector :: Selector '[Id NSNumber] ()
setActionSelector = mkSelector "setAction:"

-- | @Selector@ for @delayedActionTime@
delayedActionTimeSelector :: Selector '[] (Id NSNumber)
delayedActionTimeSelector = mkSelector "delayedActionTime"

-- | @Selector@ for @setDelayedActionTime:@
setDelayedActionTimeSelector :: Selector '[Id NSNumber] ()
setDelayedActionTimeSelector = mkSelector "setDelayedActionTime:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

