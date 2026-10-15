{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest@.
module ObjC.AuthenticationServices.ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest
  ( ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest
  , IsASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest(..)
  , allowedCredentials
  , setAllowedCredentials
  , allowedCredentialsSelector
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

-- | A list of descriptors indicating credentials that may be used to sign in. If this is non-empty, only credentials matching the provided descriptors can be used when authenticating.
--
-- ObjC selector: @- allowedCredentials@
allowedCredentials :: IsASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest asAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest => asAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest -> IO (Id NSArray)
allowedCredentials asAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest =
  sendMessage asAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest allowedCredentialsSelector

-- | A list of descriptors indicating credentials that may be used to sign in. If this is non-empty, only credentials matching the provided descriptors can be used when authenticating.
--
-- ObjC selector: @- setAllowedCredentials:@
setAllowedCredentials :: (IsASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest asAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest, IsNSArray value) => asAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest -> value -> IO ()
setAllowedCredentials asAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest value =
  sendMessage asAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest setAllowedCredentialsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @allowedCredentials@
allowedCredentialsSelector :: Selector '[] (Id NSArray)
allowedCredentialsSelector = mkSelector "allowedCredentials"

-- | @Selector@ for @setAllowedCredentials:@
setAllowedCredentialsSelector :: Selector '[Id NSArray] ()
setAllowedCredentialsSelector = mkSelector "setAllowedCredentials:"

