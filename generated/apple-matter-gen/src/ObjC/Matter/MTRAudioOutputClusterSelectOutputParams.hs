{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAudioOutputClusterSelectOutputParams@.
module ObjC.Matter.MTRAudioOutputClusterSelectOutputParams
  ( MTRAudioOutputClusterSelectOutputParams
  , IsMTRAudioOutputClusterSelectOutputParams(..)
  , init_
  , copyWithZone
  , index
  , setIndex
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , indexSelector
  , initSelector
  , setIndexSelector
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
init_ :: IsMTRAudioOutputClusterSelectOutputParams mtrAudioOutputClusterSelectOutputParams => mtrAudioOutputClusterSelectOutputParams -> IO (Id MTRAudioOutputClusterSelectOutputParams)
init_ mtrAudioOutputClusterSelectOutputParams =
  sendOwnedMessage mtrAudioOutputClusterSelectOutputParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAudioOutputClusterSelectOutputParams mtrAudioOutputClusterSelectOutputParams => mtrAudioOutputClusterSelectOutputParams -> Ptr () -> IO RawId
copyWithZone mtrAudioOutputClusterSelectOutputParams zone =
  sendOwnedMessage mtrAudioOutputClusterSelectOutputParams copyWithZoneSelector zone

-- | @- index@
index :: IsMTRAudioOutputClusterSelectOutputParams mtrAudioOutputClusterSelectOutputParams => mtrAudioOutputClusterSelectOutputParams -> IO (Id NSNumber)
index mtrAudioOutputClusterSelectOutputParams =
  sendMessage mtrAudioOutputClusterSelectOutputParams indexSelector

-- | @- setIndex:@
setIndex :: (IsMTRAudioOutputClusterSelectOutputParams mtrAudioOutputClusterSelectOutputParams, IsNSNumber value) => mtrAudioOutputClusterSelectOutputParams -> value -> IO ()
setIndex mtrAudioOutputClusterSelectOutputParams value =
  sendMessage mtrAudioOutputClusterSelectOutputParams setIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRAudioOutputClusterSelectOutputParams mtrAudioOutputClusterSelectOutputParams => mtrAudioOutputClusterSelectOutputParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrAudioOutputClusterSelectOutputParams =
  sendMessage mtrAudioOutputClusterSelectOutputParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRAudioOutputClusterSelectOutputParams mtrAudioOutputClusterSelectOutputParams, IsNSNumber value) => mtrAudioOutputClusterSelectOutputParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrAudioOutputClusterSelectOutputParams value =
  sendMessage mtrAudioOutputClusterSelectOutputParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAudioOutputClusterSelectOutputParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @index@
indexSelector :: Selector '[] (Id NSNumber)
indexSelector = mkSelector "index"

-- | @Selector@ for @setIndex:@
setIndexSelector :: Selector '[Id NSNumber] ()
setIndexSelector = mkSelector "setIndex:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

