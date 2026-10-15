{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SKCloudServiceSetupViewController@.
module ObjC.StoreKit.SKCloudServiceSetupViewController
  ( SKCloudServiceSetupViewController
  , IsSKCloudServiceSetupViewController(..)
  , loadWithOptions_completionHandler
  , loadWithOptions_completionHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.StoreKit.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Load cloud service setup view with the given options. Block is invoked on the main thread when the load finishes.
--
-- ObjC selector: @- loadWithOptions:completionHandler:@
loadWithOptions_completionHandler :: (IsSKCloudServiceSetupViewController skCloudServiceSetupViewController, IsNSDictionary options) => skCloudServiceSetupViewController -> options -> Ptr () -> IO ()
loadWithOptions_completionHandler skCloudServiceSetupViewController options completionHandler =
  sendMessage skCloudServiceSetupViewController loadWithOptions_completionHandlerSelector (toNSDictionary options) completionHandler

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @loadWithOptions:completionHandler:@
loadWithOptions_completionHandlerSelector :: Selector '[Id NSDictionary, Ptr ()] ()
loadWithOptions_completionHandlerSelector = mkSelector "loadWithOptions:completionHandler:"

