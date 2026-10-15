{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @FPUIActionExtensionViewController@.
module ObjC.FileProviderUI.FPUIActionExtensionViewController
  ( FPUIActionExtensionViewController
  , IsFPUIActionExtensionViewController(..)
  , prepareForError
  , prepareForActionWithIdentifier_itemIdentifiers
  , extensionContext
  , extensionContextSelector
  , prepareForActionWithIdentifier_itemIdentifiersSelector
  , prepareForErrorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.FileProviderUI.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- prepareForError:@
prepareForError :: (IsFPUIActionExtensionViewController fpuiActionExtensionViewController, IsNSError error_) => fpuiActionExtensionViewController -> error_ -> IO ()
prepareForError fpuiActionExtensionViewController error_ =
  sendMessage fpuiActionExtensionViewController prepareForErrorSelector (toNSError error_)

-- | @- prepareForActionWithIdentifier:itemIdentifiers:@
prepareForActionWithIdentifier_itemIdentifiers :: (IsFPUIActionExtensionViewController fpuiActionExtensionViewController, IsNSString actionIdentifier, IsNSArray itemIdentifiers) => fpuiActionExtensionViewController -> actionIdentifier -> itemIdentifiers -> IO ()
prepareForActionWithIdentifier_itemIdentifiers fpuiActionExtensionViewController actionIdentifier itemIdentifiers =
  sendMessage fpuiActionExtensionViewController prepareForActionWithIdentifier_itemIdentifiersSelector (toNSString actionIdentifier) (toNSArray itemIdentifiers)

-- | @- extensionContext@
extensionContext :: IsFPUIActionExtensionViewController fpuiActionExtensionViewController => fpuiActionExtensionViewController -> IO (Id FPUIActionExtensionContext)
extensionContext fpuiActionExtensionViewController =
  sendMessage fpuiActionExtensionViewController extensionContextSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @prepareForError:@
prepareForErrorSelector :: Selector '[Id NSError] ()
prepareForErrorSelector = mkSelector "prepareForError:"

-- | @Selector@ for @prepareForActionWithIdentifier:itemIdentifiers:@
prepareForActionWithIdentifier_itemIdentifiersSelector :: Selector '[Id NSString, Id NSArray] ()
prepareForActionWithIdentifier_itemIdentifiersSelector = mkSelector "prepareForActionWithIdentifier:itemIdentifiers:"

-- | @Selector@ for @extensionContext@
extensionContextSelector :: Selector '[] (Id FPUIActionExtensionContext)
extensionContextSelector = mkSelector "extensionContext"

