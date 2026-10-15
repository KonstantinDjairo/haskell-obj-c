{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams@.
module ObjC.Matter.MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams
  ( MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams
  , IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams(..)
  , init_
  , copyWithZone
  , errorCode
  , setErrorCode
  , debugText
  , setDebugText
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , debugTextSelector
  , errorCodeSelector
  , initSelector
  , setDebugTextSelector
  , setErrorCodeSelector
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
init_ :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams => mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams -> IO (Id MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams)
init_ mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams =
  sendOwnedMessage mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams => mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams -> Ptr () -> IO RawId
copyWithZone mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams zone =
  sendOwnedMessage mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams copyWithZoneSelector zone

-- | @- errorCode@
errorCode :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams => mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams -> IO (Id NSNumber)
errorCode mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams errorCodeSelector

-- | @- setErrorCode:@
setErrorCode :: (IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams, IsNSNumber value) => mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams -> value -> IO ()
setErrorCode mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams value =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams setErrorCodeSelector (toNSNumber value)

-- | @- debugText@
debugText :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams => mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams -> IO (Id NSString)
debugText mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams debugTextSelector

-- | @- setDebugText:@
setDebugText :: (IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams, IsNSString value) => mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams -> value -> IO ()
setDebugText mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams value =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams setDebugTextSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams => mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams, IsNSNumber value) => mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams value =
  sendMessage mtrGeneralCommissioningClusterSetRegulatoryConfigResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGeneralCommissioningClusterSetRegulatoryConfigResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @errorCode@
errorCodeSelector :: Selector '[] (Id NSNumber)
errorCodeSelector = mkSelector "errorCode"

-- | @Selector@ for @setErrorCode:@
setErrorCodeSelector :: Selector '[Id NSNumber] ()
setErrorCodeSelector = mkSelector "setErrorCode:"

-- | @Selector@ for @debugText@
debugTextSelector :: Selector '[] (Id NSString)
debugTextSelector = mkSelector "debugText"

-- | @Selector@ for @setDebugText:@
setDebugTextSelector :: Selector '[Id NSString] ()
setDebugTextSelector = mkSelector "setDebugText:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

