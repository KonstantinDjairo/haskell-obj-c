{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRModeSelectClusterChangeToModeParams@.
module ObjC.Matter.MTRModeSelectClusterChangeToModeParams
  ( MTRModeSelectClusterChangeToModeParams
  , IsMTRModeSelectClusterChangeToModeParams(..)
  , init_
  , copyWithZone
  , newMode
  , setNewMode
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , newModeSelector
  , setNewModeSelector
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
init_ :: IsMTRModeSelectClusterChangeToModeParams mtrModeSelectClusterChangeToModeParams => mtrModeSelectClusterChangeToModeParams -> IO (Id MTRModeSelectClusterChangeToModeParams)
init_ mtrModeSelectClusterChangeToModeParams =
  sendOwnedMessage mtrModeSelectClusterChangeToModeParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRModeSelectClusterChangeToModeParams mtrModeSelectClusterChangeToModeParams => mtrModeSelectClusterChangeToModeParams -> Ptr () -> IO RawId
copyWithZone mtrModeSelectClusterChangeToModeParams zone =
  sendOwnedMessage mtrModeSelectClusterChangeToModeParams copyWithZoneSelector zone

-- | @- newMode@
newMode :: IsMTRModeSelectClusterChangeToModeParams mtrModeSelectClusterChangeToModeParams => mtrModeSelectClusterChangeToModeParams -> IO (Id NSNumber)
newMode mtrModeSelectClusterChangeToModeParams =
  sendOwnedMessage mtrModeSelectClusterChangeToModeParams newModeSelector

-- | @- setNewMode:@
setNewMode :: (IsMTRModeSelectClusterChangeToModeParams mtrModeSelectClusterChangeToModeParams, IsNSNumber value) => mtrModeSelectClusterChangeToModeParams -> value -> IO ()
setNewMode mtrModeSelectClusterChangeToModeParams value =
  sendMessage mtrModeSelectClusterChangeToModeParams setNewModeSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRModeSelectClusterChangeToModeParams mtrModeSelectClusterChangeToModeParams => mtrModeSelectClusterChangeToModeParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrModeSelectClusterChangeToModeParams =
  sendMessage mtrModeSelectClusterChangeToModeParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRModeSelectClusterChangeToModeParams mtrModeSelectClusterChangeToModeParams, IsNSNumber value) => mtrModeSelectClusterChangeToModeParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrModeSelectClusterChangeToModeParams value =
  sendMessage mtrModeSelectClusterChangeToModeParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRModeSelectClusterChangeToModeParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @newMode@
newModeSelector :: Selector '[] (Id NSNumber)
newModeSelector = mkSelector "newMode"

-- | @Selector@ for @setNewMode:@
setNewModeSelector :: Selector '[Id NSNumber] ()
setNewModeSelector = mkSelector "setNewMode:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

