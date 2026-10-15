{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASAuthorizationPlatformPublicKeyCredentialAssertionRequest@.
module ObjC.AuthenticationServices.ASAuthorizationPlatformPublicKeyCredentialAssertionRequest
  ( ASAuthorizationPlatformPublicKeyCredentialAssertionRequest
  , IsASAuthorizationPlatformPublicKeyCredentialAssertionRequest(..)
  , new
  , init_
  , allowedCredentials
  , setAllowedCredentials
  , allowedCredentialsSelector
  , initSelector
  , newSelector
  , setAllowedCredentialsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AuthenticationServices.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ new@
new :: IO (Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest)
new  =
  do
    cls' <- getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialAssertionRequest"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsASAuthorizationPlatformPublicKeyCredentialAssertionRequest asAuthorizationPlatformPublicKeyCredentialAssertionRequest => asAuthorizationPlatformPublicKeyCredentialAssertionRequest -> IO (Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest)
init_ asAuthorizationPlatformPublicKeyCredentialAssertionRequest =
  sendOwnedMessage asAuthorizationPlatformPublicKeyCredentialAssertionRequest initSelector

-- | A list of credentials to allow for this request. If this ilist is nonempty, only credentials matching the provided descriptors can be used to sign in.
--
-- ObjC selector: @- allowedCredentials@
allowedCredentials :: IsASAuthorizationPlatformPublicKeyCredentialAssertionRequest asAuthorizationPlatformPublicKeyCredentialAssertionRequest => asAuthorizationPlatformPublicKeyCredentialAssertionRequest -> IO (Id NSArray)
allowedCredentials asAuthorizationPlatformPublicKeyCredentialAssertionRequest =
  sendMessage asAuthorizationPlatformPublicKeyCredentialAssertionRequest allowedCredentialsSelector

-- | A list of credentials to allow for this request. If this ilist is nonempty, only credentials matching the provided descriptors can be used to sign in.
--
-- ObjC selector: @- setAllowedCredentials:@
setAllowedCredentials :: (IsASAuthorizationPlatformPublicKeyCredentialAssertionRequest asAuthorizationPlatformPublicKeyCredentialAssertionRequest, IsNSArray value) => asAuthorizationPlatformPublicKeyCredentialAssertionRequest -> value -> IO ()
setAllowedCredentials asAuthorizationPlatformPublicKeyCredentialAssertionRequest value =
  sendMessage asAuthorizationPlatformPublicKeyCredentialAssertionRequest setAllowedCredentialsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest)
initSelector = mkSelector "init"

-- | @Selector@ for @allowedCredentials@
allowedCredentialsSelector :: Selector '[] (Id NSArray)
allowedCredentialsSelector = mkSelector "allowedCredentials"

-- | @Selector@ for @setAllowedCredentials:@
setAllowedCredentialsSelector :: Selector '[Id NSArray] ()
setAllowedCredentialsSelector = mkSelector "setAllowedCredentials:"

