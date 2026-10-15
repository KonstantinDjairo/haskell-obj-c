{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVPlayerView
--
-- AVPlayerView is a subclass of NSView that can be used to display the visual content of an AVPlayer object and the standard playback controls.
--
-- Generated bindings for @AVPlayerView@.
module ObjC.AVKit.AVPlayerView
  ( AVPlayerView
  , IsAVPlayerView(..)
  , selectSpeed
  , flashChapterNumber_chapterTitle
  , beginTrimmingWithCompletionHandler
  , player
  , setPlayer
  , controlsStyle
  , setControlsStyle
  , videoGravity
  , setVideoGravity
  , readyForDisplay
  , videoBounds
  , contentOverlayView
  , updatesNowPlayingInfoCenter
  , setUpdatesNowPlayingInfoCenter
  , selectedSpeed
  , allowsVideoFrameAnalysis
  , setAllowsVideoFrameAnalysis
  , allowsMagnification
  , setAllowsMagnification
  , magnification
  , setMagnification
  , allowsPictureInPicturePlayback
  , setAllowsPictureInPicturePlayback
  , canBeginTrimming
  , showsFrameSteppingButtons
  , setShowsFrameSteppingButtons
  , showsSharingServiceButton
  , setShowsSharingServiceButton
  , actionPopUpButtonMenu
  , setActionPopUpButtonMenu
  , showsFullScreenToggleButton
  , setShowsFullScreenToggleButton
  , showsTimecodes
  , setShowsTimecodes
  , actionPopUpButtonMenuSelector
  , allowsMagnificationSelector
  , allowsPictureInPicturePlaybackSelector
  , allowsVideoFrameAnalysisSelector
  , beginTrimmingWithCompletionHandlerSelector
  , canBeginTrimmingSelector
  , contentOverlayViewSelector
  , controlsStyleSelector
  , flashChapterNumber_chapterTitleSelector
  , magnificationSelector
  , playerSelector
  , readyForDisplaySelector
  , selectSpeedSelector
  , selectedSpeedSelector
  , setActionPopUpButtonMenuSelector
  , setAllowsMagnificationSelector
  , setAllowsPictureInPicturePlaybackSelector
  , setAllowsVideoFrameAnalysisSelector
  , setControlsStyleSelector
  , setMagnificationSelector
  , setPlayerSelector
  , setShowsFrameSteppingButtonsSelector
  , setShowsFullScreenToggleButtonSelector
  , setShowsSharingServiceButtonSelector
  , setShowsTimecodesSelector
  , setUpdatesNowPlayingInfoCenterSelector
  , setVideoGravitySelector
  , showsFrameSteppingButtonsSelector
  , showsFullScreenToggleButtonSelector
  , showsSharingServiceButtonSelector
  , showsTimecodesSelector
  , updatesNowPlayingInfoCenterSelector
  , videoBoundsSelector
  , videoGravitySelector

  -- * Enum types
  , AVPlayerViewControlsStyle(AVPlayerViewControlsStyle)
  , pattern AVPlayerViewControlsStyleNone
  , pattern AVPlayerViewControlsStyleInline
  , pattern AVPlayerViewControlsStyleFloating
  , pattern AVPlayerViewControlsStyleMinimal
  , pattern AVPlayerViewControlsStyleDefault

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVKit.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.AVKit.Internal.Enums
import ObjC.AVFoundation.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | selectSpeed
--
-- @speed@ — The playback speed to select.
--
-- Sets the input AVPlaybackSpeed as the selected speed.
--
-- Calls to selectSpeed with AVPlaybackSpeeds not contained within the speeds property array will be ignored.
--
-- ObjC selector: @- selectSpeed:@
selectSpeed :: (IsAVPlayerView avPlayerView, IsAVPlaybackSpeed speed) => avPlayerView -> speed -> IO ()
selectSpeed avPlayerView speed =
  sendMessage avPlayerView selectSpeedSelector (toAVPlaybackSpeed speed)

-- | flashChapterNumber:chapterTitle:
--
-- @chapterNumber@ — The chapter number (required).
--
-- @chapterTitle@ — The chapter title (optional).
--
-- Display the provided chapter number and title momentarily.
--
-- ObjC selector: @- flashChapterNumber:chapterTitle:@
flashChapterNumber_chapterTitle :: (IsAVPlayerView avPlayerView, IsNSString chapterTitle) => avPlayerView -> CULong -> chapterTitle -> IO ()
flashChapterNumber_chapterTitle avPlayerView chapterNumber chapterTitle =
  sendMessage avPlayerView flashChapterNumber_chapterTitleSelector chapterNumber (toNSString chapterTitle)

-- | beginTrimmingWithCompletionHandler:
--
-- @handler@ — A completion handler that is executed when the user selects either the Trim or Cancel button in the trimming UI.
--
-- Sets the controls panel into trimming mode and blocks until the user selects either the Trim or the Cancel button.
--
-- ObjC selector: @- beginTrimmingWithCompletionHandler:@
beginTrimmingWithCompletionHandler :: IsAVPlayerView avPlayerView => avPlayerView -> Ptr () -> IO ()
beginTrimmingWithCompletionHandler avPlayerView handler =
  sendMessage avPlayerView beginTrimmingWithCompletionHandlerSelector handler

-- | player
--
-- The player from which to source the media content for the view.
--
-- ObjC selector: @- player@
player :: IsAVPlayerView avPlayerView => avPlayerView -> IO (Id AVPlayer)
player avPlayerView =
  sendMessage avPlayerView playerSelector

-- | player
--
-- The player from which to source the media content for the view.
--
-- ObjC selector: @- setPlayer:@
setPlayer :: (IsAVPlayerView avPlayerView, IsAVPlayer value) => avPlayerView -> value -> IO ()
setPlayer avPlayerView value =
  sendMessage avPlayerView setPlayerSelector (toAVPlayer value)

-- | controlsStyle
--
-- The style of the playback controls pane currently associated with the view.
--
-- After macOS 11, the floating style controls will always be used when presenting in fullscreen and AVPlayerViewControlsStyleNone is not specified.
--
-- ObjC selector: @- controlsStyle@
controlsStyle :: IsAVPlayerView avPlayerView => avPlayerView -> IO AVPlayerViewControlsStyle
controlsStyle avPlayerView =
  sendMessage avPlayerView controlsStyleSelector

-- | controlsStyle
--
-- The style of the playback controls pane currently associated with the view.
--
-- After macOS 11, the floating style controls will always be used when presenting in fullscreen and AVPlayerViewControlsStyleNone is not specified.
--
-- ObjC selector: @- setControlsStyle:@
setControlsStyle :: IsAVPlayerView avPlayerView => avPlayerView -> AVPlayerViewControlsStyle -> IO ()
setControlsStyle avPlayerView value =
  sendMessage avPlayerView setControlsStyleSelector value

-- | videoGravity
--
-- A string defining how the video is displayed within an AVPlayerLayer bounds rect.
--
-- Options are AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill and AVLayerVideoGravityResize. AVLayerVideoGravityResizeAspect is default.
--
-- ObjC selector: @- videoGravity@
videoGravity :: IsAVPlayerView avPlayerView => avPlayerView -> IO (Id NSString)
videoGravity avPlayerView =
  sendMessage avPlayerView videoGravitySelector

-- | videoGravity
--
-- A string defining how the video is displayed within an AVPlayerLayer bounds rect.
--
-- Options are AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill and AVLayerVideoGravityResize. AVLayerVideoGravityResizeAspect is default.
--
-- ObjC selector: @- setVideoGravity:@
setVideoGravity :: (IsAVPlayerView avPlayerView, IsNSString value) => avPlayerView -> value -> IO ()
setVideoGravity avPlayerView value =
  sendMessage avPlayerView setVideoGravitySelector (toNSString value)

-- | readyForDisplay
--
-- Boolean indicating that the first video frame has been made ready for display for the current item of the associated AVPlayer.
--
-- ObjC selector: @- readyForDisplay@
readyForDisplay :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
readyForDisplay avPlayerView =
  sendMessage avPlayerView readyForDisplaySelector

-- | videoBounds
--
-- The current size and position of the video image as displayed within the receiver's view's bounds.
--
-- ObjC selector: @- videoBounds@
videoBounds :: IsAVPlayerView avPlayerView => avPlayerView -> IO NSRect
videoBounds avPlayerView =
  sendMessage avPlayerView videoBoundsSelector

-- | contentOverlayView
--
-- Use the content overlay view to add additional custom views between the video content and the controls.
--
-- ObjC selector: @- contentOverlayView@
contentOverlayView :: IsAVPlayerView avPlayerView => avPlayerView -> IO RawId
contentOverlayView avPlayerView =
  sendMessage avPlayerView contentOverlayViewSelector

-- | updatesNowPlayingInfoCenter
--
-- Whether or not the now playing info center should be updated. Default is YES.
--
-- ObjC selector: @- updatesNowPlayingInfoCenter@
updatesNowPlayingInfoCenter :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
updatesNowPlayingInfoCenter avPlayerView =
  sendMessage avPlayerView updatesNowPlayingInfoCenterSelector

-- | updatesNowPlayingInfoCenter
--
-- Whether or not the now playing info center should be updated. Default is YES.
--
-- ObjC selector: @- setUpdatesNowPlayingInfoCenter:@
setUpdatesNowPlayingInfoCenter :: IsAVPlayerView avPlayerView => avPlayerView -> Bool -> IO ()
setUpdatesNowPlayingInfoCenter avPlayerView value =
  sendMessage avPlayerView setUpdatesNowPlayingInfoCenterSelector value

-- | selectedSpeed
--
-- The currently selected playback speed.
--
-- Changes to the associated AVPlayer's defaultRate will be reflected in this property and vice versa. If the associated AVPlayer's defaultRate is set to a value that does not match a speed in the speeds list property, the selected speed will be nil.
--
-- ObjC selector: @- selectedSpeed@
selectedSpeed :: IsAVPlayerView avPlayerView => avPlayerView -> IO RawId
selectedSpeed avPlayerView =
  sendMessage avPlayerView selectedSpeedSelector

-- | allowsVideoFrameAnalysis
--
-- When set to YES, the AVPlayerView will try to find objects, text and people while the media is paused. When an object is found, the user will be able to interact with it selecting and right clicking to present a context menu. Default is YES.
--
-- ObjC selector: @- allowsVideoFrameAnalysis@
allowsVideoFrameAnalysis :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
allowsVideoFrameAnalysis avPlayerView =
  sendMessage avPlayerView allowsVideoFrameAnalysisSelector

-- | allowsVideoFrameAnalysis
--
-- When set to YES, the AVPlayerView will try to find objects, text and people while the media is paused. When an object is found, the user will be able to interact with it selecting and right clicking to present a context menu. Default is YES.
--
-- ObjC selector: @- setAllowsVideoFrameAnalysis:@
setAllowsVideoFrameAnalysis :: IsAVPlayerView avPlayerView => avPlayerView -> Bool -> IO ()
setAllowsVideoFrameAnalysis avPlayerView value =
  sendMessage avPlayerView setAllowsVideoFrameAnalysisSelector value

-- | allowsMagnification
--
-- Whether the magnify gesture will change the video's view magnification.
--
-- The default value is NO. This property only effects whether the magnify gesture triggers magnification. A client can still programmatically change magnification even when the value of this is NO. This behavior matches the behavior of NSScrollView.
--
-- ObjC selector: @- allowsMagnification@
allowsMagnification :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
allowsMagnification avPlayerView =
  sendMessage avPlayerView allowsMagnificationSelector

-- | allowsMagnification
--
-- Whether the magnify gesture will change the video's view magnification.
--
-- The default value is NO. This property only effects whether the magnify gesture triggers magnification. A client can still programmatically change magnification even when the value of this is NO. This behavior matches the behavior of NSScrollView.
--
-- ObjC selector: @- setAllowsMagnification:@
setAllowsMagnification :: IsAVPlayerView avPlayerView => avPlayerView -> Bool -> IO ()
setAllowsMagnification avPlayerView value =
  sendMessage avPlayerView setAllowsMagnificationSelector value

-- | magnification
--
-- The factor by which the video's view is currently scaled.
--
-- The default value is 1.0. The value cannot be smaller than 1.0 or larger 64.0. Nearest neighbor interpolation will be used once the content has been zoomed past a certain factor.
--
-- ObjC selector: @- magnification@
magnification :: IsAVPlayerView avPlayerView => avPlayerView -> IO CDouble
magnification avPlayerView =
  sendMessage avPlayerView magnificationSelector

-- | magnification
--
-- The factor by which the video's view is currently scaled.
--
-- The default value is 1.0. The value cannot be smaller than 1.0 or larger 64.0. Nearest neighbor interpolation will be used once the content has been zoomed past a certain factor.
--
-- ObjC selector: @- setMagnification:@
setMagnification :: IsAVPlayerView avPlayerView => avPlayerView -> CDouble -> IO ()
setMagnification avPlayerView value =
  sendMessage avPlayerView setMagnificationSelector value

-- | allowsPictureInPicturePlayback
--
-- Whether or not the receiver allows Picture in Picture playback. Default is NO.
--
-- ObjC selector: @- allowsPictureInPicturePlayback@
allowsPictureInPicturePlayback :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
allowsPictureInPicturePlayback avPlayerView =
  sendMessage avPlayerView allowsPictureInPicturePlaybackSelector

-- | allowsPictureInPicturePlayback
--
-- Whether or not the receiver allows Picture in Picture playback. Default is NO.
--
-- ObjC selector: @- setAllowsPictureInPicturePlayback:@
setAllowsPictureInPicturePlayback :: IsAVPlayerView avPlayerView => avPlayerView -> Bool -> IO ()
setAllowsPictureInPicturePlayback avPlayerView value =
  sendMessage avPlayerView setAllowsPictureInPicturePlaybackSelector value

-- | canBeginTrimming
--
-- Whether or not the current media can be trimmed.
--
-- ObjC selector: @- canBeginTrimming@
canBeginTrimming :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
canBeginTrimming avPlayerView =
  sendMessage avPlayerView canBeginTrimmingSelector

-- | showsFrameSteppingButtons
--
-- Replace scanning controls in the playback UI with frame stepping buttons. Default is NO.
--
-- ObjC selector: @- showsFrameSteppingButtons@
showsFrameSteppingButtons :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
showsFrameSteppingButtons avPlayerView =
  sendMessage avPlayerView showsFrameSteppingButtonsSelector

-- | showsFrameSteppingButtons
--
-- Replace scanning controls in the playback UI with frame stepping buttons. Default is NO.
--
-- ObjC selector: @- setShowsFrameSteppingButtons:@
setShowsFrameSteppingButtons :: IsAVPlayerView avPlayerView => avPlayerView -> Bool -> IO ()
setShowsFrameSteppingButtons avPlayerView value =
  sendMessage avPlayerView setShowsFrameSteppingButtonsSelector value

-- | showsSharingServiceButton
--
-- Whether or not the controls pane will show a sharing service button when the current player item can be shared. Default is NO.
--
-- ObjC selector: @- showsSharingServiceButton@
showsSharingServiceButton :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
showsSharingServiceButton avPlayerView =
  sendMessage avPlayerView showsSharingServiceButtonSelector

-- | showsSharingServiceButton
--
-- Whether or not the controls pane will show a sharing service button when the current player item can be shared. Default is NO.
--
-- ObjC selector: @- setShowsSharingServiceButton:@
setShowsSharingServiceButton :: IsAVPlayerView avPlayerView => avPlayerView -> Bool -> IO ()
setShowsSharingServiceButton avPlayerView value =
  sendMessage avPlayerView setShowsSharingServiceButtonSelector value

-- | actionPopUpButtonMenu
--
-- Clients can set this property in order to show an action pop up button. Default is nil.
--
-- ObjC selector: @- actionPopUpButtonMenu@
actionPopUpButtonMenu :: IsAVPlayerView avPlayerView => avPlayerView -> IO (Id NSMenu)
actionPopUpButtonMenu avPlayerView =
  sendMessage avPlayerView actionPopUpButtonMenuSelector

-- | actionPopUpButtonMenu
--
-- Clients can set this property in order to show an action pop up button. Default is nil.
--
-- ObjC selector: @- setActionPopUpButtonMenu:@
setActionPopUpButtonMenu :: (IsAVPlayerView avPlayerView, IsNSMenu value) => avPlayerView -> value -> IO ()
setActionPopUpButtonMenu avPlayerView value =
  sendMessage avPlayerView setActionPopUpButtonMenuSelector (toNSMenu value)

-- | showsFullScreenToggleButton
--
-- Whether or not the controls pane will show a full screen toggle button. Default is NO.
--
-- ObjC selector: @- showsFullScreenToggleButton@
showsFullScreenToggleButton :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
showsFullScreenToggleButton avPlayerView =
  sendMessage avPlayerView showsFullScreenToggleButtonSelector

-- | showsFullScreenToggleButton
--
-- Whether or not the controls pane will show a full screen toggle button. Default is NO.
--
-- ObjC selector: @- setShowsFullScreenToggleButton:@
setShowsFullScreenToggleButton :: IsAVPlayerView avPlayerView => avPlayerView -> Bool -> IO ()
setShowsFullScreenToggleButton avPlayerView value =
  sendMessage avPlayerView setShowsFullScreenToggleButtonSelector value

-- | showsTimecodes
--
-- If timecodes are available, allow the AVPlayerView controls to enter timecode mode. Default is NO.
--
-- ObjC selector: @- showsTimecodes@
showsTimecodes :: IsAVPlayerView avPlayerView => avPlayerView -> IO Bool
showsTimecodes avPlayerView =
  sendMessage avPlayerView showsTimecodesSelector

-- | showsTimecodes
--
-- If timecodes are available, allow the AVPlayerView controls to enter timecode mode. Default is NO.
--
-- ObjC selector: @- setShowsTimecodes:@
setShowsTimecodes :: IsAVPlayerView avPlayerView => avPlayerView -> Bool -> IO ()
setShowsTimecodes avPlayerView value =
  sendMessage avPlayerView setShowsTimecodesSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @selectSpeed:@
selectSpeedSelector :: Selector '[Id AVPlaybackSpeed] ()
selectSpeedSelector = mkSelector "selectSpeed:"

-- | @Selector@ for @flashChapterNumber:chapterTitle:@
flashChapterNumber_chapterTitleSelector :: Selector '[CULong, Id NSString] ()
flashChapterNumber_chapterTitleSelector = mkSelector "flashChapterNumber:chapterTitle:"

-- | @Selector@ for @beginTrimmingWithCompletionHandler:@
beginTrimmingWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
beginTrimmingWithCompletionHandlerSelector = mkSelector "beginTrimmingWithCompletionHandler:"

-- | @Selector@ for @player@
playerSelector :: Selector '[] (Id AVPlayer)
playerSelector = mkSelector "player"

-- | @Selector@ for @setPlayer:@
setPlayerSelector :: Selector '[Id AVPlayer] ()
setPlayerSelector = mkSelector "setPlayer:"

-- | @Selector@ for @controlsStyle@
controlsStyleSelector :: Selector '[] AVPlayerViewControlsStyle
controlsStyleSelector = mkSelector "controlsStyle"

-- | @Selector@ for @setControlsStyle:@
setControlsStyleSelector :: Selector '[AVPlayerViewControlsStyle] ()
setControlsStyleSelector = mkSelector "setControlsStyle:"

-- | @Selector@ for @videoGravity@
videoGravitySelector :: Selector '[] (Id NSString)
videoGravitySelector = mkSelector "videoGravity"

-- | @Selector@ for @setVideoGravity:@
setVideoGravitySelector :: Selector '[Id NSString] ()
setVideoGravitySelector = mkSelector "setVideoGravity:"

-- | @Selector@ for @readyForDisplay@
readyForDisplaySelector :: Selector '[] Bool
readyForDisplaySelector = mkSelector "readyForDisplay"

-- | @Selector@ for @videoBounds@
videoBoundsSelector :: Selector '[] NSRect
videoBoundsSelector = mkSelector "videoBounds"

-- | @Selector@ for @contentOverlayView@
contentOverlayViewSelector :: Selector '[] RawId
contentOverlayViewSelector = mkSelector "contentOverlayView"

-- | @Selector@ for @updatesNowPlayingInfoCenter@
updatesNowPlayingInfoCenterSelector :: Selector '[] Bool
updatesNowPlayingInfoCenterSelector = mkSelector "updatesNowPlayingInfoCenter"

-- | @Selector@ for @setUpdatesNowPlayingInfoCenter:@
setUpdatesNowPlayingInfoCenterSelector :: Selector '[Bool] ()
setUpdatesNowPlayingInfoCenterSelector = mkSelector "setUpdatesNowPlayingInfoCenter:"

-- | @Selector@ for @selectedSpeed@
selectedSpeedSelector :: Selector '[] RawId
selectedSpeedSelector = mkSelector "selectedSpeed"

-- | @Selector@ for @allowsVideoFrameAnalysis@
allowsVideoFrameAnalysisSelector :: Selector '[] Bool
allowsVideoFrameAnalysisSelector = mkSelector "allowsVideoFrameAnalysis"

-- | @Selector@ for @setAllowsVideoFrameAnalysis:@
setAllowsVideoFrameAnalysisSelector :: Selector '[Bool] ()
setAllowsVideoFrameAnalysisSelector = mkSelector "setAllowsVideoFrameAnalysis:"

-- | @Selector@ for @allowsMagnification@
allowsMagnificationSelector :: Selector '[] Bool
allowsMagnificationSelector = mkSelector "allowsMagnification"

-- | @Selector@ for @setAllowsMagnification:@
setAllowsMagnificationSelector :: Selector '[Bool] ()
setAllowsMagnificationSelector = mkSelector "setAllowsMagnification:"

-- | @Selector@ for @magnification@
magnificationSelector :: Selector '[] CDouble
magnificationSelector = mkSelector "magnification"

-- | @Selector@ for @setMagnification:@
setMagnificationSelector :: Selector '[CDouble] ()
setMagnificationSelector = mkSelector "setMagnification:"

-- | @Selector@ for @allowsPictureInPicturePlayback@
allowsPictureInPicturePlaybackSelector :: Selector '[] Bool
allowsPictureInPicturePlaybackSelector = mkSelector "allowsPictureInPicturePlayback"

-- | @Selector@ for @setAllowsPictureInPicturePlayback:@
setAllowsPictureInPicturePlaybackSelector :: Selector '[Bool] ()
setAllowsPictureInPicturePlaybackSelector = mkSelector "setAllowsPictureInPicturePlayback:"

-- | @Selector@ for @canBeginTrimming@
canBeginTrimmingSelector :: Selector '[] Bool
canBeginTrimmingSelector = mkSelector "canBeginTrimming"

-- | @Selector@ for @showsFrameSteppingButtons@
showsFrameSteppingButtonsSelector :: Selector '[] Bool
showsFrameSteppingButtonsSelector = mkSelector "showsFrameSteppingButtons"

-- | @Selector@ for @setShowsFrameSteppingButtons:@
setShowsFrameSteppingButtonsSelector :: Selector '[Bool] ()
setShowsFrameSteppingButtonsSelector = mkSelector "setShowsFrameSteppingButtons:"

-- | @Selector@ for @showsSharingServiceButton@
showsSharingServiceButtonSelector :: Selector '[] Bool
showsSharingServiceButtonSelector = mkSelector "showsSharingServiceButton"

-- | @Selector@ for @setShowsSharingServiceButton:@
setShowsSharingServiceButtonSelector :: Selector '[Bool] ()
setShowsSharingServiceButtonSelector = mkSelector "setShowsSharingServiceButton:"

-- | @Selector@ for @actionPopUpButtonMenu@
actionPopUpButtonMenuSelector :: Selector '[] (Id NSMenu)
actionPopUpButtonMenuSelector = mkSelector "actionPopUpButtonMenu"

-- | @Selector@ for @setActionPopUpButtonMenu:@
setActionPopUpButtonMenuSelector :: Selector '[Id NSMenu] ()
setActionPopUpButtonMenuSelector = mkSelector "setActionPopUpButtonMenu:"

-- | @Selector@ for @showsFullScreenToggleButton@
showsFullScreenToggleButtonSelector :: Selector '[] Bool
showsFullScreenToggleButtonSelector = mkSelector "showsFullScreenToggleButton"

-- | @Selector@ for @setShowsFullScreenToggleButton:@
setShowsFullScreenToggleButtonSelector :: Selector '[Bool] ()
setShowsFullScreenToggleButtonSelector = mkSelector "setShowsFullScreenToggleButton:"

-- | @Selector@ for @showsTimecodes@
showsTimecodesSelector :: Selector '[] Bool
showsTimecodesSelector = mkSelector "showsTimecodes"

-- | @Selector@ for @setShowsTimecodes:@
setShowsTimecodesSelector :: Selector '[Bool] ()
setShowsTimecodesSelector = mkSelector "setShowsTimecodes:"

