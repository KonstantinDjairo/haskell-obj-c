{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | @SHSignatureGenerator@ provides a way to convert audio data into instances of @SHSignature@
--
-- Generated bindings for @SHSignatureGenerator@.
module ObjC.ShazamKit.SHSignatureGenerator
  ( SHSignatureGenerator
  , IsSHSignatureGenerator(..)
  , generateSignatureFromAsset_completionHandler
  , appendBuffer_atTime_error
  , signature
  , appendBuffer_atTime_errorSelector
  , generateSignatureFromAsset_completionHandlerSelector
  , signatureSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ShazamKit.Internal.Classes
import ObjC.AVFAudio.Internal.Classes
import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Create a @SHSignature@ from an @AVAsset.@
--
-- @asset@ — An AVAsset that contains audio you would like to convert to a Signature
--
-- The asset can be any type of media that has audio tracks. If the asset has multiple tracks, they will be mixed into one @SHSignature@
--
-- @completionHandler@ — A block called with the created @SHSignature@ or nil and a populated error parameter if a signature could not be created.
--
-- ObjC selector: @+ generateSignatureFromAsset:completionHandler:@
generateSignatureFromAsset_completionHandler :: IsAVAsset asset => asset -> Ptr () -> IO ()
generateSignatureFromAsset_completionHandler asset completionHandler =
  do
    cls' <- getRequiredClass "SHSignatureGenerator"
    sendClassMessage cls' generateSignatureFromAsset_completionHandlerSelector (toAVAsset asset) completionHandler

-- | Add audio to the generator
--
-- Audio passed to the generator should be contiguous, passing non contiguous data will affect the quality of the @SHSignature@ produced. Passing the @AVAudioTime@ is not required but recommended, it allows the generator to detect when the audio is not contiguous. This method will throw an exception if the audio format is not PCM in one of the following sample rates: 48000, 44100, 32000, 16000.
--
-- @time@ — Where in the stream the audio represents
--
-- @buffer@ — The audio data to be appended to the signature
--
-- @error@ — An error if there was an issue appending the buffer
--
-- ObjC selector: @- appendBuffer:atTime:error:@
appendBuffer_atTime_error :: (IsSHSignatureGenerator shSignatureGenerator, IsAVAudioPCMBuffer buffer, IsAVAudioTime time, IsNSError error_) => shSignatureGenerator -> buffer -> time -> error_ -> IO Bool
appendBuffer_atTime_error shSignatureGenerator buffer time error_ =
  sendMessage shSignatureGenerator appendBuffer_atTime_errorSelector (toAVAudioPCMBuffer buffer) (toAVAudioTime time) (toNSError error_)

-- | Convert the current audio data into a @SHSignature@
--
-- Signature may be called as many times as needed, each time producing a @SHSignature@ from the audio data
--
-- ObjC selector: @- signature@
signature :: IsSHSignatureGenerator shSignatureGenerator => shSignatureGenerator -> IO (Id SHSignature)
signature shSignatureGenerator =
  sendMessage shSignatureGenerator signatureSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @generateSignatureFromAsset:completionHandler:@
generateSignatureFromAsset_completionHandlerSelector :: Selector '[Id AVAsset, Ptr ()] ()
generateSignatureFromAsset_completionHandlerSelector = mkSelector "generateSignatureFromAsset:completionHandler:"

-- | @Selector@ for @appendBuffer:atTime:error:@
appendBuffer_atTime_errorSelector :: Selector '[Id AVAudioPCMBuffer, Id AVAudioTime, Id NSError] Bool
appendBuffer_atTime_errorSelector = mkSelector "appendBuffer:atTime:error:"

-- | @Selector@ for @signature@
signatureSelector :: Selector '[] (Id SHSignature)
signatureSelector = mkSelector "signature"

