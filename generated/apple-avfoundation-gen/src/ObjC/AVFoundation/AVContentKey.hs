{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVContentKey@.
module ObjC.AVFoundation.AVContentKey
  ( AVContentKey
  , IsAVContentKey(..)
  , contentKeySpecifier
  , contentKeySpecifierSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- contentKeySpecifier@
contentKeySpecifier :: IsAVContentKey avContentKey => avContentKey -> IO (Id AVContentKeySpecifier)
contentKeySpecifier avContentKey =
  sendMessage avContentKey contentKeySpecifierSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @contentKeySpecifier@
contentKeySpecifierSelector :: Selector '[] (Id AVContentKeySpecifier)
contentKeySpecifierSelector = mkSelector "contentKeySpecifier"

