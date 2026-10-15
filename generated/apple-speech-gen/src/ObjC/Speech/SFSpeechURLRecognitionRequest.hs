{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFSpeechURLRecognitionRequest@.
module ObjC.Speech.SFSpeechURLRecognitionRequest
  ( SFSpeechURLRecognitionRequest
  , IsSFSpeechURLRecognitionRequest(..)
  , init_
  , initWithURL
  , url
  , initSelector
  , initWithURLSelector
  , urlSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsSFSpeechURLRecognitionRequest sfSpeechURLRecognitionRequest => sfSpeechURLRecognitionRequest -> IO (Id SFSpeechURLRecognitionRequest)
init_ sfSpeechURLRecognitionRequest =
  sendOwnedMessage sfSpeechURLRecognitionRequest initSelector

-- | @- initWithURL:@
initWithURL :: (IsSFSpeechURLRecognitionRequest sfSpeechURLRecognitionRequest, IsNSURL url) => sfSpeechURLRecognitionRequest -> url -> IO (Id SFSpeechURLRecognitionRequest)
initWithURL sfSpeechURLRecognitionRequest url =
  sendOwnedMessage sfSpeechURLRecognitionRequest initWithURLSelector (toNSURL url)

-- | @- URL@
url :: IsSFSpeechURLRecognitionRequest sfSpeechURLRecognitionRequest => sfSpeechURLRecognitionRequest -> IO (Id NSURL)
url sfSpeechURLRecognitionRequest =
  sendMessage sfSpeechURLRecognitionRequest urlSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SFSpeechURLRecognitionRequest)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithURL:@
initWithURLSelector :: Selector '[Id NSURL] (Id SFSpeechURLRecognitionRequest)
initWithURLSelector = mkSelector "initWithURL:"

-- | @Selector@ for @URL@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "URL"

