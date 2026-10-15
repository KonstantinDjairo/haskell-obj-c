{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRApplicationLauncherClusterLaunchAppParams@.
module ObjC.Matter.MTRApplicationLauncherClusterLaunchAppParams
  ( MTRApplicationLauncherClusterLaunchAppParams
  , IsMTRApplicationLauncherClusterLaunchAppParams(..)
  , init_
  , copyWithZone
  , application
  , setApplication
  , data_
  , setData
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , applicationSelector
  , copyWithZoneSelector
  , dataSelector
  , initSelector
  , setApplicationSelector
  , setDataSelector
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
init_ :: IsMTRApplicationLauncherClusterLaunchAppParams mtrApplicationLauncherClusterLaunchAppParams => mtrApplicationLauncherClusterLaunchAppParams -> IO (Id MTRApplicationLauncherClusterLaunchAppParams)
init_ mtrApplicationLauncherClusterLaunchAppParams =
  sendOwnedMessage mtrApplicationLauncherClusterLaunchAppParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRApplicationLauncherClusterLaunchAppParams mtrApplicationLauncherClusterLaunchAppParams => mtrApplicationLauncherClusterLaunchAppParams -> Ptr () -> IO RawId
copyWithZone mtrApplicationLauncherClusterLaunchAppParams zone =
  sendOwnedMessage mtrApplicationLauncherClusterLaunchAppParams copyWithZoneSelector zone

-- | @- application@
application :: IsMTRApplicationLauncherClusterLaunchAppParams mtrApplicationLauncherClusterLaunchAppParams => mtrApplicationLauncherClusterLaunchAppParams -> IO (Id MTRApplicationLauncherClusterApplication)
application mtrApplicationLauncherClusterLaunchAppParams =
  sendMessage mtrApplicationLauncherClusterLaunchAppParams applicationSelector

-- | @- setApplication:@
setApplication :: (IsMTRApplicationLauncherClusterLaunchAppParams mtrApplicationLauncherClusterLaunchAppParams, IsMTRApplicationLauncherClusterApplication value) => mtrApplicationLauncherClusterLaunchAppParams -> value -> IO ()
setApplication mtrApplicationLauncherClusterLaunchAppParams value =
  sendMessage mtrApplicationLauncherClusterLaunchAppParams setApplicationSelector (toMTRApplicationLauncherClusterApplication value)

-- | @- data@
data_ :: IsMTRApplicationLauncherClusterLaunchAppParams mtrApplicationLauncherClusterLaunchAppParams => mtrApplicationLauncherClusterLaunchAppParams -> IO (Id NSData)
data_ mtrApplicationLauncherClusterLaunchAppParams =
  sendMessage mtrApplicationLauncherClusterLaunchAppParams dataSelector

-- | @- setData:@
setData :: (IsMTRApplicationLauncherClusterLaunchAppParams mtrApplicationLauncherClusterLaunchAppParams, IsNSData value) => mtrApplicationLauncherClusterLaunchAppParams -> value -> IO ()
setData mtrApplicationLauncherClusterLaunchAppParams value =
  sendMessage mtrApplicationLauncherClusterLaunchAppParams setDataSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRApplicationLauncherClusterLaunchAppParams mtrApplicationLauncherClusterLaunchAppParams => mtrApplicationLauncherClusterLaunchAppParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrApplicationLauncherClusterLaunchAppParams =
  sendMessage mtrApplicationLauncherClusterLaunchAppParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRApplicationLauncherClusterLaunchAppParams mtrApplicationLauncherClusterLaunchAppParams, IsNSNumber value) => mtrApplicationLauncherClusterLaunchAppParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrApplicationLauncherClusterLaunchAppParams value =
  sendMessage mtrApplicationLauncherClusterLaunchAppParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRApplicationLauncherClusterLaunchAppParams)
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

-- | @Selector@ for @data@
dataSelector :: Selector '[] (Id NSData)
dataSelector = mkSelector "data"

-- | @Selector@ for @setData:@
setDataSelector :: Selector '[Id NSData] ()
setDataSelector = mkSelector "setData:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

