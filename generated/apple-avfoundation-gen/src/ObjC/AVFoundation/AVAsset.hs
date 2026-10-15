{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVAsset@.
module ObjC.AVFoundation.AVAsset
  ( AVAsset
  , IsAVAsset(..)
  , assetWithURL
  , unusedTrackID
  , findUnusedTrackIDWithCompletionHandler
  , mediaSelectionGroupForMediaCharacteristic
  , loadMediaSelectionGroupForMediaCharacteristic_completionHandler
  , chapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeys
  , chapterMetadataGroupsBestMatchingPreferredLanguages
  , metadataForFormat
  , trackWithTrackID
  , loadTrackWithTrackID_completionHandler
  , tracksWithMediaType
  , tracksWithMediaCharacteristic
  , cancelLoading
  , preferredRate
  , preferredVolume
  , preferredDisplayCriteria
  , playable
  , exportable
  , readable
  , composable
  , compatibleWithSavedPhotosAlbum
  , compatibleWithAirPlayVideo
  , canContainFragments
  , containsFragments
  , hasProtectedContent
  , availableMediaCharacteristicsWithMediaSelectionOptions
  , preferredMediaSelection
  , allMediaSelections
  , availableChapterLocales
  , creationDate
  , lyrics
  , commonMetadata
  , metadata
  , availableMetadataFormats
  , tracks
  , trackGroups
  , referenceRestrictions
  , providesPreciseDurationAndTiming
  , allMediaSelectionsSelector
  , assetWithURLSelector
  , availableChapterLocalesSelector
  , availableMediaCharacteristicsWithMediaSelectionOptionsSelector
  , availableMetadataFormatsSelector
  , canContainFragmentsSelector
  , cancelLoadingSelector
  , chapterMetadataGroupsBestMatchingPreferredLanguagesSelector
  , chapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeysSelector
  , commonMetadataSelector
  , compatibleWithAirPlayVideoSelector
  , compatibleWithSavedPhotosAlbumSelector
  , composableSelector
  , containsFragmentsSelector
  , creationDateSelector
  , exportableSelector
  , findUnusedTrackIDWithCompletionHandlerSelector
  , hasProtectedContentSelector
  , loadMediaSelectionGroupForMediaCharacteristic_completionHandlerSelector
  , loadTrackWithTrackID_completionHandlerSelector
  , lyricsSelector
  , mediaSelectionGroupForMediaCharacteristicSelector
  , metadataForFormatSelector
  , metadataSelector
  , playableSelector
  , preferredDisplayCriteriaSelector
  , preferredMediaSelectionSelector
  , preferredRateSelector
  , preferredVolumeSelector
  , providesPreciseDurationAndTimingSelector
  , readableSelector
  , referenceRestrictionsSelector
  , trackGroupsSelector
  , trackWithTrackIDSelector
  , tracksSelector
  , tracksWithMediaCharacteristicSelector
  , tracksWithMediaTypeSelector
  , unusedTrackIDSelector

  -- * Enum types
  , AVAssetReferenceRestrictions(AVAssetReferenceRestrictions)
  , pattern AVAssetReferenceRestrictionForbidNone
  , pattern AVAssetReferenceRestrictionForbidRemoteReferenceToLocal
  , pattern AVAssetReferenceRestrictionForbidLocalReferenceToRemote
  , pattern AVAssetReferenceRestrictionForbidCrossSiteReference
  , pattern AVAssetReferenceRestrictionForbidLocalReferenceToLocal
  , pattern AVAssetReferenceRestrictionForbidAll
  , pattern AVAssetReferenceRestrictionDefaultPolicy

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

-- | assetWithURL:
--
-- Returns an instance of AVAsset for inspection of a media resource.
--
-- @URL@ — An instance of NSURL that references a media resource.
--
-- Returns: An instance of AVAsset.
--
-- Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
--
-- ObjC selector: @+ assetWithURL:@
assetWithURL :: IsNSURL url => url -> IO (Id AVAsset)
assetWithURL url =
  do
    cls' <- getRequiredClass "AVAsset"
    sendClassMessage cls' assetWithURLSelector (toNSURL url)

-- | @- unusedTrackID@
unusedTrackID :: IsAVAsset avAsset => avAsset -> IO CInt
unusedTrackID avAsset =
  sendMessage avAsset unusedTrackIDSelector

-- | findUnusedTrackIDWithCompletionHandler:
--
-- Loads a track ID that will not collide with any existing track
--
-- @completionHandler@ — A block that is invoked when loading is complete, vending the track ID or an error.
--
-- ObjC selector: @- findUnusedTrackIDWithCompletionHandler:@
findUnusedTrackIDWithCompletionHandler :: IsAVAsset avAsset => avAsset -> Ptr () -> IO ()
findUnusedTrackIDWithCompletionHandler avAsset completionHandler =
  sendMessage avAsset findUnusedTrackIDWithCompletionHandlerSelector completionHandler

-- | mediaSelectionGroupForMediaCharacteristic:
--
-- Provides an instance of AVMediaSelectionGroup that contains one or more options with the specified media characteristic.
--
-- @mediaCharacteristic@ — A media characteristic for which you wish to obtain the available media selection options. AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, and AVMediaCharacteristicVisual are currently supported.
--
-- Pass AVMediaCharacteristicAudible to obtain the group of available options for audio media in various languages and for various purposes, such as descriptive audio.	Pass AVMediaCharacteristicLegible to obtain the group of available options for subtitles in various languages and for various purposes.	Pass AVMediaCharacteristicVisual to obtain the group of available options for video media.
--
-- Returns: An instance of AVMediaSelectionGroup. May be nil.
--
-- Becomes callable without blocking when the key "availableMediaCharacteristicsWithMediaSelectionOptions" has been loaded.
--
-- If the asset has no AVMediaSelectionGroup containing options with the specified media characteristic, the return value will be nil.
--
-- Filtering of the options in the returned AVMediaSelectionGroup according to playability, locale, and additional media characteristics can be accomplished using the category AVMediaSelectionOptionFiltering defined on AVMediaSelectionGroup.
--
-- ObjC selector: @- mediaSelectionGroupForMediaCharacteristic:@
mediaSelectionGroupForMediaCharacteristic :: (IsAVAsset avAsset, IsNSString mediaCharacteristic) => avAsset -> mediaCharacteristic -> IO (Id AVMediaSelectionGroup)
mediaSelectionGroupForMediaCharacteristic avAsset mediaCharacteristic =
  sendMessage avAsset mediaSelectionGroupForMediaCharacteristicSelector (toNSString mediaCharacteristic)

-- | loadMediaSelectionGroupForMediaCharacteristic:completionHandler:
--
-- Loads an instance of AVMediaSelectionGroup that contains one or more options with the specified media characteristic.
--
-- @mediaCharacteristic@ — A media characteristic for which you wish to obtain the available media selection options. AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, and AVMediaCharacteristicVisual are currently supported.
--
-- Pass AVMediaCharacteristicAudible to obtain the group of available options for audio media in various languages and for various purposes, such as descriptive audio.	Pass AVMediaCharacteristicLegible to obtain the group of available options for subtitles in various languages and for various purposes.	Pass AVMediaCharacteristicVisual to obtain the group of available options for video media.
--
-- @completionHandler@ — A block that is invoked when loading is complete, vending an instance of AVMediaSelectionGroup (which may be nil) or an error.
--
-- If the asset has no AVMediaSelectionGroup containing options with the specified media characteristic, the return value will be nil.
--
-- Filtering of the options in the returned AVMediaSelectionGroup according to playability, locale, and additional media characteristics can be accomplished using the category AVMediaSelectionOptionFiltering defined on AVMediaSelectionGroup.
--
-- ObjC selector: @- loadMediaSelectionGroupForMediaCharacteristic:completionHandler:@
loadMediaSelectionGroupForMediaCharacteristic_completionHandler :: (IsAVAsset avAsset, IsNSString mediaCharacteristic) => avAsset -> mediaCharacteristic -> Ptr () -> IO ()
loadMediaSelectionGroupForMediaCharacteristic_completionHandler avAsset mediaCharacteristic completionHandler =
  sendMessage avAsset loadMediaSelectionGroupForMediaCharacteristic_completionHandlerSelector (toNSString mediaCharacteristic) completionHandler

-- | chapterMetadataGroupsWithTitleLocale:containingItemsWithCommonKeys:
--
-- Provides an array of chapters.
--
-- @locale@ — Locale of the metadata items carrying chapter titles to be returned (supports the IETF BCP 47 specification).
--
-- @commonKeys@ — Array of common keys of AVMetadataItem to be included; can be nil. 				AVMetadataCommonKeyArtwork is the only supported key for now.
--
-- Returns: An NSArray of AVTimedMetadataGroup.
--
-- This method returns an array of AVTimedMetadataGroup objects. Each object in the array always contains an AVMetadataItem representing the chapter title; the timeRange property of the AVTimedMetadataGroup object is equal to the time range of the chapter title item.
--
-- An AVMetadataItem with the specified common key will be added to an existing AVTimedMetadataGroup object if the time range (timestamp and duration) of the metadata item and the metadata group overlaps. The locale of items not carrying chapter titles need not match the specified locale parameter.
--
-- Further filtering of the metadata items in AVTimedMetadataGroups according to language can be accomplished using +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:]; filtering of the metadata items according to locale can be accomplished using +[AVMetadataItem metadataItemsFromArray:withLocale:].
--
-- ObjC selector: @- chapterMetadataGroupsWithTitleLocale:containingItemsWithCommonKeys:@
chapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeys :: (IsAVAsset avAsset, IsNSLocale locale, IsNSArray commonKeys) => avAsset -> locale -> commonKeys -> IO (Id NSArray)
chapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeys avAsset locale commonKeys =
  sendMessage avAsset chapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeysSelector (toNSLocale locale) (toNSArray commonKeys)

-- | chapterMetadataGroupsBestMatchingPreferredLanguages:
--
-- Tests, in order of preference, for a match between language identifiers in the specified array of preferred languages and the available chapter locales, and returns the array of chapters corresponding to the first match that's found.
--
-- @preferredLanguages@ — An array of language identifiers in order of preference, each of which is an IETF BCP 47 (RFC 4646) language identifier. Use +[NSLocale preferredLanguages] to obtain the user's list of preferred languages.
--
-- Returns: An NSArray of AVTimedMetadataGroup.
--
-- Safe to call without blocking when the AVAsset key availableChapterLocales has status AVKeyValueStatusLoaded.
--
-- Returns an array of AVTimedMetadataGroup objects. Each object in the array always contains an AVMetadataItem representing the chapter title; the timeRange property of the AVTimedMetadataGroup object is equal to the time range of the chapter title item.
--
-- All of the available chapter metadata is included in the metadata groups, including items with the common key AVMetadataCommonKeyArtwork, if such items are present. Items not carrying chapter titles will be added to an existing AVTimedMetadataGroup object if the time range (timestamp and duration) of the metadata item and that of the metadata group overlaps. The locale of such items need not match the locale of the chapter titles.
--
-- Further filtering of the metadata items in AVTimedMetadataGroups according to language can be accomplished using +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:]; filtering of the metadata items according to locale can be accomplished using +[AVMetadataItem metadataItemsFromArray:withLocale:]..
--
-- ObjC selector: @- chapterMetadataGroupsBestMatchingPreferredLanguages:@
chapterMetadataGroupsBestMatchingPreferredLanguages :: (IsAVAsset avAsset, IsNSArray preferredLanguages) => avAsset -> preferredLanguages -> IO (Id NSArray)
chapterMetadataGroupsBestMatchingPreferredLanguages avAsset preferredLanguages =
  sendMessage avAsset chapterMetadataGroupsBestMatchingPreferredLanguagesSelector (toNSArray preferredLanguages)

-- | metadataForFormat:
--
-- Provides an NSArray of AVMetadataItems, one for each metadata item in the container of the specified format; can subsequently be filtered according to language via +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:], according to locale via +[AVMetadataItem metadataItemsFromArray:withLocale:], or according to key via +[AVMetadataItem metadataItemsFromArray:withKey:keySpace:].
--
-- @format@ — The metadata format for which items are requested.
--
-- Returns: An NSArray containing AVMetadataItems; may be empty if there is no metadata of the specified format.
--
-- Becomes callable without blocking when the key "availableMetadataFormats" has been loaded
--
-- ObjC selector: @- metadataForFormat:@
metadataForFormat :: (IsAVAsset avAsset, IsNSString format) => avAsset -> format -> IO (Id NSArray)
metadataForFormat avAsset format =
  sendMessage avAsset metadataForFormatSelector (toNSString format)

-- | trackWithTrackID:
--
-- Provides an instance of AVAssetTrack that represents the track of the specified trackID.
--
-- @trackID@ — The trackID of the requested AVAssetTrack.
--
-- Returns: An instance of AVAssetTrack; may be nil if no track of the specified trackID is available.
--
-- Becomes callable without blocking when the key "tracks" has been loaded
--
-- ObjC selector: @- trackWithTrackID:@
trackWithTrackID :: IsAVAsset avAsset => avAsset -> CInt -> IO (Id AVAssetTrack)
trackWithTrackID avAsset trackID =
  sendMessage avAsset trackWithTrackIDSelector trackID

-- | loadTrackWithTrackID:completionHandler:
--
-- Loads an instance of AVAssetTrack that represents the track of the specified trackID.
--
-- @trackID@ — The trackID of the requested AVAssetTrack.
--
-- @completionHandler@ — A block that is called when the loading is finished, with either the loaded track (which may be nil if no track of the specified trackID is available) or an error.
--
-- ObjC selector: @- loadTrackWithTrackID:completionHandler:@
loadTrackWithTrackID_completionHandler :: IsAVAsset avAsset => avAsset -> CInt -> Ptr () -> IO ()
loadTrackWithTrackID_completionHandler avAsset trackID completionHandler =
  sendMessage avAsset loadTrackWithTrackID_completionHandlerSelector trackID completionHandler

-- | tracksWithMediaType:
--
-- Provides an array of AVAssetTracks of the asset that present media of the specified media type.
--
-- @mediaType@ — The media type according to which AVAsset filters its AVAssetTracks. (Media types are defined in AVMediaFormat.h.)
--
-- Returns: An NSArray of AVAssetTracks; may be empty if no tracks of the specified media type are available.
--
-- Becomes callable without blocking when the key "tracks" has been loaded
--
-- ObjC selector: @- tracksWithMediaType:@
tracksWithMediaType :: (IsAVAsset avAsset, IsNSString mediaType) => avAsset -> mediaType -> IO (Id NSArray)
tracksWithMediaType avAsset mediaType =
  sendMessage avAsset tracksWithMediaTypeSelector (toNSString mediaType)

-- | tracksWithMediaCharacteristic:
--
-- Provides an array of AVAssetTracks of the asset that present media with the specified characteristic.
--
-- @mediaCharacteristic@ — The media characteristic according to which AVAsset filters its AVAssetTracks. (Media characteristics are defined in AVMediaFormat.h.)
--
-- Returns: An NSArray of AVAssetTracks; may be empty if no tracks with the specified characteristic are available.
--
-- Becomes callable without blocking when the key "tracks" has been loaded
--
-- ObjC selector: @- tracksWithMediaCharacteristic:@
tracksWithMediaCharacteristic :: (IsAVAsset avAsset, IsNSString mediaCharacteristic) => avAsset -> mediaCharacteristic -> IO (Id NSArray)
tracksWithMediaCharacteristic avAsset mediaCharacteristic =
  sendMessage avAsset tracksWithMediaCharacteristicSelector (toNSString mediaCharacteristic)

-- | cancelLoading
--
-- Cancels the loading of all values for all observers.
--
-- Deallocation or finalization of an instance of AVAsset will implicitly cancel loading if any loading requests are still outstanding.
--
-- ObjC selector: @- cancelLoading@
cancelLoading :: IsAVAsset avAsset => avAsset -> IO ()
cancelLoading avAsset =
  sendMessage avAsset cancelLoadingSelector

-- | @- preferredRate@
preferredRate :: IsAVAsset avAsset => avAsset -> IO CFloat
preferredRate avAsset =
  sendMessage avAsset preferredRateSelector

-- | @- preferredVolume@
preferredVolume :: IsAVAsset avAsset => avAsset -> IO CFloat
preferredVolume avAsset =
  sendMessage avAsset preferredVolumeSelector

-- | preferredDisplayCriteria
--
-- Guides to a display mode that is optimal for playing this particular asset.
--
-- ObjC selector: @- preferredDisplayCriteria@
preferredDisplayCriteria :: IsAVAsset avAsset => avAsset -> IO RawId
preferredDisplayCriteria avAsset =
  sendMessage avAsset preferredDisplayCriteriaSelector

-- | playable
--
-- Indicates whether an AVPlayer can play the contents of the asset in a manner that meets user expectations.
--
-- A client can attempt playback when playable is NO, this however may lead to a substandard playback experience.
--
-- ObjC selector: @- playable@
playable :: IsAVAsset avAsset => avAsset -> IO Bool
playable avAsset =
  sendMessage avAsset playableSelector

-- | @- exportable@
exportable :: IsAVAsset avAsset => avAsset -> IO Bool
exportable avAsset =
  sendMessage avAsset exportableSelector

-- | @- readable@
readable :: IsAVAsset avAsset => avAsset -> IO Bool
readable avAsset =
  sendMessage avAsset readableSelector

-- | @- composable@
composable :: IsAVAsset avAsset => avAsset -> IO Bool
composable avAsset =
  sendMessage avAsset composableSelector

-- | @- compatibleWithSavedPhotosAlbum@
compatibleWithSavedPhotosAlbum :: IsAVAsset avAsset => avAsset -> IO Bool
compatibleWithSavedPhotosAlbum avAsset =
  sendMessage avAsset compatibleWithSavedPhotosAlbumSelector

-- | compatibleWithAirPlayVideo
--
-- Indicates whether the asset is compatible with AirPlay Video.
--
-- YES if an AVPlayerItem initialized with the receiver can be played by an external device via AirPlay Video.
--
-- ObjC selector: @- compatibleWithAirPlayVideo@
compatibleWithAirPlayVideo :: IsAVAsset avAsset => avAsset -> IO Bool
compatibleWithAirPlayVideo avAsset =
  sendMessage avAsset compatibleWithAirPlayVideoSelector

-- | canContainFragments
--
-- Indicates whether the asset is capable of being extended by fragments.
--
-- For QuickTime movie files and MPEG-4 files, the value of canContainFragments is YES if an 'mvex' box is present in the 'moov' box. For those types, the 'mvex' box signals the possible presence of later 'moof' boxes.
--
-- ObjC selector: @- canContainFragments@
canContainFragments :: IsAVAsset avAsset => avAsset -> IO Bool
canContainFragments avAsset =
  sendMessage avAsset canContainFragmentsSelector

-- | containsFragments
--
-- Indicates whether the asset is extended by at least one fragment.
--
-- For QuickTime movie files and MPEG-4 files, the value of this property is YES if canContainFragments is YES and at least one 'moof' box is present after the 'moov' box.
--
-- ObjC selector: @- containsFragments@
containsFragments :: IsAVAsset avAsset => avAsset -> IO Bool
containsFragments avAsset =
  sendMessage avAsset containsFragmentsSelector

-- | hasProtectedContent
--
-- Indicates whether or not the asset has protected content.
--
-- Assets containing protected content may not be playable without successful authorization, even if the value of the "playable" property is YES.  See the properties in the AVAssetUsability category for details on how such an asset may be used.  On OS X, clients can use the interfaces in AVPlayerItemProtectedContentAdditions.h to request authorization to play the asset.
--
-- ObjC selector: @- hasProtectedContent@
hasProtectedContent :: IsAVAsset avAsset => avAsset -> IO Bool
hasProtectedContent avAsset =
  sendMessage avAsset hasProtectedContentSelector

-- | @- availableMediaCharacteristicsWithMediaSelectionOptions@
availableMediaCharacteristicsWithMediaSelectionOptions :: IsAVAsset avAsset => avAsset -> IO (Id NSArray)
availableMediaCharacteristicsWithMediaSelectionOptions avAsset =
  sendMessage avAsset availableMediaCharacteristicsWithMediaSelectionOptionsSelector

-- | preferredMediaSelection
--
-- Provides an instance of AVMediaSelection with default selections for each of the receiver's media selection groups.
--
-- ObjC selector: @- preferredMediaSelection@
preferredMediaSelection :: IsAVAsset avAsset => avAsset -> IO (Id AVMediaSelection)
preferredMediaSelection avAsset =
  sendMessage avAsset preferredMediaSelectionSelector

-- | allMediaSelections
--
-- Provides an array of all permutations of AVMediaSelection for this asset.
--
-- ObjC selector: @- allMediaSelections@
allMediaSelections :: IsAVAsset avAsset => avAsset -> IO (Id NSArray)
allMediaSelections avAsset =
  sendMessage avAsset allMediaSelectionsSelector

-- | @- availableChapterLocales@
availableChapterLocales :: IsAVAsset avAsset => avAsset -> IO (Id NSArray)
availableChapterLocales avAsset =
  sendMessage avAsset availableChapterLocalesSelector

-- | @- creationDate@
creationDate :: IsAVAsset avAsset => avAsset -> IO (Id AVMetadataItem)
creationDate avAsset =
  sendMessage avAsset creationDateSelector

-- | @- lyrics@
lyrics :: IsAVAsset avAsset => avAsset -> IO (Id NSString)
lyrics avAsset =
  sendMessage avAsset lyricsSelector

-- | @- commonMetadata@
commonMetadata :: IsAVAsset avAsset => avAsset -> IO (Id NSArray)
commonMetadata avAsset =
  sendMessage avAsset commonMetadataSelector

-- | @- metadata@
metadata :: IsAVAsset avAsset => avAsset -> IO (Id NSArray)
metadata avAsset =
  sendMessage avAsset metadataSelector

-- | @- availableMetadataFormats@
availableMetadataFormats :: IsAVAsset avAsset => avAsset -> IO (Id NSArray)
availableMetadataFormats avAsset =
  sendMessage avAsset availableMetadataFormatsSelector

-- | tracks
--
-- Provides the array of AVAssetTracks contained by the asset
--
-- ObjC selector: @- tracks@
tracks :: IsAVAsset avAsset => avAsset -> IO (Id NSArray)
tracks avAsset =
  sendMessage avAsset tracksSelector

-- | trackGroups
--
-- All track groups in the receiver.
--
-- The value of this property is an NSArray of AVAssetTrackGroups, each representing a different grouping of tracks in the receiver.
--
-- ObjC selector: @- trackGroups@
trackGroups :: IsAVAsset avAsset => avAsset -> IO (Id NSArray)
trackGroups avAsset =
  sendMessage avAsset trackGroupsSelector

-- | referenceRestrictions
--
-- Indicates the reference restrictions being used by the receiver.
--
-- For AVURLAsset, this property reflects the value passed in for AVURLAssetReferenceRestrictionsKey, if any. See AVURLAssetReferenceRestrictionsKey below for a full discussion of reference restrictions. The default value for this property is AVAssetReferenceRestrictionForbidLocalReferenceToRemote.
--
-- ObjC selector: @- referenceRestrictions@
referenceRestrictions :: IsAVAsset avAsset => avAsset -> IO AVAssetReferenceRestrictions
referenceRestrictions avAsset =
  sendMessage avAsset referenceRestrictionsSelector

-- | @- providesPreciseDurationAndTiming@
providesPreciseDurationAndTiming :: IsAVAsset avAsset => avAsset -> IO Bool
providesPreciseDurationAndTiming avAsset =
  sendMessage avAsset providesPreciseDurationAndTimingSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @assetWithURL:@
assetWithURLSelector :: Selector '[Id NSURL] (Id AVAsset)
assetWithURLSelector = mkSelector "assetWithURL:"

-- | @Selector@ for @unusedTrackID@
unusedTrackIDSelector :: Selector '[] CInt
unusedTrackIDSelector = mkSelector "unusedTrackID"

-- | @Selector@ for @findUnusedTrackIDWithCompletionHandler:@
findUnusedTrackIDWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
findUnusedTrackIDWithCompletionHandlerSelector = mkSelector "findUnusedTrackIDWithCompletionHandler:"

-- | @Selector@ for @mediaSelectionGroupForMediaCharacteristic:@
mediaSelectionGroupForMediaCharacteristicSelector :: Selector '[Id NSString] (Id AVMediaSelectionGroup)
mediaSelectionGroupForMediaCharacteristicSelector = mkSelector "mediaSelectionGroupForMediaCharacteristic:"

-- | @Selector@ for @loadMediaSelectionGroupForMediaCharacteristic:completionHandler:@
loadMediaSelectionGroupForMediaCharacteristic_completionHandlerSelector :: Selector '[Id NSString, Ptr ()] ()
loadMediaSelectionGroupForMediaCharacteristic_completionHandlerSelector = mkSelector "loadMediaSelectionGroupForMediaCharacteristic:completionHandler:"

-- | @Selector@ for @chapterMetadataGroupsWithTitleLocale:containingItemsWithCommonKeys:@
chapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeysSelector :: Selector '[Id NSLocale, Id NSArray] (Id NSArray)
chapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeysSelector = mkSelector "chapterMetadataGroupsWithTitleLocale:containingItemsWithCommonKeys:"

-- | @Selector@ for @chapterMetadataGroupsBestMatchingPreferredLanguages:@
chapterMetadataGroupsBestMatchingPreferredLanguagesSelector :: Selector '[Id NSArray] (Id NSArray)
chapterMetadataGroupsBestMatchingPreferredLanguagesSelector = mkSelector "chapterMetadataGroupsBestMatchingPreferredLanguages:"

-- | @Selector@ for @metadataForFormat:@
metadataForFormatSelector :: Selector '[Id NSString] (Id NSArray)
metadataForFormatSelector = mkSelector "metadataForFormat:"

-- | @Selector@ for @trackWithTrackID:@
trackWithTrackIDSelector :: Selector '[CInt] (Id AVAssetTrack)
trackWithTrackIDSelector = mkSelector "trackWithTrackID:"

-- | @Selector@ for @loadTrackWithTrackID:completionHandler:@
loadTrackWithTrackID_completionHandlerSelector :: Selector '[CInt, Ptr ()] ()
loadTrackWithTrackID_completionHandlerSelector = mkSelector "loadTrackWithTrackID:completionHandler:"

-- | @Selector@ for @tracksWithMediaType:@
tracksWithMediaTypeSelector :: Selector '[Id NSString] (Id NSArray)
tracksWithMediaTypeSelector = mkSelector "tracksWithMediaType:"

-- | @Selector@ for @tracksWithMediaCharacteristic:@
tracksWithMediaCharacteristicSelector :: Selector '[Id NSString] (Id NSArray)
tracksWithMediaCharacteristicSelector = mkSelector "tracksWithMediaCharacteristic:"

-- | @Selector@ for @cancelLoading@
cancelLoadingSelector :: Selector '[] ()
cancelLoadingSelector = mkSelector "cancelLoading"

-- | @Selector@ for @preferredRate@
preferredRateSelector :: Selector '[] CFloat
preferredRateSelector = mkSelector "preferredRate"

-- | @Selector@ for @preferredVolume@
preferredVolumeSelector :: Selector '[] CFloat
preferredVolumeSelector = mkSelector "preferredVolume"

-- | @Selector@ for @preferredDisplayCriteria@
preferredDisplayCriteriaSelector :: Selector '[] RawId
preferredDisplayCriteriaSelector = mkSelector "preferredDisplayCriteria"

-- | @Selector@ for @playable@
playableSelector :: Selector '[] Bool
playableSelector = mkSelector "playable"

-- | @Selector@ for @exportable@
exportableSelector :: Selector '[] Bool
exportableSelector = mkSelector "exportable"

-- | @Selector@ for @readable@
readableSelector :: Selector '[] Bool
readableSelector = mkSelector "readable"

-- | @Selector@ for @composable@
composableSelector :: Selector '[] Bool
composableSelector = mkSelector "composable"

-- | @Selector@ for @compatibleWithSavedPhotosAlbum@
compatibleWithSavedPhotosAlbumSelector :: Selector '[] Bool
compatibleWithSavedPhotosAlbumSelector = mkSelector "compatibleWithSavedPhotosAlbum"

-- | @Selector@ for @compatibleWithAirPlayVideo@
compatibleWithAirPlayVideoSelector :: Selector '[] Bool
compatibleWithAirPlayVideoSelector = mkSelector "compatibleWithAirPlayVideo"

-- | @Selector@ for @canContainFragments@
canContainFragmentsSelector :: Selector '[] Bool
canContainFragmentsSelector = mkSelector "canContainFragments"

-- | @Selector@ for @containsFragments@
containsFragmentsSelector :: Selector '[] Bool
containsFragmentsSelector = mkSelector "containsFragments"

-- | @Selector@ for @hasProtectedContent@
hasProtectedContentSelector :: Selector '[] Bool
hasProtectedContentSelector = mkSelector "hasProtectedContent"

-- | @Selector@ for @availableMediaCharacteristicsWithMediaSelectionOptions@
availableMediaCharacteristicsWithMediaSelectionOptionsSelector :: Selector '[] (Id NSArray)
availableMediaCharacteristicsWithMediaSelectionOptionsSelector = mkSelector "availableMediaCharacteristicsWithMediaSelectionOptions"

-- | @Selector@ for @preferredMediaSelection@
preferredMediaSelectionSelector :: Selector '[] (Id AVMediaSelection)
preferredMediaSelectionSelector = mkSelector "preferredMediaSelection"

-- | @Selector@ for @allMediaSelections@
allMediaSelectionsSelector :: Selector '[] (Id NSArray)
allMediaSelectionsSelector = mkSelector "allMediaSelections"

-- | @Selector@ for @availableChapterLocales@
availableChapterLocalesSelector :: Selector '[] (Id NSArray)
availableChapterLocalesSelector = mkSelector "availableChapterLocales"

-- | @Selector@ for @creationDate@
creationDateSelector :: Selector '[] (Id AVMetadataItem)
creationDateSelector = mkSelector "creationDate"

-- | @Selector@ for @lyrics@
lyricsSelector :: Selector '[] (Id NSString)
lyricsSelector = mkSelector "lyrics"

-- | @Selector@ for @commonMetadata@
commonMetadataSelector :: Selector '[] (Id NSArray)
commonMetadataSelector = mkSelector "commonMetadata"

-- | @Selector@ for @metadata@
metadataSelector :: Selector '[] (Id NSArray)
metadataSelector = mkSelector "metadata"

-- | @Selector@ for @availableMetadataFormats@
availableMetadataFormatsSelector :: Selector '[] (Id NSArray)
availableMetadataFormatsSelector = mkSelector "availableMetadataFormats"

-- | @Selector@ for @tracks@
tracksSelector :: Selector '[] (Id NSArray)
tracksSelector = mkSelector "tracks"

-- | @Selector@ for @trackGroups@
trackGroupsSelector :: Selector '[] (Id NSArray)
trackGroupsSelector = mkSelector "trackGroups"

-- | @Selector@ for @referenceRestrictions@
referenceRestrictionsSelector :: Selector '[] AVAssetReferenceRestrictions
referenceRestrictionsSelector = mkSelector "referenceRestrictions"

-- | @Selector@ for @providesPreciseDurationAndTiming@
providesPreciseDurationAndTimingSelector :: Selector '[] Bool
providesPreciseDurationAndTimingSelector = mkSelector "providesPreciseDurationAndTiming"

