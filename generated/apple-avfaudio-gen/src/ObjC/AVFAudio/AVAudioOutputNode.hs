{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVAudioOutputNode
--
-- A node that performs audio output in the engine.
--
-- When the engine is rendering to/from an audio device, this node connects to the system's 		audio output.		When the engine is operating in manual rendering mode, this node performs output in		response to client's requests.
--
-- This node has one element.		The format of the output scope reflects:			- the audio hardware sample rate and channel count, when connected to the hardware			- the engine's manual rendering mode output format (see 			  @AVAudioEngine(manualRenderingFormat)@), in the manual rendering mode
--
-- The format of the input scope is initially the same as that of the		output, but you may set it to a different format, in which case the node will convert.
--
-- Generated bindings for @AVAudioOutputNode@.
module ObjC.AVFAudio.AVAudioOutputNode
  ( AVAudioOutputNode
  , IsAVAudioOutputNode(..)
  , init_
  , initSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFAudio.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVAudioOutputNode avAudioOutputNode => avAudioOutputNode -> IO (Id AVAudioOutputNode)
init_ avAudioOutputNode =
  sendOwnedMessage avAudioOutputNode initSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVAudioOutputNode)
initSelector = mkSelector "init"

