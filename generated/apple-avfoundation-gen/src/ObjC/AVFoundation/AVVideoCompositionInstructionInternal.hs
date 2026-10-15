{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVVideoCompositionInstruction
--
-- An AVVideoCompositionInstruction object represents an operation to be performed by a compositor.
--
-- An AVVideoComposition object maintains an array of instructions to perform its composition.
--
-- Generated bindings for @AVVideoCompositionInstructionInternal@.
module ObjC.AVFoundation.AVVideoCompositionInstructionInternal
  ( AVVideoCompositionInstructionInternal
  , IsAVVideoCompositionInstructionInternal(..)


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

