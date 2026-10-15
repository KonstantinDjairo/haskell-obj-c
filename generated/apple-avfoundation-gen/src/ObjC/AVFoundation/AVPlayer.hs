{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Node that can play a video file
--
-- 2011 Apple, Inc. All rights reserved.
--
-- Generated bindings for @AVPlayer@.
module ObjC.AVFoundation.AVPlayer
  ( AVPlayer
  , IsAVPlayer(..)
  , playerWithURL
  , playerWithPlayerItem
  , initWithURL
  , initWithPlayerItem
  , setMediaSelectionCriteria_forMediaCharacteristic
  , mediaSelectionCriteriaForMediaCharacteristic
  , addBoundaryTimeObserverForTimes_queue_usingBlock
  , removeTimeObserver
  , prerollAtRate_completionHandler
  , cancelPendingPrerolls
  , seekToDate
  , seekToDate_completionHandler
  , replaceCurrentItemWithPlayerItem
  , play
  , pause
  , playImmediatelyAtRate
  , status
  , error_
  , closedCaptionDisplayEnabled
  , setClosedCaptionDisplayEnabled
  , masterClock
  , setMasterClock
  , playbackCoordinator
  , audiovisualBackgroundPlaybackPolicy
  , setAudiovisualBackgroundPlaybackPolicy
  , preventsDisplaySleepDuringVideoPlayback
  , setPreventsDisplaySleepDuringVideoPlayback
  , preferredVideoDecoderGPURegistryID
  , setPreferredVideoDecoderGPURegistryID
  , availableHDRModes
  , eligibleForHDRPlayback
  , outputObscuredDueToInsufficientExternalProtection
  , allowsExternalPlayback
  , setAllowsExternalPlayback
  , externalPlaybackActive
  , usesExternalPlaybackWhileExternalScreenIsActive
  , setUsesExternalPlaybackWhileExternalScreenIsActive
  , externalPlaybackVideoGravity
  , setExternalPlaybackVideoGravity
  , audioOutputDeviceUniqueID
  , setAudioOutputDeviceUniqueID
  , appliesMediaSelectionCriteriaAutomatically
  , setAppliesMediaSelectionCriteriaAutomatically
  , volume
  , setVolume
  , muted
  , setMuted
  , automaticallyWaitsToMinimizeStalling
  , setAutomaticallyWaitsToMinimizeStalling
  , sourceClock
  , setSourceClock
  , currentItem
  , actionAtItemEnd
  , setActionAtItemEnd
  , rate
  , setRate
  , defaultRate
  , setDefaultRate
  , timeControlStatus
  , reasonForWaitingToPlay
  , actionAtItemEndSelector
  , addBoundaryTimeObserverForTimes_queue_usingBlockSelector
  , allowsExternalPlaybackSelector
  , appliesMediaSelectionCriteriaAutomaticallySelector
  , audioOutputDeviceUniqueIDSelector
  , audiovisualBackgroundPlaybackPolicySelector
  , automaticallyWaitsToMinimizeStallingSelector
  , availableHDRModesSelector
  , cancelPendingPrerollsSelector
  , closedCaptionDisplayEnabledSelector
  , currentItemSelector
  , defaultRateSelector
  , eligibleForHDRPlaybackSelector
  , errorSelector
  , externalPlaybackActiveSelector
  , externalPlaybackVideoGravitySelector
  , initWithPlayerItemSelector
  , initWithURLSelector
  , masterClockSelector
  , mediaSelectionCriteriaForMediaCharacteristicSelector
  , mutedSelector
  , outputObscuredDueToInsufficientExternalProtectionSelector
  , pauseSelector
  , playImmediatelyAtRateSelector
  , playSelector
  , playbackCoordinatorSelector
  , playerWithPlayerItemSelector
  , playerWithURLSelector
  , preferredVideoDecoderGPURegistryIDSelector
  , prerollAtRate_completionHandlerSelector
  , preventsDisplaySleepDuringVideoPlaybackSelector
  , rateSelector
  , reasonForWaitingToPlaySelector
  , removeTimeObserverSelector
  , replaceCurrentItemWithPlayerItemSelector
  , seekToDateSelector
  , seekToDate_completionHandlerSelector
  , setActionAtItemEndSelector
  , setAllowsExternalPlaybackSelector
  , setAppliesMediaSelectionCriteriaAutomaticallySelector
  , setAudioOutputDeviceUniqueIDSelector
  , setAudiovisualBackgroundPlaybackPolicySelector
  , setAutomaticallyWaitsToMinimizeStallingSelector
  , setClosedCaptionDisplayEnabledSelector
  , setDefaultRateSelector
  , setExternalPlaybackVideoGravitySelector
  , setMasterClockSelector
  , setMediaSelectionCriteria_forMediaCharacteristicSelector
  , setMutedSelector
  , setPreferredVideoDecoderGPURegistryIDSelector
  , setPreventsDisplaySleepDuringVideoPlaybackSelector
  , setRateSelector
  , setSourceClockSelector
  , setUsesExternalPlaybackWhileExternalScreenIsActiveSelector
  , setVolumeSelector
  , sourceClockSelector
  , statusSelector
  , timeControlStatusSelector
  , usesExternalPlaybackWhileExternalScreenIsActiveSelector
  , volumeSelector

  -- * Enum types
  , AVPlayerActionAtItemEnd(AVPlayerActionAtItemEnd)
  , pattern AVPlayerActionAtItemEndAdvance
  , pattern AVPlayerActionAtItemEndPause
  , pattern AVPlayerActionAtItemEndNone
  , AVPlayerAudiovisualBackgroundPlaybackPolicy(AVPlayerAudiovisualBackgroundPlaybackPolicy)
  , pattern AVPlayerAudiovisualBackgroundPlaybackPolicyAutomatic
  , pattern AVPlayerAudiovisualBackgroundPlaybackPolicyPauses
  , pattern AVPlayerAudiovisualBackgroundPlaybackPolicyContinuesIfPossible
  , AVPlayerHDRMode(AVPlayerHDRMode)
  , pattern AVPlayerHDRModeHLG
  , pattern AVPlayerHDRModeHDR10
  , pattern AVPlayerHDRModeDolbyVision
  , AVPlayerStatus(AVPlayerStatus)
  , pattern AVPlayerStatusUnknown
  , pattern AVPlayerStatusReadyToPlay
  , pattern AVPlayerStatusFailed
  , AVPlayerTimeControlStatus(AVPlayerTimeControlStatus)
  , pattern AVPlayerTimeControlStatusPaused
  , pattern AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate
  , pattern AVPlayerTimeControlStatusPlaying

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.AVFoundation.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | playerWithURL:
--
-- Returns an instance of AVPlayer that plays a single audiovisual resource referenced by URL.
--
-- @URL@ —
--
-- Returns: An instance of AVPlayer
--
-- Implicitly creates an AVPlayerItem. Clients can obtain the AVPlayerItem as it becomes the player's currentItem.
--
-- ObjC selector: @+ playerWithURL:@
playerWithURL :: IsNSURL url => url -> IO (Id AVPlayer)
playerWithURL url =
  do
    cls' <- getRequiredClass "AVPlayer"
    sendClassMessage cls' playerWithURLSelector (toNSURL url)

-- | playerWithPlayerItem:
--
-- Create an AVPlayer that plays a single audiovisual item.
--
-- @item@ —
--
-- Returns: An instance of AVPlayer
--
-- Useful in order to play items for which an AVAsset has previously been created. See -[AVPlayerItem initWithAsset:].
--
-- ObjC selector: @+ playerWithPlayerItem:@
playerWithPlayerItem :: IsAVPlayerItem item => item -> IO (Id AVPlayer)
playerWithPlayerItem item =
  do
    cls' <- getRequiredClass "AVPlayer"
    sendClassMessage cls' playerWithPlayerItemSelector (toAVPlayerItem item)

-- | initWithURL:
--
-- Initializes an AVPlayer that plays a single audiovisual resource referenced by URL.
--
-- @URL@ —
--
-- Returns: An instance of AVPlayer
--
-- Implicitly creates an AVPlayerItem. Clients can obtain the AVPlayerItem as it becomes the player's currentItem.
--
-- ObjC selector: @- initWithURL:@
initWithURL :: (IsAVPlayer avPlayer, IsNSURL url) => avPlayer -> url -> IO (Id AVPlayer)
initWithURL avPlayer url =
  sendOwnedMessage avPlayer initWithURLSelector (toNSURL url)

-- | initWithPlayerItem:
--
-- Create an AVPlayer that plays a single audiovisual item.
--
-- @item@ —
--
-- Returns: An instance of AVPlayer
--
-- Useful in order to play items for which an AVAsset has previously been created. See -[AVPlayerItem initWithAsset:].					This method throws an exception if the item is not an AVPlayerItem, or if the item is					associated with another AVPlayer.
--
-- ObjC selector: @- initWithPlayerItem:@
initWithPlayerItem :: (IsAVPlayer avPlayer, IsAVPlayerItem item) => avPlayer -> item -> IO (Id AVPlayer)
initWithPlayerItem avPlayer item =
  sendOwnedMessage avPlayer initWithPlayerItemSelector (toAVPlayerItem item)

-- | setMediaSelectionCriteria:forMediaCharacteristic:
--
-- Applies automatic selection criteria for media that has the specified media characteristic.
--
-- @criteria@ — An instance of AVPlayerMediaSelectionCriteria.
--
-- @mediaCharacteristic@ — The media characteristic for which the selection criteria are to be applied. Supported values include AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, and AVMediaCharacteristicVisual.
--
-- Criteria will be applied to an AVPlayerItem when:		a) It is made ready to play		b) Specific media selections are made by -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:] in a different group. The automatic choice in one group may be influenced by a specific selection in another group.		c) Underlying system preferences change, e.g. system language, accessibility captions.
--
-- Specific selections made by -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:] within any group will override automatic selection in that group until -[AVPlayerItem selectMediaOptionAutomaticallyInMediaSelectionGroup:] is received.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this method must be invoked on the main thread/queue.
--
-- ObjC selector: @- setMediaSelectionCriteria:forMediaCharacteristic:@
setMediaSelectionCriteria_forMediaCharacteristic :: (IsAVPlayer avPlayer, IsAVPlayerMediaSelectionCriteria criteria, IsNSString mediaCharacteristic) => avPlayer -> criteria -> mediaCharacteristic -> IO ()
setMediaSelectionCriteria_forMediaCharacteristic avPlayer criteria mediaCharacteristic =
  sendMessage avPlayer setMediaSelectionCriteria_forMediaCharacteristicSelector (toAVPlayerMediaSelectionCriteria criteria) (toNSString mediaCharacteristic)

-- | mediaSelectionCriteriaForMediaCharacteristic:
--
-- Returns the automatic selection criteria for media that has the specified media characteristic.
--
-- @mediaCharacteristic@ — The media characteristic for which the selection criteria is to be returned. Supported values include AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, and AVMediaCharacteristicVisual.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this method must be invoked on the main thread/queue.
--
-- ObjC selector: @- mediaSelectionCriteriaForMediaCharacteristic:@
mediaSelectionCriteriaForMediaCharacteristic :: (IsAVPlayer avPlayer, IsNSString mediaCharacteristic) => avPlayer -> mediaCharacteristic -> IO (Id AVPlayerMediaSelectionCriteria)
mediaSelectionCriteriaForMediaCharacteristic avPlayer mediaCharacteristic =
  sendMessage avPlayer mediaSelectionCriteriaForMediaCharacteristicSelector (toNSString mediaCharacteristic)

-- | addBoundaryTimeObserverForTimes:queue:usingBlock:
--
-- Requests invocation of a block when specified times are traversed during normal playback.
--
-- @times@ — The times for which the observer requests notification, supplied as an array of NSValues carrying CMTimes.
--
-- @queue@ — The serial queue onto which block should be enqueued.  If you pass NULL, the main queue (obtained using dispatch_get_main_queue()) will be used.  Passing a	  concurrent queue to this method will result in undefined behavior.
--
-- @block@ — The block to be invoked when any of the specified times is crossed during normal playback.
--
-- Returns: An object conforming to the NSObject protocol.  You must retain this returned value as long as you want the time observer to be invoked by the player.	  Pass this object to -removeTimeObserver: to cancel time observation.
--
-- Each call to -addPeriodicTimeObserverForInterval:queue:usingBlock: should be paired with a corresponding call to -removeTimeObserver:.					Releasing the observer object without a call to -removeTimeObserver: will result in undefined behavior.
--
-- ObjC selector: @- addBoundaryTimeObserverForTimes:queue:usingBlock:@
addBoundaryTimeObserverForTimes_queue_usingBlock :: (IsAVPlayer avPlayer, IsNSArray times, IsNSObject queue) => avPlayer -> times -> queue -> Ptr () -> IO RawId
addBoundaryTimeObserverForTimes_queue_usingBlock avPlayer times queue block =
  sendMessage avPlayer addBoundaryTimeObserverForTimes_queue_usingBlockSelector (toNSArray times) (toNSObject queue) block

-- | removeTimeObserver:
--
-- Cancels a previously registered time observer.
--
-- @observer@ — An object returned by a previous call to -addPeriodicTimeObserverForInterval:queue:usingBlock: or -addBoundaryTimeObserverForTimes:queue:usingBlock:.
--
-- Upon return, the caller is guaranteed that no new time observer blocks will begin executing.  Depending on the calling thread and the queue					used to add the time observer, an in-flight block may continue to execute after this method returns.  You can guarantee synchronous time 					observer removal by enqueuing the call to -removeTimeObserver: on that queue.  Alternatively, call dispatch_sync(queue, ^{}) after					-removeTimeObserver: to wait for any in-flight blocks to finish executing.					-removeTimeObserver: should be used to explicitly cancel each time observer added using -addPeriodicTimeObserverForInterval:queue:usingBlock:					and -addBoundaryTimeObserverForTimes:queue:usingBlock:.
--
-- This method throws an exception for any of the following reasons:						- observer was added by a different instance of AVPlayer						- observer was not returned by -addPeriodicTimeObserverForInterval:queue:usingBlock:						- observer was not returned by -addBoundaryTimeObserverForTimes:queue:usingBlock:
--
-- ObjC selector: @- removeTimeObserver:@
removeTimeObserver :: IsAVPlayer avPlayer => avPlayer -> RawId -> IO ()
removeTimeObserver avPlayer observer =
  sendMessage avPlayer removeTimeObserverSelector observer

-- | prerollAtRate:completionHandler:
--
-- Begins loading media data to prime the render pipelines for playback from the current time with the given rate.
--
-- Once the completion handler is called with YES, the player's rate can be set with minimal latency.				The completion handler will be called with NO if the preroll is interrupted by a time change or incompatible rate change, or if preroll is not possible for some other reason.				Call this method only when the rate is currently zero and only after the AVPlayer's status has become AVPlayerStatusReadyToPlay.				This method throws an exception if the status is not AVPlayerStatusReadyToPlay.
--
-- @rate@ — The intended rate for subsequent playback.
--
-- @completionHandler@ — The block that will be called when the preroll is either completed or is interrupted.
--
-- ObjC selector: @- prerollAtRate:completionHandler:@
prerollAtRate_completionHandler :: IsAVPlayer avPlayer => avPlayer -> CFloat -> Ptr () -> IO ()
prerollAtRate_completionHandler avPlayer rate completionHandler =
  sendMessage avPlayer prerollAtRate_completionHandlerSelector rate completionHandler

-- | cancelPendingPrerolls
--
-- Cancel any pending preroll requests and invoke the corresponding completion handlers if present.
--
-- Use this method to cancel and release the completion handlers for pending prerolls. The finished parameter of the completion handlers will be set to NO.
--
-- ObjC selector: @- cancelPendingPrerolls@
cancelPendingPrerolls :: IsAVPlayer avPlayer => avPlayer -> IO ()
cancelPendingPrerolls avPlayer =
  sendMessage avPlayer cancelPendingPrerollsSelector

-- | seekToDate:
--
-- Moves the playback cursor.
--
-- @date@ —
--
-- Use this method to seek to a specified time for the current player item.					The time seeked to may differ from the specified time for efficiency. For sample accurate seeking see seekToTime:toleranceBefore:toleranceAfter:.
--
-- ObjC selector: @- seekToDate:@
seekToDate :: (IsAVPlayer avPlayer, IsNSDate date) => avPlayer -> date -> IO ()
seekToDate avPlayer date =
  sendMessage avPlayer seekToDateSelector (toNSDate date)

-- | seekToDate:completionHandler:
--
-- Moves the playback cursor and invokes the specified block when the seek operation has either been completed or been interrupted.
--
-- @date@ —
--
-- @completionHandler@ —
--
-- Use this method to seek to a specified time for the current player item and to be notified when the seek operation is complete.					The completion handler for any prior seek request that is still in process will be invoked immediately with the finished parameter 					set to NO. If the new request completes without being interrupted by another seek request or by any other operation the specified 					completion handler will be invoked with the finished parameter set to YES.  If no item is attached, the completion handler will be					invoked immediately with the finished parameter set to NO.
--
-- ObjC selector: @- seekToDate:completionHandler:@
seekToDate_completionHandler :: (IsAVPlayer avPlayer, IsNSDate date) => avPlayer -> date -> Ptr () -> IO ()
seekToDate_completionHandler avPlayer date completionHandler =
  sendMessage avPlayer seekToDate_completionHandlerSelector (toNSDate date) completionHandler

-- | replaceCurrentItemWithPlayerItem:
--
-- Replaces the player's current item with the specified player item.
--
-- @item@ — The AVPlayerItem that will become the player's current item.
--
-- In all releases of iOS 4, invoking replaceCurrentItemWithPlayerItem: with an AVPlayerItem that's already the receiver's currentItem results in an exception being raised. Starting with iOS 5, it's a no-op.	  This method throws an exception if the item already exists in the play queue.
--
-- ObjC selector: @- replaceCurrentItemWithPlayerItem:@
replaceCurrentItemWithPlayerItem :: (IsAVPlayer avPlayer, IsAVPlayerItem item) => avPlayer -> item -> IO ()
replaceCurrentItemWithPlayerItem avPlayer item =
  sendMessage avPlayer replaceCurrentItemWithPlayerItemSelector (toAVPlayerItem item)

-- | play
--
-- Signals the desire to begin playback at the rate set in the defaultRate.
--
-- For releases up to iOS version 16.0, macOS versions 13.0, tvOS 16.0 and watchOS 9.0, this is equivalent to setting the value of rate to @1.0@. Starting from iOS version 16.0, macOS versions 13.0, tvOS 16.0 and watchOS 9.0, this will attempt to use the rate set in the @defaultRate@ property. The effective rate of playback may differ from the @defaultRate@ due to the reasons mentioned in the documentation of the @rate@ property. Clients interested in knowing the effective rate can listen for @AVPlayerRateDidChangeNotification@ notification.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this method must be invoked on the main thread/queue.
--
-- ObjC selector: @- play@
play :: IsAVPlayer avPlayer => avPlayer -> IO ()
play avPlayer =
  sendMessage avPlayer playSelector

-- | pause
--
-- Pauses playback.
--
-- Equivalent to setting the value of rate to 0.0.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this method must be invoked on the main thread/queue.
--
-- ObjC selector: @- pause@
pause :: IsAVPlayer avPlayer => avPlayer -> IO ()
pause avPlayer =
  sendMessage avPlayer pauseSelector

-- | playImmediatelyAtRate:
--
-- Immediately plays the available media data at the specified rate.
--
-- When the player's currentItem has a value of NO for playbackBufferEmpty, this method causes the value of rate to change to the specified rate, the value of timeControlStatus to change to AVPlayerTimeControlStatusPlaying, and the receiver to play the available media immediately, whether or not prior buffering of media data is sufficient to ensure smooth playback. If insufficient media data is buffered for playback to start (e.g. if the current item has a value of YES for playbackBufferEmpty), the receiver will act as if the buffer became empty during playback, except that no AVPlayerItemPlaybackStalledNotification will be posted.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this method must be invoked on the main thread/queue.
--
-- ObjC selector: @- playImmediatelyAtRate:@
playImmediatelyAtRate :: IsAVPlayer avPlayer => avPlayer -> CFloat -> IO ()
playImmediatelyAtRate avPlayer rate =
  sendMessage avPlayer playImmediatelyAtRateSelector rate

-- | status
--
-- The ability of the receiver to be used for playback.
--
-- The value of this property is an AVPlayerStatus that indicates whether the receiver can be used for playback. When	the value of this property is AVPlayerStatusFailed, the receiver can no longer be used for playback and a new	instance needs to be created in its place. When this happens, clients can check the value of the error property to	determine the nature of the failure. This property is key value observable.
--
-- ObjC selector: @- status@
status :: IsAVPlayer avPlayer => avPlayer -> IO AVPlayerStatus
status avPlayer =
  sendMessage avPlayer statusSelector

-- | error
--
-- If the receiver's status is AVPlayerStatusFailed, this describes the error that caused the failure.
--
-- The value of this property is an NSError that describes what caused the receiver to no longer be able to play items.	If the receiver's status is not AVPlayerStatusFailed, the value of this property is nil.
--
-- ObjC selector: @- error@
error_ :: IsAVPlayer avPlayer => avPlayer -> IO (Id NSError)
error_ avPlayer =
  sendMessage avPlayer errorSelector

-- | closedCaptionDisplayEnabled
--
-- Indicates whether display of closed captions is enabled.
--
-- This property is deprecated.
--
-- When the value of appliesMediaSelectionCriteriaAutomatically is YES, the receiver will enable closed captions automatically either according to user preferences or, if you provide them, according to AVPlayerMediaSelectionCriteria for the media characteristic AVMediaCharacteristicLegible.
--
-- If you want to determine whether closed captions may be available for a given AVPlayerItem, you can examine the AVMediaSelectionOptions in the AVMediaSelectionGroup for the characteristic AVMediaCharacteristicLegible, as vended by -[AVAsset mediaSelectionGroupForMediaCharacteristic:]. See AVMediaCharacteristicTranscribesSpokenDialogForAccessibility and AVMediaCharacteristicDescribesMusicAndSoundForAccessibility as documented in AVMediaFormat.h for information about how to identify legible media selection options that offer the features of closed captions for accessibility purposes.
--
-- You can select or deselect a specific AVMediaSelectionOption via -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:].
--
-- For further information about Media Accessibility preferences, see MediaAccessibility framework documentation.
--
-- ObjC selector: @- closedCaptionDisplayEnabled@
closedCaptionDisplayEnabled :: IsAVPlayer avPlayer => avPlayer -> IO Bool
closedCaptionDisplayEnabled avPlayer =
  sendMessage avPlayer closedCaptionDisplayEnabledSelector

-- | closedCaptionDisplayEnabled
--
-- Indicates whether display of closed captions is enabled.
--
-- This property is deprecated.
--
-- When the value of appliesMediaSelectionCriteriaAutomatically is YES, the receiver will enable closed captions automatically either according to user preferences or, if you provide them, according to AVPlayerMediaSelectionCriteria for the media characteristic AVMediaCharacteristicLegible.
--
-- If you want to determine whether closed captions may be available for a given AVPlayerItem, you can examine the AVMediaSelectionOptions in the AVMediaSelectionGroup for the characteristic AVMediaCharacteristicLegible, as vended by -[AVAsset mediaSelectionGroupForMediaCharacteristic:]. See AVMediaCharacteristicTranscribesSpokenDialogForAccessibility and AVMediaCharacteristicDescribesMusicAndSoundForAccessibility as documented in AVMediaFormat.h for information about how to identify legible media selection options that offer the features of closed captions for accessibility purposes.
--
-- You can select or deselect a specific AVMediaSelectionOption via -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:].
--
-- For further information about Media Accessibility preferences, see MediaAccessibility framework documentation.
--
-- ObjC selector: @- setClosedCaptionDisplayEnabled:@
setClosedCaptionDisplayEnabled :: IsAVPlayer avPlayer => avPlayer -> Bool -> IO ()
setClosedCaptionDisplayEnabled avPlayer value =
  sendMessage avPlayer setClosedCaptionDisplayEnabledSelector value

-- | @- masterClock@
masterClock :: IsAVPlayer avPlayer => avPlayer -> IO (Ptr ())
masterClock avPlayer =
  sendMessage avPlayer masterClockSelector

-- | @- setMasterClock:@
setMasterClock :: IsAVPlayer avPlayer => avPlayer -> Ptr () -> IO ()
setMasterClock avPlayer value =
  sendMessage avPlayer setMasterClockSelector value

-- | playbackCoordinator
--
-- The playback coordinator for this player.
--
-- If the playback coordinator is connected to other participants, rate changes and seeks on the current item will be automatically mirrored to all connected participants.			Depending on policies, the coordinator may also intercept rate changes to non-zero to coordinate playback start with the rest of the group.			Use [AVPlayer playImmediatelyAtRate:] to override the coordinated startup behavior and start playback immediately. This is useful to give users an opportunity to override waiting caused by other participants' suspensions.			Player configuration other than rate and seeks are not communicated to other participants and can be configured independently by each participant.			A player with a connected playbackCoordinator will change behavior in situations that require the player to pause for internal reasons, such as a route change or a stall.			When resuming after these events, the player will not resume at the stop time. Instead, it will attempt to rejoin the group, potentially seeking to match the other participant's progress.			It is left to the owner of the AVPlayer to ensure that all participants are playing the same item. See the discussion of AVPlaybackCoordinator for considerations about item transitions.
--
-- ObjC selector: @- playbackCoordinator@
playbackCoordinator :: IsAVPlayer avPlayer => avPlayer -> IO (Id AVPlayerPlaybackCoordinator)
playbackCoordinator avPlayer =
  sendMessage avPlayer playbackCoordinatorSelector

-- | audiovisualBackgroundPlaybackPolicy
--
-- Controls the policy to be used in deciding how playback of audiovisual content should continue while the application transitions to background.
--
-- By default, the system is free to decide the background playback policy (AVPlayerAudiovisualBackgroundPlaybackPolicyAutomatic).		If set to AVPlayerAudiovisualBackgroundPlaybackPolicyPauses, player will be paused on entering background.		If set to AVPlayerAudiovisualBackgroundPlaybackPolicyContinuesIfPossible, the system makes the best effort to continue playback but the app also needs appropriate UIBackgroundModes for the system to let it continue running in the background. Note that this policy only applies to items with enabled video.
--
-- ObjC selector: @- audiovisualBackgroundPlaybackPolicy@
audiovisualBackgroundPlaybackPolicy :: IsAVPlayer avPlayer => avPlayer -> IO AVPlayerAudiovisualBackgroundPlaybackPolicy
audiovisualBackgroundPlaybackPolicy avPlayer =
  sendMessage avPlayer audiovisualBackgroundPlaybackPolicySelector

-- | audiovisualBackgroundPlaybackPolicy
--
-- Controls the policy to be used in deciding how playback of audiovisual content should continue while the application transitions to background.
--
-- By default, the system is free to decide the background playback policy (AVPlayerAudiovisualBackgroundPlaybackPolicyAutomatic).		If set to AVPlayerAudiovisualBackgroundPlaybackPolicyPauses, player will be paused on entering background.		If set to AVPlayerAudiovisualBackgroundPlaybackPolicyContinuesIfPossible, the system makes the best effort to continue playback but the app also needs appropriate UIBackgroundModes for the system to let it continue running in the background. Note that this policy only applies to items with enabled video.
--
-- ObjC selector: @- setAudiovisualBackgroundPlaybackPolicy:@
setAudiovisualBackgroundPlaybackPolicy :: IsAVPlayer avPlayer => avPlayer -> AVPlayerAudiovisualBackgroundPlaybackPolicy -> IO ()
setAudiovisualBackgroundPlaybackPolicy avPlayer value =
  sendMessage avPlayer setAudiovisualBackgroundPlaybackPolicySelector value

-- | preventsDisplaySleepDuringVideoPlayback
--
-- Indicates whether video playback prevents display and device sleep.
--
-- Default is YES on iOS, tvOS and in Mac Catalyst apps.  Default is NO on macOS.	 Setting this property to NO does not force the display to sleep, it simply stops preventing display sleep.  Other apps or frameworks within your app may still be preventing display sleep for various reasons.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this property must be accessed on the main thread/queue.
--
-- ObjC selector: @- preventsDisplaySleepDuringVideoPlayback@
preventsDisplaySleepDuringVideoPlayback :: IsAVPlayer avPlayer => avPlayer -> IO Bool
preventsDisplaySleepDuringVideoPlayback avPlayer =
  sendMessage avPlayer preventsDisplaySleepDuringVideoPlaybackSelector

-- | preventsDisplaySleepDuringVideoPlayback
--
-- Indicates whether video playback prevents display and device sleep.
--
-- Default is YES on iOS, tvOS and in Mac Catalyst apps.  Default is NO on macOS.	 Setting this property to NO does not force the display to sleep, it simply stops preventing display sleep.  Other apps or frameworks within your app may still be preventing display sleep for various reasons.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this property must be accessed on the main thread/queue.
--
-- ObjC selector: @- setPreventsDisplaySleepDuringVideoPlayback:@
setPreventsDisplaySleepDuringVideoPlayback :: IsAVPlayer avPlayer => avPlayer -> Bool -> IO ()
setPreventsDisplaySleepDuringVideoPlayback avPlayer value =
  sendMessage avPlayer setPreventsDisplaySleepDuringVideoPlaybackSelector value

-- | preferredVideoDecoderGPURegistryID
--
-- Specifies a registryID associated with a GPU that should be used for video decode.
--
-- By default, whenever possible, video decode will be performed on the GPU associated with the display on which the presenting CALayer is located.  Decode will be transitioned to a new GPU if appropriate when the CALayer moves to a new display.  This property overrides this default behavior, forcing decode to prefer an affinity to the GPU specified regardless of which GPU is being used to display the associated CALayer.
--
-- The GPU registryID can be obtained from the GPU MTLDevice using [MTLDevice registryID] or can be obtained from OpenGL or OpenCL.
--
-- ObjC selector: @- preferredVideoDecoderGPURegistryID@
preferredVideoDecoderGPURegistryID :: IsAVPlayer avPlayer => avPlayer -> IO CULong
preferredVideoDecoderGPURegistryID avPlayer =
  sendMessage avPlayer preferredVideoDecoderGPURegistryIDSelector

-- | preferredVideoDecoderGPURegistryID
--
-- Specifies a registryID associated with a GPU that should be used for video decode.
--
-- By default, whenever possible, video decode will be performed on the GPU associated with the display on which the presenting CALayer is located.  Decode will be transitioned to a new GPU if appropriate when the CALayer moves to a new display.  This property overrides this default behavior, forcing decode to prefer an affinity to the GPU specified regardless of which GPU is being used to display the associated CALayer.
--
-- The GPU registryID can be obtained from the GPU MTLDevice using [MTLDevice registryID] or can be obtained from OpenGL or OpenCL.
--
-- ObjC selector: @- setPreferredVideoDecoderGPURegistryID:@
setPreferredVideoDecoderGPURegistryID :: IsAVPlayer avPlayer => avPlayer -> CULong -> IO ()
setPreferredVideoDecoderGPURegistryID avPlayer value =
  sendMessage avPlayer setPreferredVideoDecoderGPURegistryIDSelector value

-- | availableHDRModes
--
-- An AVPlayerHDRMode value that indicates the HDR modes the device can play to an appropriate display.   A value of 0 indicates that no HDR modes are supported.
--
-- This property indicates all of the HDR modes that the device can play.  Each value indicates that an appropriate HDR display is available for the specified HDR mode.  Additionally, the device must be capable of playing the specified HDR type.  This property does not indicate whether video contains HDR content, whether HDR video is currently playing, or whether video is playing on an HDR display.
--
-- ObjC selector: @+ availableHDRModes@
availableHDRModes :: IO AVPlayerHDRMode
availableHDRModes  =
  do
    cls' <- getRequiredClass "AVPlayer"
    sendClassMessage cls' availableHDRModesSelector

-- | eligibleForHDRPlayback
--
-- Indicates whether HDR content can be played to an appropriate display.
--
-- This property is YES if an HDR display is available and the device is capable of playing HDR content from an appropriate AVAsset, NO otherwise.  This property does not indicate whether video contains HDR content, whether HDR video is currently playing, or whether video is playing on an HDR display.  This property is not KVO observable.
--
-- ObjC selector: @+ eligibleForHDRPlayback@
eligibleForHDRPlayback :: IO Bool
eligibleForHDRPlayback  =
  do
    cls' <- getRequiredClass "AVPlayer"
    sendClassMessage cls' eligibleForHDRPlaybackSelector

-- | outputObscuredDueToInsufficientExternalProtection
--
-- Whether or not decoded output is being obscured due to insufficient external protection.
--
-- The value of this property indicates whether the player is purposefully obscuring the visual output		of the current item because the requirement for an external protection mechanism is not met by the		current device configuration. It is highly recommended that clients whose content requires external		protection observe this property and set the playback rate to zero and display an appropriate user		interface when the value changes to YES. This property is key value observable.
--
-- Note that the value of this property is dependent on the external protection requirements of the		current item. These requirements are inherent to the content itself and cannot be externally specified.		If the current item does not require external protection, the value of this property will be NO.
--
-- ObjC selector: @- outputObscuredDueToInsufficientExternalProtection@
outputObscuredDueToInsufficientExternalProtection :: IsAVPlayer avPlayer => avPlayer -> IO Bool
outputObscuredDueToInsufficientExternalProtection avPlayer =
  sendMessage avPlayer outputObscuredDueToInsufficientExternalProtectionSelector

-- | @- allowsExternalPlayback@
allowsExternalPlayback :: IsAVPlayer avPlayer => avPlayer -> IO Bool
allowsExternalPlayback avPlayer =
  sendMessage avPlayer allowsExternalPlaybackSelector

-- | @- setAllowsExternalPlayback:@
setAllowsExternalPlayback :: IsAVPlayer avPlayer => avPlayer -> Bool -> IO ()
setAllowsExternalPlayback avPlayer value =
  sendMessage avPlayer setAllowsExternalPlaybackSelector value

-- | @- externalPlaybackActive@
externalPlaybackActive :: IsAVPlayer avPlayer => avPlayer -> IO Bool
externalPlaybackActive avPlayer =
  sendMessage avPlayer externalPlaybackActiveSelector

-- | @- usesExternalPlaybackWhileExternalScreenIsActive@
usesExternalPlaybackWhileExternalScreenIsActive :: IsAVPlayer avPlayer => avPlayer -> IO Bool
usesExternalPlaybackWhileExternalScreenIsActive avPlayer =
  sendMessage avPlayer usesExternalPlaybackWhileExternalScreenIsActiveSelector

-- | @- setUsesExternalPlaybackWhileExternalScreenIsActive:@
setUsesExternalPlaybackWhileExternalScreenIsActive :: IsAVPlayer avPlayer => avPlayer -> Bool -> IO ()
setUsesExternalPlaybackWhileExternalScreenIsActive avPlayer value =
  sendMessage avPlayer setUsesExternalPlaybackWhileExternalScreenIsActiveSelector value

-- | @- externalPlaybackVideoGravity@
externalPlaybackVideoGravity :: IsAVPlayer avPlayer => avPlayer -> IO (Id NSString)
externalPlaybackVideoGravity avPlayer =
  sendMessage avPlayer externalPlaybackVideoGravitySelector

-- | @- setExternalPlaybackVideoGravity:@
setExternalPlaybackVideoGravity :: (IsAVPlayer avPlayer, IsNSString value) => avPlayer -> value -> IO ()
setExternalPlaybackVideoGravity avPlayer value =
  sendMessage avPlayer setExternalPlaybackVideoGravitySelector (toNSString value)

-- | audioOutputDeviceUniqueID
--
-- Specifies the unique ID of the Core Audio output device used to play audio.
--
-- By default, the value of this property is nil, indicating that the default audio output device is used. Otherwise the value of this property is an NSString containing the unique ID of the Core Audio output device to be used for audio output.
--
-- Core Audio's kAudioDevicePropertyDeviceUID is a suitable source of audio output device unique IDs.
--
-- ObjC selector: @- audioOutputDeviceUniqueID@
audioOutputDeviceUniqueID :: IsAVPlayer avPlayer => avPlayer -> IO RawId
audioOutputDeviceUniqueID avPlayer =
  sendMessage avPlayer audioOutputDeviceUniqueIDSelector

-- | audioOutputDeviceUniqueID
--
-- Specifies the unique ID of the Core Audio output device used to play audio.
--
-- By default, the value of this property is nil, indicating that the default audio output device is used. Otherwise the value of this property is an NSString containing the unique ID of the Core Audio output device to be used for audio output.
--
-- Core Audio's kAudioDevicePropertyDeviceUID is a suitable source of audio output device unique IDs.
--
-- ObjC selector: @- setAudioOutputDeviceUniqueID:@
setAudioOutputDeviceUniqueID :: IsAVPlayer avPlayer => avPlayer -> RawId -> IO ()
setAudioOutputDeviceUniqueID avPlayer value =
  sendMessage avPlayer setAudioOutputDeviceUniqueIDSelector value

-- | @- appliesMediaSelectionCriteriaAutomatically@
appliesMediaSelectionCriteriaAutomatically :: IsAVPlayer avPlayer => avPlayer -> IO Bool
appliesMediaSelectionCriteriaAutomatically avPlayer =
  sendMessage avPlayer appliesMediaSelectionCriteriaAutomaticallySelector

-- | @- setAppliesMediaSelectionCriteriaAutomatically:@
setAppliesMediaSelectionCriteriaAutomatically :: IsAVPlayer avPlayer => avPlayer -> Bool -> IO ()
setAppliesMediaSelectionCriteriaAutomatically avPlayer value =
  sendMessage avPlayer setAppliesMediaSelectionCriteriaAutomaticallySelector value

-- | @- volume@
volume :: IsAVPlayer avPlayer => avPlayer -> IO CFloat
volume avPlayer =
  sendMessage avPlayer volumeSelector

-- | @- setVolume:@
setVolume :: IsAVPlayer avPlayer => avPlayer -> CFloat -> IO ()
setVolume avPlayer value =
  sendMessage avPlayer setVolumeSelector value

-- | @- muted@
muted :: IsAVPlayer avPlayer => avPlayer -> IO Bool
muted avPlayer =
  sendMessage avPlayer mutedSelector

-- | @- setMuted:@
setMuted :: IsAVPlayer avPlayer => avPlayer -> Bool -> IO ()
setMuted avPlayer value =
  sendMessage avPlayer setMutedSelector value

-- | automaticallyWaitsToMinimizeStalling
--
-- Indicates that the player is allowed to delay playback at the specified rate in order to minimize stalling
--
-- When this property is YES, whenever 1) the rate is set from zero to non-zero or 2) the playback buffer becomes empty and playback stalls, the player will attempt to determine if, at the specified rate, its currentItem will play to the end without interruptions. Should it determine that such interruptions would occur and these interruptions can be avoided by delaying the start or resumption of playback, the value of timeControlStatus will become AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate and playback will start automatically when the likelihood of stalling has been minimized.
--
-- You may want to set this property to NO when you need precise control over playback start times, e.g., when synchronizing multiple instances of AVPlayer, and you should set it to NO if you use an AVAssetResourceLoader delegate to load media data (more on this below). If the value of this property is NO, reasonForWaitingToPlay cannot assume a value of AVPlayerWaitingToMinimizeStallsReason. This implies that setting rate to a non-zero value in AVPlayerTimeControlStatusPaused will cause playback to start immediately as long as the playback buffer is not empty. When the playback buffer becomes empty during AVPlayerTimeControlStatusPlaying and playback stalls, playback state will switch to AVPlayerTimeControlStatusPaused and the rate will become 0.0.
--
-- Changing the value of this property to NO while the value of timeControlStatus is AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate with a reasonForWaitingToPlay of AVPlayerWaitingToMinimizeStallsReason will cause the player to attempt playback at the specified rate immediately.
--
-- For clients linked against iOS 10.0 and running on that version or later or linked against OS X 10.12 and running on that version or later, the default value of this property is YES. In versions of iOS prior to iOS 10.0 and versions of OS X prior to 10.12, this property is unavailable, and the behavior of the AVPlayer corresponds to the type of content being played. For streaming content, including HTTP Live Streaming, the AVPlayer acts as if automaticallyWaitsToMinimizeStalling is YES. For file-based content, including file-based content accessed via progressive http download, the AVPlayer acts as if automaticallyWaitsToMinimizeStalling is NO.
--
-- If you employ an AVAssetResourceLoader delegate that loads media data for playback, you should set the value of your AVPlayer’s automaticallyWaitsToMinimizeStalling property to NO. Allowing the value of automaticallyWaitsToMinimizeStalling to remain YES when an AVAssetResourceLoader delegate is used for the loading of media data can result in poor start-up times for playback and poor recovery from stalls, because the behaviors provided by AVPlayer when automaticallyWaitsToMinimizeStalling has a value of YES depend on predictions of the future availability of media data that that do not function as expected when data is loaded via a client-controlled means, using the AVAssetResourceLoader delegate interface.
--
-- You can allow the value of automaticallyWaitsToMinimizeStalling to remain YES if you use an AVAssetResourceLoader delegate to manage content keys for FairPlay Streaming, to provide dynamically-generated master playlists for HTTP Live Streaming, or to respond to authentication challenges, but not to load media data for playback.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this property must be accessed on the main thread/queue.
--
-- ObjC selector: @- automaticallyWaitsToMinimizeStalling@
automaticallyWaitsToMinimizeStalling :: IsAVPlayer avPlayer => avPlayer -> IO Bool
automaticallyWaitsToMinimizeStalling avPlayer =
  sendMessage avPlayer automaticallyWaitsToMinimizeStallingSelector

-- | automaticallyWaitsToMinimizeStalling
--
-- Indicates that the player is allowed to delay playback at the specified rate in order to minimize stalling
--
-- When this property is YES, whenever 1) the rate is set from zero to non-zero or 2) the playback buffer becomes empty and playback stalls, the player will attempt to determine if, at the specified rate, its currentItem will play to the end without interruptions. Should it determine that such interruptions would occur and these interruptions can be avoided by delaying the start or resumption of playback, the value of timeControlStatus will become AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate and playback will start automatically when the likelihood of stalling has been minimized.
--
-- You may want to set this property to NO when you need precise control over playback start times, e.g., when synchronizing multiple instances of AVPlayer, and you should set it to NO if you use an AVAssetResourceLoader delegate to load media data (more on this below). If the value of this property is NO, reasonForWaitingToPlay cannot assume a value of AVPlayerWaitingToMinimizeStallsReason. This implies that setting rate to a non-zero value in AVPlayerTimeControlStatusPaused will cause playback to start immediately as long as the playback buffer is not empty. When the playback buffer becomes empty during AVPlayerTimeControlStatusPlaying and playback stalls, playback state will switch to AVPlayerTimeControlStatusPaused and the rate will become 0.0.
--
-- Changing the value of this property to NO while the value of timeControlStatus is AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate with a reasonForWaitingToPlay of AVPlayerWaitingToMinimizeStallsReason will cause the player to attempt playback at the specified rate immediately.
--
-- For clients linked against iOS 10.0 and running on that version or later or linked against OS X 10.12 and running on that version or later, the default value of this property is YES. In versions of iOS prior to iOS 10.0 and versions of OS X prior to 10.12, this property is unavailable, and the behavior of the AVPlayer corresponds to the type of content being played. For streaming content, including HTTP Live Streaming, the AVPlayer acts as if automaticallyWaitsToMinimizeStalling is YES. For file-based content, including file-based content accessed via progressive http download, the AVPlayer acts as if automaticallyWaitsToMinimizeStalling is NO.
--
-- If you employ an AVAssetResourceLoader delegate that loads media data for playback, you should set the value of your AVPlayer’s automaticallyWaitsToMinimizeStalling property to NO. Allowing the value of automaticallyWaitsToMinimizeStalling to remain YES when an AVAssetResourceLoader delegate is used for the loading of media data can result in poor start-up times for playback and poor recovery from stalls, because the behaviors provided by AVPlayer when automaticallyWaitsToMinimizeStalling has a value of YES depend on predictions of the future availability of media data that that do not function as expected when data is loaded via a client-controlled means, using the AVAssetResourceLoader delegate interface.
--
-- You can allow the value of automaticallyWaitsToMinimizeStalling to remain YES if you use an AVAssetResourceLoader delegate to manage content keys for FairPlay Streaming, to provide dynamically-generated master playlists for HTTP Live Streaming, or to respond to authentication challenges, but not to load media data for playback.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this property must be accessed on the main thread/queue.
--
-- ObjC selector: @- setAutomaticallyWaitsToMinimizeStalling:@
setAutomaticallyWaitsToMinimizeStalling :: IsAVPlayer avPlayer => avPlayer -> Bool -> IO ()
setAutomaticallyWaitsToMinimizeStalling avPlayer value =
  sendMessage avPlayer setAutomaticallyWaitsToMinimizeStallingSelector value

-- | sourceClock
--
-- Set to override the automatic choice of source clock for item timebases.
--
-- NULL by default. This is most useful for synchronizing video-only movies with audio played via other means. IMPORTANT NOTE: If you specify a source clock other than the appropriate audio device clock, audio may drift out of sync.
--
-- ObjC selector: @- sourceClock@
sourceClock :: IsAVPlayer avPlayer => avPlayer -> IO (Ptr ())
sourceClock avPlayer =
  sendMessage avPlayer sourceClockSelector

-- | sourceClock
--
-- Set to override the automatic choice of source clock for item timebases.
--
-- NULL by default. This is most useful for synchronizing video-only movies with audio played via other means. IMPORTANT NOTE: If you specify a source clock other than the appropriate audio device clock, audio may drift out of sync.
--
-- ObjC selector: @- setSourceClock:@
setSourceClock :: IsAVPlayer avPlayer => avPlayer -> Ptr () -> IO ()
setSourceClock avPlayer value =
  sendMessage avPlayer setSourceClockSelector value

-- | @- currentItem@
currentItem :: IsAVPlayer avPlayer => avPlayer -> IO (Id AVPlayerItem)
currentItem avPlayer =
  sendMessage avPlayer currentItemSelector

-- | actionAtItemEnd
--
-- Indicates the action that the player should perform when playback of an item reaches its end time.
--
-- This property throws an exception if set to AVPlayerActionAtItemEndAdvance on an AVPlayer which is not an AVQueuePlayer.
--
-- ObjC selector: @- actionAtItemEnd@
actionAtItemEnd :: IsAVPlayer avPlayer => avPlayer -> IO AVPlayerActionAtItemEnd
actionAtItemEnd avPlayer =
  sendMessage avPlayer actionAtItemEndSelector

-- | actionAtItemEnd
--
-- Indicates the action that the player should perform when playback of an item reaches its end time.
--
-- This property throws an exception if set to AVPlayerActionAtItemEndAdvance on an AVPlayer which is not an AVQueuePlayer.
--
-- ObjC selector: @- setActionAtItemEnd:@
setActionAtItemEnd :: IsAVPlayer avPlayer => avPlayer -> AVPlayerActionAtItemEnd -> IO ()
setActionAtItemEnd avPlayer value =
  sendMessage avPlayer setActionAtItemEndSelector value

-- | rate
--
-- Indicates the desired rate of playback; 0.0 means "paused", 1.0 indicates a desire to play at the natural rate of the current item.
--
-- Setting the value of rate to 0.0 pauses playback, causing the value of timeControlStatus to change to AVPlayerTimeControlStatusPaused. Setting the rate to a non-zero value causes the value of timeControlStatus to become either AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate or AVPlayerTimeControlStatusPlaying, depending on whether sufficient media data has been buffered for playback to occur and whether the player's default behavior of waiting in order to minimize stalling is permitted. See discussion of AVPlayerTimeControlStatus for more details.
--
-- AVPlayer can reset the desired rate to 0.0 when a change in overall state requires playback to be halted, such as when an interruption occurs on iOS, as announced by AVAudioSession, or when the playback buffer becomes empty and playback stalls while automaticallyWaitsToMinimizeStalling is NO.
--
-- The effective rate of playback may differ from the desired rate even while timeControlStatus is AVPlayerTimeControlStatusPlaying, if the processing algorithm in use for managing audio pitch requires quantization of playback rate. For information about quantization of rates for audio processing, see AVAudioProcessingSettings.h. You can always obtain the effective rate of playback from the currentItem's timebase; see the timebase property of AVPlayerItem.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this property must be accessed on the main thread/queue.
--
-- ObjC selector: @- rate@
rate :: IsAVPlayer avPlayer => avPlayer -> IO CFloat
rate avPlayer =
  sendMessage avPlayer rateSelector

-- | rate
--
-- Indicates the desired rate of playback; 0.0 means "paused", 1.0 indicates a desire to play at the natural rate of the current item.
--
-- Setting the value of rate to 0.0 pauses playback, causing the value of timeControlStatus to change to AVPlayerTimeControlStatusPaused. Setting the rate to a non-zero value causes the value of timeControlStatus to become either AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate or AVPlayerTimeControlStatusPlaying, depending on whether sufficient media data has been buffered for playback to occur and whether the player's default behavior of waiting in order to minimize stalling is permitted. See discussion of AVPlayerTimeControlStatus for more details.
--
-- AVPlayer can reset the desired rate to 0.0 when a change in overall state requires playback to be halted, such as when an interruption occurs on iOS, as announced by AVAudioSession, or when the playback buffer becomes empty and playback stalls while automaticallyWaitsToMinimizeStalling is NO.
--
-- The effective rate of playback may differ from the desired rate even while timeControlStatus is AVPlayerTimeControlStatusPlaying, if the processing algorithm in use for managing audio pitch requires quantization of playback rate. For information about quantization of rates for audio processing, see AVAudioProcessingSettings.h. You can always obtain the effective rate of playback from the currentItem's timebase; see the timebase property of AVPlayerItem.
--
-- Before macOS 13, iOS 16, tvOS 16, and watchOS 9, this property must be accessed on the main thread/queue.
--
-- ObjC selector: @- setRate:@
setRate :: IsAVPlayer avPlayer => avPlayer -> CFloat -> IO ()
setRate avPlayer value =
  sendMessage avPlayer setRateSelector value

-- | defaultRate
--
-- Indicates the rate at which to start playback when play is called; defaults to 1.0.
--
-- Setting this property does not imply playback starts automatically at this rate. Clients still have to kick off playback using @play@. Note that using setRate to start playback will skip using the value in this property nor would it update this property. Therefore, @setRate:1.0@ is no longer recommended as a means to start playback. Use @play@ instead. Use @setRate@ for operations like scanning where the rate is to be updated instantaneously. Invoking @play@ again would restore playback at the rate set in this property.
--
-- The effective rate of playback may still differ from the default rate subject to restrictions imposed by the system. See documentation for the rate property for a discussion on when the desired rate does not translate to effective rate.
--
-- ObjC selector: @- defaultRate@
defaultRate :: IsAVPlayer avPlayer => avPlayer -> IO CFloat
defaultRate avPlayer =
  sendMessage avPlayer defaultRateSelector

-- | defaultRate
--
-- Indicates the rate at which to start playback when play is called; defaults to 1.0.
--
-- Setting this property does not imply playback starts automatically at this rate. Clients still have to kick off playback using @play@. Note that using setRate to start playback will skip using the value in this property nor would it update this property. Therefore, @setRate:1.0@ is no longer recommended as a means to start playback. Use @play@ instead. Use @setRate@ for operations like scanning where the rate is to be updated instantaneously. Invoking @play@ again would restore playback at the rate set in this property.
--
-- The effective rate of playback may still differ from the default rate subject to restrictions imposed by the system. See documentation for the rate property for a discussion on when the desired rate does not translate to effective rate.
--
-- ObjC selector: @- setDefaultRate:@
setDefaultRate :: IsAVPlayer avPlayer => avPlayer -> CFloat -> IO ()
setDefaultRate avPlayer value =
  sendMessage avPlayer setDefaultRateSelector value

-- | timeControlStatus
--
-- Indicates whether playback is currently paused indefinitely, suspended while waiting for appropriate conditions, or in progress.
--
-- For possible values and discussion, see AVPlayerTimeControlStatus.
--
-- When automaticallyWaitsToMinimizeStalling is YES, absent intervention in the form of invocations of -setRate: or -pause or, on iOS, an interruption that requires user intervention before playback can resume, the value of the property timeControlStatus automatically changes between AVPlayerTimeControlStatusPlaying and AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate depending on whether sufficient media data is available to continue playback. This property is key value observable.
--
-- ObjC selector: @- timeControlStatus@
timeControlStatus :: IsAVPlayer avPlayer => avPlayer -> IO AVPlayerTimeControlStatus
timeControlStatus avPlayer =
  sendMessage avPlayer timeControlStatusSelector

-- | reasonForWaitingToPlay
--
-- Indicates the reason for waiting when the value of timeControlStatus is AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate
--
-- When the value of timeControlStatus is AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate, this property describes why the player is currently waiting. It is nil otherwise.    You can use the value of reasonForWaitingToPlay to show UI indicating the player's waiting state conditionally.    This property is key value observable.    Possible values are AVPlayerWaitingWithNoItemToPlayReason, AVPlayerWaitingWhileEvaluatingBufferingRateReason, and AVPlayerWaitingToMinimizeStallsReason.
--
-- ObjC selector: @- reasonForWaitingToPlay@
reasonForWaitingToPlay :: IsAVPlayer avPlayer => avPlayer -> IO (Id NSString)
reasonForWaitingToPlay avPlayer =
  sendMessage avPlayer reasonForWaitingToPlaySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @playerWithURL:@
playerWithURLSelector :: Selector '[Id NSURL] (Id AVPlayer)
playerWithURLSelector = mkSelector "playerWithURL:"

-- | @Selector@ for @playerWithPlayerItem:@
playerWithPlayerItemSelector :: Selector '[Id AVPlayerItem] (Id AVPlayer)
playerWithPlayerItemSelector = mkSelector "playerWithPlayerItem:"

-- | @Selector@ for @initWithURL:@
initWithURLSelector :: Selector '[Id NSURL] (Id AVPlayer)
initWithURLSelector = mkSelector "initWithURL:"

-- | @Selector@ for @initWithPlayerItem:@
initWithPlayerItemSelector :: Selector '[Id AVPlayerItem] (Id AVPlayer)
initWithPlayerItemSelector = mkSelector "initWithPlayerItem:"

-- | @Selector@ for @setMediaSelectionCriteria:forMediaCharacteristic:@
setMediaSelectionCriteria_forMediaCharacteristicSelector :: Selector '[Id AVPlayerMediaSelectionCriteria, Id NSString] ()
setMediaSelectionCriteria_forMediaCharacteristicSelector = mkSelector "setMediaSelectionCriteria:forMediaCharacteristic:"

-- | @Selector@ for @mediaSelectionCriteriaForMediaCharacteristic:@
mediaSelectionCriteriaForMediaCharacteristicSelector :: Selector '[Id NSString] (Id AVPlayerMediaSelectionCriteria)
mediaSelectionCriteriaForMediaCharacteristicSelector = mkSelector "mediaSelectionCriteriaForMediaCharacteristic:"

-- | @Selector@ for @addBoundaryTimeObserverForTimes:queue:usingBlock:@
addBoundaryTimeObserverForTimes_queue_usingBlockSelector :: Selector '[Id NSArray, Id NSObject, Ptr ()] RawId
addBoundaryTimeObserverForTimes_queue_usingBlockSelector = mkSelector "addBoundaryTimeObserverForTimes:queue:usingBlock:"

-- | @Selector@ for @removeTimeObserver:@
removeTimeObserverSelector :: Selector '[RawId] ()
removeTimeObserverSelector = mkSelector "removeTimeObserver:"

-- | @Selector@ for @prerollAtRate:completionHandler:@
prerollAtRate_completionHandlerSelector :: Selector '[CFloat, Ptr ()] ()
prerollAtRate_completionHandlerSelector = mkSelector "prerollAtRate:completionHandler:"

-- | @Selector@ for @cancelPendingPrerolls@
cancelPendingPrerollsSelector :: Selector '[] ()
cancelPendingPrerollsSelector = mkSelector "cancelPendingPrerolls"

-- | @Selector@ for @seekToDate:@
seekToDateSelector :: Selector '[Id NSDate] ()
seekToDateSelector = mkSelector "seekToDate:"

-- | @Selector@ for @seekToDate:completionHandler:@
seekToDate_completionHandlerSelector :: Selector '[Id NSDate, Ptr ()] ()
seekToDate_completionHandlerSelector = mkSelector "seekToDate:completionHandler:"

-- | @Selector@ for @replaceCurrentItemWithPlayerItem:@
replaceCurrentItemWithPlayerItemSelector :: Selector '[Id AVPlayerItem] ()
replaceCurrentItemWithPlayerItemSelector = mkSelector "replaceCurrentItemWithPlayerItem:"

-- | @Selector@ for @play@
playSelector :: Selector '[] ()
playSelector = mkSelector "play"

-- | @Selector@ for @pause@
pauseSelector :: Selector '[] ()
pauseSelector = mkSelector "pause"

-- | @Selector@ for @playImmediatelyAtRate:@
playImmediatelyAtRateSelector :: Selector '[CFloat] ()
playImmediatelyAtRateSelector = mkSelector "playImmediatelyAtRate:"

-- | @Selector@ for @status@
statusSelector :: Selector '[] AVPlayerStatus
statusSelector = mkSelector "status"

-- | @Selector@ for @error@
errorSelector :: Selector '[] (Id NSError)
errorSelector = mkSelector "error"

-- | @Selector@ for @closedCaptionDisplayEnabled@
closedCaptionDisplayEnabledSelector :: Selector '[] Bool
closedCaptionDisplayEnabledSelector = mkSelector "closedCaptionDisplayEnabled"

-- | @Selector@ for @setClosedCaptionDisplayEnabled:@
setClosedCaptionDisplayEnabledSelector :: Selector '[Bool] ()
setClosedCaptionDisplayEnabledSelector = mkSelector "setClosedCaptionDisplayEnabled:"

-- | @Selector@ for @masterClock@
masterClockSelector :: Selector '[] (Ptr ())
masterClockSelector = mkSelector "masterClock"

-- | @Selector@ for @setMasterClock:@
setMasterClockSelector :: Selector '[Ptr ()] ()
setMasterClockSelector = mkSelector "setMasterClock:"

-- | @Selector@ for @playbackCoordinator@
playbackCoordinatorSelector :: Selector '[] (Id AVPlayerPlaybackCoordinator)
playbackCoordinatorSelector = mkSelector "playbackCoordinator"

-- | @Selector@ for @audiovisualBackgroundPlaybackPolicy@
audiovisualBackgroundPlaybackPolicySelector :: Selector '[] AVPlayerAudiovisualBackgroundPlaybackPolicy
audiovisualBackgroundPlaybackPolicySelector = mkSelector "audiovisualBackgroundPlaybackPolicy"

-- | @Selector@ for @setAudiovisualBackgroundPlaybackPolicy:@
setAudiovisualBackgroundPlaybackPolicySelector :: Selector '[AVPlayerAudiovisualBackgroundPlaybackPolicy] ()
setAudiovisualBackgroundPlaybackPolicySelector = mkSelector "setAudiovisualBackgroundPlaybackPolicy:"

-- | @Selector@ for @preventsDisplaySleepDuringVideoPlayback@
preventsDisplaySleepDuringVideoPlaybackSelector :: Selector '[] Bool
preventsDisplaySleepDuringVideoPlaybackSelector = mkSelector "preventsDisplaySleepDuringVideoPlayback"

-- | @Selector@ for @setPreventsDisplaySleepDuringVideoPlayback:@
setPreventsDisplaySleepDuringVideoPlaybackSelector :: Selector '[Bool] ()
setPreventsDisplaySleepDuringVideoPlaybackSelector = mkSelector "setPreventsDisplaySleepDuringVideoPlayback:"

-- | @Selector@ for @preferredVideoDecoderGPURegistryID@
preferredVideoDecoderGPURegistryIDSelector :: Selector '[] CULong
preferredVideoDecoderGPURegistryIDSelector = mkSelector "preferredVideoDecoderGPURegistryID"

-- | @Selector@ for @setPreferredVideoDecoderGPURegistryID:@
setPreferredVideoDecoderGPURegistryIDSelector :: Selector '[CULong] ()
setPreferredVideoDecoderGPURegistryIDSelector = mkSelector "setPreferredVideoDecoderGPURegistryID:"

-- | @Selector@ for @availableHDRModes@
availableHDRModesSelector :: Selector '[] AVPlayerHDRMode
availableHDRModesSelector = mkSelector "availableHDRModes"

-- | @Selector@ for @eligibleForHDRPlayback@
eligibleForHDRPlaybackSelector :: Selector '[] Bool
eligibleForHDRPlaybackSelector = mkSelector "eligibleForHDRPlayback"

-- | @Selector@ for @outputObscuredDueToInsufficientExternalProtection@
outputObscuredDueToInsufficientExternalProtectionSelector :: Selector '[] Bool
outputObscuredDueToInsufficientExternalProtectionSelector = mkSelector "outputObscuredDueToInsufficientExternalProtection"

-- | @Selector@ for @allowsExternalPlayback@
allowsExternalPlaybackSelector :: Selector '[] Bool
allowsExternalPlaybackSelector = mkSelector "allowsExternalPlayback"

-- | @Selector@ for @setAllowsExternalPlayback:@
setAllowsExternalPlaybackSelector :: Selector '[Bool] ()
setAllowsExternalPlaybackSelector = mkSelector "setAllowsExternalPlayback:"

-- | @Selector@ for @externalPlaybackActive@
externalPlaybackActiveSelector :: Selector '[] Bool
externalPlaybackActiveSelector = mkSelector "externalPlaybackActive"

-- | @Selector@ for @usesExternalPlaybackWhileExternalScreenIsActive@
usesExternalPlaybackWhileExternalScreenIsActiveSelector :: Selector '[] Bool
usesExternalPlaybackWhileExternalScreenIsActiveSelector = mkSelector "usesExternalPlaybackWhileExternalScreenIsActive"

-- | @Selector@ for @setUsesExternalPlaybackWhileExternalScreenIsActive:@
setUsesExternalPlaybackWhileExternalScreenIsActiveSelector :: Selector '[Bool] ()
setUsesExternalPlaybackWhileExternalScreenIsActiveSelector = mkSelector "setUsesExternalPlaybackWhileExternalScreenIsActive:"

-- | @Selector@ for @externalPlaybackVideoGravity@
externalPlaybackVideoGravitySelector :: Selector '[] (Id NSString)
externalPlaybackVideoGravitySelector = mkSelector "externalPlaybackVideoGravity"

-- | @Selector@ for @setExternalPlaybackVideoGravity:@
setExternalPlaybackVideoGravitySelector :: Selector '[Id NSString] ()
setExternalPlaybackVideoGravitySelector = mkSelector "setExternalPlaybackVideoGravity:"

-- | @Selector@ for @audioOutputDeviceUniqueID@
audioOutputDeviceUniqueIDSelector :: Selector '[] RawId
audioOutputDeviceUniqueIDSelector = mkSelector "audioOutputDeviceUniqueID"

-- | @Selector@ for @setAudioOutputDeviceUniqueID:@
setAudioOutputDeviceUniqueIDSelector :: Selector '[RawId] ()
setAudioOutputDeviceUniqueIDSelector = mkSelector "setAudioOutputDeviceUniqueID:"

-- | @Selector@ for @appliesMediaSelectionCriteriaAutomatically@
appliesMediaSelectionCriteriaAutomaticallySelector :: Selector '[] Bool
appliesMediaSelectionCriteriaAutomaticallySelector = mkSelector "appliesMediaSelectionCriteriaAutomatically"

-- | @Selector@ for @setAppliesMediaSelectionCriteriaAutomatically:@
setAppliesMediaSelectionCriteriaAutomaticallySelector :: Selector '[Bool] ()
setAppliesMediaSelectionCriteriaAutomaticallySelector = mkSelector "setAppliesMediaSelectionCriteriaAutomatically:"

-- | @Selector@ for @volume@
volumeSelector :: Selector '[] CFloat
volumeSelector = mkSelector "volume"

-- | @Selector@ for @setVolume:@
setVolumeSelector :: Selector '[CFloat] ()
setVolumeSelector = mkSelector "setVolume:"

-- | @Selector@ for @muted@
mutedSelector :: Selector '[] Bool
mutedSelector = mkSelector "muted"

-- | @Selector@ for @setMuted:@
setMutedSelector :: Selector '[Bool] ()
setMutedSelector = mkSelector "setMuted:"

-- | @Selector@ for @automaticallyWaitsToMinimizeStalling@
automaticallyWaitsToMinimizeStallingSelector :: Selector '[] Bool
automaticallyWaitsToMinimizeStallingSelector = mkSelector "automaticallyWaitsToMinimizeStalling"

-- | @Selector@ for @setAutomaticallyWaitsToMinimizeStalling:@
setAutomaticallyWaitsToMinimizeStallingSelector :: Selector '[Bool] ()
setAutomaticallyWaitsToMinimizeStallingSelector = mkSelector "setAutomaticallyWaitsToMinimizeStalling:"

-- | @Selector@ for @sourceClock@
sourceClockSelector :: Selector '[] (Ptr ())
sourceClockSelector = mkSelector "sourceClock"

-- | @Selector@ for @setSourceClock:@
setSourceClockSelector :: Selector '[Ptr ()] ()
setSourceClockSelector = mkSelector "setSourceClock:"

-- | @Selector@ for @currentItem@
currentItemSelector :: Selector '[] (Id AVPlayerItem)
currentItemSelector = mkSelector "currentItem"

-- | @Selector@ for @actionAtItemEnd@
actionAtItemEndSelector :: Selector '[] AVPlayerActionAtItemEnd
actionAtItemEndSelector = mkSelector "actionAtItemEnd"

-- | @Selector@ for @setActionAtItemEnd:@
setActionAtItemEndSelector :: Selector '[AVPlayerActionAtItemEnd] ()
setActionAtItemEndSelector = mkSelector "setActionAtItemEnd:"

-- | @Selector@ for @rate@
rateSelector :: Selector '[] CFloat
rateSelector = mkSelector "rate"

-- | @Selector@ for @setRate:@
setRateSelector :: Selector '[CFloat] ()
setRateSelector = mkSelector "setRate:"

-- | @Selector@ for @defaultRate@
defaultRateSelector :: Selector '[] CFloat
defaultRateSelector = mkSelector "defaultRate"

-- | @Selector@ for @setDefaultRate:@
setDefaultRateSelector :: Selector '[CFloat] ()
setDefaultRateSelector = mkSelector "setDefaultRate:"

-- | @Selector@ for @timeControlStatus@
timeControlStatusSelector :: Selector '[] AVPlayerTimeControlStatus
timeControlStatusSelector = mkSelector "timeControlStatus"

-- | @Selector@ for @reasonForWaitingToPlay@
reasonForWaitingToPlaySelector :: Selector '[] (Id NSString)
reasonForWaitingToPlaySelector = mkSelector "reasonForWaitingToPlay"

