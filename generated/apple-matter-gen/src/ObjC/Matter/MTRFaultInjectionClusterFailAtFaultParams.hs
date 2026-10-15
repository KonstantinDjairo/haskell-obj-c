{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRFaultInjectionClusterFailAtFaultParams@.
module ObjC.Matter.MTRFaultInjectionClusterFailAtFaultParams
  ( MTRFaultInjectionClusterFailAtFaultParams
  , IsMTRFaultInjectionClusterFailAtFaultParams(..)
  , init_
  , copyWithZone
  , type_
  , setType
  , id_
  , setId
  , numCallsToSkip
  , setNumCallsToSkip
  , numCallsToFail
  , setNumCallsToFail
  , takeMutex
  , setTakeMutex
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , idSelector
  , initSelector
  , numCallsToFailSelector
  , numCallsToSkipSelector
  , setIdSelector
  , setNumCallsToFailSelector
  , setNumCallsToSkipSelector
  , setTakeMutexSelector
  , setTimedInvokeTimeoutMsSelector
  , setTypeSelector
  , takeMutexSelector
  , timedInvokeTimeoutMsSelector
  , typeSelector


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
init_ :: IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams => mtrFaultInjectionClusterFailAtFaultParams -> IO (Id MTRFaultInjectionClusterFailAtFaultParams)
init_ mtrFaultInjectionClusterFailAtFaultParams =
  sendOwnedMessage mtrFaultInjectionClusterFailAtFaultParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams => mtrFaultInjectionClusterFailAtFaultParams -> Ptr () -> IO RawId
copyWithZone mtrFaultInjectionClusterFailAtFaultParams zone =
  sendOwnedMessage mtrFaultInjectionClusterFailAtFaultParams copyWithZoneSelector zone

-- | @- type@
type_ :: IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams => mtrFaultInjectionClusterFailAtFaultParams -> IO (Id NSNumber)
type_ mtrFaultInjectionClusterFailAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams typeSelector

-- | @- setType:@
setType :: (IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailAtFaultParams -> value -> IO ()
setType mtrFaultInjectionClusterFailAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams setTypeSelector (toNSNumber value)

-- | @- id@
id_ :: IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams => mtrFaultInjectionClusterFailAtFaultParams -> IO (Id NSNumber)
id_ mtrFaultInjectionClusterFailAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams idSelector

-- | @- setId:@
setId :: (IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailAtFaultParams -> value -> IO ()
setId mtrFaultInjectionClusterFailAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams setIdSelector (toNSNumber value)

-- | @- numCallsToSkip@
numCallsToSkip :: IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams => mtrFaultInjectionClusterFailAtFaultParams -> IO (Id NSNumber)
numCallsToSkip mtrFaultInjectionClusterFailAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams numCallsToSkipSelector

-- | @- setNumCallsToSkip:@
setNumCallsToSkip :: (IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailAtFaultParams -> value -> IO ()
setNumCallsToSkip mtrFaultInjectionClusterFailAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams setNumCallsToSkipSelector (toNSNumber value)

-- | @- numCallsToFail@
numCallsToFail :: IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams => mtrFaultInjectionClusterFailAtFaultParams -> IO (Id NSNumber)
numCallsToFail mtrFaultInjectionClusterFailAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams numCallsToFailSelector

-- | @- setNumCallsToFail:@
setNumCallsToFail :: (IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailAtFaultParams -> value -> IO ()
setNumCallsToFail mtrFaultInjectionClusterFailAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams setNumCallsToFailSelector (toNSNumber value)

-- | @- takeMutex@
takeMutex :: IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams => mtrFaultInjectionClusterFailAtFaultParams -> IO (Id NSNumber)
takeMutex mtrFaultInjectionClusterFailAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams takeMutexSelector

-- | @- setTakeMutex:@
setTakeMutex :: (IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailAtFaultParams -> value -> IO ()
setTakeMutex mtrFaultInjectionClusterFailAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams setTakeMutexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams => mtrFaultInjectionClusterFailAtFaultParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrFaultInjectionClusterFailAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRFaultInjectionClusterFailAtFaultParams mtrFaultInjectionClusterFailAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailAtFaultParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrFaultInjectionClusterFailAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailAtFaultParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRFaultInjectionClusterFailAtFaultParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @type@
typeSelector :: Selector '[] (Id NSNumber)
typeSelector = mkSelector "type"

-- | @Selector@ for @setType:@
setTypeSelector :: Selector '[Id NSNumber] ()
setTypeSelector = mkSelector "setType:"

-- | @Selector@ for @id@
idSelector :: Selector '[] (Id NSNumber)
idSelector = mkSelector "id"

-- | @Selector@ for @setId:@
setIdSelector :: Selector '[Id NSNumber] ()
setIdSelector = mkSelector "setId:"

-- | @Selector@ for @numCallsToSkip@
numCallsToSkipSelector :: Selector '[] (Id NSNumber)
numCallsToSkipSelector = mkSelector "numCallsToSkip"

-- | @Selector@ for @setNumCallsToSkip:@
setNumCallsToSkipSelector :: Selector '[Id NSNumber] ()
setNumCallsToSkipSelector = mkSelector "setNumCallsToSkip:"

-- | @Selector@ for @numCallsToFail@
numCallsToFailSelector :: Selector '[] (Id NSNumber)
numCallsToFailSelector = mkSelector "numCallsToFail"

-- | @Selector@ for @setNumCallsToFail:@
setNumCallsToFailSelector :: Selector '[Id NSNumber] ()
setNumCallsToFailSelector = mkSelector "setNumCallsToFail:"

-- | @Selector@ for @takeMutex@
takeMutexSelector :: Selector '[] (Id NSNumber)
takeMutexSelector = mkSelector "takeMutex"

-- | @Selector@ for @setTakeMutex:@
setTakeMutexSelector :: Selector '[Id NSNumber] ()
setTakeMutexSelector = mkSelector "setTakeMutex:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

