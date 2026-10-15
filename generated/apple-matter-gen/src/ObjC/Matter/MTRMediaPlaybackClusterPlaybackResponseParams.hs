{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRMediaPlaybackClusterPlaybackResponseParams@.
module ObjC.Matter.MTRMediaPlaybackClusterPlaybackResponseParams
  ( MTRMediaPlaybackClusterPlaybackResponseParams
  , IsMTRMediaPlaybackClusterPlaybackResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , data_
  , setData
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , dataSelector
  , initSelector
  , setDataSelector
  , setStatusSelector
  , setTimedInvokeTimeoutMsSelector
  , statusSelector
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
init_ :: IsMTRMediaPlaybackClusterPlaybackResponseParams mtrMediaPlaybackClusterPlaybackResponseParams => mtrMediaPlaybackClusterPlaybackResponseParams -> IO (Id MTRMediaPlaybackClusterPlaybackResponseParams)
init_ mtrMediaPlaybackClusterPlaybackResponseParams =
  sendOwnedMessage mtrMediaPlaybackClusterPlaybackResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRMediaPlaybackClusterPlaybackResponseParams mtrMediaPlaybackClusterPlaybackResponseParams => mtrMediaPlaybackClusterPlaybackResponseParams -> Ptr () -> IO RawId
copyWithZone mtrMediaPlaybackClusterPlaybackResponseParams zone =
  sendOwnedMessage mtrMediaPlaybackClusterPlaybackResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRMediaPlaybackClusterPlaybackResponseParams mtrMediaPlaybackClusterPlaybackResponseParams => mtrMediaPlaybackClusterPlaybackResponseParams -> IO (Id NSNumber)
status mtrMediaPlaybackClusterPlaybackResponseParams =
  sendMessage mtrMediaPlaybackClusterPlaybackResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRMediaPlaybackClusterPlaybackResponseParams mtrMediaPlaybackClusterPlaybackResponseParams, IsNSNumber value) => mtrMediaPlaybackClusterPlaybackResponseParams -> value -> IO ()
setStatus mtrMediaPlaybackClusterPlaybackResponseParams value =
  sendMessage mtrMediaPlaybackClusterPlaybackResponseParams setStatusSelector (toNSNumber value)

-- | @- data@
data_ :: IsMTRMediaPlaybackClusterPlaybackResponseParams mtrMediaPlaybackClusterPlaybackResponseParams => mtrMediaPlaybackClusterPlaybackResponseParams -> IO (Id NSString)
data_ mtrMediaPlaybackClusterPlaybackResponseParams =
  sendMessage mtrMediaPlaybackClusterPlaybackResponseParams dataSelector

-- | @- setData:@
setData :: (IsMTRMediaPlaybackClusterPlaybackResponseParams mtrMediaPlaybackClusterPlaybackResponseParams, IsNSString value) => mtrMediaPlaybackClusterPlaybackResponseParams -> value -> IO ()
setData mtrMediaPlaybackClusterPlaybackResponseParams value =
  sendMessage mtrMediaPlaybackClusterPlaybackResponseParams setDataSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRMediaPlaybackClusterPlaybackResponseParams mtrMediaPlaybackClusterPlaybackResponseParams => mtrMediaPlaybackClusterPlaybackResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrMediaPlaybackClusterPlaybackResponseParams =
  sendMessage mtrMediaPlaybackClusterPlaybackResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRMediaPlaybackClusterPlaybackResponseParams mtrMediaPlaybackClusterPlaybackResponseParams, IsNSNumber value) => mtrMediaPlaybackClusterPlaybackResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrMediaPlaybackClusterPlaybackResponseParams value =
  sendMessage mtrMediaPlaybackClusterPlaybackResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRMediaPlaybackClusterPlaybackResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @status@
statusSelector :: Selector '[] (Id NSNumber)
statusSelector = mkSelector "status"

-- | @Selector@ for @setStatus:@
setStatusSelector :: Selector '[Id NSNumber] ()
setStatusSelector = mkSelector "setStatus:"

-- | @Selector@ for @data@
dataSelector :: Selector '[] (Id NSString)
dataSelector = mkSelector "data"

-- | @Selector@ for @setData:@
setDataSelector :: Selector '[Id NSString] ()
setDataSelector = mkSelector "setData:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

