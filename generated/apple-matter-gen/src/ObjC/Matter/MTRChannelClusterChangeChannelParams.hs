{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRChannelClusterChangeChannelParams@.
module ObjC.Matter.MTRChannelClusterChangeChannelParams
  ( MTRChannelClusterChangeChannelParams
  , IsMTRChannelClusterChangeChannelParams(..)
  , init_
  , copyWithZone
  , match
  , setMatch
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , matchSelector
  , setMatchSelector
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
init_ :: IsMTRChannelClusterChangeChannelParams mtrChannelClusterChangeChannelParams => mtrChannelClusterChangeChannelParams -> IO (Id MTRChannelClusterChangeChannelParams)
init_ mtrChannelClusterChangeChannelParams =
  sendOwnedMessage mtrChannelClusterChangeChannelParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRChannelClusterChangeChannelParams mtrChannelClusterChangeChannelParams => mtrChannelClusterChangeChannelParams -> Ptr () -> IO RawId
copyWithZone mtrChannelClusterChangeChannelParams zone =
  sendOwnedMessage mtrChannelClusterChangeChannelParams copyWithZoneSelector zone

-- | @- match@
match :: IsMTRChannelClusterChangeChannelParams mtrChannelClusterChangeChannelParams => mtrChannelClusterChangeChannelParams -> IO (Id NSString)
match mtrChannelClusterChangeChannelParams =
  sendMessage mtrChannelClusterChangeChannelParams matchSelector

-- | @- setMatch:@
setMatch :: (IsMTRChannelClusterChangeChannelParams mtrChannelClusterChangeChannelParams, IsNSString value) => mtrChannelClusterChangeChannelParams -> value -> IO ()
setMatch mtrChannelClusterChangeChannelParams value =
  sendMessage mtrChannelClusterChangeChannelParams setMatchSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRChannelClusterChangeChannelParams mtrChannelClusterChangeChannelParams => mtrChannelClusterChangeChannelParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrChannelClusterChangeChannelParams =
  sendMessage mtrChannelClusterChangeChannelParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRChannelClusterChangeChannelParams mtrChannelClusterChangeChannelParams, IsNSNumber value) => mtrChannelClusterChangeChannelParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrChannelClusterChangeChannelParams value =
  sendMessage mtrChannelClusterChangeChannelParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRChannelClusterChangeChannelParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @match@
matchSelector :: Selector '[] (Id NSString)
matchSelector = mkSelector "match"

-- | @Selector@ for @setMatch:@
setMatchSelector :: Selector '[Id NSString] ()
setMatchSelector = mkSelector "setMatch:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

