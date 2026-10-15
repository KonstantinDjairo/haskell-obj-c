{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCaptureAudioDataOutput
--
-- AVCaptureAudioDataOutput is a concrete subclass of AVCaptureOutput that can be used to process uncompressed or compressed samples from the audio being captured.
--
-- Instances of AVCaptureAudioDataOutput produce audio sample buffers suitable for processing using other media APIs. Applications can access the sample buffers with the captureOutput:didOutputSampleBuffer:fromConnection: delegate method.
--
-- Generated bindings for @AVCaptureAudioDataOutput@.
module ObjC.AVFoundation.AVCaptureAudioDataOutput
  ( AVCaptureAudioDataOutput
  , IsAVCaptureAudioDataOutput(..)
  , init_
  , new
  , setSampleBufferDelegate_queue
  , recommendedAudioSettingsForAssetWriterWithOutputFileType
  , sampleBufferDelegate
  , sampleBufferCallbackQueue
  , audioSettings
  , setAudioSettings
  , audioSettingsSelector
  , initSelector
  , newSelector
  , recommendedAudioSettingsForAssetWriterWithOutputFileTypeSelector
  , sampleBufferCallbackQueueSelector
  , sampleBufferDelegateSelector
  , setAudioSettingsSelector
  , setSampleBufferDelegate_queueSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVCaptureAudioDataOutput avCaptureAudioDataOutput => avCaptureAudioDataOutput -> IO (Id AVCaptureAudioDataOutput)
init_ avCaptureAudioDataOutput =
  sendOwnedMessage avCaptureAudioDataOutput initSelector

-- | @+ new@
new :: IO (Id AVCaptureAudioDataOutput)
new  =
  do
    cls' <- getRequiredClass "AVCaptureAudioDataOutput"
    sendOwnedClassMessage cls' newSelector

-- | setSampleBufferDelegate:queue:
--
-- Sets the receiver's delegate that will accept captured buffers and dispatch queue on which the delegate will be called.
--
-- @sampleBufferDelegate@ — An object conforming to the AVCaptureAudioDataOutputSampleBufferDelegate protocol that will receive sample buffers after they are captured.
--
-- @sampleBufferCallbackQueue@ — A dispatch queue on which all sample buffer delegate methods will be called.
--
-- When a new audio sample buffer is captured it will be vended to the sample buffer delegate using the captureOutput:didOutputSampleBuffer:fromConnection: delegate method. All delegate methods will be called on the specified dispatch queue. If the queue is blocked when new samples are captured, those samples will be automatically dropped when they become sufficiently late. This allows clients to process existing samples on the same queue without having to manage the potential memory usage increases that would otherwise occur when that processing is unable to keep up with the rate of incoming samples.
--
-- Clients that need to minimize the chances of samples being dropped should specify a queue on which a sufficiently small amount of processing is being done outside of receiving sample buffers. However, if such clients migrate extra processing to another queue, they are responsible for ensuring that memory usage does not grow without bound from samples that have not been processed.
--
-- A serial dispatch queue must be used to guarantee that audio samples will be delivered in order. The sampleBufferCallbackQueue parameter may not be NULL, except when setting sampleBufferDelegate to nil.
--
-- ObjC selector: @- setSampleBufferDelegate:queue:@
setSampleBufferDelegate_queue :: (IsAVCaptureAudioDataOutput avCaptureAudioDataOutput, IsNSObject sampleBufferCallbackQueue) => avCaptureAudioDataOutput -> RawId -> sampleBufferCallbackQueue -> IO ()
setSampleBufferDelegate_queue avCaptureAudioDataOutput sampleBufferDelegate sampleBufferCallbackQueue =
  sendMessage avCaptureAudioDataOutput setSampleBufferDelegate_queueSelector sampleBufferDelegate (toNSObject sampleBufferCallbackQueue)

-- | recommendedAudioSettingsForAssetWriterWithOutputFileType:
--
-- Specifies the recommended settings for use with an AVAssetWriterInput.
--
-- @outputFileType@ — Specifies the UTI of the file type to be written (see AVMediaFormat.h for a list of file format UTIs).
--
-- Returns: A fully populated dictionary of keys and values that are compatible with AVAssetWriter.
--
-- The value of this property is an NSDictionary containing values for compression settings keys defined in AVAudioSettings.h. This dictionary is suitable for use as the "outputSettings" parameter when creating an AVAssetWriterInput, such as,
--
-- [AVAssetWriterInput assetWriterInputWithMediaType:AVMediaTypeAudio outputSettings:outputSettings sourceFormatHint:hint];
--
-- The dictionary returned contains all necessary keys and values needed by AVAssetWriter (see AVAssetWriterInput.h, -initWithMediaType:outputSettings: for a more in depth discussion). For QuickTime movie and ISO files, the recommended audio settings will always produce output comparable to that of AVCaptureMovieFileOutput.
--
-- Note that the dictionary of settings is dependent on the current configuration of the receiver's AVCaptureSession and its inputs. The settings dictionary may change if the session's configuration changes. As such, you should configure your session first, then query the recommended audio settings.
--
-- ObjC selector: @- recommendedAudioSettingsForAssetWriterWithOutputFileType:@
recommendedAudioSettingsForAssetWriterWithOutputFileType :: (IsAVCaptureAudioDataOutput avCaptureAudioDataOutput, IsNSString outputFileType) => avCaptureAudioDataOutput -> outputFileType -> IO (Id NSDictionary)
recommendedAudioSettingsForAssetWriterWithOutputFileType avCaptureAudioDataOutput outputFileType =
  sendMessage avCaptureAudioDataOutput recommendedAudioSettingsForAssetWriterWithOutputFileTypeSelector (toNSString outputFileType)

-- | sampleBufferDelegate
--
-- The receiver's delegate.
--
-- The value of this property is an object conforming to the AVCaptureAudioDataOutputSampleBufferDelegate protocol that will receive sample buffers after they are captured. The delegate is set using the setSampleBufferDelegate:queue: method.
--
-- ObjC selector: @- sampleBufferDelegate@
sampleBufferDelegate :: IsAVCaptureAudioDataOutput avCaptureAudioDataOutput => avCaptureAudioDataOutput -> IO RawId
sampleBufferDelegate avCaptureAudioDataOutput =
  sendMessage avCaptureAudioDataOutput sampleBufferDelegateSelector

-- | sampleBufferCallbackQueue
--
-- The dispatch queue on which all sample buffer delegate methods will be called.
--
-- The value of this property is a dispatch_queue_t. The queue is set using the setSampleBufferDelegate:queue: method.
--
-- ObjC selector: @- sampleBufferCallbackQueue@
sampleBufferCallbackQueue :: IsAVCaptureAudioDataOutput avCaptureAudioDataOutput => avCaptureAudioDataOutput -> IO (Id NSObject)
sampleBufferCallbackQueue avCaptureAudioDataOutput =
  sendMessage avCaptureAudioDataOutput sampleBufferCallbackQueueSelector

-- | audioSettings
--
-- Specifies the settings used to decode or re-encode audio before it is output by the receiver.
--
-- The value of this property is an NSDictionary containing values for audio settings keys defined in AVAudioSettings.h. When audioSettings is set to nil, the AVCaptureAudioDataOutput vends samples in their device native format.
--
-- ObjC selector: @- audioSettings@
audioSettings :: IsAVCaptureAudioDataOutput avCaptureAudioDataOutput => avCaptureAudioDataOutput -> IO (Id NSDictionary)
audioSettings avCaptureAudioDataOutput =
  sendMessage avCaptureAudioDataOutput audioSettingsSelector

-- | audioSettings
--
-- Specifies the settings used to decode or re-encode audio before it is output by the receiver.
--
-- The value of this property is an NSDictionary containing values for audio settings keys defined in AVAudioSettings.h. When audioSettings is set to nil, the AVCaptureAudioDataOutput vends samples in their device native format.
--
-- ObjC selector: @- setAudioSettings:@
setAudioSettings :: (IsAVCaptureAudioDataOutput avCaptureAudioDataOutput, IsNSDictionary value) => avCaptureAudioDataOutput -> value -> IO ()
setAudioSettings avCaptureAudioDataOutput value =
  sendMessage avCaptureAudioDataOutput setAudioSettingsSelector (toNSDictionary value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVCaptureAudioDataOutput)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVCaptureAudioDataOutput)
newSelector = mkSelector "new"

-- | @Selector@ for @setSampleBufferDelegate:queue:@
setSampleBufferDelegate_queueSelector :: Selector '[RawId, Id NSObject] ()
setSampleBufferDelegate_queueSelector = mkSelector "setSampleBufferDelegate:queue:"

-- | @Selector@ for @recommendedAudioSettingsForAssetWriterWithOutputFileType:@
recommendedAudioSettingsForAssetWriterWithOutputFileTypeSelector :: Selector '[Id NSString] (Id NSDictionary)
recommendedAudioSettingsForAssetWriterWithOutputFileTypeSelector = mkSelector "recommendedAudioSettingsForAssetWriterWithOutputFileType:"

-- | @Selector@ for @sampleBufferDelegate@
sampleBufferDelegateSelector :: Selector '[] RawId
sampleBufferDelegateSelector = mkSelector "sampleBufferDelegate"

-- | @Selector@ for @sampleBufferCallbackQueue@
sampleBufferCallbackQueueSelector :: Selector '[] (Id NSObject)
sampleBufferCallbackQueueSelector = mkSelector "sampleBufferCallbackQueue"

-- | @Selector@ for @audioSettings@
audioSettingsSelector :: Selector '[] (Id NSDictionary)
audioSettingsSelector = mkSelector "audioSettings"

-- | @Selector@ for @setAudioSettings:@
setAudioSettingsSelector :: Selector '[Id NSDictionary] ()
setAudioSettingsSelector = mkSelector "setAudioSettings:"

