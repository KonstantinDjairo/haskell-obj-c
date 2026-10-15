{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRApplicationLauncherClusterHideAppParams@.
module ObjC.Matter.MTRApplicationLauncherClusterHideAppParams
  ( MTRApplicationLauncherClusterHideAppParams
  , IsMTRApplicationLauncherClusterHideAppParams(..)
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
init_ :: IsMTRApplicationLauncherClusterHideAppParams mtrApplicationLauncherClusterHideAppParams => mtrApplicationLauncherClusterHideAppParams -> IO (Id MTRApplicationLauncherClusterHideAppParams)
init_ mtrApplicationLauncherClusterHideAppParams =
  sendOwnedMessage mtrApplicationLauncherClusterHideAppParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRApplicationLauncherClusterHideAppParams mtrApplicationLauncherClusterHideAppParams => mtrApplicationLauncherClusterHideAppParams -> Ptr () -> IO RawId
copyWithZone mtrApplicationLauncherClusterHideAppParams zone =
  sendOwnedMessage mtrApplicationLauncherClusterHideAppParams copyWithZoneSelector zone

-- | @- application@
application :: IsMTRApplicationLauncherClusterHideAppParams mtrApplicationLauncherClusterHideAppParams => mtrApplicationLauncherClusterHideAppParams -> IO (Id MTRApplicationLauncherClusterApplication)
application mtrApplicationLauncherClusterHideAppParams =
  sendMessage mtrApplicationLauncherClusterHideAppParams applicationSelector

-- | @- setApplication:@
setApplication :: (IsMTRApplicationLauncherClusterHideAppParams mtrApplicationLauncherClusterHideAppParams, IsMTRApplicationLauncherClusterApplication value) => mtrApplicationLauncherClusterHideAppParams -> value -> IO ()
setApplication mtrApplicationLauncherClusterHideAppParams value =
  sendMessage mtrApplicationLauncherClusterHideAppParams setApplicationSelector (toMTRApplicationLauncherClusterApplication value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRApplicationLauncherClusterHideAppParams mtrApplicationLauncherClusterHideAppParams => mtrApplicationLauncherClusterHideAppParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrApplicationLauncherClusterHideAppParams =
  sendMessage mtrApplicationLauncherClusterHideAppParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRApplicationLauncherClusterHideAppParams mtrApplicationLauncherClusterHideAppParams, IsNSNumber value) => mtrApplicationLauncherClusterHideAppParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrApplicationLauncherClusterHideAppParams value =
  sendMessage mtrApplicationLauncherClusterHideAppParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRApplicationLauncherClusterHideAppParams)
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

