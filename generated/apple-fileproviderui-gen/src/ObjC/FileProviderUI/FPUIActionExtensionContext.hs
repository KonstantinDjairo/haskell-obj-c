{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @FPUIActionExtensionContext@.
module ObjC.FileProviderUI.FPUIActionExtensionContext
  ( FPUIActionExtensionContext
  , IsFPUIActionExtensionContext(..)
  , completeRequest
  , completeRequestReturningItems_completionHandler
  , cancelRequestWithError
  , domainIdentifier
  , cancelRequestWithErrorSelector
  , completeRequestReturningItems_completionHandlerSelector
  , completeRequestSelector
  , domainIdentifierSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.FileProviderUI.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | The extension should call this method when the action did terminate successfully.
--
-- ObjC selector: @- completeRequest@
completeRequest :: IsFPUIActionExtensionContext fpuiActionExtensionContext => fpuiActionExtensionContext -> IO ()
completeRequest fpuiActionExtensionContext =
  sendMessage fpuiActionExtensionContext completeRequestSelector

-- | @- completeRequestReturningItems:completionHandler:@
completeRequestReturningItems_completionHandler :: (IsFPUIActionExtensionContext fpuiActionExtensionContext, IsNSArray items) => fpuiActionExtensionContext -> items -> Ptr () -> IO ()
completeRequestReturningItems_completionHandler fpuiActionExtensionContext items completionHandler =
  sendMessage fpuiActionExtensionContext completeRequestReturningItems_completionHandlerSelector (toNSArray items) completionHandler

-- | The extension should call this method when the action failed. The error's Domain should be FPUIErrorDomain and the code should be a value of type FPUIErrorCode.
--
-- ObjC selector: @- cancelRequestWithError:@
cancelRequestWithError :: (IsFPUIActionExtensionContext fpuiActionExtensionContext, IsNSError error_) => fpuiActionExtensionContext -> error_ -> IO ()
cancelRequestWithError fpuiActionExtensionContext error_ =
  sendMessage fpuiActionExtensionContext cancelRequestWithErrorSelector (toNSError error_)

-- | @- domainIdentifier@
domainIdentifier :: IsFPUIActionExtensionContext fpuiActionExtensionContext => fpuiActionExtensionContext -> IO (Id NSString)
domainIdentifier fpuiActionExtensionContext =
  sendMessage fpuiActionExtensionContext domainIdentifierSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @completeRequest@
completeRequestSelector :: Selector '[] ()
completeRequestSelector = mkSelector "completeRequest"

-- | @Selector@ for @completeRequestReturningItems:completionHandler:@
completeRequestReturningItems_completionHandlerSelector :: Selector '[Id NSArray, Ptr ()] ()
completeRequestReturningItems_completionHandlerSelector = mkSelector "completeRequestReturningItems:completionHandler:"

-- | @Selector@ for @cancelRequestWithError:@
cancelRequestWithErrorSelector :: Selector '[Id NSError] ()
cancelRequestWithErrorSelector = mkSelector "cancelRequestWithError:"

-- | @Selector@ for @domainIdentifier@
domainIdentifierSelector :: Selector '[] (Id NSString)
domainIdentifierSelector = mkSelector "domainIdentifier"

