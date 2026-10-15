{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVAsynchronousVideoCompositionRequest@.
module ObjC.AVFoundation.AVAsynchronousVideoCompositionRequest
  ( AVAsynchronousVideoCompositionRequest
  , IsAVAsynchronousVideoCompositionRequest(..)
  , sourceFrameByTrackID
  , sourceSampleBufferByTrackID
  , sourceTimedMetadataByTrackID
  , finishWithComposedVideoFrame
  , finishWithError
  , finishCancelledRequest
  , renderContext
  , sourceTrackIDs
  , sourceSampleDataTrackIDs
  , videoCompositionInstruction
  , finishCancelledRequestSelector
  , finishWithComposedVideoFrameSelector
  , finishWithErrorSelector
  , renderContextSelector
  , sourceFrameByTrackIDSelector
  , sourceSampleBufferByTrackIDSelector
  , sourceSampleDataTrackIDsSelector
  , sourceTimedMetadataByTrackIDSelector
  , sourceTrackIDsSelector
  , videoCompositionInstructionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | sourceFrameByTrackID:
--
-- Returns the source CVPixelBufferRef for the given track ID
--
-- @trackID@ — The track ID for the requested source frame
--
-- ObjC selector: @- sourceFrameByTrackID:@
sourceFrameByTrackID :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> CInt -> IO (Ptr ())
sourceFrameByTrackID avAsynchronousVideoCompositionRequest trackID =
  sendMessage avAsynchronousVideoCompositionRequest sourceFrameByTrackIDSelector trackID

-- | sourceSampleBufferByTrackID:
--
-- Returns the source CMSampleBufferRef for the given track ID
--
-- @trackID@ — The track ID for the requested source sample buffer
--
-- ObjC selector: @- sourceSampleBufferByTrackID:@
sourceSampleBufferByTrackID :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> CInt -> IO (Ptr ())
sourceSampleBufferByTrackID avAsynchronousVideoCompositionRequest trackID =
  sendMessage avAsynchronousVideoCompositionRequest sourceSampleBufferByTrackIDSelector trackID

-- | sourceTimedMetadataByTrackID:
--
-- Returns the source AVTimedMetadataGroup * for the given track ID
--
-- @trackID@ — The track ID for the requested source timed metadata group.
--
-- ObjC selector: @- sourceTimedMetadataByTrackID:@
sourceTimedMetadataByTrackID :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> CInt -> IO (Id AVTimedMetadataGroup)
sourceTimedMetadataByTrackID avAsynchronousVideoCompositionRequest trackID =
  sendMessage avAsynchronousVideoCompositionRequest sourceTimedMetadataByTrackIDSelector trackID

-- | finishWithComposedVideoFrame:
--
-- The method that the custom compositor calls when composition succeeds.
--
-- @composedVideoFrame@ — The video frame to finish with.
--
-- ObjC selector: @- finishWithComposedVideoFrame:@
finishWithComposedVideoFrame :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> Ptr () -> IO ()
finishWithComposedVideoFrame avAsynchronousVideoCompositionRequest composedVideoFrame =
  sendMessage avAsynchronousVideoCompositionRequest finishWithComposedVideoFrameSelector composedVideoFrame

-- | @- finishWithError:@
finishWithError :: (IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest, IsNSError error_) => avAsynchronousVideoCompositionRequest -> error_ -> IO ()
finishWithError avAsynchronousVideoCompositionRequest error_ =
  sendMessage avAsynchronousVideoCompositionRequest finishWithErrorSelector (toNSError error_)

-- | @- finishCancelledRequest@
finishCancelledRequest :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> IO ()
finishCancelledRequest avAsynchronousVideoCompositionRequest =
  sendMessage avAsynchronousVideoCompositionRequest finishCancelledRequestSelector

-- | @- renderContext@
renderContext :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> IO (Id AVVideoCompositionRenderContext)
renderContext avAsynchronousVideoCompositionRequest =
  sendMessage avAsynchronousVideoCompositionRequest renderContextSelector

-- | @- sourceTrackIDs@
sourceTrackIDs :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> IO (Id NSArray)
sourceTrackIDs avAsynchronousVideoCompositionRequest =
  sendMessage avAsynchronousVideoCompositionRequest sourceTrackIDsSelector

-- | @- sourceSampleDataTrackIDs@
sourceSampleDataTrackIDs :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> IO (Id NSArray)
sourceSampleDataTrackIDs avAsynchronousVideoCompositionRequest =
  sendMessage avAsynchronousVideoCompositionRequest sourceSampleDataTrackIDsSelector

-- | @- videoCompositionInstruction@
videoCompositionInstruction :: IsAVAsynchronousVideoCompositionRequest avAsynchronousVideoCompositionRequest => avAsynchronousVideoCompositionRequest -> IO RawId
videoCompositionInstruction avAsynchronousVideoCompositionRequest =
  sendMessage avAsynchronousVideoCompositionRequest videoCompositionInstructionSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @sourceFrameByTrackID:@
sourceFrameByTrackIDSelector :: Selector '[CInt] (Ptr ())
sourceFrameByTrackIDSelector = mkSelector "sourceFrameByTrackID:"

-- | @Selector@ for @sourceSampleBufferByTrackID:@
sourceSampleBufferByTrackIDSelector :: Selector '[CInt] (Ptr ())
sourceSampleBufferByTrackIDSelector = mkSelector "sourceSampleBufferByTrackID:"

-- | @Selector@ for @sourceTimedMetadataByTrackID:@
sourceTimedMetadataByTrackIDSelector :: Selector '[CInt] (Id AVTimedMetadataGroup)
sourceTimedMetadataByTrackIDSelector = mkSelector "sourceTimedMetadataByTrackID:"

-- | @Selector@ for @finishWithComposedVideoFrame:@
finishWithComposedVideoFrameSelector :: Selector '[Ptr ()] ()
finishWithComposedVideoFrameSelector = mkSelector "finishWithComposedVideoFrame:"

-- | @Selector@ for @finishWithError:@
finishWithErrorSelector :: Selector '[Id NSError] ()
finishWithErrorSelector = mkSelector "finishWithError:"

-- | @Selector@ for @finishCancelledRequest@
finishCancelledRequestSelector :: Selector '[] ()
finishCancelledRequestSelector = mkSelector "finishCancelledRequest"

-- | @Selector@ for @renderContext@
renderContextSelector :: Selector '[] (Id AVVideoCompositionRenderContext)
renderContextSelector = mkSelector "renderContext"

-- | @Selector@ for @sourceTrackIDs@
sourceTrackIDsSelector :: Selector '[] (Id NSArray)
sourceTrackIDsSelector = mkSelector "sourceTrackIDs"

-- | @Selector@ for @sourceSampleDataTrackIDs@
sourceSampleDataTrackIDsSelector :: Selector '[] (Id NSArray)
sourceSampleDataTrackIDsSelector = mkSelector "sourceSampleDataTrackIDs"

-- | @Selector@ for @videoCompositionInstruction@
videoCompositionInstructionSelector :: Selector '[] RawId
videoCompositionInstructionSelector = mkSelector "videoCompositionInstruction"

