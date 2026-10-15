{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDiagnosticLogsClusterRetrieveLogsRequestParams@.
module ObjC.Matter.MTRDiagnosticLogsClusterRetrieveLogsRequestParams
  ( MTRDiagnosticLogsClusterRetrieveLogsRequestParams
  , IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams(..)
  , init_
  , copyWithZone
  , intent
  , setIntent
  , requestedProtocol
  , setRequestedProtocol
  , transferFileDesignator
  , setTransferFileDesignator
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , intentSelector
  , requestedProtocolSelector
  , setIntentSelector
  , setRequestedProtocolSelector
  , setTimedInvokeTimeoutMsSelector
  , setTransferFileDesignatorSelector
  , timedInvokeTimeoutMsSelector
  , transferFileDesignatorSelector


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
init_ :: IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> IO (Id MTRDiagnosticLogsClusterRetrieveLogsRequestParams)
init_ mtrDiagnosticLogsClusterRetrieveLogsRequestParams =
  sendOwnedMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> Ptr () -> IO RawId
copyWithZone mtrDiagnosticLogsClusterRetrieveLogsRequestParams zone =
  sendOwnedMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams copyWithZoneSelector zone

-- | @- intent@
intent :: IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> IO (Id NSNumber)
intent mtrDiagnosticLogsClusterRetrieveLogsRequestParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams intentSelector

-- | @- setIntent:@
setIntent :: (IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams, IsNSNumber value) => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> value -> IO ()
setIntent mtrDiagnosticLogsClusterRetrieveLogsRequestParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams setIntentSelector (toNSNumber value)

-- | @- requestedProtocol@
requestedProtocol :: IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> IO (Id NSNumber)
requestedProtocol mtrDiagnosticLogsClusterRetrieveLogsRequestParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams requestedProtocolSelector

-- | @- setRequestedProtocol:@
setRequestedProtocol :: (IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams, IsNSNumber value) => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> value -> IO ()
setRequestedProtocol mtrDiagnosticLogsClusterRetrieveLogsRequestParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams setRequestedProtocolSelector (toNSNumber value)

-- | @- transferFileDesignator@
transferFileDesignator :: IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> IO (Id NSData)
transferFileDesignator mtrDiagnosticLogsClusterRetrieveLogsRequestParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams transferFileDesignatorSelector

-- | @- setTransferFileDesignator:@
setTransferFileDesignator :: (IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams, IsNSData value) => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> value -> IO ()
setTransferFileDesignator mtrDiagnosticLogsClusterRetrieveLogsRequestParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams setTransferFileDesignatorSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDiagnosticLogsClusterRetrieveLogsRequestParams =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDiagnosticLogsClusterRetrieveLogsRequestParams mtrDiagnosticLogsClusterRetrieveLogsRequestParams, IsNSNumber value) => mtrDiagnosticLogsClusterRetrieveLogsRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDiagnosticLogsClusterRetrieveLogsRequestParams value =
  sendMessage mtrDiagnosticLogsClusterRetrieveLogsRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDiagnosticLogsClusterRetrieveLogsRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @intent@
intentSelector :: Selector '[] (Id NSNumber)
intentSelector = mkSelector "intent"

-- | @Selector@ for @setIntent:@
setIntentSelector :: Selector '[Id NSNumber] ()
setIntentSelector = mkSelector "setIntent:"

-- | @Selector@ for @requestedProtocol@
requestedProtocolSelector :: Selector '[] (Id NSNumber)
requestedProtocolSelector = mkSelector "requestedProtocol"

-- | @Selector@ for @setRequestedProtocol:@
setRequestedProtocolSelector :: Selector '[Id NSNumber] ()
setRequestedProtocolSelector = mkSelector "setRequestedProtocol:"

-- | @Selector@ for @transferFileDesignator@
transferFileDesignatorSelector :: Selector '[] (Id NSData)
transferFileDesignatorSelector = mkSelector "transferFileDesignator"

-- | @Selector@ for @setTransferFileDesignator:@
setTransferFileDesignatorSelector :: Selector '[Id NSData] ()
setTransferFileDesignatorSelector = mkSelector "setTransferFileDesignator:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

