{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterNOCResponseParams@.
module ObjC.Matter.MTROperationalCredentialsClusterNOCResponseParams
  ( MTROperationalCredentialsClusterNOCResponseParams
  , IsMTROperationalCredentialsClusterNOCResponseParams(..)
  , init_
  , copyWithZone
  , statusCode
  , setStatusCode
  , fabricIndex
  , setFabricIndex
  , debugText
  , setDebugText
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , debugTextSelector
  , fabricIndexSelector
  , initSelector
  , setDebugTextSelector
  , setFabricIndexSelector
  , setStatusCodeSelector
  , setTimedInvokeTimeoutMsSelector
  , statusCodeSelector
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
init_ :: IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams => mtrOperationalCredentialsClusterNOCResponseParams -> IO (Id MTROperationalCredentialsClusterNOCResponseParams)
init_ mtrOperationalCredentialsClusterNOCResponseParams =
  sendOwnedMessage mtrOperationalCredentialsClusterNOCResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams => mtrOperationalCredentialsClusterNOCResponseParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterNOCResponseParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterNOCResponseParams copyWithZoneSelector zone

-- | @- statusCode@
statusCode :: IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams => mtrOperationalCredentialsClusterNOCResponseParams -> IO (Id NSNumber)
statusCode mtrOperationalCredentialsClusterNOCResponseParams =
  sendMessage mtrOperationalCredentialsClusterNOCResponseParams statusCodeSelector

-- | @- setStatusCode:@
setStatusCode :: (IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams, IsNSNumber value) => mtrOperationalCredentialsClusterNOCResponseParams -> value -> IO ()
setStatusCode mtrOperationalCredentialsClusterNOCResponseParams value =
  sendMessage mtrOperationalCredentialsClusterNOCResponseParams setStatusCodeSelector (toNSNumber value)

-- | @- fabricIndex@
fabricIndex :: IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams => mtrOperationalCredentialsClusterNOCResponseParams -> IO (Id NSNumber)
fabricIndex mtrOperationalCredentialsClusterNOCResponseParams =
  sendMessage mtrOperationalCredentialsClusterNOCResponseParams fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams, IsNSNumber value) => mtrOperationalCredentialsClusterNOCResponseParams -> value -> IO ()
setFabricIndex mtrOperationalCredentialsClusterNOCResponseParams value =
  sendMessage mtrOperationalCredentialsClusterNOCResponseParams setFabricIndexSelector (toNSNumber value)

-- | @- debugText@
debugText :: IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams => mtrOperationalCredentialsClusterNOCResponseParams -> IO (Id NSString)
debugText mtrOperationalCredentialsClusterNOCResponseParams =
  sendMessage mtrOperationalCredentialsClusterNOCResponseParams debugTextSelector

-- | @- setDebugText:@
setDebugText :: (IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams, IsNSString value) => mtrOperationalCredentialsClusterNOCResponseParams -> value -> IO ()
setDebugText mtrOperationalCredentialsClusterNOCResponseParams value =
  sendMessage mtrOperationalCredentialsClusterNOCResponseParams setDebugTextSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams => mtrOperationalCredentialsClusterNOCResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterNOCResponseParams =
  sendMessage mtrOperationalCredentialsClusterNOCResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterNOCResponseParams mtrOperationalCredentialsClusterNOCResponseParams, IsNSNumber value) => mtrOperationalCredentialsClusterNOCResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterNOCResponseParams value =
  sendMessage mtrOperationalCredentialsClusterNOCResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterNOCResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @statusCode@
statusCodeSelector :: Selector '[] (Id NSNumber)
statusCodeSelector = mkSelector "statusCode"

-- | @Selector@ for @setStatusCode:@
setStatusCodeSelector :: Selector '[Id NSNumber] ()
setStatusCodeSelector = mkSelector "setStatusCode:"

-- | @Selector@ for @fabricIndex@
fabricIndexSelector :: Selector '[] (Id NSNumber)
fabricIndexSelector = mkSelector "fabricIndex"

-- | @Selector@ for @setFabricIndex:@
setFabricIndexSelector :: Selector '[Id NSNumber] ()
setFabricIndexSelector = mkSelector "setFabricIndex:"

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

