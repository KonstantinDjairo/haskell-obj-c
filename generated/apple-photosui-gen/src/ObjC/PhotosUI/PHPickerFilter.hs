{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A filter that restricts which types of assets @PHPickerViewController@ can show.
--
-- Generated bindings for @PHPickerFilter@.
module ObjC.PhotosUI.PHPickerFilter
  ( PHPickerFilter
  , IsPHPickerFilter(..)
  , playbackStyleFilter
  , anyFilterMatchingSubfilters
  , allFilterMatchingSubfilters
  , notFilterOfSubfilter
  , new
  , init_
  , imagesFilter
  , videosFilter
  , livePhotosFilter
  , depthEffectPhotosFilter
  , burstsFilter
  , panoramasFilter
  , screenshotsFilter
  , screenRecordingsFilter
  , cinematicVideosFilter
  , slomoVideosFilter
  , timelapseVideosFilter
  , allFilterMatchingSubfiltersSelector
  , anyFilterMatchingSubfiltersSelector
  , burstsFilterSelector
  , cinematicVideosFilterSelector
  , depthEffectPhotosFilterSelector
  , imagesFilterSelector
  , initSelector
  , livePhotosFilterSelector
  , newSelector
  , notFilterOfSubfilterSelector
  , panoramasFilterSelector
  , playbackStyleFilterSelector
  , screenRecordingsFilterSelector
  , screenshotsFilterSelector
  , slomoVideosFilterSelector
  , timelapseVideosFilterSelector
  , videosFilterSelector

  -- * Enum types
  , PHAssetPlaybackStyle(PHAssetPlaybackStyle)
  , pattern PHAssetPlaybackStyleUnsupported
  , pattern PHAssetPlaybackStyleImage
  , pattern PHAssetPlaybackStyleImageAnimated
  , pattern PHAssetPlaybackStyleLivePhoto
  , pattern PHAssetPlaybackStyleVideo
  , pattern PHAssetPlaybackStyleVideoLooping

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PhotosUI.Internal.Classes
import ObjC.Photos.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | Returns a new filter based on the asset playback style.
--
-- ObjC selector: @+ playbackStyleFilter:@
playbackStyleFilter :: PHAssetPlaybackStyle -> IO (Id PHPickerFilter)
playbackStyleFilter playbackStyle =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' playbackStyleFilterSelector playbackStyle

-- | Returns a new filter formed by OR-ing the filters in a given array.
--
-- ObjC selector: @+ anyFilterMatchingSubfilters:@
anyFilterMatchingSubfilters :: IsNSArray subfilters => subfilters -> IO (Id PHPickerFilter)
anyFilterMatchingSubfilters subfilters =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' anyFilterMatchingSubfiltersSelector (toNSArray subfilters)

-- | Returns a new filter formed by AND-ing the filters in a given array.
--
-- ObjC selector: @+ allFilterMatchingSubfilters:@
allFilterMatchingSubfilters :: IsNSArray subfilters => subfilters -> IO (Id PHPickerFilter)
allFilterMatchingSubfilters subfilters =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' allFilterMatchingSubfiltersSelector (toNSArray subfilters)

-- | Returns a new filter formed by negating the given filter.
--
-- ObjC selector: @+ notFilterOfSubfilter:@
notFilterOfSubfilter :: IsPHPickerFilter subfilter => subfilter -> IO (Id PHPickerFilter)
notFilterOfSubfilter subfilter =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' notFilterOfSubfilterSelector (toPHPickerFilter subfilter)

-- | @+ new@
new :: IO (Id PHPickerFilter)
new  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsPHPickerFilter phPickerFilter => phPickerFilter -> IO (Id PHPickerFilter)
init_ phPickerFilter =
  sendOwnedMessage phPickerFilter initSelector

-- | The filter for images.
--
-- ObjC selector: @+ imagesFilter@
imagesFilter :: IO (Id PHPickerFilter)
imagesFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' imagesFilterSelector

-- | The filter for videos.
--
-- ObjC selector: @+ videosFilter@
videosFilter :: IO (Id PHPickerFilter)
videosFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' videosFilterSelector

-- | The filter for live photos.
--
-- ObjC selector: @+ livePhotosFilter@
livePhotosFilter :: IO (Id PHPickerFilter)
livePhotosFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' livePhotosFilterSelector

-- | The filter for Depth Effect photos.
--
-- ObjC selector: @+ depthEffectPhotosFilter@
depthEffectPhotosFilter :: IO RawId
depthEffectPhotosFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' depthEffectPhotosFilterSelector

-- | The filter for bursts.
--
-- ObjC selector: @+ burstsFilter@
burstsFilter :: IO RawId
burstsFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' burstsFilterSelector

-- | The filter for panorama photos.
--
-- ObjC selector: @+ panoramasFilter@
panoramasFilter :: IO RawId
panoramasFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' panoramasFilterSelector

-- | The filter for screenshots.
--
-- ObjC selector: @+ screenshotsFilter@
screenshotsFilter :: IO RawId
screenshotsFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' screenshotsFilterSelector

-- | The filter for screen recordings.
--
-- ObjC selector: @+ screenRecordingsFilter@
screenRecordingsFilter :: IO RawId
screenRecordingsFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' screenRecordingsFilterSelector

-- | The filter for Cinematic videos.
--
-- ObjC selector: @+ cinematicVideosFilter@
cinematicVideosFilter :: IO RawId
cinematicVideosFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' cinematicVideosFilterSelector

-- | The filter for Slow-Mo videos.
--
-- ObjC selector: @+ slomoVideosFilter@
slomoVideosFilter :: IO RawId
slomoVideosFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' slomoVideosFilterSelector

-- | The filter for time-lapse videos.
--
-- ObjC selector: @+ timelapseVideosFilter@
timelapseVideosFilter :: IO RawId
timelapseVideosFilter  =
  do
    cls' <- getRequiredClass "PHPickerFilter"
    sendClassMessage cls' timelapseVideosFilterSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @playbackStyleFilter:@
playbackStyleFilterSelector :: Selector '[PHAssetPlaybackStyle] (Id PHPickerFilter)
playbackStyleFilterSelector = mkSelector "playbackStyleFilter:"

-- | @Selector@ for @anyFilterMatchingSubfilters:@
anyFilterMatchingSubfiltersSelector :: Selector '[Id NSArray] (Id PHPickerFilter)
anyFilterMatchingSubfiltersSelector = mkSelector "anyFilterMatchingSubfilters:"

-- | @Selector@ for @allFilterMatchingSubfilters:@
allFilterMatchingSubfiltersSelector :: Selector '[Id NSArray] (Id PHPickerFilter)
allFilterMatchingSubfiltersSelector = mkSelector "allFilterMatchingSubfilters:"

-- | @Selector@ for @notFilterOfSubfilter:@
notFilterOfSubfilterSelector :: Selector '[Id PHPickerFilter] (Id PHPickerFilter)
notFilterOfSubfilterSelector = mkSelector "notFilterOfSubfilter:"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id PHPickerFilter)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id PHPickerFilter)
initSelector = mkSelector "init"

-- | @Selector@ for @imagesFilter@
imagesFilterSelector :: Selector '[] (Id PHPickerFilter)
imagesFilterSelector = mkSelector "imagesFilter"

-- | @Selector@ for @videosFilter@
videosFilterSelector :: Selector '[] (Id PHPickerFilter)
videosFilterSelector = mkSelector "videosFilter"

-- | @Selector@ for @livePhotosFilter@
livePhotosFilterSelector :: Selector '[] (Id PHPickerFilter)
livePhotosFilterSelector = mkSelector "livePhotosFilter"

-- | @Selector@ for @depthEffectPhotosFilter@
depthEffectPhotosFilterSelector :: Selector '[] RawId
depthEffectPhotosFilterSelector = mkSelector "depthEffectPhotosFilter"

-- | @Selector@ for @burstsFilter@
burstsFilterSelector :: Selector '[] RawId
burstsFilterSelector = mkSelector "burstsFilter"

-- | @Selector@ for @panoramasFilter@
panoramasFilterSelector :: Selector '[] RawId
panoramasFilterSelector = mkSelector "panoramasFilter"

-- | @Selector@ for @screenshotsFilter@
screenshotsFilterSelector :: Selector '[] RawId
screenshotsFilterSelector = mkSelector "screenshotsFilter"

-- | @Selector@ for @screenRecordingsFilter@
screenRecordingsFilterSelector :: Selector '[] RawId
screenRecordingsFilterSelector = mkSelector "screenRecordingsFilter"

-- | @Selector@ for @cinematicVideosFilter@
cinematicVideosFilterSelector :: Selector '[] RawId
cinematicVideosFilterSelector = mkSelector "cinematicVideosFilter"

-- | @Selector@ for @slomoVideosFilter@
slomoVideosFilterSelector :: Selector '[] RawId
slomoVideosFilterSelector = mkSelector "slomoVideosFilter"

-- | @Selector@ for @timelapseVideosFilter@
timelapseVideosFilterSelector :: Selector '[] RawId
timelapseVideosFilterSelector = mkSelector "timelapseVideosFilter"

