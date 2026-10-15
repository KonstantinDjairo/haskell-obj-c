{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFSpeechRecognitionTask@.
module ObjC.Speech.SFSpeechRecognitionTask
  ( SFSpeechRecognitionTask
  , IsSFSpeechRecognitionTask(..)
  , finish
  , cancel
  , state
  , finishing
  , cancelled
  , error_
  , cancelSelector
  , cancelledSelector
  , errorSelector
  , finishSelector
  , finishingSelector
  , stateSelector

  -- * Enum types
  , SFSpeechRecognitionTaskState(SFSpeechRecognitionTaskState)
  , pattern SFSpeechRecognitionTaskStateStarting
  , pattern SFSpeechRecognitionTaskStateRunning
  , pattern SFSpeechRecognitionTaskStateFinishing
  , pattern SFSpeechRecognitionTaskStateCanceling
  , pattern SFSpeechRecognitionTaskStateCompleted

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Speech.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- finish@
finish :: IsSFSpeechRecognitionTask sfSpeechRecognitionTask => sfSpeechRecognitionTask -> IO ()
finish sfSpeechRecognitionTask =
  sendMessage sfSpeechRecognitionTask finishSelector

-- | @- cancel@
cancel :: IsSFSpeechRecognitionTask sfSpeechRecognitionTask => sfSpeechRecognitionTask -> IO ()
cancel sfSpeechRecognitionTask =
  sendMessage sfSpeechRecognitionTask cancelSelector

-- | @- state@
state :: IsSFSpeechRecognitionTask sfSpeechRecognitionTask => sfSpeechRecognitionTask -> IO SFSpeechRecognitionTaskState
state sfSpeechRecognitionTask =
  sendMessage sfSpeechRecognitionTask stateSelector

-- | @- finishing@
finishing :: IsSFSpeechRecognitionTask sfSpeechRecognitionTask => sfSpeechRecognitionTask -> IO Bool
finishing sfSpeechRecognitionTask =
  sendMessage sfSpeechRecognitionTask finishingSelector

-- | @- cancelled@
cancelled :: IsSFSpeechRecognitionTask sfSpeechRecognitionTask => sfSpeechRecognitionTask -> IO Bool
cancelled sfSpeechRecognitionTask =
  sendMessage sfSpeechRecognitionTask cancelledSelector

-- | @- error@
error_ :: IsSFSpeechRecognitionTask sfSpeechRecognitionTask => sfSpeechRecognitionTask -> IO (Id NSError)
error_ sfSpeechRecognitionTask =
  sendMessage sfSpeechRecognitionTask errorSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @finish@
finishSelector :: Selector '[] ()
finishSelector = mkSelector "finish"

-- | @Selector@ for @cancel@
cancelSelector :: Selector '[] ()
cancelSelector = mkSelector "cancel"

-- | @Selector@ for @state@
stateSelector :: Selector '[] SFSpeechRecognitionTaskState
stateSelector = mkSelector "state"

-- | @Selector@ for @finishing@
finishingSelector :: Selector '[] Bool
finishingSelector = mkSelector "finishing"

-- | @Selector@ for @cancelled@
cancelledSelector :: Selector '[] Bool
cancelledSelector = mkSelector "cancelled"

-- | @Selector@ for @error@
errorSelector :: Selector '[] (Id NSError)
errorSelector = mkSelector "error"

