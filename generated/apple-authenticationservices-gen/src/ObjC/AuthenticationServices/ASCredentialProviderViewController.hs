{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASCredentialProviderViewController@.
module ObjC.AuthenticationServices.ASCredentialProviderViewController
  ( ASCredentialProviderViewController
  , IsASCredentialProviderViewController(..)
  , prepareCredentialListForServiceIdentifiers
  , provideCredentialWithoutUserInteractionForIdentity
  , prepareInterfaceToProvideCredentialForIdentity
  , prepareInterfaceForExtensionConfiguration
  , extensionContext
  , extensionContextSelector
  , prepareCredentialListForServiceIdentifiersSelector
  , prepareInterfaceForExtensionConfigurationSelector
  , prepareInterfaceToProvideCredentialForIdentitySelector
  , provideCredentialWithoutUserInteractionForIdentitySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AuthenticationServices.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Prepare the view controller to show a list of credentials.
--
-- @serviceIdentifiers@ — the array of service identifiers.
--
-- This method is called by the system to prepare the extension's view controller to present the list of credentials. A service identifier array is passed which can be used to filter or prioritize the credentials that closely match each service. The service identifier array could have zero or more items. If there are more than one item in the array, items with lower indexes represent more specific identifiers for which a credential is being requested. For example, the array could contain identifiers [m.example.com, example.com] with the first item representing the more specifc service that requires a credential. If the array of service identifiers is empty, it is expected that the credential list should still show credentials that the user can pick from.
--
-- ObjC selector: @- prepareCredentialListForServiceIdentifiers:@
prepareCredentialListForServiceIdentifiers :: (IsASCredentialProviderViewController asCredentialProviderViewController, IsNSArray serviceIdentifiers) => asCredentialProviderViewController -> serviceIdentifiers -> IO ()
prepareCredentialListForServiceIdentifiers asCredentialProviderViewController serviceIdentifiers =
  sendMessage asCredentialProviderViewController prepareCredentialListForServiceIdentifiersSelector (toNSArray serviceIdentifiers)

-- | Attempt to provide the user-requested credential without any user interaction.
--
-- @credentialIdentity@ — the credential identity for which a credential should be provided.
--
-- After the user selects a credential identity, the system may ask your extension to provide the credential without showing any user interface if possible to enhance the user experience. If your extension can accomplish this (for example, the user’s passwords database is still unlocked from a recent interaction), call -[ASCredentialProviderExtensionContext completeRequestWithSelectedCredential:completionHandler:] to provide the credential. If an error occurs, call -[ASCredentialProviderExtensionContext cancelRequestWithError:] and pass an error with domain ASExtensionErrorDomain and an appropriate error code from ASExtensionErrorCode.  For example, if your extension requires user interaction because the passwords database needs to be unlocked, pass an error with code ASExtensionErrorCodeUserInteractionRequired.
--
-- Note: When this method is called, your extension's view controller is not present on the screen. Do not attempt or expect to show any user interface in this method.
--
-- ObjC selector: @- provideCredentialWithoutUserInteractionForIdentity:@
provideCredentialWithoutUserInteractionForIdentity :: (IsASCredentialProviderViewController asCredentialProviderViewController, IsASPasswordCredentialIdentity credentialIdentity) => asCredentialProviderViewController -> credentialIdentity -> IO ()
provideCredentialWithoutUserInteractionForIdentity asCredentialProviderViewController credentialIdentity =
  sendMessage asCredentialProviderViewController provideCredentialWithoutUserInteractionForIdentitySelector (toASPasswordCredentialIdentity credentialIdentity)

-- | Prepare the view controller to show user interface for providing the user-requested credential.
--
-- @credentialIdentity@ — the credential identity for which a credential should be provided.
--
-- The system calls this method when your extension cannot provide the requested credential without user interaction. Set up the view controller for any user interaction required to provide the requested credential only. The user interaction should be limited in nature to operations required for providing the requested credential. An example is showing an authentication UI to unlock the user's passwords database. Call -[ASCredentialProviderExtensionContext completeRequestWithSelectedCredential:completionHandler:] to provide the credential. If an error occurs, call -[ASCredentialProviderExtensionContext cancelRequestWithError:] and pass an error with domain ASExtensionErrorDomain and an appropriate error code from ASExtensionErrorCode. For example, if the credential identity cannot be found in the database, pass an error with code ASExtensionErrorCodeCredentialIdentityNotFound.
--
-- ObjC selector: @- prepareInterfaceToProvideCredentialForIdentity:@
prepareInterfaceToProvideCredentialForIdentity :: (IsASCredentialProviderViewController asCredentialProviderViewController, IsASPasswordCredentialIdentity credentialIdentity) => asCredentialProviderViewController -> credentialIdentity -> IO ()
prepareInterfaceToProvideCredentialForIdentity asCredentialProviderViewController credentialIdentity =
  sendMessage asCredentialProviderViewController prepareInterfaceToProvideCredentialForIdentitySelector (toASPasswordCredentialIdentity credentialIdentity)

-- | Prepare the view controller to show user interface when the user enables your extension.
--
-- The system calls this method after your extension is enabled by the user in Settings. You can use this method to give the user a chance to configure the extension or to provide credential identities to the system. After the configuration is done, call -[ASCredentialProviderExtensionContext completeExtensionConfigurationRequest].
--
-- Note: This method only gets called if your extension supports this functionality by specifying "ASCredentialProviderExtensionShowsConfigurationUI": YES in its extension attributes.
--
-- ObjC selector: @- prepareInterfaceForExtensionConfiguration@
prepareInterfaceForExtensionConfiguration :: IsASCredentialProviderViewController asCredentialProviderViewController => asCredentialProviderViewController -> IO ()
prepareInterfaceForExtensionConfiguration asCredentialProviderViewController =
  sendMessage asCredentialProviderViewController prepareInterfaceForExtensionConfigurationSelector

-- | @- extensionContext@
extensionContext :: IsASCredentialProviderViewController asCredentialProviderViewController => asCredentialProviderViewController -> IO (Id ASCredentialProviderExtensionContext)
extensionContext asCredentialProviderViewController =
  sendMessage asCredentialProviderViewController extensionContextSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @prepareCredentialListForServiceIdentifiers:@
prepareCredentialListForServiceIdentifiersSelector :: Selector '[Id NSArray] ()
prepareCredentialListForServiceIdentifiersSelector = mkSelector "prepareCredentialListForServiceIdentifiers:"

-- | @Selector@ for @provideCredentialWithoutUserInteractionForIdentity:@
provideCredentialWithoutUserInteractionForIdentitySelector :: Selector '[Id ASPasswordCredentialIdentity] ()
provideCredentialWithoutUserInteractionForIdentitySelector = mkSelector "provideCredentialWithoutUserInteractionForIdentity:"

-- | @Selector@ for @prepareInterfaceToProvideCredentialForIdentity:@
prepareInterfaceToProvideCredentialForIdentitySelector :: Selector '[Id ASPasswordCredentialIdentity] ()
prepareInterfaceToProvideCredentialForIdentitySelector = mkSelector "prepareInterfaceToProvideCredentialForIdentity:"

-- | @Selector@ for @prepareInterfaceForExtensionConfiguration@
prepareInterfaceForExtensionConfigurationSelector :: Selector '[] ()
prepareInterfaceForExtensionConfigurationSelector = mkSelector "prepareInterfaceForExtensionConfiguration"

-- | @Selector@ for @extensionContext@
extensionContextSelector :: Selector '[] (Id ASCredentialProviderExtensionContext)
extensionContextSelector = mkSelector "extensionContext"

