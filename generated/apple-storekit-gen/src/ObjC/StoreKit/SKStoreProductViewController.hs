{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SKStoreProductViewController@.
module ObjC.StoreKit.SKStoreProductViewController
  ( SKStoreProductViewController
  , IsSKStoreProductViewController(..)
  , loadProductWithParameters_completionBlock
  , loadProductWithParameters_impression_completionBlock
  , loadProductWithParameters_completionBlockSelector
  , loadProductWithParameters_impression_completionBlockSelector


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

-- | @- loadProductWithParameters:completionBlock:@
loadProductWithParameters_completionBlock :: (IsSKStoreProductViewController skStoreProductViewController, IsNSDictionary parameters) => skStoreProductViewController -> parameters -> Ptr () -> IO ()
loadProductWithParameters_completionBlock skStoreProductViewController parameters block =
  sendMessage skStoreProductViewController loadProductWithParameters_completionBlockSelector (toNSDictionary parameters) block

-- | @- loadProductWithParameters:impression:completionBlock:@
loadProductWithParameters_impression_completionBlock :: (IsSKStoreProductViewController skStoreProductViewController, IsNSDictionary parameters, IsSKAdImpression impression) => skStoreProductViewController -> parameters -> impression -> Ptr () -> IO ()
loadProductWithParameters_impression_completionBlock skStoreProductViewController parameters impression block =
  sendMessage skStoreProductViewController loadProductWithParameters_impression_completionBlockSelector (toNSDictionary parameters) (toSKAdImpression impression) block

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @loadProductWithParameters:completionBlock:@
loadProductWithParameters_completionBlockSelector :: Selector '[Id NSDictionary, Ptr ()] ()
loadProductWithParameters_completionBlockSelector = mkSelector "loadProductWithParameters:completionBlock:"

-- | @Selector@ for @loadProductWithParameters:impression:completionBlock:@
loadProductWithParameters_impression_completionBlockSelector :: Selector '[Id NSDictionary, Id SKAdImpression, Ptr ()] ()
loadProductWithParameters_impression_completionBlockSelector = mkSelector "loadProductWithParameters:impression:completionBlock:"

