{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest@.
module ObjC.AuthenticationServices.ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest
  ( ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest
  , IsASAuthorizationPlatformPublicKeyCredentialRegistrationRequest(..)
  , new
  , init_
  , initSelector
  , newSelector


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
new :: IO (Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)
new  =
  do
    cls' <- getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsASAuthorizationPlatformPublicKeyCredentialRegistrationRequest asAuthorizationPlatformPublicKeyCredentialRegistrationRequest => asAuthorizationPlatformPublicKeyCredentialRegistrationRequest -> IO (Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)
init_ asAuthorizationPlatformPublicKeyCredentialRegistrationRequest =
  sendOwnedMessage asAuthorizationPlatformPublicKeyCredentialRegistrationRequest initSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)
initSelector = mkSelector "init"

