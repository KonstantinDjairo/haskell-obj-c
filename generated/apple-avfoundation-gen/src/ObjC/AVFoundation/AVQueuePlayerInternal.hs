{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVQueuePlayer
--
-- AVQueuePlayer is a subclass of AVPlayer that offers an interface for multiple-item playback.
--
-- AVQueuePlayer extends AVPlayer with methods for managing a queue of items to be played in sequence.      It plays these items as gaplessly as possible in the current runtime environment, depending on       the timely availability of media data for the enqueued items.
--
-- For best performance clients should typically enqueue only as many AVPlayerItems as are necessary      to ensure smooth playback. Note that once an item is enqueued it becomes eligible to be loaded and      made ready for playback, with whatever I/O and processing overhead that entails.
--
-- Generated bindings for @AVQueuePlayerInternal@.
module ObjC.AVFoundation.AVQueuePlayerInternal
  ( AVQueuePlayerInternal
  , IsAVQueuePlayerInternal(..)


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

