{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A request to briefly launch your app to keep its contents up to date.
--
-- Schedule a refresh task request to ask that the system launch your app briefly so that you can download data and keep your app's contents up-to-date. The system will fulfill this request intelligently based on system conditions and app usage.
--
-- Generated bindings for @BGAppRefreshTaskRequest@.
module ObjC.BackgroundTasks.BGAppRefreshTaskRequest
  ( BGAppRefreshTaskRequest
  , IsBGAppRefreshTaskRequest(..)
  , initWithIdentifier
  , initWithIdentifierSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.BackgroundTasks.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithIdentifier:@
initWithIdentifier :: (IsBGAppRefreshTaskRequest bgAppRefreshTaskRequest, IsNSString identifier) => bgAppRefreshTaskRequest -> identifier -> IO (Id BGAppRefreshTaskRequest)
initWithIdentifier bgAppRefreshTaskRequest identifier =
  sendOwnedMessage bgAppRefreshTaskRequest initWithIdentifierSelector (toNSString identifier)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithIdentifier:@
initWithIdentifierSelector :: Selector '[Id NSString] (Id BGAppRefreshTaskRequest)
initWithIdentifierSelector = mkSelector "initWithIdentifier:"

