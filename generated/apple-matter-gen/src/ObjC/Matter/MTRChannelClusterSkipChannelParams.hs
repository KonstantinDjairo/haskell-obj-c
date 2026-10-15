{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRChannelClusterSkipChannelParams@.
module ObjC.Matter.MTRChannelClusterSkipChannelParams
  ( MTRChannelClusterSkipChannelParams
  , IsMTRChannelClusterSkipChannelParams(..)
  , init_
  , copyWithZone
  , count
  , setCount
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , countSelector
  , initSelector
  , setCountSelector
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
init_ :: IsMTRChannelClusterSkipChannelParams mtrChannelClusterSkipChannelParams => mtrChannelClusterSkipChannelParams -> IO (Id MTRChannelClusterSkipChannelParams)
init_ mtrChannelClusterSkipChannelParams =
  sendOwnedMessage mtrChannelClusterSkipChannelParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRChannelClusterSkipChannelParams mtrChannelClusterSkipChannelParams => mtrChannelClusterSkipChannelParams -> Ptr () -> IO RawId
copyWithZone mtrChannelClusterSkipChannelParams zone =
  sendOwnedMessage mtrChannelClusterSkipChannelParams copyWithZoneSelector zone

-- | @- count@
count :: IsMTRChannelClusterSkipChannelParams mtrChannelClusterSkipChannelParams => mtrChannelClusterSkipChannelParams -> IO (Id NSNumber)
count mtrChannelClusterSkipChannelParams =
  sendMessage mtrChannelClusterSkipChannelParams countSelector

-- | @- setCount:@
setCount :: (IsMTRChannelClusterSkipChannelParams mtrChannelClusterSkipChannelParams, IsNSNumber value) => mtrChannelClusterSkipChannelParams -> value -> IO ()
setCount mtrChannelClusterSkipChannelParams value =
  sendMessage mtrChannelClusterSkipChannelParams setCountSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRChannelClusterSkipChannelParams mtrChannelClusterSkipChannelParams => mtrChannelClusterSkipChannelParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrChannelClusterSkipChannelParams =
  sendMessage mtrChannelClusterSkipChannelParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRChannelClusterSkipChannelParams mtrChannelClusterSkipChannelParams, IsNSNumber value) => mtrChannelClusterSkipChannelParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrChannelClusterSkipChannelParams value =
  sendMessage mtrChannelClusterSkipChannelParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRChannelClusterSkipChannelParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @count@
countSelector :: Selector '[] (Id NSNumber)
countSelector = mkSelector "count"

-- | @Selector@ for @setCount:@
setCountSelector :: Selector '[Id NSNumber] ()
setCountSelector = mkSelector "setCount:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

