{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @STWebpageController@.
module ObjC.ScreenTime.STWebpageController
  ( STWebpageController
  , IsSTWebpageController(..)
  , setBundleIdentifier_error
  , initWithNibName_bundle
  , initWithCoder
  , suppressUsageRecording
  , setSuppressUsageRecording
  , url
  , setURL
  , urlIsPlayingVideo
  , setURLIsPlayingVideo
  , urlIsPictureInPicture
  , setURLIsPictureInPicture
  , urlIsBlocked
  , initWithCoderSelector
  , initWithNibName_bundleSelector
  , setBundleIdentifier_errorSelector
  , setSuppressUsageRecordingSelector
  , setURLIsPictureInPictureSelector
  , setURLIsPlayingVideoSelector
  , setURLSelector
  , suppressUsageRecordingSelector
  , urlIsBlockedSelector
  , urlIsPictureInPictureSelector
  , urlIsPlayingVideoSelector
  , urlSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScreenTime.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Changes the bundle identifier used to report web usage.
--
-- This is only supported for web browsers that have been properly registered with Screen Time.
--
-- @bundleIdentifier@ — Defaults to @NSBundle.mainBundle.bundleIdentifier@ but can be changed to facilitate reporting web usage for a parent web browser from one of its helper processes or extensions.
--
-- @error@ — Any error that occurred while changing the bundle identifier.
--
-- ObjC selector: @- setBundleIdentifier:error:@
setBundleIdentifier_error :: (IsSTWebpageController stWebpageController, IsNSString bundleIdentifier, IsNSError error_) => stWebpageController -> bundleIdentifier -> error_ -> IO Bool
setBundleIdentifier_error stWebpageController bundleIdentifier error_ =
  sendMessage stWebpageController setBundleIdentifier_errorSelector (toNSString bundleIdentifier) (toNSError error_)

-- | @- initWithNibName:bundle:@
initWithNibName_bundle :: (IsSTWebpageController stWebpageController, IsNSString nibNameOrNil, IsNSBundle nibBundleOrNil) => stWebpageController -> nibNameOrNil -> nibBundleOrNil -> IO (Id STWebpageController)
initWithNibName_bundle stWebpageController nibNameOrNil nibBundleOrNil =
  sendOwnedMessage stWebpageController initWithNibName_bundleSelector (toNSString nibNameOrNil) (toNSBundle nibBundleOrNil)

-- | @- initWithCoder:@
initWithCoder :: (IsSTWebpageController stWebpageController, IsNSCoder aDecoder) => stWebpageController -> aDecoder -> IO (Id STWebpageController)
initWithCoder stWebpageController aDecoder =
  sendOwnedMessage stWebpageController initWithCoderSelector (toNSCoder aDecoder)

-- | Suppresses the recording of web usage.
--
-- When this property is set to @YES,@ the current usage recording is stopped, and no further usage is recorded in Screen Time.
--
-- ObjC selector: @- suppressUsageRecording@
suppressUsageRecording :: IsSTWebpageController stWebpageController => stWebpageController -> IO Bool
suppressUsageRecording stWebpageController =
  sendMessage stWebpageController suppressUsageRecordingSelector

-- | Suppresses the recording of web usage.
--
-- When this property is set to @YES,@ the current usage recording is stopped, and no further usage is recorded in Screen Time.
--
-- ObjC selector: @- setSuppressUsageRecording:@
setSuppressUsageRecording :: IsSTWebpageController stWebpageController => stWebpageController -> Bool -> IO ()
setSuppressUsageRecording stWebpageController value =
  sendMessage stWebpageController setSuppressUsageRecordingSelector value

-- | @- URL@
url :: IsSTWebpageController stWebpageController => stWebpageController -> IO (Id NSURL)
url stWebpageController =
  sendMessage stWebpageController urlSelector

-- | @- setURL:@
setURL :: (IsSTWebpageController stWebpageController, IsNSURL value) => stWebpageController -> value -> IO ()
setURL stWebpageController value =
  sendMessage stWebpageController setURLSelector (toNSURL value)

-- | Whether or not there are one or more videos that are currently playing in the webpage.
--
-- ObjC selector: @- URLIsPlayingVideo@
urlIsPlayingVideo :: IsSTWebpageController stWebpageController => stWebpageController -> IO Bool
urlIsPlayingVideo stWebpageController =
  sendMessage stWebpageController urlIsPlayingVideoSelector

-- | Whether or not there are one or more videos that are currently playing in the webpage.
--
-- ObjC selector: @- setURLIsPlayingVideo:@
setURLIsPlayingVideo :: IsSTWebpageController stWebpageController => stWebpageController -> Bool -> IO ()
setURLIsPlayingVideo stWebpageController value =
  sendMessage stWebpageController setURLIsPlayingVideoSelector value

-- | Whether or not the webpage has a video displayed in a floating Picture in Picture window.
--
-- ObjC selector: @- URLIsPictureInPicture@
urlIsPictureInPicture :: IsSTWebpageController stWebpageController => stWebpageController -> IO Bool
urlIsPictureInPicture stWebpageController =
  sendMessage stWebpageController urlIsPictureInPictureSelector

-- | Whether or not the webpage has a video displayed in a floating Picture in Picture window.
--
-- ObjC selector: @- setURLIsPictureInPicture:@
setURLIsPictureInPicture :: IsSTWebpageController stWebpageController => stWebpageController -> Bool -> IO ()
setURLIsPictureInPicture stWebpageController value =
  sendMessage stWebpageController setURLIsPictureInPictureSelector value

-- | If @URL@ is blocked or not.
--
-- This property can be used for pausing media and ending any Picture in Picture video. It will change at a random delay (for user privacy reasons) after the URL should be blocked, and is KVO-compliant.
--
-- ObjC selector: @- URLIsBlocked@
urlIsBlocked :: IsSTWebpageController stWebpageController => stWebpageController -> IO Bool
urlIsBlocked stWebpageController =
  sendMessage stWebpageController urlIsBlockedSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @setBundleIdentifier:error:@
setBundleIdentifier_errorSelector :: Selector '[Id NSString, Id NSError] Bool
setBundleIdentifier_errorSelector = mkSelector "setBundleIdentifier:error:"

-- | @Selector@ for @initWithNibName:bundle:@
initWithNibName_bundleSelector :: Selector '[Id NSString, Id NSBundle] (Id STWebpageController)
initWithNibName_bundleSelector = mkSelector "initWithNibName:bundle:"

-- | @Selector@ for @initWithCoder:@
initWithCoderSelector :: Selector '[Id NSCoder] (Id STWebpageController)
initWithCoderSelector = mkSelector "initWithCoder:"

-- | @Selector@ for @suppressUsageRecording@
suppressUsageRecordingSelector :: Selector '[] Bool
suppressUsageRecordingSelector = mkSelector "suppressUsageRecording"

-- | @Selector@ for @setSuppressUsageRecording:@
setSuppressUsageRecordingSelector :: Selector '[Bool] ()
setSuppressUsageRecordingSelector = mkSelector "setSuppressUsageRecording:"

-- | @Selector@ for @URL@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "URL"

-- | @Selector@ for @setURL:@
setURLSelector :: Selector '[Id NSURL] ()
setURLSelector = mkSelector "setURL:"

-- | @Selector@ for @URLIsPlayingVideo@
urlIsPlayingVideoSelector :: Selector '[] Bool
urlIsPlayingVideoSelector = mkSelector "URLIsPlayingVideo"

-- | @Selector@ for @setURLIsPlayingVideo:@
setURLIsPlayingVideoSelector :: Selector '[Bool] ()
setURLIsPlayingVideoSelector = mkSelector "setURLIsPlayingVideo:"

-- | @Selector@ for @URLIsPictureInPicture@
urlIsPictureInPictureSelector :: Selector '[] Bool
urlIsPictureInPictureSelector = mkSelector "URLIsPictureInPicture"

-- | @Selector@ for @setURLIsPictureInPicture:@
setURLIsPictureInPictureSelector :: Selector '[Bool] ()
setURLIsPictureInPictureSelector = mkSelector "setURLIsPictureInPicture:"

-- | @Selector@ for @URLIsBlocked@
urlIsBlockedSelector :: Selector '[] Bool
urlIsBlockedSelector = mkSelector "URLIsBlocked"

