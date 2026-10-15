{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterCSRRequestParams@.
module ObjC.Matter.MTROperationalCredentialsClusterCSRRequestParams
  ( MTROperationalCredentialsClusterCSRRequestParams
  , IsMTROperationalCredentialsClusterCSRRequestParams(..)
  , init_
  , copyWithZone
  , csrNonce
  , setCsrNonce
  , isForUpdateNOC
  , setIsForUpdateNOC
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , csrNonceSelector
  , initSelector
  , isForUpdateNOCSelector
  , setCsrNonceSelector
  , setIsForUpdateNOCSelector
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
init_ :: IsMTROperationalCredentialsClusterCSRRequestParams mtrOperationalCredentialsClusterCSRRequestParams => mtrOperationalCredentialsClusterCSRRequestParams -> IO (Id MTROperationalCredentialsClusterCSRRequestParams)
init_ mtrOperationalCredentialsClusterCSRRequestParams =
  sendOwnedMessage mtrOperationalCredentialsClusterCSRRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterCSRRequestParams mtrOperationalCredentialsClusterCSRRequestParams => mtrOperationalCredentialsClusterCSRRequestParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterCSRRequestParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterCSRRequestParams copyWithZoneSelector zone

-- | @- csrNonce@
csrNonce :: IsMTROperationalCredentialsClusterCSRRequestParams mtrOperationalCredentialsClusterCSRRequestParams => mtrOperationalCredentialsClusterCSRRequestParams -> IO (Id NSData)
csrNonce mtrOperationalCredentialsClusterCSRRequestParams =
  sendMessage mtrOperationalCredentialsClusterCSRRequestParams csrNonceSelector

-- | @- setCsrNonce:@
setCsrNonce :: (IsMTROperationalCredentialsClusterCSRRequestParams mtrOperationalCredentialsClusterCSRRequestParams, IsNSData value) => mtrOperationalCredentialsClusterCSRRequestParams -> value -> IO ()
setCsrNonce mtrOperationalCredentialsClusterCSRRequestParams value =
  sendMessage mtrOperationalCredentialsClusterCSRRequestParams setCsrNonceSelector (toNSData value)

-- | @- isForUpdateNOC@
isForUpdateNOC :: IsMTROperationalCredentialsClusterCSRRequestParams mtrOperationalCredentialsClusterCSRRequestParams => mtrOperationalCredentialsClusterCSRRequestParams -> IO (Id NSNumber)
isForUpdateNOC mtrOperationalCredentialsClusterCSRRequestParams =
  sendMessage mtrOperationalCredentialsClusterCSRRequestParams isForUpdateNOCSelector

-- | @- setIsForUpdateNOC:@
setIsForUpdateNOC :: (IsMTROperationalCredentialsClusterCSRRequestParams mtrOperationalCredentialsClusterCSRRequestParams, IsNSNumber value) => mtrOperationalCredentialsClusterCSRRequestParams -> value -> IO ()
setIsForUpdateNOC mtrOperationalCredentialsClusterCSRRequestParams value =
  sendMessage mtrOperationalCredentialsClusterCSRRequestParams setIsForUpdateNOCSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterCSRRequestParams mtrOperationalCredentialsClusterCSRRequestParams => mtrOperationalCredentialsClusterCSRRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterCSRRequestParams =
  sendMessage mtrOperationalCredentialsClusterCSRRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterCSRRequestParams mtrOperationalCredentialsClusterCSRRequestParams, IsNSNumber value) => mtrOperationalCredentialsClusterCSRRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterCSRRequestParams value =
  sendMessage mtrOperationalCredentialsClusterCSRRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterCSRRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @csrNonce@
csrNonceSelector :: Selector '[] (Id NSData)
csrNonceSelector = mkSelector "csrNonce"

-- | @Selector@ for @setCsrNonce:@
setCsrNonceSelector :: Selector '[Id NSData] ()
setCsrNonceSelector = mkSelector "setCsrNonce:"

-- | @Selector@ for @isForUpdateNOC@
isForUpdateNOCSelector :: Selector '[] (Id NSNumber)
isForUpdateNOCSelector = mkSelector "isForUpdateNOC"

-- | @Selector@ for @setIsForUpdateNOC:@
setIsForUpdateNOCSelector :: Selector '[Id NSNumber] ()
setIsForUpdateNOCSelector = mkSelector "setIsForUpdateNOC:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

