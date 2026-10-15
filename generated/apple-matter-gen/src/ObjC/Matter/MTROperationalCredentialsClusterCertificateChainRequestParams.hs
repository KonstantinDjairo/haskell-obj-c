{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterCertificateChainRequestParams@.
module ObjC.Matter.MTROperationalCredentialsClusterCertificateChainRequestParams
  ( MTROperationalCredentialsClusterCertificateChainRequestParams
  , IsMTROperationalCredentialsClusterCertificateChainRequestParams(..)
  , init_
  , copyWithZone
  , certificateType
  , setCertificateType
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , certificateTypeSelector
  , copyWithZoneSelector
  , initSelector
  , setCertificateTypeSelector
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
init_ :: IsMTROperationalCredentialsClusterCertificateChainRequestParams mtrOperationalCredentialsClusterCertificateChainRequestParams => mtrOperationalCredentialsClusterCertificateChainRequestParams -> IO (Id MTROperationalCredentialsClusterCertificateChainRequestParams)
init_ mtrOperationalCredentialsClusterCertificateChainRequestParams =
  sendOwnedMessage mtrOperationalCredentialsClusterCertificateChainRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterCertificateChainRequestParams mtrOperationalCredentialsClusterCertificateChainRequestParams => mtrOperationalCredentialsClusterCertificateChainRequestParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterCertificateChainRequestParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterCertificateChainRequestParams copyWithZoneSelector zone

-- | @- certificateType@
certificateType :: IsMTROperationalCredentialsClusterCertificateChainRequestParams mtrOperationalCredentialsClusterCertificateChainRequestParams => mtrOperationalCredentialsClusterCertificateChainRequestParams -> IO (Id NSNumber)
certificateType mtrOperationalCredentialsClusterCertificateChainRequestParams =
  sendMessage mtrOperationalCredentialsClusterCertificateChainRequestParams certificateTypeSelector

-- | @- setCertificateType:@
setCertificateType :: (IsMTROperationalCredentialsClusterCertificateChainRequestParams mtrOperationalCredentialsClusterCertificateChainRequestParams, IsNSNumber value) => mtrOperationalCredentialsClusterCertificateChainRequestParams -> value -> IO ()
setCertificateType mtrOperationalCredentialsClusterCertificateChainRequestParams value =
  sendMessage mtrOperationalCredentialsClusterCertificateChainRequestParams setCertificateTypeSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterCertificateChainRequestParams mtrOperationalCredentialsClusterCertificateChainRequestParams => mtrOperationalCredentialsClusterCertificateChainRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterCertificateChainRequestParams =
  sendMessage mtrOperationalCredentialsClusterCertificateChainRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterCertificateChainRequestParams mtrOperationalCredentialsClusterCertificateChainRequestParams, IsNSNumber value) => mtrOperationalCredentialsClusterCertificateChainRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterCertificateChainRequestParams value =
  sendMessage mtrOperationalCredentialsClusterCertificateChainRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterCertificateChainRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @certificateType@
certificateTypeSelector :: Selector '[] (Id NSNumber)
certificateTypeSelector = mkSelector "certificateType"

-- | @Selector@ for @setCertificateType:@
setCertificateTypeSelector :: Selector '[Id NSNumber] ()
setCertificateTypeSelector = mkSelector "setCertificateType:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

