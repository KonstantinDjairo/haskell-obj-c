{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.AuthenticationServices.Internal.Classes (
    module ObjC.AuthenticationServices.Internal.Classes,
    module ObjC.AppKit.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------- ASAccountAuthenticationModificationController ----------

-- | Phantom type for @ASAccountAuthenticationModificationController@.
data ASAccountAuthenticationModificationController

instance IsObjCObject (Id ASAccountAuthenticationModificationController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAccountAuthenticationModificationController"

class IsNSObject a => IsASAccountAuthenticationModificationController a where
  toASAccountAuthenticationModificationController :: a -> Id ASAccountAuthenticationModificationController

instance IsASAccountAuthenticationModificationController (Id ASAccountAuthenticationModificationController) where
  toASAccountAuthenticationModificationController = unsafeCastId

instance IsNSObject (Id ASAccountAuthenticationModificationController) where
  toNSObject = unsafeCastId

-- ---------- ASAccountAuthenticationModificationRequest ----------

-- | Phantom type for @ASAccountAuthenticationModificationRequest@.
data ASAccountAuthenticationModificationRequest

instance IsObjCObject (Id ASAccountAuthenticationModificationRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAccountAuthenticationModificationRequest"

class IsNSObject a => IsASAccountAuthenticationModificationRequest a where
  toASAccountAuthenticationModificationRequest :: a -> Id ASAccountAuthenticationModificationRequest

instance IsASAccountAuthenticationModificationRequest (Id ASAccountAuthenticationModificationRequest) where
  toASAccountAuthenticationModificationRequest = unsafeCastId

instance IsNSObject (Id ASAccountAuthenticationModificationRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorization ----------

-- | Phantom type for @ASAuthorization@.
data ASAuthorization

instance IsObjCObject (Id ASAuthorization) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorization"

class IsNSObject a => IsASAuthorization a where
  toASAuthorization :: a -> Id ASAuthorization

instance IsASAuthorization (Id ASAuthorization) where
  toASAuthorization = unsafeCastId

instance IsNSObject (Id ASAuthorization) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationAppleIDCredential ----------

-- | Phantom type for @ASAuthorizationAppleIDCredential@.
data ASAuthorizationAppleIDCredential

instance IsObjCObject (Id ASAuthorizationAppleIDCredential) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationAppleIDCredential"

class IsNSObject a => IsASAuthorizationAppleIDCredential a where
  toASAuthorizationAppleIDCredential :: a -> Id ASAuthorizationAppleIDCredential

instance IsASAuthorizationAppleIDCredential (Id ASAuthorizationAppleIDCredential) where
  toASAuthorizationAppleIDCredential = unsafeCastId

instance IsNSObject (Id ASAuthorizationAppleIDCredential) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationAppleIDProvider ----------

-- | Phantom type for @ASAuthorizationAppleIDProvider@.
data ASAuthorizationAppleIDProvider

instance IsObjCObject (Id ASAuthorizationAppleIDProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationAppleIDProvider"

class IsNSObject a => IsASAuthorizationAppleIDProvider a where
  toASAuthorizationAppleIDProvider :: a -> Id ASAuthorizationAppleIDProvider

instance IsASAuthorizationAppleIDProvider (Id ASAuthorizationAppleIDProvider) where
  toASAuthorizationAppleIDProvider = unsafeCastId

instance IsNSObject (Id ASAuthorizationAppleIDProvider) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationController ----------

-- | Phantom type for @ASAuthorizationController@.
data ASAuthorizationController

instance IsObjCObject (Id ASAuthorizationController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationController"

class IsNSObject a => IsASAuthorizationController a where
  toASAuthorizationController :: a -> Id ASAuthorizationController

instance IsASAuthorizationController (Id ASAuthorizationController) where
  toASAuthorizationController = unsafeCastId

instance IsNSObject (Id ASAuthorizationController) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPasswordProvider ----------

-- | Phantom type for @ASAuthorizationPasswordProvider@.
data ASAuthorizationPasswordProvider

instance IsObjCObject (Id ASAuthorizationPasswordProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPasswordProvider"

class IsNSObject a => IsASAuthorizationPasswordProvider a where
  toASAuthorizationPasswordProvider :: a -> Id ASAuthorizationPasswordProvider

instance IsASAuthorizationPasswordProvider (Id ASAuthorizationPasswordProvider) where
  toASAuthorizationPasswordProvider = unsafeCastId

instance IsNSObject (Id ASAuthorizationPasswordProvider) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPlatformPublicKeyCredentialAssertion ----------

-- | Phantom type for @ASAuthorizationPlatformPublicKeyCredentialAssertion@.
data ASAuthorizationPlatformPublicKeyCredentialAssertion

instance IsObjCObject (Id ASAuthorizationPlatformPublicKeyCredentialAssertion) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialAssertion"

class IsNSObject a => IsASAuthorizationPlatformPublicKeyCredentialAssertion a where
  toASAuthorizationPlatformPublicKeyCredentialAssertion :: a -> Id ASAuthorizationPlatformPublicKeyCredentialAssertion

instance IsASAuthorizationPlatformPublicKeyCredentialAssertion (Id ASAuthorizationPlatformPublicKeyCredentialAssertion) where
  toASAuthorizationPlatformPublicKeyCredentialAssertion = unsafeCastId

instance IsNSObject (Id ASAuthorizationPlatformPublicKeyCredentialAssertion) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPlatformPublicKeyCredentialDescriptor ----------

-- | Phantom type for @ASAuthorizationPlatformPublicKeyCredentialDescriptor@.
data ASAuthorizationPlatformPublicKeyCredentialDescriptor

instance IsObjCObject (Id ASAuthorizationPlatformPublicKeyCredentialDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialDescriptor"

class IsNSObject a => IsASAuthorizationPlatformPublicKeyCredentialDescriptor a where
  toASAuthorizationPlatformPublicKeyCredentialDescriptor :: a -> Id ASAuthorizationPlatformPublicKeyCredentialDescriptor

instance IsASAuthorizationPlatformPublicKeyCredentialDescriptor (Id ASAuthorizationPlatformPublicKeyCredentialDescriptor) where
  toASAuthorizationPlatformPublicKeyCredentialDescriptor = unsafeCastId

instance IsNSObject (Id ASAuthorizationPlatformPublicKeyCredentialDescriptor) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPlatformPublicKeyCredentialProvider ----------

-- | Phantom type for @ASAuthorizationPlatformPublicKeyCredentialProvider@.
data ASAuthorizationPlatformPublicKeyCredentialProvider

instance IsObjCObject (Id ASAuthorizationPlatformPublicKeyCredentialProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialProvider"

class IsNSObject a => IsASAuthorizationPlatformPublicKeyCredentialProvider a where
  toASAuthorizationPlatformPublicKeyCredentialProvider :: a -> Id ASAuthorizationPlatformPublicKeyCredentialProvider

instance IsASAuthorizationPlatformPublicKeyCredentialProvider (Id ASAuthorizationPlatformPublicKeyCredentialProvider) where
  toASAuthorizationPlatformPublicKeyCredentialProvider = unsafeCastId

instance IsNSObject (Id ASAuthorizationPlatformPublicKeyCredentialProvider) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPlatformPublicKeyCredentialRegistration ----------

-- | Phantom type for @ASAuthorizationPlatformPublicKeyCredentialRegistration@.
data ASAuthorizationPlatformPublicKeyCredentialRegistration

instance IsObjCObject (Id ASAuthorizationPlatformPublicKeyCredentialRegistration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialRegistration"

class IsNSObject a => IsASAuthorizationPlatformPublicKeyCredentialRegistration a where
  toASAuthorizationPlatformPublicKeyCredentialRegistration :: a -> Id ASAuthorizationPlatformPublicKeyCredentialRegistration

instance IsASAuthorizationPlatformPublicKeyCredentialRegistration (Id ASAuthorizationPlatformPublicKeyCredentialRegistration) where
  toASAuthorizationPlatformPublicKeyCredentialRegistration = unsafeCastId

instance IsNSObject (Id ASAuthorizationPlatformPublicKeyCredentialRegistration) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationProviderExtensionAuthorizationRequest ----------

-- | Phantom type for @ASAuthorizationProviderExtensionAuthorizationRequest@.
data ASAuthorizationProviderExtensionAuthorizationRequest

instance IsObjCObject (Id ASAuthorizationProviderExtensionAuthorizationRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationProviderExtensionAuthorizationRequest"

class IsNSObject a => IsASAuthorizationProviderExtensionAuthorizationRequest a where
  toASAuthorizationProviderExtensionAuthorizationRequest :: a -> Id ASAuthorizationProviderExtensionAuthorizationRequest

instance IsASAuthorizationProviderExtensionAuthorizationRequest (Id ASAuthorizationProviderExtensionAuthorizationRequest) where
  toASAuthorizationProviderExtensionAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationProviderExtensionAuthorizationRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationProviderExtensionAuthorizationResult ----------

-- | Phantom type for @ASAuthorizationProviderExtensionAuthorizationResult@.
data ASAuthorizationProviderExtensionAuthorizationResult

instance IsObjCObject (Id ASAuthorizationProviderExtensionAuthorizationResult) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationProviderExtensionAuthorizationResult"

class IsNSObject a => IsASAuthorizationProviderExtensionAuthorizationResult a where
  toASAuthorizationProviderExtensionAuthorizationResult :: a -> Id ASAuthorizationProviderExtensionAuthorizationResult

instance IsASAuthorizationProviderExtensionAuthorizationResult (Id ASAuthorizationProviderExtensionAuthorizationResult) where
  toASAuthorizationProviderExtensionAuthorizationResult = unsafeCastId

instance IsNSObject (Id ASAuthorizationProviderExtensionAuthorizationResult) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationProviderExtensionKerberosMapping ----------

-- | Phantom type for @ASAuthorizationProviderExtensionKerberosMapping@.
data ASAuthorizationProviderExtensionKerberosMapping

instance IsObjCObject (Id ASAuthorizationProviderExtensionKerberosMapping) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationProviderExtensionKerberosMapping"

class IsNSObject a => IsASAuthorizationProviderExtensionKerberosMapping a where
  toASAuthorizationProviderExtensionKerberosMapping :: a -> Id ASAuthorizationProviderExtensionKerberosMapping

instance IsASAuthorizationProviderExtensionKerberosMapping (Id ASAuthorizationProviderExtensionKerberosMapping) where
  toASAuthorizationProviderExtensionKerberosMapping = unsafeCastId

instance IsNSObject (Id ASAuthorizationProviderExtensionKerberosMapping) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationProviderExtensionLoginConfiguration ----------

-- | Phantom type for @ASAuthorizationProviderExtensionLoginConfiguration@.
data ASAuthorizationProviderExtensionLoginConfiguration

instance IsObjCObject (Id ASAuthorizationProviderExtensionLoginConfiguration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationProviderExtensionLoginConfiguration"

class IsNSObject a => IsASAuthorizationProviderExtensionLoginConfiguration a where
  toASAuthorizationProviderExtensionLoginConfiguration :: a -> Id ASAuthorizationProviderExtensionLoginConfiguration

instance IsASAuthorizationProviderExtensionLoginConfiguration (Id ASAuthorizationProviderExtensionLoginConfiguration) where
  toASAuthorizationProviderExtensionLoginConfiguration = unsafeCastId

instance IsNSObject (Id ASAuthorizationProviderExtensionLoginConfiguration) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationProviderExtensionLoginManager ----------

-- | Phantom type for @ASAuthorizationProviderExtensionLoginManager@.
data ASAuthorizationProviderExtensionLoginManager

instance IsObjCObject (Id ASAuthorizationProviderExtensionLoginManager) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationProviderExtensionLoginManager"

class IsNSObject a => IsASAuthorizationProviderExtensionLoginManager a where
  toASAuthorizationProviderExtensionLoginManager :: a -> Id ASAuthorizationProviderExtensionLoginManager

instance IsASAuthorizationProviderExtensionLoginManager (Id ASAuthorizationProviderExtensionLoginManager) where
  toASAuthorizationProviderExtensionLoginManager = unsafeCastId

instance IsNSObject (Id ASAuthorizationProviderExtensionLoginManager) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPublicKeyCredentialParameters ----------

-- | Phantom type for @ASAuthorizationPublicKeyCredentialParameters@.
data ASAuthorizationPublicKeyCredentialParameters

instance IsObjCObject (Id ASAuthorizationPublicKeyCredentialParameters) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPublicKeyCredentialParameters"

class IsNSObject a => IsASAuthorizationPublicKeyCredentialParameters a where
  toASAuthorizationPublicKeyCredentialParameters :: a -> Id ASAuthorizationPublicKeyCredentialParameters

instance IsASAuthorizationPublicKeyCredentialParameters (Id ASAuthorizationPublicKeyCredentialParameters) where
  toASAuthorizationPublicKeyCredentialParameters = unsafeCastId

instance IsNSObject (Id ASAuthorizationPublicKeyCredentialParameters) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationRequest ----------

-- | Phantom type for @ASAuthorizationRequest@.
data ASAuthorizationRequest

instance IsObjCObject (Id ASAuthorizationRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationRequest"

class IsNSObject a => IsASAuthorizationRequest a where
  toASAuthorizationRequest :: a -> Id ASAuthorizationRequest

instance IsASAuthorizationRequest (Id ASAuthorizationRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSecurityKeyPublicKeyCredentialAssertion ----------

-- | Phantom type for @ASAuthorizationSecurityKeyPublicKeyCredentialAssertion@.
data ASAuthorizationSecurityKeyPublicKeyCredentialAssertion

instance IsObjCObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertion) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSecurityKeyPublicKeyCredentialAssertion"

class IsNSObject a => IsASAuthorizationSecurityKeyPublicKeyCredentialAssertion a where
  toASAuthorizationSecurityKeyPublicKeyCredentialAssertion :: a -> Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertion

instance IsASAuthorizationSecurityKeyPublicKeyCredentialAssertion (Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertion) where
  toASAuthorizationSecurityKeyPublicKeyCredentialAssertion = unsafeCastId

instance IsNSObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertion) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor ----------

-- | An object to describe a credential on a security key.
-- 
-- Phantom type for @ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor@.
data ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor

instance IsObjCObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor"

class IsNSObject a => IsASAuthorizationSecurityKeyPublicKeyCredentialDescriptor a where
  toASAuthorizationSecurityKeyPublicKeyCredentialDescriptor :: a -> Id ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor

instance IsASAuthorizationSecurityKeyPublicKeyCredentialDescriptor (Id ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor) where
  toASAuthorizationSecurityKeyPublicKeyCredentialDescriptor = unsafeCastId

instance IsNSObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSecurityKeyPublicKeyCredentialProvider ----------

-- | Phantom type for @ASAuthorizationSecurityKeyPublicKeyCredentialProvider@.
data ASAuthorizationSecurityKeyPublicKeyCredentialProvider

instance IsObjCObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSecurityKeyPublicKeyCredentialProvider"

class IsNSObject a => IsASAuthorizationSecurityKeyPublicKeyCredentialProvider a where
  toASAuthorizationSecurityKeyPublicKeyCredentialProvider :: a -> Id ASAuthorizationSecurityKeyPublicKeyCredentialProvider

instance IsASAuthorizationSecurityKeyPublicKeyCredentialProvider (Id ASAuthorizationSecurityKeyPublicKeyCredentialProvider) where
  toASAuthorizationSecurityKeyPublicKeyCredentialProvider = unsafeCastId

instance IsNSObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialProvider) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSecurityKeyPublicKeyCredentialRegistration ----------

-- | Phantom type for @ASAuthorizationSecurityKeyPublicKeyCredentialRegistration@.
data ASAuthorizationSecurityKeyPublicKeyCredentialRegistration

instance IsObjCObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistration) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSecurityKeyPublicKeyCredentialRegistration"

class IsNSObject a => IsASAuthorizationSecurityKeyPublicKeyCredentialRegistration a where
  toASAuthorizationSecurityKeyPublicKeyCredentialRegistration :: a -> Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistration

instance IsASAuthorizationSecurityKeyPublicKeyCredentialRegistration (Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistration) where
  toASAuthorizationSecurityKeyPublicKeyCredentialRegistration = unsafeCastId

instance IsNSObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistration) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSingleSignOnCredential ----------

-- | Phantom type for @ASAuthorizationSingleSignOnCredential@.
data ASAuthorizationSingleSignOnCredential

instance IsObjCObject (Id ASAuthorizationSingleSignOnCredential) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSingleSignOnCredential"

class IsNSObject a => IsASAuthorizationSingleSignOnCredential a where
  toASAuthorizationSingleSignOnCredential :: a -> Id ASAuthorizationSingleSignOnCredential

instance IsASAuthorizationSingleSignOnCredential (Id ASAuthorizationSingleSignOnCredential) where
  toASAuthorizationSingleSignOnCredential = unsafeCastId

instance IsNSObject (Id ASAuthorizationSingleSignOnCredential) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSingleSignOnProvider ----------

-- | Phantom type for @ASAuthorizationSingleSignOnProvider@.
data ASAuthorizationSingleSignOnProvider

instance IsObjCObject (Id ASAuthorizationSingleSignOnProvider) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSingleSignOnProvider"

class IsNSObject a => IsASAuthorizationSingleSignOnProvider a where
  toASAuthorizationSingleSignOnProvider :: a -> Id ASAuthorizationSingleSignOnProvider

instance IsASAuthorizationSingleSignOnProvider (Id ASAuthorizationSingleSignOnProvider) where
  toASAuthorizationSingleSignOnProvider = unsafeCastId

instance IsNSObject (Id ASAuthorizationSingleSignOnProvider) where
  toNSObject = unsafeCastId

-- ---------- ASCredentialIdentityStore ----------

-- | Phantom type for @ASCredentialIdentityStore@.
data ASCredentialIdentityStore

instance IsObjCObject (Id ASCredentialIdentityStore) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASCredentialIdentityStore"

class IsNSObject a => IsASCredentialIdentityStore a where
  toASCredentialIdentityStore :: a -> Id ASCredentialIdentityStore

instance IsASCredentialIdentityStore (Id ASCredentialIdentityStore) where
  toASCredentialIdentityStore = unsafeCastId

instance IsNSObject (Id ASCredentialIdentityStore) where
  toNSObject = unsafeCastId

-- ---------- ASCredentialIdentityStoreState ----------

-- | Phantom type for @ASCredentialIdentityStoreState@.
data ASCredentialIdentityStoreState

instance IsObjCObject (Id ASCredentialIdentityStoreState) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASCredentialIdentityStoreState"

class IsNSObject a => IsASCredentialIdentityStoreState a where
  toASCredentialIdentityStoreState :: a -> Id ASCredentialIdentityStoreState

instance IsASCredentialIdentityStoreState (Id ASCredentialIdentityStoreState) where
  toASCredentialIdentityStoreState = unsafeCastId

instance IsNSObject (Id ASCredentialIdentityStoreState) where
  toNSObject = unsafeCastId

-- ---------- ASCredentialServiceIdentifier ----------

-- | Phantom type for @ASCredentialServiceIdentifier@.
data ASCredentialServiceIdentifier

instance IsObjCObject (Id ASCredentialServiceIdentifier) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASCredentialServiceIdentifier"

class IsNSObject a => IsASCredentialServiceIdentifier a where
  toASCredentialServiceIdentifier :: a -> Id ASCredentialServiceIdentifier

instance IsASCredentialServiceIdentifier (Id ASCredentialServiceIdentifier) where
  toASCredentialServiceIdentifier = unsafeCastId

instance IsNSObject (Id ASCredentialServiceIdentifier) where
  toNSObject = unsafeCastId

-- ---------- ASPasswordCredential ----------

-- | Phantom type for @ASPasswordCredential@.
data ASPasswordCredential

instance IsObjCObject (Id ASPasswordCredential) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASPasswordCredential"

class IsNSObject a => IsASPasswordCredential a where
  toASPasswordCredential :: a -> Id ASPasswordCredential

instance IsASPasswordCredential (Id ASPasswordCredential) where
  toASPasswordCredential = unsafeCastId

instance IsNSObject (Id ASPasswordCredential) where
  toNSObject = unsafeCastId

-- ---------- ASPasswordCredentialIdentity ----------

-- | ASPasswordCredentialIdentity
--
-- An ASPasswordCredentialIdentity is used to describe an identity that can use a service upon successful password based authentication. Use this class to save entries into ASCredentialIdentityStore.
-- 
-- Phantom type for @ASPasswordCredentialIdentity@.
data ASPasswordCredentialIdentity

instance IsObjCObject (Id ASPasswordCredentialIdentity) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASPasswordCredentialIdentity"

class IsNSObject a => IsASPasswordCredentialIdentity a where
  toASPasswordCredentialIdentity :: a -> Id ASPasswordCredentialIdentity

instance IsASPasswordCredentialIdentity (Id ASPasswordCredentialIdentity) where
  toASPasswordCredentialIdentity = unsafeCastId

instance IsNSObject (Id ASPasswordCredentialIdentity) where
  toNSObject = unsafeCastId

-- ---------- ASWebAuthenticationSession ----------

-- | ASWebAuthenticationSession
--
-- An ASWebAuthenticationSession object can be used to authenticate a user with a web service, even if the web service is run by a third party. ASWebAuthenticationSession puts the user in control of whether they want to use their existing logged-in session from Safari. The app provides a URL that points to the authentication webpage. The page will be loaded in a secure view controller. From the webpage, the user can authenticate herself and grant access to the app. On completion, the service will send a callback URL with an authentication token, and this URL will be passed to the app by ASWebAuthenticationSessionCompletionHandler.
--
-- The callback URL usually has a custom URL scheme. For the app to receive the callback URL, it needs to either register the custom URL scheme in its Info.plist, or set the scheme to callbackURLScheme argument in the initializer.
--
-- If the user has already logged into the web service in Safari or other apps via ASWebAuthenticationSession, it is possible to share the existing login information. An alert will be presented to get the user's consent for sharing their existing login information. If the user cancels the alert, the session will be canceled, and the completion handler will be called with the error code ASWebAuthenticationSessionErrorCodeCanceledLogin.
--
-- If the user taps Cancel when showing the login webpage for the web service, the session will be canceled, and the completion handler will be called with the error code ASWebAuthenticationSessionErrorCodeCanceledLogin.
--
-- The app can cancel the session by calling -[ASWebAuthenticationSession cancel]. This will also dismiss the view controller that is showing the web service's login page.
-- 
-- Phantom type for @ASWebAuthenticationSession@.
data ASWebAuthenticationSession

instance IsObjCObject (Id ASWebAuthenticationSession) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASWebAuthenticationSession"

class IsNSObject a => IsASWebAuthenticationSession a where
  toASWebAuthenticationSession :: a -> Id ASWebAuthenticationSession

instance IsASWebAuthenticationSession (Id ASWebAuthenticationSession) where
  toASWebAuthenticationSession = unsafeCastId

instance IsNSObject (Id ASWebAuthenticationSession) where
  toNSObject = unsafeCastId

-- ---------- ASWebAuthenticationSessionRequest ----------

-- | Phantom type for @ASWebAuthenticationSessionRequest@.
data ASWebAuthenticationSessionRequest

instance IsObjCObject (Id ASWebAuthenticationSessionRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASWebAuthenticationSessionRequest"

class IsNSObject a => IsASWebAuthenticationSessionRequest a where
  toASWebAuthenticationSessionRequest :: a -> Id ASWebAuthenticationSessionRequest

instance IsASWebAuthenticationSessionRequest (Id ASWebAuthenticationSessionRequest) where
  toASWebAuthenticationSessionRequest = unsafeCastId

instance IsNSObject (Id ASWebAuthenticationSessionRequest) where
  toNSObject = unsafeCastId

-- ---------- ASWebAuthenticationSessionWebBrowserSessionManager ----------

-- | Phantom type for @ASWebAuthenticationSessionWebBrowserSessionManager@.
data ASWebAuthenticationSessionWebBrowserSessionManager

instance IsObjCObject (Id ASWebAuthenticationSessionWebBrowserSessionManager) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASWebAuthenticationSessionWebBrowserSessionManager"

class IsNSObject a => IsASWebAuthenticationSessionWebBrowserSessionManager a where
  toASWebAuthenticationSessionWebBrowserSessionManager :: a -> Id ASWebAuthenticationSessionWebBrowserSessionManager

instance IsASWebAuthenticationSessionWebBrowserSessionManager (Id ASWebAuthenticationSessionWebBrowserSessionManager) where
  toASWebAuthenticationSessionWebBrowserSessionManager = unsafeCastId

instance IsNSObject (Id ASWebAuthenticationSessionWebBrowserSessionManager) where
  toNSObject = unsafeCastId

-- ---------- ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest ----------

-- | Phantom type for @ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest@.
data ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest

instance IsObjCObject (Id ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest"

class IsASAccountAuthenticationModificationRequest a => IsASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest a where
  toASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest :: a -> Id ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest

instance IsASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest (Id ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest) where
  toASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest = unsafeCastId

instance IsASAccountAuthenticationModificationRequest (Id ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest) where
  toASAccountAuthenticationModificationRequest = unsafeCastId

instance IsNSObject (Id ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest ----------

-- | Phantom type for @ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest@.
data ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest

instance IsObjCObject (Id ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest"

class IsASAccountAuthenticationModificationRequest a => IsASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest a where
  toASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest :: a -> Id ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest

instance IsASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest (Id ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest) where
  toASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest = unsafeCastId

instance IsASAccountAuthenticationModificationRequest (Id ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest) where
  toASAccountAuthenticationModificationRequest = unsafeCastId

instance IsNSObject (Id ASAccountAuthenticationModificationUpgradePasswordToStrongPasswordRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationOpenIDRequest ----------

-- | Phantom type for @ASAuthorizationOpenIDRequest@.
data ASAuthorizationOpenIDRequest

instance IsObjCObject (Id ASAuthorizationOpenIDRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationOpenIDRequest"

class IsASAuthorizationRequest a => IsASAuthorizationOpenIDRequest a where
  toASAuthorizationOpenIDRequest :: a -> Id ASAuthorizationOpenIDRequest

instance IsASAuthorizationOpenIDRequest (Id ASAuthorizationOpenIDRequest) where
  toASAuthorizationOpenIDRequest = unsafeCastId

instance IsASAuthorizationRequest (Id ASAuthorizationOpenIDRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationOpenIDRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPasswordRequest ----------

-- | Phantom type for @ASAuthorizationPasswordRequest@.
data ASAuthorizationPasswordRequest

instance IsObjCObject (Id ASAuthorizationPasswordRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPasswordRequest"

class IsASAuthorizationRequest a => IsASAuthorizationPasswordRequest a where
  toASAuthorizationPasswordRequest :: a -> Id ASAuthorizationPasswordRequest

instance IsASAuthorizationPasswordRequest (Id ASAuthorizationPasswordRequest) where
  toASAuthorizationPasswordRequest = unsafeCastId

instance IsASAuthorizationRequest (Id ASAuthorizationPasswordRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationPasswordRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPlatformPublicKeyCredentialAssertionRequest ----------

-- | Phantom type for @ASAuthorizationPlatformPublicKeyCredentialAssertionRequest@.
data ASAuthorizationPlatformPublicKeyCredentialAssertionRequest

instance IsObjCObject (Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialAssertionRequest"

class IsASAuthorizationRequest a => IsASAuthorizationPlatformPublicKeyCredentialAssertionRequest a where
  toASAuthorizationPlatformPublicKeyCredentialAssertionRequest :: a -> Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest

instance IsASAuthorizationPlatformPublicKeyCredentialAssertionRequest (Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest) where
  toASAuthorizationPlatformPublicKeyCredentialAssertionRequest = unsafeCastId

instance IsASAuthorizationRequest (Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest ----------

-- | Phantom type for @ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest@.
data ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest

instance IsObjCObject (Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest"

class IsASAuthorizationRequest a => IsASAuthorizationPlatformPublicKeyCredentialRegistrationRequest a where
  toASAuthorizationPlatformPublicKeyCredentialRegistrationRequest :: a -> Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest

instance IsASAuthorizationPlatformPublicKeyCredentialRegistrationRequest (Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest) where
  toASAuthorizationPlatformPublicKeyCredentialRegistrationRequest = unsafeCastId

instance IsASAuthorizationRequest (Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest ----------

-- | Phantom type for @ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest@.
data ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest

instance IsObjCObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest"

class IsASAuthorizationRequest a => IsASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest a where
  toASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest :: a -> Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest

instance IsASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest (Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest) where
  toASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest = unsafeCastId

instance IsASAuthorizationRequest (Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest ----------

-- | Phantom type for @ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest@.
data ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest

instance IsObjCObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest"

class IsASAuthorizationRequest a => IsASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest a where
  toASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest :: a -> Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest

instance IsASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest (Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest) where
  toASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest = unsafeCastId

instance IsASAuthorizationRequest (Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAccountAuthenticationModificationExtensionContext ----------

-- | Phantom type for @ASAccountAuthenticationModificationExtensionContext@.
data ASAccountAuthenticationModificationExtensionContext

instance IsObjCObject (Id ASAccountAuthenticationModificationExtensionContext) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAccountAuthenticationModificationExtensionContext"

class IsNSExtensionContext a => IsASAccountAuthenticationModificationExtensionContext a where
  toASAccountAuthenticationModificationExtensionContext :: a -> Id ASAccountAuthenticationModificationExtensionContext

instance IsASAccountAuthenticationModificationExtensionContext (Id ASAccountAuthenticationModificationExtensionContext) where
  toASAccountAuthenticationModificationExtensionContext = unsafeCastId

instance IsNSExtensionContext (Id ASAccountAuthenticationModificationExtensionContext) where
  toNSExtensionContext = unsafeCastId

instance IsNSObject (Id ASAccountAuthenticationModificationExtensionContext) where
  toNSObject = unsafeCastId

-- ---------- ASCredentialProviderExtensionContext ----------

-- | Phantom type for @ASCredentialProviderExtensionContext@.
data ASCredentialProviderExtensionContext

instance IsObjCObject (Id ASCredentialProviderExtensionContext) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASCredentialProviderExtensionContext"

class IsNSExtensionContext a => IsASCredentialProviderExtensionContext a where
  toASCredentialProviderExtensionContext :: a -> Id ASCredentialProviderExtensionContext

instance IsASCredentialProviderExtensionContext (Id ASCredentialProviderExtensionContext) where
  toASCredentialProviderExtensionContext = unsafeCastId

instance IsNSExtensionContext (Id ASCredentialProviderExtensionContext) where
  toNSExtensionContext = unsafeCastId

instance IsNSObject (Id ASCredentialProviderExtensionContext) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationAppleIDRequest ----------

-- | Phantom type for @ASAuthorizationAppleIDRequest@.
data ASAuthorizationAppleIDRequest

instance IsObjCObject (Id ASAuthorizationAppleIDRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationAppleIDRequest"

class IsASAuthorizationOpenIDRequest a => IsASAuthorizationAppleIDRequest a where
  toASAuthorizationAppleIDRequest :: a -> Id ASAuthorizationAppleIDRequest

instance IsASAuthorizationAppleIDRequest (Id ASAuthorizationAppleIDRequest) where
  toASAuthorizationAppleIDRequest = unsafeCastId

instance IsASAuthorizationOpenIDRequest (Id ASAuthorizationAppleIDRequest) where
  toASAuthorizationOpenIDRequest = unsafeCastId

instance IsASAuthorizationRequest (Id ASAuthorizationAppleIDRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationAppleIDRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAuthorizationSingleSignOnRequest ----------

-- | Phantom type for @ASAuthorizationSingleSignOnRequest@.
data ASAuthorizationSingleSignOnRequest

instance IsObjCObject (Id ASAuthorizationSingleSignOnRequest) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationSingleSignOnRequest"

class IsASAuthorizationOpenIDRequest a => IsASAuthorizationSingleSignOnRequest a where
  toASAuthorizationSingleSignOnRequest :: a -> Id ASAuthorizationSingleSignOnRequest

instance IsASAuthorizationSingleSignOnRequest (Id ASAuthorizationSingleSignOnRequest) where
  toASAuthorizationSingleSignOnRequest = unsafeCastId

instance IsASAuthorizationOpenIDRequest (Id ASAuthorizationSingleSignOnRequest) where
  toASAuthorizationOpenIDRequest = unsafeCastId

instance IsASAuthorizationRequest (Id ASAuthorizationSingleSignOnRequest) where
  toASAuthorizationRequest = unsafeCastId

instance IsNSObject (Id ASAuthorizationSingleSignOnRequest) where
  toNSObject = unsafeCastId

-- ---------- ASAccountAuthenticationModificationViewController ----------

-- | Phantom type for @ASAccountAuthenticationModificationViewController@.
data ASAccountAuthenticationModificationViewController

instance IsObjCObject (Id ASAccountAuthenticationModificationViewController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAccountAuthenticationModificationViewController"

class IsNSViewController a => IsASAccountAuthenticationModificationViewController a where
  toASAccountAuthenticationModificationViewController :: a -> Id ASAccountAuthenticationModificationViewController

instance IsASAccountAuthenticationModificationViewController (Id ASAccountAuthenticationModificationViewController) where
  toASAccountAuthenticationModificationViewController = unsafeCastId

instance IsNSObject (Id ASAccountAuthenticationModificationViewController) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id ASAccountAuthenticationModificationViewController) where
  toNSResponder = unsafeCastId

instance IsNSViewController (Id ASAccountAuthenticationModificationViewController) where
  toNSViewController = unsafeCastId

-- ---------- ASCredentialProviderViewController ----------

-- | Phantom type for @ASCredentialProviderViewController@.
data ASCredentialProviderViewController

instance IsObjCObject (Id ASCredentialProviderViewController) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASCredentialProviderViewController"

class IsNSViewController a => IsASCredentialProviderViewController a where
  toASCredentialProviderViewController :: a -> Id ASCredentialProviderViewController

instance IsASCredentialProviderViewController (Id ASCredentialProviderViewController) where
  toASCredentialProviderViewController = unsafeCastId

instance IsNSObject (Id ASCredentialProviderViewController) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id ASCredentialProviderViewController) where
  toNSResponder = unsafeCastId

instance IsNSViewController (Id ASCredentialProviderViewController) where
  toNSViewController = unsafeCastId

-- ---------- ASAuthorizationAppleIDButton ----------

-- | Phantom type for @ASAuthorizationAppleIDButton@.
data ASAuthorizationAppleIDButton

instance IsObjCObject (Id ASAuthorizationAppleIDButton) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "ASAuthorizationAppleIDButton"

class IsNSControl a => IsASAuthorizationAppleIDButton a where
  toASAuthorizationAppleIDButton :: a -> Id ASAuthorizationAppleIDButton

instance IsASAuthorizationAppleIDButton (Id ASAuthorizationAppleIDButton) where
  toASAuthorizationAppleIDButton = unsafeCastId

instance IsNSControl (Id ASAuthorizationAppleIDButton) where
  toNSControl = unsafeCastId

instance IsNSObject (Id ASAuthorizationAppleIDButton) where
  toNSObject = unsafeCastId

instance IsNSResponder (Id ASAuthorizationAppleIDButton) where
  toNSResponder = unsafeCastId

instance IsNSView (Id ASAuthorizationAppleIDButton) where
  toNSView = unsafeCastId
