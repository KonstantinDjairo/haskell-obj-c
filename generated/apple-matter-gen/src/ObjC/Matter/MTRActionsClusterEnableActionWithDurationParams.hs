{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRActionsClusterEnableActionWithDurationParams@.
module ObjC.Matter.MTRActionsClusterEnableActionWithDurationParams
  ( MTRActionsClusterEnableActionWithDurationParams
  , IsMTRActionsClusterEnableActionWithDurationParams(..)
  , init_
  , copyWithZone
  , actionID
  , setActionID
  , invokeID
  , setInvokeID
  , duration
  , setDuration
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , actionIDSelector
  , copyWithZoneSelector
  , durationSelector
  , initSelector
  , invokeIDSelector
  , setActionIDSelector
  , setDurationSelector
  , setInvokeIDSelector
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
init_ :: IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams => mtrActionsClusterEnableActionWithDurationParams -> IO (Id MTRActionsClusterEnableActionWithDurationParams)
init_ mtrActionsClusterEnableActionWithDurationParams =
  sendOwnedMessage mtrActionsClusterEnableActionWithDurationParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams => mtrActionsClusterEnableActionWithDurationParams -> Ptr () -> IO RawId
copyWithZone mtrActionsClusterEnableActionWithDurationParams zone =
  sendOwnedMessage mtrActionsClusterEnableActionWithDurationParams copyWithZoneSelector zone

-- | @- actionID@
actionID :: IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams => mtrActionsClusterEnableActionWithDurationParams -> IO (Id NSNumber)
actionID mtrActionsClusterEnableActionWithDurationParams =
  sendMessage mtrActionsClusterEnableActionWithDurationParams actionIDSelector

-- | @- setActionID:@
setActionID :: (IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams, IsNSNumber value) => mtrActionsClusterEnableActionWithDurationParams -> value -> IO ()
setActionID mtrActionsClusterEnableActionWithDurationParams value =
  sendMessage mtrActionsClusterEnableActionWithDurationParams setActionIDSelector (toNSNumber value)

-- | @- invokeID@
invokeID :: IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams => mtrActionsClusterEnableActionWithDurationParams -> IO (Id NSNumber)
invokeID mtrActionsClusterEnableActionWithDurationParams =
  sendMessage mtrActionsClusterEnableActionWithDurationParams invokeIDSelector

-- | @- setInvokeID:@
setInvokeID :: (IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams, IsNSNumber value) => mtrActionsClusterEnableActionWithDurationParams -> value -> IO ()
setInvokeID mtrActionsClusterEnableActionWithDurationParams value =
  sendMessage mtrActionsClusterEnableActionWithDurationParams setInvokeIDSelector (toNSNumber value)

-- | @- duration@
duration :: IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams => mtrActionsClusterEnableActionWithDurationParams -> IO (Id NSNumber)
duration mtrActionsClusterEnableActionWithDurationParams =
  sendMessage mtrActionsClusterEnableActionWithDurationParams durationSelector

-- | @- setDuration:@
setDuration :: (IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams, IsNSNumber value) => mtrActionsClusterEnableActionWithDurationParams -> value -> IO ()
setDuration mtrActionsClusterEnableActionWithDurationParams value =
  sendMessage mtrActionsClusterEnableActionWithDurationParams setDurationSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams => mtrActionsClusterEnableActionWithDurationParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrActionsClusterEnableActionWithDurationParams =
  sendMessage mtrActionsClusterEnableActionWithDurationParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRActionsClusterEnableActionWithDurationParams mtrActionsClusterEnableActionWithDurationParams, IsNSNumber value) => mtrActionsClusterEnableActionWithDurationParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrActionsClusterEnableActionWithDurationParams value =
  sendMessage mtrActionsClusterEnableActionWithDurationParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRActionsClusterEnableActionWithDurationParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @actionID@
actionIDSelector :: Selector '[] (Id NSNumber)
actionIDSelector = mkSelector "actionID"

-- | @Selector@ for @setActionID:@
setActionIDSelector :: Selector '[Id NSNumber] ()
setActionIDSelector = mkSelector "setActionID:"

-- | @Selector@ for @invokeID@
invokeIDSelector :: Selector '[] (Id NSNumber)
invokeIDSelector = mkSelector "invokeID"

-- | @Selector@ for @setInvokeID:@
setInvokeIDSelector :: Selector '[Id NSNumber] ()
setInvokeIDSelector = mkSelector "setInvokeID:"

-- | @Selector@ for @duration@
durationSelector :: Selector '[] (Id NSNumber)
durationSelector = mkSelector "duration"

-- | @Selector@ for @setDuration:@
setDurationSelector :: Selector '[Id NSNumber] ()
setDurationSelector = mkSelector "setDuration:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

