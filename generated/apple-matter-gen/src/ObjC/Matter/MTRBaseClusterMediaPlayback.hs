{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Media Playback    This cluster provides an interface for controlling Media Playback (PLAY, PAUSE, etc) on a media device such as a TV or Speaker.
--
-- Generated bindings for @MTRBaseClusterMediaPlayback@.
module ObjC.Matter.MTRBaseClusterMediaPlayback
  ( MTRBaseClusterMediaPlayback
  , IsMTRBaseClusterMediaPlayback(..)
  , initWithDevice_endpoint_queue
  , playWithParams_completionHandler
  , playWithCompletionHandler
  , pauseWithParams_completionHandler
  , pauseWithCompletionHandler
  , stopPlaybackWithParams_completionHandler
  , stopPlaybackWithCompletionHandler
  , startOverWithParams_completionHandler
  , startOverWithCompletionHandler
  , previousWithParams_completionHandler
  , previousWithCompletionHandler
  , nextWithParams_completionHandler
  , nextWithCompletionHandler
  , rewindWithParams_completionHandler
  , rewindWithCompletionHandler
  , fastForwardWithParams_completionHandler
  , fastForwardWithCompletionHandler
  , skipForwardWithParams_completionHandler
  , skipBackwardWithParams_completionHandler
  , seekWithParams_completionHandler
  , readAttributeCurrentStateWithCompletionHandler
  , subscribeAttributeCurrentStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeCurrentStateWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeStartTimeWithCompletionHandler
  , subscribeAttributeStartTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeStartTimeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeDurationWithCompletionHandler
  , subscribeAttributeDurationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeDurationWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSampledPositionWithCompletionHandler
  , subscribeAttributeSampledPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSampledPositionWithAttributeCache_endpoint_queue_completionHandler
  , readAttributePlaybackSpeedWithCompletionHandler
  , subscribeAttributePlaybackSpeedWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributePlaybackSpeedWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSeekRangeEndWithCompletionHandler
  , subscribeAttributeSeekRangeEndWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSeekRangeEndWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeSeekRangeStartWithCompletionHandler
  , subscribeAttributeSeekRangeStartWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeSeekRangeStartWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeGeneratedCommandListWithCompletionHandler
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAcceptedCommandListWithCompletionHandler
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAttributeListWithCompletionHandler
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeFeatureMapWithCompletionHandler
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeClusterRevisionWithCompletionHandler
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler
  , init_
  , new
  , fastForwardWithCompletionHandlerSelector
  , fastForwardWithParams_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , nextWithCompletionHandlerSelector
  , nextWithParams_completionHandlerSelector
  , pauseWithCompletionHandlerSelector
  , pauseWithParams_completionHandlerSelector
  , playWithCompletionHandlerSelector
  , playWithParams_completionHandlerSelector
  , previousWithCompletionHandlerSelector
  , previousWithParams_completionHandlerSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeCurrentStateWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeCurrentStateWithCompletionHandlerSelector
  , readAttributeDurationWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeDurationWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributePlaybackSpeedWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributePlaybackSpeedWithCompletionHandlerSelector
  , readAttributeSampledPositionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSampledPositionWithCompletionHandlerSelector
  , readAttributeSeekRangeEndWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSeekRangeEndWithCompletionHandlerSelector
  , readAttributeSeekRangeStartWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeSeekRangeStartWithCompletionHandlerSelector
  , readAttributeStartTimeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeStartTimeWithCompletionHandlerSelector
  , rewindWithCompletionHandlerSelector
  , rewindWithParams_completionHandlerSelector
  , seekWithParams_completionHandlerSelector
  , skipBackwardWithParams_completionHandlerSelector
  , skipForwardWithParams_completionHandlerSelector
  , startOverWithCompletionHandlerSelector
  , startOverWithParams_completionHandlerSelector
  , stopPlaybackWithCompletionHandlerSelector
  , stopPlaybackWithParams_completionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeCurrentStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeDurationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributePlaybackSpeedWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSampledPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSeekRangeEndWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeSeekRangeStartWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeStartTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queue :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterMediaPlayback -> device -> CUShort -> queue -> IO (Id MTRBaseClusterMediaPlayback)
initWithDevice_endpoint_queue mtrBaseClusterMediaPlayback device endpoint queue =
  sendOwnedMessage mtrBaseClusterMediaPlayback initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- playWithParams:completionHandler:@
playWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterPlayParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
playWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback playWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterPlayParams params) completionHandler

-- | @- playWithCompletionHandler:@
playWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
playWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback playWithCompletionHandlerSelector completionHandler

-- | @- pauseWithParams:completionHandler:@
pauseWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterPauseParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
pauseWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback pauseWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterPauseParams params) completionHandler

-- | @- pauseWithCompletionHandler:@
pauseWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
pauseWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback pauseWithCompletionHandlerSelector completionHandler

-- | @- stopPlaybackWithParams:completionHandler:@
stopPlaybackWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterStopPlaybackParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
stopPlaybackWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback stopPlaybackWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterStopPlaybackParams params) completionHandler

-- | @- stopPlaybackWithCompletionHandler:@
stopPlaybackWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
stopPlaybackWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback stopPlaybackWithCompletionHandlerSelector completionHandler

-- | @- startOverWithParams:completionHandler:@
startOverWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterStartOverParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
startOverWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback startOverWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterStartOverParams params) completionHandler

-- | @- startOverWithCompletionHandler:@
startOverWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
startOverWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback startOverWithCompletionHandlerSelector completionHandler

-- | @- previousWithParams:completionHandler:@
previousWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterPreviousParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
previousWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback previousWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterPreviousParams params) completionHandler

-- | @- previousWithCompletionHandler:@
previousWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
previousWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback previousWithCompletionHandlerSelector completionHandler

-- | @- nextWithParams:completionHandler:@
nextWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterNextParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
nextWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback nextWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterNextParams params) completionHandler

-- | @- nextWithCompletionHandler:@
nextWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
nextWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback nextWithCompletionHandlerSelector completionHandler

-- | @- rewindWithParams:completionHandler:@
rewindWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterRewindParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
rewindWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback rewindWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterRewindParams params) completionHandler

-- | @- rewindWithCompletionHandler:@
rewindWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
rewindWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback rewindWithCompletionHandlerSelector completionHandler

-- | @- fastForwardWithParams:completionHandler:@
fastForwardWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterFastForwardParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
fastForwardWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback fastForwardWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterFastForwardParams params) completionHandler

-- | @- fastForwardWithCompletionHandler:@
fastForwardWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
fastForwardWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback fastForwardWithCompletionHandlerSelector completionHandler

-- | @- skipForwardWithParams:completionHandler:@
skipForwardWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterSkipForwardParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
skipForwardWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback skipForwardWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterSkipForwardParams params) completionHandler

-- | @- skipBackwardWithParams:completionHandler:@
skipBackwardWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterSkipBackwardParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
skipBackwardWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback skipBackwardWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterSkipBackwardParams params) completionHandler

-- | @- seekWithParams:completionHandler:@
seekWithParams_completionHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsMTRMediaPlaybackClusterSeekParams params) => mtrBaseClusterMediaPlayback -> params -> Ptr () -> IO ()
seekWithParams_completionHandler mtrBaseClusterMediaPlayback params completionHandler =
  sendMessage mtrBaseClusterMediaPlayback seekWithParams_completionHandlerSelector (toMTRMediaPlaybackClusterSeekParams params) completionHandler

-- | @- readAttributeCurrentStateWithCompletionHandler:@
readAttributeCurrentStateWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeCurrentStateWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeCurrentStateWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeCurrentStateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeCurrentStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeCurrentStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeCurrentStateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentStateWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeCurrentStateWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeCurrentStateWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeStartTimeWithCompletionHandler:@
readAttributeStartTimeWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeStartTimeWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeStartTimeWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeStartTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStartTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeStartTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeStartTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeStartTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStartTimeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeStartTimeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeStartTimeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeDurationWithCompletionHandler:@
readAttributeDurationWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeDurationWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeDurationWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeDurationWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeDurationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeDurationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeDurationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeDurationWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeDurationWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeDurationWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeDurationWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSampledPositionWithCompletionHandler:@
readAttributeSampledPositionWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeSampledPositionWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeSampledPositionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSampledPositionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSampledPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSampledPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeSampledPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSampledPositionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSampledPositionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSampledPositionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeSampledPositionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributePlaybackSpeedWithCompletionHandler:@
readAttributePlaybackSpeedWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributePlaybackSpeedWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributePlaybackSpeedWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributePlaybackSpeedWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePlaybackSpeedWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributePlaybackSpeedWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributePlaybackSpeedWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributePlaybackSpeedWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePlaybackSpeedWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributePlaybackSpeedWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributePlaybackSpeedWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSeekRangeEndWithCompletionHandler:@
readAttributeSeekRangeEndWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeSeekRangeEndWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeSeekRangeEndWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSeekRangeEndWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSeekRangeEndWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSeekRangeEndWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeSeekRangeEndWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSeekRangeEndWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSeekRangeEndWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSeekRangeEndWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeSeekRangeEndWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeSeekRangeStartWithCompletionHandler:@
readAttributeSeekRangeStartWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeSeekRangeStartWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeSeekRangeStartWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeSeekRangeStartWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSeekRangeStartWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeSeekRangeStartWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeSeekRangeStartWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeSeekRangeStartWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSeekRangeStartWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeSeekRangeStartWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeSeekRangeStartWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterMediaPlayback completionHandler =
  sendMessage mtrBaseClusterMediaPlayback readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterMediaPlayback -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterMediaPlayback minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterMediaPlayback subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterMediaPlayback mtrBaseClusterMediaPlayback => mtrBaseClusterMediaPlayback -> IO (Id MTRBaseClusterMediaPlayback)
init_ mtrBaseClusterMediaPlayback =
  sendOwnedMessage mtrBaseClusterMediaPlayback initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterMediaPlayback)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterMediaPlayback"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterMediaPlayback)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @playWithParams:completionHandler:@
playWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterPlayParams, Ptr ()] ()
playWithParams_completionHandlerSelector = mkSelector "playWithParams:completionHandler:"

-- | @Selector@ for @playWithCompletionHandler:@
playWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
playWithCompletionHandlerSelector = mkSelector "playWithCompletionHandler:"

-- | @Selector@ for @pauseWithParams:completionHandler:@
pauseWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterPauseParams, Ptr ()] ()
pauseWithParams_completionHandlerSelector = mkSelector "pauseWithParams:completionHandler:"

-- | @Selector@ for @pauseWithCompletionHandler:@
pauseWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
pauseWithCompletionHandlerSelector = mkSelector "pauseWithCompletionHandler:"

-- | @Selector@ for @stopPlaybackWithParams:completionHandler:@
stopPlaybackWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterStopPlaybackParams, Ptr ()] ()
stopPlaybackWithParams_completionHandlerSelector = mkSelector "stopPlaybackWithParams:completionHandler:"

-- | @Selector@ for @stopPlaybackWithCompletionHandler:@
stopPlaybackWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
stopPlaybackWithCompletionHandlerSelector = mkSelector "stopPlaybackWithCompletionHandler:"

-- | @Selector@ for @startOverWithParams:completionHandler:@
startOverWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterStartOverParams, Ptr ()] ()
startOverWithParams_completionHandlerSelector = mkSelector "startOverWithParams:completionHandler:"

-- | @Selector@ for @startOverWithCompletionHandler:@
startOverWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
startOverWithCompletionHandlerSelector = mkSelector "startOverWithCompletionHandler:"

-- | @Selector@ for @previousWithParams:completionHandler:@
previousWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterPreviousParams, Ptr ()] ()
previousWithParams_completionHandlerSelector = mkSelector "previousWithParams:completionHandler:"

-- | @Selector@ for @previousWithCompletionHandler:@
previousWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
previousWithCompletionHandlerSelector = mkSelector "previousWithCompletionHandler:"

-- | @Selector@ for @nextWithParams:completionHandler:@
nextWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterNextParams, Ptr ()] ()
nextWithParams_completionHandlerSelector = mkSelector "nextWithParams:completionHandler:"

-- | @Selector@ for @nextWithCompletionHandler:@
nextWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
nextWithCompletionHandlerSelector = mkSelector "nextWithCompletionHandler:"

-- | @Selector@ for @rewindWithParams:completionHandler:@
rewindWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterRewindParams, Ptr ()] ()
rewindWithParams_completionHandlerSelector = mkSelector "rewindWithParams:completionHandler:"

-- | @Selector@ for @rewindWithCompletionHandler:@
rewindWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
rewindWithCompletionHandlerSelector = mkSelector "rewindWithCompletionHandler:"

-- | @Selector@ for @fastForwardWithParams:completionHandler:@
fastForwardWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterFastForwardParams, Ptr ()] ()
fastForwardWithParams_completionHandlerSelector = mkSelector "fastForwardWithParams:completionHandler:"

-- | @Selector@ for @fastForwardWithCompletionHandler:@
fastForwardWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
fastForwardWithCompletionHandlerSelector = mkSelector "fastForwardWithCompletionHandler:"

-- | @Selector@ for @skipForwardWithParams:completionHandler:@
skipForwardWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterSkipForwardParams, Ptr ()] ()
skipForwardWithParams_completionHandlerSelector = mkSelector "skipForwardWithParams:completionHandler:"

-- | @Selector@ for @skipBackwardWithParams:completionHandler:@
skipBackwardWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterSkipBackwardParams, Ptr ()] ()
skipBackwardWithParams_completionHandlerSelector = mkSelector "skipBackwardWithParams:completionHandler:"

-- | @Selector@ for @seekWithParams:completionHandler:@
seekWithParams_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterSeekParams, Ptr ()] ()
seekWithParams_completionHandlerSelector = mkSelector "seekWithParams:completionHandler:"

-- | @Selector@ for @readAttributeCurrentStateWithCompletionHandler:@
readAttributeCurrentStateWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeCurrentStateWithCompletionHandlerSelector = mkSelector "readAttributeCurrentStateWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeCurrentStateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeCurrentStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeCurrentStateWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeCurrentStateWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeCurrentStateWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeCurrentStateWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeCurrentStateWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeCurrentStateWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeStartTimeWithCompletionHandler:@
readAttributeStartTimeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeStartTimeWithCompletionHandlerSelector = mkSelector "readAttributeStartTimeWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeStartTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStartTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeStartTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeStartTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeStartTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStartTimeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeStartTimeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeStartTimeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeDurationWithCompletionHandler:@
readAttributeDurationWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeDurationWithCompletionHandlerSelector = mkSelector "readAttributeDurationWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeDurationWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeDurationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeDurationWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeDurationWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeDurationWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeDurationWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeDurationWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeDurationWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSampledPositionWithCompletionHandler:@
readAttributeSampledPositionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSampledPositionWithCompletionHandlerSelector = mkSelector "readAttributeSampledPositionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSampledPositionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSampledPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSampledPositionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSampledPositionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSampledPositionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSampledPositionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSampledPositionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSampledPositionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributePlaybackSpeedWithCompletionHandler:@
readAttributePlaybackSpeedWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributePlaybackSpeedWithCompletionHandlerSelector = mkSelector "readAttributePlaybackSpeedWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributePlaybackSpeedWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributePlaybackSpeedWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributePlaybackSpeedWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributePlaybackSpeedWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributePlaybackSpeedWithAttributeCache:endpoint:queue:completionHandler:@
readAttributePlaybackSpeedWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributePlaybackSpeedWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributePlaybackSpeedWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSeekRangeEndWithCompletionHandler:@
readAttributeSeekRangeEndWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSeekRangeEndWithCompletionHandlerSelector = mkSelector "readAttributeSeekRangeEndWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSeekRangeEndWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSeekRangeEndWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSeekRangeEndWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSeekRangeEndWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSeekRangeEndWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSeekRangeEndWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSeekRangeEndWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSeekRangeEndWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeSeekRangeStartWithCompletionHandler:@
readAttributeSeekRangeStartWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeSeekRangeStartWithCompletionHandlerSelector = mkSelector "readAttributeSeekRangeStartWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeSeekRangeStartWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeSeekRangeStartWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeSeekRangeStartWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeSeekRangeStartWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeSeekRangeStartWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeSeekRangeStartWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeSeekRangeStartWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeSeekRangeStartWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeGeneratedCommandListWithCompletionHandlerSelector = mkSelector "readAttributeGeneratedCommandListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAcceptedCommandListWithCompletionHandlerSelector = mkSelector "readAttributeAcceptedCommandListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAttributeListWithCompletionHandlerSelector = mkSelector "readAttributeAttributeListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeFeatureMapWithCompletionHandlerSelector = mkSelector "readAttributeFeatureMapWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeClusterRevisionWithCompletionHandlerSelector = mkSelector "readAttributeClusterRevisionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBaseClusterMediaPlayback)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterMediaPlayback)
newSelector = mkSelector "new"

