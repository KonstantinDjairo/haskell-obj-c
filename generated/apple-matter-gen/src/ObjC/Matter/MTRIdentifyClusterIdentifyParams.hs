{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRIdentifyClusterIdentifyParams@.
module ObjC.Matter.MTRIdentifyClusterIdentifyParams
  ( MTRIdentifyClusterIdentifyParams
  , IsMTRIdentifyClusterIdentifyParams(..)
  , init_
  , copyWithZone
  , identifyTime
  , setIdentifyTime
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , identifyTimeSelector
  , initSelector
  , setIdentifyTimeSelector
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
init_ :: IsMTRIdentifyClusterIdentifyParams mtrIdentifyClusterIdentifyParams => mtrIdentifyClusterIdentifyParams -> IO (Id MTRIdentifyClusterIdentifyParams)
init_ mtrIdentifyClusterIdentifyParams =
  sendOwnedMessage mtrIdentifyClusterIdentifyParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRIdentifyClusterIdentifyParams mtrIdentifyClusterIdentifyParams => mtrIdentifyClusterIdentifyParams -> Ptr () -> IO RawId
copyWithZone mtrIdentifyClusterIdentifyParams zone =
  sendOwnedMessage mtrIdentifyClusterIdentifyParams copyWithZoneSelector zone

-- | @- identifyTime@
identifyTime :: IsMTRIdentifyClusterIdentifyParams mtrIdentifyClusterIdentifyParams => mtrIdentifyClusterIdentifyParams -> IO (Id NSNumber)
identifyTime mtrIdentifyClusterIdentifyParams =
  sendMessage mtrIdentifyClusterIdentifyParams identifyTimeSelector

-- | @- setIdentifyTime:@
setIdentifyTime :: (IsMTRIdentifyClusterIdentifyParams mtrIdentifyClusterIdentifyParams, IsNSNumber value) => mtrIdentifyClusterIdentifyParams -> value -> IO ()
setIdentifyTime mtrIdentifyClusterIdentifyParams value =
  sendMessage mtrIdentifyClusterIdentifyParams setIdentifyTimeSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRIdentifyClusterIdentifyParams mtrIdentifyClusterIdentifyParams => mtrIdentifyClusterIdentifyParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrIdentifyClusterIdentifyParams =
  sendMessage mtrIdentifyClusterIdentifyParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRIdentifyClusterIdentifyParams mtrIdentifyClusterIdentifyParams, IsNSNumber value) => mtrIdentifyClusterIdentifyParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrIdentifyClusterIdentifyParams value =
  sendMessage mtrIdentifyClusterIdentifyParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRIdentifyClusterIdentifyParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @identifyTime@
identifyTimeSelector :: Selector '[] (Id NSNumber)
identifyTimeSelector = mkSelector "identifyTime"

-- | @Selector@ for @setIdentifyTime:@
setIdentifyTimeSelector :: Selector '[Id NSNumber] ()
setIdentifyTimeSelector = mkSelector "setIdentifyTime:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

