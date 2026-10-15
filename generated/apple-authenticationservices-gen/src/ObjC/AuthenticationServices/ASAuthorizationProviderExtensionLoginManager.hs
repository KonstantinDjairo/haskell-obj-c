{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASAuthorizationProviderExtensionLoginManager@.
module ObjC.AuthenticationServices.ASAuthorizationProviderExtensionLoginManager
  ( ASAuthorizationProviderExtensionLoginManager
  , IsASAuthorizationProviderExtensionLoginManager(..)
  , init_
  , new
  , saveLoginConfiguration_error
  , saveCertificate_keyType
  , copyKeyForKeyType
  , copyIdentityForKeyType
  , userNeedsReauthenticationWithCompletion
  , deviceRegistrationsNeedsRepair
  , userRegistrationsNeedsRepair
  , resetKeys
  , presentRegistrationViewControllerWithCompletion
  , deviceRegistered
  , userRegistered
  , registrationToken
  , loginUserName
  , setLoginUserName
  , ssoTokens
  , setSsoTokens
  , loginConfiguration
  , copyIdentityForKeyTypeSelector
  , copyKeyForKeyTypeSelector
  , deviceRegisteredSelector
  , deviceRegistrationsNeedsRepairSelector
  , initSelector
  , loginConfigurationSelector
  , loginUserNameSelector
  , newSelector
  , presentRegistrationViewControllerWithCompletionSelector
  , registrationTokenSelector
  , resetKeysSelector
  , saveCertificate_keyTypeSelector
  , saveLoginConfiguration_errorSelector
  , setLoginUserNameSelector
  , setSsoTokensSelector
  , ssoTokensSelector
  , userNeedsReauthenticationWithCompletionSelector
  , userRegisteredSelector
  , userRegistrationsNeedsRepairSelector

  -- * Enum types
  , ASAuthorizationProviderExtensionKeyType(ASAuthorizationProviderExtensionKeyType)
  , pattern ASAuthorizationProviderExtensionKeyTypeUserDeviceSigning
  , pattern ASAuthorizationProviderExtensionKeyTypeUserDeviceEncryption
  , pattern ASAuthorizationProviderExtensionKeyTypeUserSecureEnclaveKey

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AuthenticationServices.Internal.Classes
import ObjC.AuthenticationServices.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO (Id ASAuthorizationProviderExtensionLoginManager)
init_ asAuthorizationProviderExtensionLoginManager =
  sendOwnedMessage asAuthorizationProviderExtensionLoginManager initSelector

-- | @+ new@
new :: IO (Id ASAuthorizationProviderExtensionLoginManager)
new  =
  do
    cls' <- getRequiredClass "ASAuthorizationProviderExtensionLoginManager"
    sendOwnedClassMessage cls' newSelector

-- | Saves or replaces the login configration.
--
-- @loginConfiguration@ — The login configration to use.
--
-- @error@ — The error when there are validation errors or nil.
--
-- ObjC selector: @- saveLoginConfiguration:error:@
saveLoginConfiguration_error :: (IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager, IsASAuthorizationProviderExtensionLoginConfiguration loginConfiguration, IsNSError error_) => asAuthorizationProviderExtensionLoginManager -> loginConfiguration -> error_ -> IO Bool
saveLoginConfiguration_error asAuthorizationProviderExtensionLoginManager loginConfiguration error_ =
  sendMessage asAuthorizationProviderExtensionLoginManager saveLoginConfiguration_errorSelector (toASAuthorizationProviderExtensionLoginConfiguration loginConfiguration) (toNSError error_)

-- | Saves the provided certificate for the key type.
--
-- @certificate@ — The certificate to save.
--
-- @keyType@ — The key type for the certificate.
--
-- ObjC selector: @- saveCertificate:keyType:@
saveCertificate_keyType :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> Ptr () -> ASAuthorizationProviderExtensionKeyType -> IO ()
saveCertificate_keyType asAuthorizationProviderExtensionLoginManager certificate keyType =
  sendMessage asAuthorizationProviderExtensionLoginManager saveCertificate_keyTypeSelector certificate keyType

-- | Retrieves the key for the specified platform SSO key type.
--
-- @keyType@ — The key type to retrieve.
--
-- ObjC selector: @- copyKeyForKeyType:@
copyKeyForKeyType :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> ASAuthorizationProviderExtensionKeyType -> IO (Ptr ())
copyKeyForKeyType asAuthorizationProviderExtensionLoginManager keyType =
  sendOwnedMessage asAuthorizationProviderExtensionLoginManager copyKeyForKeyTypeSelector keyType

-- | Retrieves the identity for the specified platform SSO key type.
--
-- @keyType@ — The key type to retrieve.
--
-- ObjC selector: @- copyIdentityForKeyType:@
copyIdentityForKeyType :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> ASAuthorizationProviderExtensionKeyType -> IO (Ptr ())
copyIdentityForKeyType asAuthorizationProviderExtensionLoginManager keyType =
  sendOwnedMessage asAuthorizationProviderExtensionLoginManager copyIdentityForKeyTypeSelector keyType

-- | Requests AppSSOAgent reauthenticate the current user for the current extension.  This is used when the tokens are revoked, or expired and need to be requested again.
--
-- ObjC selector: @- userNeedsReauthenticationWithCompletion:@
userNeedsReauthenticationWithCompletion :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> Ptr () -> IO ()
userNeedsReauthenticationWithCompletion asAuthorizationProviderExtensionLoginManager completion =
  sendMessage asAuthorizationProviderExtensionLoginManager userNeedsReauthenticationWithCompletionSelector completion

-- | Requests that the device registration be run again to repair it.
--
-- ObjC selector: @- deviceRegistrationsNeedsRepair@
deviceRegistrationsNeedsRepair :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO ()
deviceRegistrationsNeedsRepair asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager deviceRegistrationsNeedsRepairSelector

-- | Requests that user registration be run again for the current user to repair it.
--
-- ObjC selector: @- userRegistrationsNeedsRepair@
userRegistrationsNeedsRepair :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO ()
userRegistrationsNeedsRepair asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager userRegistrationsNeedsRepairSelector

-- | Creates new Encryption, Signing, and Secure Enclave keys for the user.  The old keys will be destroyed.
--
-- ObjC selector: @- resetKeys@
resetKeys :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO ()
resetKeys asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager resetKeysSelector

-- | Asks authorization service to show extension view controller for registration. If the controller cannot be shown an error is returned.  This is only valid during registration.
--
-- ObjC selector: @- presentRegistrationViewControllerWithCompletion:@
presentRegistrationViewControllerWithCompletion :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> Ptr () -> IO ()
presentRegistrationViewControllerWithCompletion asAuthorizationProviderExtensionLoginManager completion =
  sendMessage asAuthorizationProviderExtensionLoginManager presentRegistrationViewControllerWithCompletionSelector completion

-- | Returns YES if the current device completed registration.
--
-- ObjC selector: @- deviceRegistered@
deviceRegistered :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO Bool
deviceRegistered asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager deviceRegisteredSelector

-- | Returns YES if current user completed registration.
--
-- ObjC selector: @- userRegistered@
userRegistered :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO Bool
userRegistered asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager userRegisteredSelector

-- | Returns the device registration token from the MDM profile.
--
-- ObjC selector: @- registrationToken@
registrationToken :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO (Id NSString)
registrationToken asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager registrationTokenSelector

-- | The user name to use when authenticating with the identity provider.
--
-- ObjC selector: @- loginUserName@
loginUserName :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO (Id NSString)
loginUserName asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager loginUserNameSelector

-- | The user name to use when authenticating with the identity provider.
--
-- ObjC selector: @- setLoginUserName:@
setLoginUserName :: (IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager, IsNSString value) => asAuthorizationProviderExtensionLoginManager -> value -> IO ()
setLoginUserName asAuthorizationProviderExtensionLoginManager value =
  sendMessage asAuthorizationProviderExtensionLoginManager setLoginUserNameSelector (toNSString value)

-- | Retrieves or sets the current SSO tokens response for the current user and extension.
--
-- ObjC selector: @- ssoTokens@
ssoTokens :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO (Id NSDictionary)
ssoTokens asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager ssoTokensSelector

-- | Retrieves or sets the current SSO tokens response for the current user and extension.
--
-- ObjC selector: @- setSsoTokens:@
setSsoTokens :: (IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager, IsNSDictionary value) => asAuthorizationProviderExtensionLoginManager -> value -> IO ()
setSsoTokens asAuthorizationProviderExtensionLoginManager value =
  sendMessage asAuthorizationProviderExtensionLoginManager setSsoTokensSelector (toNSDictionary value)

-- | Retrieves or sets the current login configuration for the extension.
--
-- ObjC selector: @- loginConfiguration@
loginConfiguration :: IsASAuthorizationProviderExtensionLoginManager asAuthorizationProviderExtensionLoginManager => asAuthorizationProviderExtensionLoginManager -> IO (Id ASAuthorizationProviderExtensionLoginConfiguration)
loginConfiguration asAuthorizationProviderExtensionLoginManager =
  sendMessage asAuthorizationProviderExtensionLoginManager loginConfigurationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id ASAuthorizationProviderExtensionLoginManager)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id ASAuthorizationProviderExtensionLoginManager)
newSelector = mkSelector "new"

-- | @Selector@ for @saveLoginConfiguration:error:@
saveLoginConfiguration_errorSelector :: Selector '[Id ASAuthorizationProviderExtensionLoginConfiguration, Id NSError] Bool
saveLoginConfiguration_errorSelector = mkSelector "saveLoginConfiguration:error:"

-- | @Selector@ for @saveCertificate:keyType:@
saveCertificate_keyTypeSelector :: Selector '[Ptr (), ASAuthorizationProviderExtensionKeyType] ()
saveCertificate_keyTypeSelector = mkSelector "saveCertificate:keyType:"

-- | @Selector@ for @copyKeyForKeyType:@
copyKeyForKeyTypeSelector :: Selector '[ASAuthorizationProviderExtensionKeyType] (Ptr ())
copyKeyForKeyTypeSelector = mkSelector "copyKeyForKeyType:"

-- | @Selector@ for @copyIdentityForKeyType:@
copyIdentityForKeyTypeSelector :: Selector '[ASAuthorizationProviderExtensionKeyType] (Ptr ())
copyIdentityForKeyTypeSelector = mkSelector "copyIdentityForKeyType:"

-- | @Selector@ for @userNeedsReauthenticationWithCompletion:@
userNeedsReauthenticationWithCompletionSelector :: Selector '[Ptr ()] ()
userNeedsReauthenticationWithCompletionSelector = mkSelector "userNeedsReauthenticationWithCompletion:"

-- | @Selector@ for @deviceRegistrationsNeedsRepair@
deviceRegistrationsNeedsRepairSelector :: Selector '[] ()
deviceRegistrationsNeedsRepairSelector = mkSelector "deviceRegistrationsNeedsRepair"

-- | @Selector@ for @userRegistrationsNeedsRepair@
userRegistrationsNeedsRepairSelector :: Selector '[] ()
userRegistrationsNeedsRepairSelector = mkSelector "userRegistrationsNeedsRepair"

-- | @Selector@ for @resetKeys@
resetKeysSelector :: Selector '[] ()
resetKeysSelector = mkSelector "resetKeys"

-- | @Selector@ for @presentRegistrationViewControllerWithCompletion:@
presentRegistrationViewControllerWithCompletionSelector :: Selector '[Ptr ()] ()
presentRegistrationViewControllerWithCompletionSelector = mkSelector "presentRegistrationViewControllerWithCompletion:"

-- | @Selector@ for @deviceRegistered@
deviceRegisteredSelector :: Selector '[] Bool
deviceRegisteredSelector = mkSelector "deviceRegistered"

-- | @Selector@ for @userRegistered@
userRegisteredSelector :: Selector '[] Bool
userRegisteredSelector = mkSelector "userRegistered"

-- | @Selector@ for @registrationToken@
registrationTokenSelector :: Selector '[] (Id NSString)
registrationTokenSelector = mkSelector "registrationToken"

-- | @Selector@ for @loginUserName@
loginUserNameSelector :: Selector '[] (Id NSString)
loginUserNameSelector = mkSelector "loginUserName"

-- | @Selector@ for @setLoginUserName:@
setLoginUserNameSelector :: Selector '[Id NSString] ()
setLoginUserNameSelector = mkSelector "setLoginUserName:"

-- | @Selector@ for @ssoTokens@
ssoTokensSelector :: Selector '[] (Id NSDictionary)
ssoTokensSelector = mkSelector "ssoTokens"

-- | @Selector@ for @setSsoTokens:@
setSsoTokensSelector :: Selector '[Id NSDictionary] ()
setSsoTokensSelector = mkSelector "setSsoTokens:"

-- | @Selector@ for @loginConfiguration@
loginConfigurationSelector :: Selector '[] (Id ASAuthorizationProviderExtensionLoginConfiguration)
loginConfigurationSelector = mkSelector "loginConfiguration"

