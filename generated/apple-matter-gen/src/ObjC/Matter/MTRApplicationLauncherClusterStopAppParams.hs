{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRApplicationLauncherClusterStopAppParams@.
module ObjC.Matter.MTRApplicationLauncherClusterStopAppParams
  ( MTRApplicationLauncherClusterStopAppParams
  , IsMTRApplicationLauncherClusterStopAppParams(..)
  , init_
  , copyWithZone
  , application
  , setApplication
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , applicationSelector
  , copyWithZoneSelector
  , initSelector
  , setApplicationSelector
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
init_ :: IsMTRApplicationLauncherClusterStopAppParams mtrApplicationLauncherClusterStopAppParams => mtrApplicationLauncherClusterStopAppParams -> IO (Id MTRApplicationLauncherClusterStopAppParams)
init_ mtrApplicationLauncherClusterStopAppParams =
  sendOwnedMessage mtrApplicationLauncherClusterStopAppParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRApplicationLauncherClusterStopAppParams mtrApplicationLauncherClusterStopAppParams => mtrApplicationLauncherClusterStopAppParams -> Ptr () -> IO RawId
copyWithZone mtrApplicationLauncherClusterStopAppParams zone =
  sendOwnedMessage mtrApplicationLauncherClusterStopAppParams copyWithZoneSelector zone

-- | @- application@
application :: IsMTRApplicationLauncherClusterStopAppParams mtrApplicationLauncherClusterStopAppParams => mtrApplicationLauncherClusterStopAppParams -> IO (Id MTRApplicationLauncherClusterApplication)
application mtrApplicationLauncherClusterStopAppParams =
  sendMessage mtrApplicationLauncherClusterStopAppParams applicationSelector

-- | @- setApplication:@
setApplication :: (IsMTRApplicationLauncherClusterStopAppParams mtrApplicationLauncherClusterStopAppParams, IsMTRApplicationLauncherClusterApplication value) => mtrApplicationLauncherClusterStopAppParams -> value -> IO ()
setApplication mtrApplicationLauncherClusterStopAppParams value =
  sendMessage mtrApplicationLauncherClusterStopAppParams setApplicationSelector (toMTRApplicationLauncherClusterApplication value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRApplicationLauncherClusterStopAppParams mtrApplicationLauncherClusterStopAppParams => mtrApplicationLauncherClusterStopAppParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrApplicationLauncherClusterStopAppParams =
  sendMessage mtrApplicationLauncherClusterStopAppParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRApplicationLauncherClusterStopAppParams mtrApplicationLauncherClusterStopAppParams, IsNSNumber value) => mtrApplicationLauncherClusterStopAppParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrApplicationLauncherClusterStopAppParams value =
  sendMessage mtrApplicationLauncherClusterStopAppParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRApplicationLauncherClusterStopAppParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @application@
applicationSelector :: Selector '[] (Id MTRApplicationLauncherClusterApplication)
applicationSelector = mkSelector "application"

-- | @Selector@ for @setApplication:@
setApplicationSelector :: Selector '[Id MTRApplicationLauncherClusterApplication] ()
setApplicationSelector = mkSelector "setApplication:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

