{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVVideoCompositionLayerInstruction@.
module ObjC.AVFoundation.AVVideoCompositionLayerInstruction
  ( AVVideoCompositionLayerInstruction
  , IsAVVideoCompositionLayerInstruction(..)
  , trackID
  , trackIDSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- trackID@
trackID :: IsAVVideoCompositionLayerInstruction avVideoCompositionLayerInstruction => avVideoCompositionLayerInstruction -> IO CInt
trackID avVideoCompositionLayerInstruction =
  sendMessage avVideoCompositionLayerInstruction trackIDSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @trackID@
trackIDSelector :: Selector '[] CInt
trackIDSelector = mkSelector "trackID"

