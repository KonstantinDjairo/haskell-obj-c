{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterAddTrustedRootCertificateParams@.
module ObjC.Matter.MTROperationalCredentialsClusterAddTrustedRootCertificateParams
  ( MTROperationalCredentialsClusterAddTrustedRootCertificateParams
  , IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams(..)
  , init_
  , copyWithZone
  , rootCertificate
  , setRootCertificate
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , rootCertificateSelector
  , setRootCertificateSelector
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
init_ :: IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams mtrOperationalCredentialsClusterAddTrustedRootCertificateParams => mtrOperationalCredentialsClusterAddTrustedRootCertificateParams -> IO (Id MTROperationalCredentialsClusterAddTrustedRootCertificateParams)
init_ mtrOperationalCredentialsClusterAddTrustedRootCertificateParams =
  sendOwnedMessage mtrOperationalCredentialsClusterAddTrustedRootCertificateParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams mtrOperationalCredentialsClusterAddTrustedRootCertificateParams => mtrOperationalCredentialsClusterAddTrustedRootCertificateParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterAddTrustedRootCertificateParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterAddTrustedRootCertificateParams copyWithZoneSelector zone

-- | @- rootCertificate@
rootCertificate :: IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams mtrOperationalCredentialsClusterAddTrustedRootCertificateParams => mtrOperationalCredentialsClusterAddTrustedRootCertificateParams -> IO (Id NSData)
rootCertificate mtrOperationalCredentialsClusterAddTrustedRootCertificateParams =
  sendMessage mtrOperationalCredentialsClusterAddTrustedRootCertificateParams rootCertificateSelector

-- | @- setRootCertificate:@
setRootCertificate :: (IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams mtrOperationalCredentialsClusterAddTrustedRootCertificateParams, IsNSData value) => mtrOperationalCredentialsClusterAddTrustedRootCertificateParams -> value -> IO ()
setRootCertificate mtrOperationalCredentialsClusterAddTrustedRootCertificateParams value =
  sendMessage mtrOperationalCredentialsClusterAddTrustedRootCertificateParams setRootCertificateSelector (toNSData value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams mtrOperationalCredentialsClusterAddTrustedRootCertificateParams => mtrOperationalCredentialsClusterAddTrustedRootCertificateParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterAddTrustedRootCertificateParams =
  sendMessage mtrOperationalCredentialsClusterAddTrustedRootCertificateParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterAddTrustedRootCertificateParams mtrOperationalCredentialsClusterAddTrustedRootCertificateParams, IsNSNumber value) => mtrOperationalCredentialsClusterAddTrustedRootCertificateParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterAddTrustedRootCertificateParams value =
  sendMessage mtrOperationalCredentialsClusterAddTrustedRootCertificateParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterAddTrustedRootCertificateParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @rootCertificate@
rootCertificateSelector :: Selector '[] (Id NSData)
rootCertificateSelector = mkSelector "rootCertificate"

-- | @Selector@ for @setRootCertificate:@
setRootCertificateSelector :: Selector '[Id NSData] ()
setRootCertificateSelector = mkSelector "setRootCertificate:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

