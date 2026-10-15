{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DCAppAttestService@.
module ObjC.DeviceCheck.DCAppAttestService
  ( DCAppAttestService
  , IsDCAppAttestService(..)
  , generateKeyWithCompletionHandler
  , attestKey_clientDataHash_completionHandler
  , generateAssertion_clientDataHash_completionHandler
  , sharedService
  , supported
  , attestKey_clientDataHash_completionHandlerSelector
  , generateAssertion_clientDataHash_completionHandlerSelector
  , generateKeyWithCompletionHandlerSelector
  , sharedServiceSelector
  , supportedSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DeviceCheck.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Generate a new unattested key.  This call generates a new key every time.  the key identifier keyId is returned.
--
-- @completionHandler@ — The key identifier (KeyId) for the newly generated unattested key upon success, or an error
--
-- ObjC selector: @- generateKeyWithCompletionHandler:@
generateKeyWithCompletionHandler :: IsDCAppAttestService dcAppAttestService => dcAppAttestService -> Ptr () -> IO ()
generateKeyWithCompletionHandler dcAppAttestService completionHandler =
  sendMessage dcAppAttestService generateKeyWithCompletionHandlerSelector completionHandler

-- | Attest the key by keyId.  The same key may be attested more than once, provided that the key has not been used for generating assertions.
--
-- @keyId@ — The key identifier to be attested
--
-- @clientDataHash@ — An arbitrary byte (up to 32 bytes) to be supplied by caller.  It will be used to compute a nonce to be embedded into the certificate that certifies the key.
--
-- @completionHandler@ — The completion callback, returning the attestationObject upon success, or an error
--
-- ObjC selector: @- attestKey:clientDataHash:completionHandler:@
attestKey_clientDataHash_completionHandler :: (IsDCAppAttestService dcAppAttestService, IsNSString keyId, IsNSData clientDataHash) => dcAppAttestService -> keyId -> clientDataHash -> Ptr () -> IO ()
attestKey_clientDataHash_completionHandler dcAppAttestService keyId clientDataHash completionHandler =
  sendMessage dcAppAttestService attestKey_clientDataHash_completionHandlerSelector (toNSString keyId) (toNSData clientDataHash) completionHandler

-- | Attest the key by keyId.  The same key may be attested more than once, provided that the key has not been used for generating assertions.
--
-- @keyId@ — The key identifier to the key to generate assertions with
--
-- @clientDataHash@ — An arbitrary byte (up to 32 bytes) to be supplied by caller.  It will be used to compute a nonce to be embedded into the certificate that certifies the key.
--
-- @completionHandler@ — The completion callback, returning the assertionObject upon success, or an error
--
-- ObjC selector: @- generateAssertion:clientDataHash:completionHandler:@
generateAssertion_clientDataHash_completionHandler :: (IsDCAppAttestService dcAppAttestService, IsNSString keyId, IsNSData clientDataHash) => dcAppAttestService -> keyId -> clientDataHash -> Ptr () -> IO ()
generateAssertion_clientDataHash_completionHandler dcAppAttestService keyId clientDataHash completionHandler =
  sendMessage dcAppAttestService generateAssertion_clientDataHash_completionHandlerSelector (toNSString keyId) (toNSData clientDataHash) completionHandler

-- | The shared service instance
--
-- ObjC selector: @+ sharedService@
sharedService :: IO (Id DCAppAttestService)
sharedService  =
  do
    cls' <- getRequiredClass "DCAppAttestService"
    sendClassMessage cls' sharedServiceSelector

-- | Check if this API is supported on the current device for this application instance
--
-- ObjC selector: @- supported@
supported :: IsDCAppAttestService dcAppAttestService => dcAppAttestService -> IO Bool
supported dcAppAttestService =
  sendMessage dcAppAttestService supportedSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @generateKeyWithCompletionHandler:@
generateKeyWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
generateKeyWithCompletionHandlerSelector = mkSelector "generateKeyWithCompletionHandler:"

-- | @Selector@ for @attestKey:clientDataHash:completionHandler:@
attestKey_clientDataHash_completionHandlerSelector :: Selector '[Id NSString, Id NSData, Ptr ()] ()
attestKey_clientDataHash_completionHandlerSelector = mkSelector "attestKey:clientDataHash:completionHandler:"

-- | @Selector@ for @generateAssertion:clientDataHash:completionHandler:@
generateAssertion_clientDataHash_completionHandlerSelector :: Selector '[Id NSString, Id NSData, Ptr ()] ()
generateAssertion_clientDataHash_completionHandlerSelector = mkSelector "generateAssertion:clientDataHash:completionHandler:"

-- | @Selector@ for @sharedService@
sharedServiceSelector :: Selector '[] (Id DCAppAttestService)
sharedServiceSelector = mkSelector "sharedService"

-- | @Selector@ for @supported@
supportedSelector :: Selector '[] Bool
supportedSelector = mkSelector "supported"

