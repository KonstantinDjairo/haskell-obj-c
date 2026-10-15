{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAudioOutputClusterRenameOutputParams@.
module ObjC.Matter.MTRAudioOutputClusterRenameOutputParams
  ( MTRAudioOutputClusterRenameOutputParams
  , IsMTRAudioOutputClusterRenameOutputParams(..)
  , init_
  , copyWithZone
  , index
  , setIndex
  , name
  , setName
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , indexSelector
  , initSelector
  , nameSelector
  , setIndexSelector
  , setNameSelector
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
init_ :: IsMTRAudioOutputClusterRenameOutputParams mtrAudioOutputClusterRenameOutputParams => mtrAudioOutputClusterRenameOutputParams -> IO (Id MTRAudioOutputClusterRenameOutputParams)
init_ mtrAudioOutputClusterRenameOutputParams =
  sendOwnedMessage mtrAudioOutputClusterRenameOutputParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAudioOutputClusterRenameOutputParams mtrAudioOutputClusterRenameOutputParams => mtrAudioOutputClusterRenameOutputParams -> Ptr () -> IO RawId
copyWithZone mtrAudioOutputClusterRenameOutputParams zone =
  sendOwnedMessage mtrAudioOutputClusterRenameOutputParams copyWithZoneSelector zone

-- | @- index@
index :: IsMTRAudioOutputClusterRenameOutputParams mtrAudioOutputClusterRenameOutputParams => mtrAudioOutputClusterRenameOutputParams -> IO (Id NSNumber)
index mtrAudioOutputClusterRenameOutputParams =
  sendMessage mtrAudioOutputClusterRenameOutputParams indexSelector

-- | @- setIndex:@
setIndex :: (IsMTRAudioOutputClusterRenameOutputParams mtrAudioOutputClusterRenameOutputParams, IsNSNumber value) => mtrAudioOutputClusterRenameOutputParams -> value -> IO ()
setIndex mtrAudioOutputClusterRenameOutputParams value =
  sendMessage mtrAudioOutputClusterRenameOutputParams setIndexSelector (toNSNumber value)

-- | @- name@
name :: IsMTRAudioOutputClusterRenameOutputParams mtrAudioOutputClusterRenameOutputParams => mtrAudioOutputClusterRenameOutputParams -> IO (Id NSString)
name mtrAudioOutputClusterRenameOutputParams =
  sendMessage mtrAudioOutputClusterRenameOutputParams nameSelector

-- | @- setName:@
setName :: (IsMTRAudioOutputClusterRenameOutputParams mtrAudioOutputClusterRenameOutputParams, IsNSString value) => mtrAudioOutputClusterRenameOutputParams -> value -> IO ()
setName mtrAudioOutputClusterRenameOutputParams value =
  sendMessage mtrAudioOutputClusterRenameOutputParams setNameSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRAudioOutputClusterRenameOutputParams mtrAudioOutputClusterRenameOutputParams => mtrAudioOutputClusterRenameOutputParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrAudioOutputClusterRenameOutputParams =
  sendMessage mtrAudioOutputClusterRenameOutputParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRAudioOutputClusterRenameOutputParams mtrAudioOutputClusterRenameOutputParams, IsNSNumber value) => mtrAudioOutputClusterRenameOutputParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrAudioOutputClusterRenameOutputParams value =
  sendMessage mtrAudioOutputClusterRenameOutputParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAudioOutputClusterRenameOutputParams)
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

-- | @Selector@ for @name@
nameSelector :: Selector '[] (Id NSString)
nameSelector = mkSelector "name"

-- | @Selector@ for @setName:@
setNameSelector :: Selector '[Id NSString] ()
setNameSelector = mkSelector "setName:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

