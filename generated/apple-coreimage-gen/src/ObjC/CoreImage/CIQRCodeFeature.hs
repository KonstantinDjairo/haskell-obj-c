{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CIQRCodeFeature@.
module ObjC.CoreImage.CIQRCodeFeature
  ( CIQRCodeFeature
  , IsCIQRCodeFeature(..)
  , messageString
  , symbolDescriptor
  , messageStringSelector
  , symbolDescriptorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- messageString@
messageString :: IsCIQRCodeFeature ciqrCodeFeature => ciqrCodeFeature -> IO (Id NSString)
messageString ciqrCodeFeature =
  sendMessage ciqrCodeFeature messageStringSelector

-- | @- symbolDescriptor@
symbolDescriptor :: IsCIQRCodeFeature ciqrCodeFeature => ciqrCodeFeature -> IO RawId
symbolDescriptor ciqrCodeFeature =
  sendMessage ciqrCodeFeature symbolDescriptorSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @messageString@
messageStringSelector :: Selector '[] (Id NSString)
messageStringSelector = mkSelector "messageString"

-- | @Selector@ for @symbolDescriptor@
symbolDescriptorSelector :: Selector '[] RawId
symbolDescriptorSelector = mkSelector "symbolDescriptor"

