{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A @SHSession@ matches instances of @SHSignature@ against a @SHCatalog@
--
-- A @SHSession@ can be used in two distinct ways to match against a @SHCatalog@
--
-- 1. Pass a @SHSignature@ to the -[SHSession matchSignature:] method and respond to matches sent to the delegate      There is a 1 to 1 relationship between calls to this method and calls to the delegate 2. Pass a continuous stream of @AVAudioPCMBuffer@ to the -[SHSession matchStreamingBuffer:atTime:] method, matches are sent to the delegate.        ShazamKit will convert the buffers in SHSignature objects internally and perform matches against the @SHCatalog.@ The details of how the matching        is performed is an implementation detail and is subject to change. As such there will be many callbacks to the delegate per stream of audio, and the same match        may be reported multiple times in succession.
--
-- Generated bindings for @SHSession@.
module ObjC.ShazamKit.SHSession
  ( SHSession
  , IsSHSession(..)
  , init_
  , initWithCatalog
  , matchStreamingBuffer_atTime
  , matchSignature
  , catalog
  , delegate
  , setDelegate
  , catalogSelector
  , delegateSelector
  , initSelector
  , initWithCatalogSelector
  , matchSignatureSelector
  , matchStreamingBuffer_atTimeSelector
  , setDelegateSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ShazamKit.Internal.Classes
import ObjC.AVFAudio.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Create A new @SHSession@ that searches the Shazam Catalog
--
-- ObjC selector: @- init@
init_ :: IsSHSession shSession => shSession -> IO (Id SHSession)
init_ shSession =
  sendOwnedMessage shSession initSelector

-- | Create A new @SHSession@ based upon the supplied @SHCatalog@
--
-- @catalog@ — The store of signatures to match against
--
-- ObjC selector: @- initWithCatalog:@
initWithCatalog :: (IsSHSession shSession, IsSHCatalog catalog) => shSession -> catalog -> IO (Id SHSession)
initWithCatalog shSession catalog =
  sendOwnedMessage shSession initWithCatalogSelector (toSHCatalog catalog)

-- | Flow audio buffers for matching into the session
--
-- Audio will be converted into signatures and matched against the @SHCatalog.@ Results are communicated through the delegate. The initial buffer specifies the @AVAudioFormat@ and all subsequent buffers must contain the same format otherwise an error will be communicated through the delegate.
--
-- It is advisable but not required to pass an @AVAudioTime@ along with the audio buffer. The audio provided must be contiguous, gaps in the audio will have adverse effects on the ability to match the audio. The time variable is validated by the session to ensure that the audio is contiguous and mitigate the effect of discontiguous audio.
--
-- @buffer@ — A buffer of audio to be used for recognition
--
-- @time@ — Where in the stream the audio occurs
--
-- Note: This method will throw an exception if the audio format is not PCM in one of the following sample rates: 48000, 44100, 32000, 16000.
--
-- ObjC selector: @- matchStreamingBuffer:atTime:@
matchStreamingBuffer_atTime :: (IsSHSession shSession, IsAVAudioPCMBuffer buffer, IsAVAudioTime time) => shSession -> buffer -> time -> IO ()
matchStreamingBuffer_atTime shSession buffer time =
  sendMessage shSession matchStreamingBuffer_atTimeSelector (toAVAudioPCMBuffer buffer) (toAVAudioTime time)

-- | Match the @SHSignature@ against the provided @SHCatalog@
--
-- @signature@ — a @SHSignature@ to be matched
--
-- ObjC selector: @- matchSignature:@
matchSignature :: (IsSHSession shSession, IsSHSignature signature) => shSession -> signature -> IO ()
matchSignature shSession signature =
  sendMessage shSession matchSignatureSelector (toSHSignature signature)

-- | The @SHCatalog@ used to initialize this session and which all matches will be made against
--
-- ObjC selector: @- catalog@
catalog :: IsSHSession shSession => shSession -> IO (Id SHCatalog)
catalog shSession =
  sendMessage shSession catalogSelector

-- | A delegate for communicating the results of matching
--
-- ObjC selector: @- delegate@
delegate :: IsSHSession shSession => shSession -> IO RawId
delegate shSession =
  sendMessage shSession delegateSelector

-- | A delegate for communicating the results of matching
--
-- ObjC selector: @- setDelegate:@
setDelegate :: IsSHSession shSession => shSession -> RawId -> IO ()
setDelegate shSession value =
  sendMessage shSession setDelegateSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SHSession)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithCatalog:@
initWithCatalogSelector :: Selector '[Id SHCatalog] (Id SHSession)
initWithCatalogSelector = mkSelector "initWithCatalog:"

-- | @Selector@ for @matchStreamingBuffer:atTime:@
matchStreamingBuffer_atTimeSelector :: Selector '[Id AVAudioPCMBuffer, Id AVAudioTime] ()
matchStreamingBuffer_atTimeSelector = mkSelector "matchStreamingBuffer:atTime:"

-- | @Selector@ for @matchSignature:@
matchSignatureSelector :: Selector '[Id SHSignature] ()
matchSignatureSelector = mkSelector "matchSignature:"

-- | @Selector@ for @catalog@
catalogSelector :: Selector '[] (Id SHCatalog)
catalogSelector = mkSelector "catalog"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

