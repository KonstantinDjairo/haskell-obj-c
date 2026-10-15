{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRNetworkCommissioningClusterConnectNetworkResponseParams@.
module ObjC.Matter.MTRNetworkCommissioningClusterConnectNetworkResponseParams
  ( MTRNetworkCommissioningClusterConnectNetworkResponseParams
  , IsMTRNetworkCommissioningClusterConnectNetworkResponseParams(..)
  , init_
  , copyWithZone
  , networkingStatus
  , setNetworkingStatus
  , debugText
  , setDebugText
  , errorValue
  , setErrorValue
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , debugTextSelector
  , errorValueSelector
  , initSelector
  , networkingStatusSelector
  , setDebugTextSelector
  , setErrorValueSelector
  , setNetworkingStatusSelector
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
init_ :: IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> IO (Id MTRNetworkCommissioningClusterConnectNetworkResponseParams)
init_ mtrNetworkCommissioningClusterConnectNetworkResponseParams =
  sendOwnedMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> Ptr () -> IO RawId
copyWithZone mtrNetworkCommissioningClusterConnectNetworkResponseParams zone =
  sendOwnedMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams copyWithZoneSelector zone

-- | @- networkingStatus@
networkingStatus :: IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> IO (Id NSNumber)
networkingStatus mtrNetworkCommissioningClusterConnectNetworkResponseParams =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams networkingStatusSelector

-- | @- setNetworkingStatus:@
setNetworkingStatus :: (IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams, IsNSNumber value) => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> value -> IO ()
setNetworkingStatus mtrNetworkCommissioningClusterConnectNetworkResponseParams value =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams setNetworkingStatusSelector (toNSNumber value)

-- | @- debugText@
debugText :: IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> IO (Id NSString)
debugText mtrNetworkCommissioningClusterConnectNetworkResponseParams =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams debugTextSelector

-- | @- setDebugText:@
setDebugText :: (IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams, IsNSString value) => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> value -> IO ()
setDebugText mtrNetworkCommissioningClusterConnectNetworkResponseParams value =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams setDebugTextSelector (toNSString value)

-- | @- errorValue@
errorValue :: IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> IO (Id NSNumber)
errorValue mtrNetworkCommissioningClusterConnectNetworkResponseParams =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams errorValueSelector

-- | @- setErrorValue:@
setErrorValue :: (IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams, IsNSNumber value) => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> value -> IO ()
setErrorValue mtrNetworkCommissioningClusterConnectNetworkResponseParams value =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams setErrorValueSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrNetworkCommissioningClusterConnectNetworkResponseParams =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRNetworkCommissioningClusterConnectNetworkResponseParams mtrNetworkCommissioningClusterConnectNetworkResponseParams, IsNSNumber value) => mtrNetworkCommissioningClusterConnectNetworkResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrNetworkCommissioningClusterConnectNetworkResponseParams value =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRNetworkCommissioningClusterConnectNetworkResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @networkingStatus@
networkingStatusSelector :: Selector '[] (Id NSNumber)
networkingStatusSelector = mkSelector "networkingStatus"

-- | @Selector@ for @setNetworkingStatus:@
setNetworkingStatusSelector :: Selector '[Id NSNumber] ()
setNetworkingStatusSelector = mkSelector "setNetworkingStatus:"

-- | @Selector@ for @debugText@
debugTextSelector :: Selector '[] (Id NSString)
debugTextSelector = mkSelector "debugText"

-- | @Selector@ for @setDebugText:@
setDebugTextSelector :: Selector '[Id NSString] ()
setDebugTextSelector = mkSelector "setDebugText:"

-- | @Selector@ for @errorValue@
errorValueSelector :: Selector '[] (Id NSNumber)
errorValueSelector = mkSelector "errorValue"

-- | @Selector@ for @setErrorValue:@
setErrorValueSelector :: Selector '[Id NSNumber] ()
setErrorValueSelector = mkSelector "setErrorValue:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

