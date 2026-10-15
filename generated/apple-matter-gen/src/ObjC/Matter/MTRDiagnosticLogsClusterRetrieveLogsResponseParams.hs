{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDiagnosticLogsClusterRetrieveLogsResponseParams@.
module ObjC.Matter.MTRDiagnosticLogsClusterRetrieveLogsResponseParams
  ( MTRDiagnosticLogsClusterRetrieveLogsResponseParams
  , IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , content
  , setContent
  , timeStamp
  , setTimeStamp
  , timeSinceBoot
  , setTimeSinceBoot
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , contentSelector
  , copyWithZoneSelector
  , initSelector
  , setContentSelector
  , setStatusSelector
  , setTimeSinceBootSelector
  , setTimeStampSelector
  , setTimedInvokeTimeoutMsSelector
  , statusSelector
  , timeSinceBootSelector
  , timeStampSelector
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
init_ :: IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> IO (Id MTRDiagnosticLogsClusterRetrieveLogsResponseParams)
init_ mtrDiagnosticLogsClusterRetrieveLogsResponseParams =
  sendOwnedMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> Ptr () -> IO RawId
copyWithZone mtrDiagnosticLogsClusterRetrieveLogsResponseParams zone =
  sendOwnedMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> IO (Id NSNumber)
status mtrDiagnosticLogsClusterRetrieveLogsResponseParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams, IsNSNumber value) => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> value -> IO ()
setStatus mtrDiagnosticLogsClusterRetrieveLogsResponseParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams setStatusSelector (toNSNumber value)

-- | @- content@
content :: IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> IO (Id NSData)
content mtrDiagnosticLogsClusterRetrieveLogsResponseParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams contentSelector

-- | @- setContent:@
setContent :: (IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams, IsNSData value) => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> value -> IO ()
setContent mtrDiagnosticLogsClusterRetrieveLogsResponseParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams setContentSelector (toNSData value)

-- | @- timeStamp@
timeStamp :: IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> IO (Id NSNumber)
timeStamp mtrDiagnosticLogsClusterRetrieveLogsResponseParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams timeStampSelector

-- | @- setTimeStamp:@
setTimeStamp :: (IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams, IsNSNumber value) => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> value -> IO ()
setTimeStamp mtrDiagnosticLogsClusterRetrieveLogsResponseParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams setTimeStampSelector (toNSNumber value)

-- | @- timeSinceBoot@
timeSinceBoot :: IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> IO (Id NSNumber)
timeSinceBoot mtrDiagnosticLogsClusterRetrieveLogsResponseParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams timeSinceBootSelector

-- | @- setTimeSinceBoot:@
setTimeSinceBoot :: (IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams, IsNSNumber value) => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> value -> IO ()
setTimeSinceBoot mtrDiagnosticLogsClusterRetrieveLogsResponseParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams setTimeSinceBootSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDiagnosticLogsClusterRetrieveLogsResponseParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDiagnosticLogsClusterRetrieveLogsResponseParams mtrDiagnosticLogsClusterRetrieveLogsResponseParams, IsNSNumber value) => mtrDiagnosticLogsClusterRetrieveLogsResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDiagnosticLogsClusterRetrieveLogsResponseParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDiagnosticLogsClusterRetrieveLogsResponseParams)
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

-- | @Selector@ for @content@
contentSelector :: Selector '[] (Id NSData)
contentSelector = mkSelector "content"

-- | @Selector@ for @setContent:@
setContentSelector :: Selector '[Id NSData] ()
setContentSelector = mkSelector "setContent:"

-- | @Selector@ for @timeStamp@
timeStampSelector :: Selector '[] (Id NSNumber)
timeStampSelector = mkSelector "timeStamp"

-- | @Selector@ for @setTimeStamp:@
setTimeStampSelector :: Selector '[Id NSNumber] ()
setTimeStampSelector = mkSelector "setTimeStamp:"

-- | @Selector@ for @timeSinceBoot@
timeSinceBootSelector :: Selector '[] (Id NSNumber)
timeSinceBootSelector = mkSelector "timeSinceBoot"

-- | @Selector@ for @setTimeSinceBoot:@
setTimeSinceBootSelector :: Selector '[Id NSNumber] ()
setTimeSinceBootSelector = mkSelector "setTimeSinceBoot:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

