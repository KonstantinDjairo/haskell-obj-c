{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASAuthorizationPlatformPublicKeyCredentialAssertion@.
module ObjC.AuthenticationServices.ASAuthorizationPlatformPublicKeyCredentialAssertion
  ( ASAuthorizationPlatformPublicKeyCredentialAssertion
  , IsASAuthorizationPlatformPublicKeyCredentialAssertion(..)
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
new :: IO (Id ASAuthorizationPlatformPublicKeyCredentialAssertion)
new  =
  do
    cls' <- getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialAssertion"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsASAuthorizationPlatformPublicKeyCredentialAssertion asAuthorizationPlatformPublicKeyCredentialAssertion => asAuthorizationPlatformPublicKeyCredentialAssertion -> IO (Id ASAuthorizationPlatformPublicKeyCredentialAssertion)
init_ asAuthorizationPlatformPublicKeyCredentialAssertion =
  sendOwnedMessage asAuthorizationPlatformPublicKeyCredentialAssertion initSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id ASAuthorizationPlatformPublicKeyCredentialAssertion)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id ASAuthorizationPlatformPublicKeyCredentialAssertion)
initSelector = mkSelector "init"

