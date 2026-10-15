{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVAsynchronousVideoCompositionRequest
--
-- An AVAsynchronousVideoCompositionRequest instance contains the information necessary for a video compositor to render an output pixel buffer. The video compositor must implement the AVVideoCompositing protocol.
--
-- Generated bindings for @AVAsynchronousVideoCompositionRequestInternal@.
module ObjC.AVFoundation.AVAsynchronousVideoCompositionRequestInternal
  ( AVAsynchronousVideoCompositionRequestInternal
  , IsAVAsynchronousVideoCompositionRequestInternal(..)


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

