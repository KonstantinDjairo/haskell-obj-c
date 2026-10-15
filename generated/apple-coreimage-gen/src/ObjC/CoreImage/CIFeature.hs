{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generic feature found by a CIDetector.
--
-- Generated bindings for @CIFeature@.
module ObjC.CoreImage.CIFeature
  ( CIFeature
  , IsCIFeature(..)
  , type_
  , typeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | The type of the feature.
--
-- ObjC selector: @- type@
type_ :: IsCIFeature ciFeature => ciFeature -> IO (Id NSString)
type_ ciFeature =
  sendMessage ciFeature typeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @type@
typeSelector :: Selector '[] (Id NSString)
typeSelector = mkSelector "type"

