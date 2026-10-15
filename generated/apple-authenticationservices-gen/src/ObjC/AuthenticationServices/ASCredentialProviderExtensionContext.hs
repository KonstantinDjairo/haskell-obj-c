{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASCredentialProviderExtensionContext@.
module ObjC.AuthenticationServices.ASCredentialProviderExtensionContext
  ( ASCredentialProviderExtensionContext
  , IsASCredentialProviderExtensionContext(..)
  , completeRequestWithSelectedCredential_completionHandler
  , completeExtensionConfigurationRequest
  , completeRequestReturningItems_completionHandler
  , cancelRequestWithError
  , cancelRequestWithErrorSelector
  , completeExtensionConfigurationRequestSelector
  , completeRequestReturningItems_completionHandlerSelector
  , completeRequestWithSelectedCredential_completionHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AuthenticationServices.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Complete the request by providing the user selected credential.
--
-- @credential@ — the credential that the user has selected.
--
-- @completionHandler@ — optionally contains any work which the extension may need to perform after the request has been completed, as a background-priority task. The @expired@ parameter will be YES if the system decides to prematurely terminate a previous non-expiration invocation of the completionHandler.
--
-- Calling this method will eventually dismiss the associated view controller.
--
-- ObjC selector: @- completeRequestWithSelectedCredential:completionHandler:@
completeRequestWithSelectedCredential_completionHandler :: (IsASCredentialProviderExtensionContext asCredentialProviderExtensionContext, IsASPasswordCredential credential) => asCredentialProviderExtensionContext -> credential -> Ptr () -> IO ()
completeRequestWithSelectedCredential_completionHandler asCredentialProviderExtensionContext credential completionHandler =
  sendMessage asCredentialProviderExtensionContext completeRequestWithSelectedCredential_completionHandlerSelector (toASPasswordCredential credential) completionHandler

-- | Complete the request to configure the extension.
--
-- Calling this method will eventually dismiss the associated view controller.
--
-- ObjC selector: @- completeExtensionConfigurationRequest@
completeExtensionConfigurationRequest :: IsASCredentialProviderExtensionContext asCredentialProviderExtensionContext => asCredentialProviderExtensionContext -> IO ()
completeExtensionConfigurationRequest asCredentialProviderExtensionContext =
  sendMessage asCredentialProviderExtensionContext completeExtensionConfigurationRequestSelector

-- | @- completeRequestReturningItems:completionHandler:@
completeRequestReturningItems_completionHandler :: (IsASCredentialProviderExtensionContext asCredentialProviderExtensionContext, IsNSArray items) => asCredentialProviderExtensionContext -> items -> Ptr () -> IO ()
completeRequestReturningItems_completionHandler asCredentialProviderExtensionContext items completionHandler =
  sendMessage asCredentialProviderExtensionContext completeRequestReturningItems_completionHandlerSelector (toNSArray items) completionHandler

-- | Cancels the request.
--
-- @error@ — error's domain should be ASExtensionErrorDomain and the code should be a value of type ASExtensionErrorCode.
--
-- The extension should call this method when the user cancels the action or a failure occurs.
--
-- ObjC selector: @- cancelRequestWithError:@
cancelRequestWithError :: (IsASCredentialProviderExtensionContext asCredentialProviderExtensionContext, IsNSError error_) => asCredentialProviderExtensionContext -> error_ -> IO ()
cancelRequestWithError asCredentialProviderExtensionContext error_ =
  sendMessage asCredentialProviderExtensionContext cancelRequestWithErrorSelector (toNSError error_)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @completeRequestWithSelectedCredential:completionHandler:@
completeRequestWithSelectedCredential_completionHandlerSelector :: Selector '[Id ASPasswordCredential, Ptr ()] ()
completeRequestWithSelectedCredential_completionHandlerSelector = mkSelector "completeRequestWithSelectedCredential:completionHandler:"

-- | @Selector@ for @completeExtensionConfigurationRequest@
completeExtensionConfigurationRequestSelector :: Selector '[] ()
completeExtensionConfigurationRequestSelector = mkSelector "completeExtensionConfigurationRequest"

-- | @Selector@ for @completeRequestReturningItems:completionHandler:@
completeRequestReturningItems_completionHandlerSelector :: Selector '[Id NSArray, Ptr ()] ()
completeRequestReturningItems_completionHandlerSelector = mkSelector "completeRequestReturningItems:completionHandler:"

-- | @Selector@ for @cancelRequestWithError:@
cancelRequestWithErrorSelector :: Selector '[Id NSError] ()
cancelRequestWithErrorSelector = mkSelector "cancelRequestWithError:"

