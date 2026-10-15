{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster Media Playback    This cluster provides an interface for controlling Media Playback (PLAY, PAUSE, etc) on a media device such as a TV or Speaker.
--
-- Generated bindings for @MTRClusterMediaPlayback@.
module ObjC.Matter.MTRClusterMediaPlayback
  ( MTRClusterMediaPlayback
  , IsMTRClusterMediaPlayback(..)
  , initWithDevice_endpoint_queue
  , playWithParams_expectedValues_expectedValueInterval_completionHandler
  , playWithExpectedValues_expectedValueInterval_completionHandler
  , pauseWithParams_expectedValues_expectedValueInterval_completionHandler
  , pauseWithExpectedValues_expectedValueInterval_completionHandler
  , stopPlaybackWithParams_expectedValues_expectedValueInterval_completionHandler
  , stopPlaybackWithExpectedValues_expectedValueInterval_completionHandler
  , startOverWithParams_expectedValues_expectedValueInterval_completionHandler
  , startOverWithExpectedValues_expectedValueInterval_completionHandler
  , previousWithParams_expectedValues_expectedValueInterval_completionHandler
  , previousWithExpectedValues_expectedValueInterval_completionHandler
  , nextWithParams_expectedValues_expectedValueInterval_completionHandler
  , nextWithExpectedValues_expectedValueInterval_completionHandler
  , rewindWithParams_expectedValues_expectedValueInterval_completionHandler
  , rewindWithExpectedValues_expectedValueInterval_completionHandler
  , fastForwardWithParams_expectedValues_expectedValueInterval_completionHandler
  , fastForwardWithExpectedValues_expectedValueInterval_completionHandler
  , skipForwardWithParams_expectedValues_expectedValueInterval_completionHandler
  , skipBackwardWithParams_expectedValues_expectedValueInterval_completionHandler
  , seekWithParams_expectedValues_expectedValueInterval_completionHandler
  , readAttributeCurrentStateWithParams
  , readAttributeStartTimeWithParams
  , readAttributeDurationWithParams
  , readAttributeSampledPositionWithParams
  , readAttributePlaybackSpeedWithParams
  , readAttributeSeekRangeEndWithParams
  , readAttributeSeekRangeStartWithParams
  , readAttributeGeneratedCommandListWithParams
  , readAttributeAcceptedCommandListWithParams
  , readAttributeAttributeListWithParams
  , readAttributeFeatureMapWithParams
  , readAttributeClusterRevisionWithParams
  , init_
  , new
  , fastForwardWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , fastForwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , nextWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , nextWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , pauseWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , pauseWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , playWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , playWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , previousWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , previousWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , readAttributeAcceptedCommandListWithParamsSelector
  , readAttributeAttributeListWithParamsSelector
  , readAttributeClusterRevisionWithParamsSelector
  , readAttributeCurrentStateWithParamsSelector
  , readAttributeDurationWithParamsSelector
  , readAttributeFeatureMapWithParamsSelector
  , readAttributeGeneratedCommandListWithParamsSelector
  , readAttributePlaybackSpeedWithParamsSelector
  , readAttributeSampledPositionWithParamsSelector
  , readAttributeSeekRangeEndWithParamsSelector
  , readAttributeSeekRangeStartWithParamsSelector
  , readAttributeStartTimeWithParamsSelector
  , rewindWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , rewindWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , seekWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , skipBackwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , skipForwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , startOverWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , startOverWithParams_expectedValues_expectedValueInterval_completionHandlerSelector
  , stopPlaybackWithExpectedValues_expectedValueInterval_completionHandlerSelector
  , stopPlaybackWithParams_expectedValues_expectedValueInterval_completionHandlerSelector


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
initWithDevice_endpoint_queue :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRDevice device, IsNSObject queue) => mtrClusterMediaPlayback -> device -> CUShort -> queue -> IO (Id MTRClusterMediaPlayback)
initWithDevice_endpoint_queue mtrClusterMediaPlayback device endpoint queue =
  sendOwnedMessage mtrClusterMediaPlayback initWithDevice_endpoint_queueSelector (toMTRDevice device) endpoint (toNSObject queue)

-- | @- playWithParams:expectedValues:expectedValueInterval:completionHandler:@
playWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterPlayParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
playWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback playWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterPlayParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- playWithExpectedValues:expectedValueInterval:completionHandler:@
playWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
playWithExpectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback playWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- pauseWithParams:expectedValues:expectedValueInterval:completionHandler:@
pauseWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterPauseParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
pauseWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback pauseWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterPauseParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- pauseWithExpectedValues:expectedValueInterval:completionHandler:@
pauseWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
pauseWithExpectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback pauseWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- stopPlaybackWithParams:expectedValues:expectedValueInterval:completionHandler:@
stopPlaybackWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterStopPlaybackParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
stopPlaybackWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback stopPlaybackWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterStopPlaybackParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- stopPlaybackWithExpectedValues:expectedValueInterval:completionHandler:@
stopPlaybackWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
stopPlaybackWithExpectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback stopPlaybackWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- startOverWithParams:expectedValues:expectedValueInterval:completionHandler:@
startOverWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterStartOverParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
startOverWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback startOverWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterStartOverParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- startOverWithExpectedValues:expectedValueInterval:completionHandler:@
startOverWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
startOverWithExpectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback startOverWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- previousWithParams:expectedValues:expectedValueInterval:completionHandler:@
previousWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterPreviousParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
previousWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback previousWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterPreviousParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- previousWithExpectedValues:expectedValueInterval:completionHandler:@
previousWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
previousWithExpectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback previousWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- nextWithParams:expectedValues:expectedValueInterval:completionHandler:@
nextWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterNextParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
nextWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback nextWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterNextParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- nextWithExpectedValues:expectedValueInterval:completionHandler:@
nextWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
nextWithExpectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback nextWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- rewindWithParams:expectedValues:expectedValueInterval:completionHandler:@
rewindWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterRewindParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
rewindWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback rewindWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterRewindParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- rewindWithExpectedValues:expectedValueInterval:completionHandler:@
rewindWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
rewindWithExpectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback rewindWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- fastForwardWithParams:expectedValues:expectedValueInterval:completionHandler:@
fastForwardWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterFastForwardParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
fastForwardWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback fastForwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterFastForwardParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- fastForwardWithExpectedValues:expectedValueInterval:completionHandler:@
fastForwardWithExpectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsNSArray expectedValues, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> expectedValues -> expectedValueIntervalMs -> Ptr () -> IO ()
fastForwardWithExpectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback expectedValues expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback fastForwardWithExpectedValues_expectedValueInterval_completionHandlerSelector (toNSArray expectedValues) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- skipForwardWithParams:expectedValues:expectedValueInterval:completionHandler:@
skipForwardWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterSkipForwardParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
skipForwardWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback skipForwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterSkipForwardParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- skipBackwardWithParams:expectedValues:expectedValueInterval:completionHandler:@
skipBackwardWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterSkipBackwardParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
skipBackwardWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback skipBackwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterSkipBackwardParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- seekWithParams:expectedValues:expectedValueInterval:completionHandler:@
seekWithParams_expectedValues_expectedValueInterval_completionHandler :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRMediaPlaybackClusterSeekParams params, IsNSArray expectedDataValueDictionaries, IsNSNumber expectedValueIntervalMs) => mtrClusterMediaPlayback -> params -> expectedDataValueDictionaries -> expectedValueIntervalMs -> Ptr () -> IO ()
seekWithParams_expectedValues_expectedValueInterval_completionHandler mtrClusterMediaPlayback params expectedDataValueDictionaries expectedValueIntervalMs completionHandler =
  sendMessage mtrClusterMediaPlayback seekWithParams_expectedValues_expectedValueInterval_completionHandlerSelector (toMTRMediaPlaybackClusterSeekParams params) (toNSArray expectedDataValueDictionaries) (toNSNumber expectedValueIntervalMs) completionHandler

-- | @- readAttributeCurrentStateWithParams:@
readAttributeCurrentStateWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeCurrentStateWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeCurrentStateWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeStartTimeWithParams:@
readAttributeStartTimeWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeStartTimeWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeStartTimeWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeDurationWithParams:@
readAttributeDurationWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeDurationWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeDurationWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSampledPositionWithParams:@
readAttributeSampledPositionWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeSampledPositionWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeSampledPositionWithParamsSelector (toMTRReadParams params)

-- | @- readAttributePlaybackSpeedWithParams:@
readAttributePlaybackSpeedWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributePlaybackSpeedWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributePlaybackSpeedWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSeekRangeEndWithParams:@
readAttributeSeekRangeEndWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeSeekRangeEndWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeSeekRangeEndWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeSeekRangeStartWithParams:@
readAttributeSeekRangeStartWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeSeekRangeStartWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeSeekRangeStartWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeGeneratedCommandListWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeGeneratedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeAcceptedCommandListWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeAcceptedCommandListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeAttributeListWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeAttributeListWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeFeatureMapWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeFeatureMapWithParamsSelector (toMTRReadParams params)

-- | @- readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParams :: (IsMTRClusterMediaPlayback mtrClusterMediaPlayback, IsMTRReadParams params) => mtrClusterMediaPlayback -> params -> IO (Id NSDictionary)
readAttributeClusterRevisionWithParams mtrClusterMediaPlayback params =
  sendMessage mtrClusterMediaPlayback readAttributeClusterRevisionWithParamsSelector (toMTRReadParams params)

-- | @- init@
init_ :: IsMTRClusterMediaPlayback mtrClusterMediaPlayback => mtrClusterMediaPlayback -> IO (Id MTRClusterMediaPlayback)
init_ mtrClusterMediaPlayback =
  sendOwnedMessage mtrClusterMediaPlayback initSelector

-- | @+ new@
new :: IO (Id MTRClusterMediaPlayback)
new  =
  do
    cls' <- getRequiredClass "MTRClusterMediaPlayback"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRDevice, CUShort, Id NSObject] (Id MTRClusterMediaPlayback)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @playWithParams:expectedValues:expectedValueInterval:completionHandler:@
playWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterPlayParams, Id NSArray, Id NSNumber, Ptr ()] ()
playWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "playWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @playWithExpectedValues:expectedValueInterval:completionHandler:@
playWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
playWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "playWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @pauseWithParams:expectedValues:expectedValueInterval:completionHandler:@
pauseWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterPauseParams, Id NSArray, Id NSNumber, Ptr ()] ()
pauseWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "pauseWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @pauseWithExpectedValues:expectedValueInterval:completionHandler:@
pauseWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
pauseWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "pauseWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @stopPlaybackWithParams:expectedValues:expectedValueInterval:completionHandler:@
stopPlaybackWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterStopPlaybackParams, Id NSArray, Id NSNumber, Ptr ()] ()
stopPlaybackWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "stopPlaybackWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @stopPlaybackWithExpectedValues:expectedValueInterval:completionHandler:@
stopPlaybackWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
stopPlaybackWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "stopPlaybackWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @startOverWithParams:expectedValues:expectedValueInterval:completionHandler:@
startOverWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterStartOverParams, Id NSArray, Id NSNumber, Ptr ()] ()
startOverWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "startOverWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @startOverWithExpectedValues:expectedValueInterval:completionHandler:@
startOverWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
startOverWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "startOverWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @previousWithParams:expectedValues:expectedValueInterval:completionHandler:@
previousWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterPreviousParams, Id NSArray, Id NSNumber, Ptr ()] ()
previousWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "previousWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @previousWithExpectedValues:expectedValueInterval:completionHandler:@
previousWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
previousWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "previousWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @nextWithParams:expectedValues:expectedValueInterval:completionHandler:@
nextWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterNextParams, Id NSArray, Id NSNumber, Ptr ()] ()
nextWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "nextWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @nextWithExpectedValues:expectedValueInterval:completionHandler:@
nextWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
nextWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "nextWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @rewindWithParams:expectedValues:expectedValueInterval:completionHandler:@
rewindWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterRewindParams, Id NSArray, Id NSNumber, Ptr ()] ()
rewindWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "rewindWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @rewindWithExpectedValues:expectedValueInterval:completionHandler:@
rewindWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
rewindWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "rewindWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @fastForwardWithParams:expectedValues:expectedValueInterval:completionHandler:@
fastForwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterFastForwardParams, Id NSArray, Id NSNumber, Ptr ()] ()
fastForwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "fastForwardWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @fastForwardWithExpectedValues:expectedValueInterval:completionHandler:@
fastForwardWithExpectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id NSArray, Id NSNumber, Ptr ()] ()
fastForwardWithExpectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "fastForwardWithExpectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @skipForwardWithParams:expectedValues:expectedValueInterval:completionHandler:@
skipForwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterSkipForwardParams, Id NSArray, Id NSNumber, Ptr ()] ()
skipForwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "skipForwardWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @skipBackwardWithParams:expectedValues:expectedValueInterval:completionHandler:@
skipBackwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterSkipBackwardParams, Id NSArray, Id NSNumber, Ptr ()] ()
skipBackwardWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "skipBackwardWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @seekWithParams:expectedValues:expectedValueInterval:completionHandler:@
seekWithParams_expectedValues_expectedValueInterval_completionHandlerSelector :: Selector '[Id MTRMediaPlaybackClusterSeekParams, Id NSArray, Id NSNumber, Ptr ()] ()
seekWithParams_expectedValues_expectedValueInterval_completionHandlerSelector = mkSelector "seekWithParams:expectedValues:expectedValueInterval:completionHandler:"

-- | @Selector@ for @readAttributeCurrentStateWithParams:@
readAttributeCurrentStateWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeCurrentStateWithParamsSelector = mkSelector "readAttributeCurrentStateWithParams:"

-- | @Selector@ for @readAttributeStartTimeWithParams:@
readAttributeStartTimeWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeStartTimeWithParamsSelector = mkSelector "readAttributeStartTimeWithParams:"

-- | @Selector@ for @readAttributeDurationWithParams:@
readAttributeDurationWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeDurationWithParamsSelector = mkSelector "readAttributeDurationWithParams:"

-- | @Selector@ for @readAttributeSampledPositionWithParams:@
readAttributeSampledPositionWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSampledPositionWithParamsSelector = mkSelector "readAttributeSampledPositionWithParams:"

-- | @Selector@ for @readAttributePlaybackSpeedWithParams:@
readAttributePlaybackSpeedWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributePlaybackSpeedWithParamsSelector = mkSelector "readAttributePlaybackSpeedWithParams:"

-- | @Selector@ for @readAttributeSeekRangeEndWithParams:@
readAttributeSeekRangeEndWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSeekRangeEndWithParamsSelector = mkSelector "readAttributeSeekRangeEndWithParams:"

-- | @Selector@ for @readAttributeSeekRangeStartWithParams:@
readAttributeSeekRangeStartWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeSeekRangeStartWithParamsSelector = mkSelector "readAttributeSeekRangeStartWithParams:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithParams:@
readAttributeGeneratedCommandListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeGeneratedCommandListWithParamsSelector = mkSelector "readAttributeGeneratedCommandListWithParams:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithParams:@
readAttributeAcceptedCommandListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeAcceptedCommandListWithParamsSelector = mkSelector "readAttributeAcceptedCommandListWithParams:"

-- | @Selector@ for @readAttributeAttributeListWithParams:@
readAttributeAttributeListWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeAttributeListWithParamsSelector = mkSelector "readAttributeAttributeListWithParams:"

-- | @Selector@ for @readAttributeFeatureMapWithParams:@
readAttributeFeatureMapWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeFeatureMapWithParamsSelector = mkSelector "readAttributeFeatureMapWithParams:"

-- | @Selector@ for @readAttributeClusterRevisionWithParams:@
readAttributeClusterRevisionWithParamsSelector :: Selector '[Id MTRReadParams] (Id NSDictionary)
readAttributeClusterRevisionWithParamsSelector = mkSelector "readAttributeClusterRevisionWithParams:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRClusterMediaPlayback)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRClusterMediaPlayback)
newSelector = mkSelector "new"

