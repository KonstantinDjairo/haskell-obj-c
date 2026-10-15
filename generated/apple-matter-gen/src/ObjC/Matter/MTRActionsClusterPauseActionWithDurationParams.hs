{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRActionsClusterPauseActionWithDurationParams@.
module ObjC.Matter.MTRActionsClusterPauseActionWithDurationParams
  ( MTRActionsClusterPauseActionWithDurationParams
  , IsMTRActionsClusterPauseActionWithDurationParams(..)
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
init_ :: IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams => mtrActionsClusterPauseActionWithDurationParams -> IO (Id MTRActionsClusterPauseActionWithDurationParams)
init_ mtrActionsClusterPauseActionWithDurationParams =
  sendOwnedMessage mtrActionsClusterPauseActionWithDurationParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams => mtrActionsClusterPauseActionWithDurationParams -> Ptr () -> IO RawId
copyWithZone mtrActionsClusterPauseActionWithDurationParams zone =
  sendOwnedMessage mtrActionsClusterPauseActionWithDurationParams copyWithZoneSelector zone

-- | @- actionID@
actionID :: IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams => mtrActionsClusterPauseActionWithDurationParams -> IO (Id NSNumber)
actionID mtrActionsClusterPauseActionWithDurationParams =
  sendMessage mtrActionsClusterPauseActionWithDurationParams actionIDSelector

-- | @- setActionID:@
setActionID :: (IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams, IsNSNumber value) => mtrActionsClusterPauseActionWithDurationParams -> value -> IO ()
setActionID mtrActionsClusterPauseActionWithDurationParams value =
  sendMessage mtrActionsClusterPauseActionWithDurationParams setActionIDSelector (toNSNumber value)

-- | @- invokeID@
invokeID :: IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams => mtrActionsClusterPauseActionWithDurationParams -> IO (Id NSNumber)
invokeID mtrActionsClusterPauseActionWithDurationParams =
  sendMessage mtrActionsClusterPauseActionWithDurationParams invokeIDSelector

-- | @- setInvokeID:@
setInvokeID :: (IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams, IsNSNumber value) => mtrActionsClusterPauseActionWithDurationParams -> value -> IO ()
setInvokeID mtrActionsClusterPauseActionWithDurationParams value =
  sendMessage mtrActionsClusterPauseActionWithDurationParams setInvokeIDSelector (toNSNumber value)

-- | @- duration@
duration :: IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams => mtrActionsClusterPauseActionWithDurationParams -> IO (Id NSNumber)
duration mtrActionsClusterPauseActionWithDurationParams =
  sendMessage mtrActionsClusterPauseActionWithDurationParams durationSelector

-- | @- setDuration:@
setDuration :: (IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams, IsNSNumber value) => mtrActionsClusterPauseActionWithDurationParams -> value -> IO ()
setDuration mtrActionsClusterPauseActionWithDurationParams value =
  sendMessage mtrActionsClusterPauseActionWithDurationParams setDurationSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams => mtrActionsClusterPauseActionWithDurationParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrActionsClusterPauseActionWithDurationParams =
  sendMessage mtrActionsClusterPauseActionWithDurationParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRActionsClusterPauseActionWithDurationParams mtrActionsClusterPauseActionWithDurationParams, IsNSNumber value) => mtrActionsClusterPauseActionWithDurationParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrActionsClusterPauseActionWithDurationParams value =
  sendMessage mtrActionsClusterPauseActionWithDurationParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRActionsClusterPauseActionWithDurationParams)
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

