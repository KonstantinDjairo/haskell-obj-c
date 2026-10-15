{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CITextFeature@.
module ObjC.CoreImage.CITextFeature
  ( CITextFeature
  , IsCITextFeature(..)
  , subFeatures
  , subFeaturesSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- subFeatures@
subFeatures :: IsCITextFeature ciTextFeature => ciTextFeature -> IO (Id NSArray)
subFeatures ciTextFeature =
  sendMessage ciTextFeature subFeaturesSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @subFeatures@
subFeaturesSelector :: Selector '[] (Id NSArray)
subFeaturesSelector = mkSelector "subFeatures"

