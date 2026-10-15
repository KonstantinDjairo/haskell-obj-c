{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASAuthorizationPlatformPublicKeyCredentialRegistration@.
module ObjC.AuthenticationServices.ASAuthorizationPlatformPublicKeyCredentialRegistration
  ( ASAuthorizationPlatformPublicKeyCredentialRegistration
  , IsASAuthorizationPlatformPublicKeyCredentialRegistration(..)
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
new :: IO (Id ASAuthorizationPlatformPublicKeyCredentialRegistration)
new  =
  do
    cls' <- getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialRegistration"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsASAuthorizationPlatformPublicKeyCredentialRegistration asAuthorizationPlatformPublicKeyCredentialRegistration => asAuthorizationPlatformPublicKeyCredentialRegistration -> IO (Id ASAuthorizationPlatformPublicKeyCredentialRegistration)
init_ asAuthorizationPlatformPublicKeyCredentialRegistration =
  sendOwnedMessage asAuthorizationPlatformPublicKeyCredentialRegistration initSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id ASAuthorizationPlatformPublicKeyCredentialRegistration)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id ASAuthorizationPlatformPublicKeyCredentialRegistration)
initSelector = mkSelector "init"

