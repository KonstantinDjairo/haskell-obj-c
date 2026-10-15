{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVAsset
--
-- An AVAsset is an abstract class that defines AVFoundation's model for timed audiovisual media.
--
-- Each asset contains a collection of tracks that are intended to be presented or processed together, each of a uniform media type, including but not limited to audio, video, text, closed captions, and subtitles.
--
-- AVAssets are often instantiated via its concrete subclass AVURLAsset with NSURLs that refer to audiovisual media resources, such as streams (including HTTP live streams), QuickTime movie files, MP3 files, and files of other types.
--
-- They can also be instantiated using other concrete subclasses that extend the basic model for audiovisual media in useful ways, as AVComposition does for temporal editing.
--
-- Properties of assets as a whole are defined by AVAsset. Additionally, references to instances of AVAssetTracks representing tracks of the collection can be obtained, so that each of these can be examined independently.
--
-- Because of the nature of timed audiovisual media, upon successful initialization of an AVAsset some or all of the values for its keys may not be immediately available. The value of any key can be requested at any time, and AVAsset will always return its value synchronously, although it may have to block the calling thread in order to do so.
--
-- In order to avoid blocking, clients can register their interest in particular keys and to become notified when their values become available. For further details, see AVAsynchronousKeyValueLoading.h. For clients who want to examine a subset of the tracks, metadata, and other parts of the asset, asynchronous methods like -loadTracksWithMediaType:completionHandler: can be used to load this information without blocking. When using these asynchronous methods, it is not necessary to load the associated property beforehand. Swift clients can also use the load(:) method to load properties in a type safe manner.
--
-- On iOS, it is particularly important to avoid blocking.  To preserve responsiveness, a synchronous request that blocks for too long (eg, a property request on an asset on a slow HTTP server) may lead to media services being reset.
--
-- To play an instance of AVAsset, initialize an instance of AVPlayerItem with it, use the AVPlayerItem to set up its presentation state (such as whether only a limited timeRange of the asset should be played, etc.), and provide the AVPlayerItem to an AVPlayer according to whether the items is to be played by itself or together with a collection of other items. Full details available in AVPlayerItem.h and AVPlayer.h.
--
-- AVAssets can also be inserted into AVMutableCompositions in order to assemble audiovisual constructs from one or more source assets.
--
-- Generated bindings for @AVAssetTrack@.
module ObjC.AVFoundation.AVAssetTrack
  ( AVAssetTrack
  , IsAVAssetTrack(..)
  , init_
  , new
  , makeSampleCursorAtFirstSampleInDecodeOrder
  , makeSampleCursorAtLastSampleInDecodeOrder
  , associatedTracksOfType
  , metadataForFormat
  , hasMediaCharacteristic
  , asset
  , trackID
  , canProvideSampleCursors
  , availableTrackAssociationTypes
  , commonMetadata
  , metadata
  , availableMetadataFormats
  , segments
  , nominalFrameRate
  , requiresFrameReordering
  , preferredVolume
  , hasAudioSampleDependencies
  , languageCode
  , extendedLanguageTag
  , naturalTimeScale
  , estimatedDataRate
  , mediaType
  , formatDescriptions
  , playable
  , decodable
  , enabled
  , selfContained
  , totalSampleDataLength
  , assetSelector
  , associatedTracksOfTypeSelector
  , availableMetadataFormatsSelector
  , availableTrackAssociationTypesSelector
  , canProvideSampleCursorsSelector
  , commonMetadataSelector
  , decodableSelector
  , enabledSelector
  , estimatedDataRateSelector
  , extendedLanguageTagSelector
  , formatDescriptionsSelector
  , hasAudioSampleDependenciesSelector
  , hasMediaCharacteristicSelector
  , initSelector
  , languageCodeSelector
  , makeSampleCursorAtFirstSampleInDecodeOrderSelector
  , makeSampleCursorAtLastSampleInDecodeOrderSelector
  , mediaTypeSelector
  , metadataForFormatSelector
  , metadataSelector
  , naturalTimeScaleSelector
  , newSelector
  , nominalFrameRateSelector
  , playableSelector
  , preferredVolumeSelector
  , requiresFrameReorderingSelector
  , segmentsSelector
  , selfContainedSelector
  , totalSampleDataLengthSelector
  , trackIDSelector


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
init_ :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id AVAssetTrack)
init_ avAssetTrack =
  sendOwnedMessage avAssetTrack initSelector

-- | @+ new@
new :: IO (Id AVAssetTrack)
new  =
  do
    cls' <- getRequiredClass "AVAssetTrack"
    sendOwnedClassMessage cls' newSelector

-- | makeSampleCursorAtFirstSampleInDecodeOrder:
--
-- Creates an instance of AVSampleCursor and positions it at the receiver's first media sample in decode order.
--
-- Returns: An instance of AVSampleCursor.
--
-- This method will return nil if there are no samples in the track.
--
-- ObjC selector: @- makeSampleCursorAtFirstSampleInDecodeOrder@
makeSampleCursorAtFirstSampleInDecodeOrder :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id AVSampleCursor)
makeSampleCursorAtFirstSampleInDecodeOrder avAssetTrack =
  sendMessage avAssetTrack makeSampleCursorAtFirstSampleInDecodeOrderSelector

-- | makeSampleCursorAtLastSampleInDecodeOrder:
--
-- Creates an instance of AVSampleCursor and positions it at the receiver's last media sample in decode order.
--
-- Returns: An instance of AVSampleCursor.
--
-- This method will return nil if there are no samples in the track.
--
-- ObjC selector: @- makeSampleCursorAtLastSampleInDecodeOrder@
makeSampleCursorAtLastSampleInDecodeOrder :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id AVSampleCursor)
makeSampleCursorAtLastSampleInDecodeOrder avAssetTrack =
  sendMessage avAssetTrack makeSampleCursorAtLastSampleInDecodeOrderSelector

-- | associatedTracksOfType:
--
-- Provides an NSArray of AVAssetTracks, one for each track associated with the receiver with the specified type of track association.
--
-- @trackAssociationType@ — The type of track association for which associated tracks are requested.
--
-- Returns: An NSArray containing AVAssetTracks; may be empty if there is no associated tracks of the specified type.
--
-- Becomes callable without blocking when the key "availableTrackAssociationTypes" has been loaded.
--
-- ObjC selector: @- associatedTracksOfType:@
associatedTracksOfType :: (IsAVAssetTrack avAssetTrack, IsNSString trackAssociationType) => avAssetTrack -> trackAssociationType -> IO (Id NSArray)
associatedTracksOfType avAssetTrack trackAssociationType =
  sendMessage avAssetTrack associatedTracksOfTypeSelector (toNSString trackAssociationType)

-- | metadataForFormat:
--
-- Provides an NSArray of AVMetadataItems, one for each metadata item in the container of the specified format.
--
-- @format@ — The metadata format for which items are requested.
--
-- Returns: An NSArray containing AVMetadataItems.
--
-- Becomes callable without blocking when the key "availableMetadataFormats" has been loaded
--
-- ObjC selector: @- metadataForFormat:@
metadataForFormat :: (IsAVAssetTrack avAssetTrack, IsNSString format) => avAssetTrack -> format -> IO (Id NSArray)
metadataForFormat avAssetTrack format =
  sendMessage avAssetTrack metadataForFormatSelector (toNSString format)

-- | hasMediaCharacteristic:
--
-- Reports whether the track references media with the specified media characteristic.
--
-- @mediaCharacteristic@ — The media characteristic of interest, e.g. AVMediaCharacteristicVisual, AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, etc.,					as defined above.
--
-- Returns: YES if the track references media with the specified characteristic, otherwise NO.
--
-- ObjC selector: @- hasMediaCharacteristic:@
hasMediaCharacteristic :: (IsAVAssetTrack avAssetTrack, IsNSString mediaCharacteristic) => avAssetTrack -> mediaCharacteristic -> IO Bool
hasMediaCharacteristic avAssetTrack mediaCharacteristic =
  sendMessage avAssetTrack hasMediaCharacteristicSelector (toNSString mediaCharacteristic)

-- | @- asset@
asset :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id AVAsset)
asset avAssetTrack =
  sendMessage avAssetTrack assetSelector

-- | @- trackID@
trackID :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO CInt
trackID avAssetTrack =
  sendMessage avAssetTrack trackIDSelector

-- | @- canProvideSampleCursors@
canProvideSampleCursors :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO Bool
canProvideSampleCursors avAssetTrack =
  sendMessage avAssetTrack canProvideSampleCursorsSelector

-- | @- availableTrackAssociationTypes@
availableTrackAssociationTypes :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSArray)
availableTrackAssociationTypes avAssetTrack =
  sendMessage avAssetTrack availableTrackAssociationTypesSelector

-- | @- commonMetadata@
commonMetadata :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSArray)
commonMetadata avAssetTrack =
  sendMessage avAssetTrack commonMetadataSelector

-- | @- metadata@
metadata :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSArray)
metadata avAssetTrack =
  sendMessage avAssetTrack metadataSelector

-- | @- availableMetadataFormats@
availableMetadataFormats :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSArray)
availableMetadataFormats avAssetTrack =
  sendMessage avAssetTrack availableMetadataFormatsSelector

-- | @- segments@
segments :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSArray)
segments avAssetTrack =
  sendMessage avAssetTrack segmentsSelector

-- | nominalFrameRate
--
-- For tracks that carry a full frame per media sample, indicates the frame rate of the track in units of frames per second.
--
-- For field-based video tracks that carry one field per media sample, the value of this property is the field rate, not the frame rate.
--
-- ObjC selector: @- nominalFrameRate@
nominalFrameRate :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO CFloat
nominalFrameRate avAssetTrack =
  sendMessage avAssetTrack nominalFrameRateSelector

-- | requiresFrameReordering
--
-- Indicates whether samples in the track may have different values for their presentation and decode timestamps.
--
-- ObjC selector: @- requiresFrameReordering@
requiresFrameReordering :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO Bool
requiresFrameReordering avAssetTrack =
  sendMessage avAssetTrack requiresFrameReorderingSelector

-- | @- preferredVolume@
preferredVolume :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO CFloat
preferredVolume avAssetTrack =
  sendMessage avAssetTrack preferredVolumeSelector

-- | @- hasAudioSampleDependencies@
hasAudioSampleDependencies :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO Bool
hasAudioSampleDependencies avAssetTrack =
  sendMessage avAssetTrack hasAudioSampleDependenciesSelector

-- | @- languageCode@
languageCode :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSString)
languageCode avAssetTrack =
  sendMessage avAssetTrack languageCodeSelector

-- | @- extendedLanguageTag@
extendedLanguageTag :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSString)
extendedLanguageTag avAssetTrack =
  sendMessage avAssetTrack extendedLanguageTagSelector

-- | @- naturalTimeScale@
naturalTimeScale :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO CInt
naturalTimeScale avAssetTrack =
  sendMessage avAssetTrack naturalTimeScaleSelector

-- | @- estimatedDataRate@
estimatedDataRate :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO CFloat
estimatedDataRate avAssetTrack =
  sendMessage avAssetTrack estimatedDataRateSelector

-- | @- mediaType@
mediaType :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSString)
mediaType avAssetTrack =
  sendMessage avAssetTrack mediaTypeSelector

-- | @- formatDescriptions@
formatDescriptions :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO (Id NSArray)
formatDescriptions avAssetTrack =
  sendMessage avAssetTrack formatDescriptionsSelector

-- | @- playable@
playable :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO Bool
playable avAssetTrack =
  sendMessage avAssetTrack playableSelector

-- | @- decodable@
decodable :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO Bool
decodable avAssetTrack =
  sendMessage avAssetTrack decodableSelector

-- | @- enabled@
enabled :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO Bool
enabled avAssetTrack =
  sendMessage avAssetTrack enabledSelector

-- | @- selfContained@
selfContained :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO Bool
selfContained avAssetTrack =
  sendMessage avAssetTrack selfContainedSelector

-- | @- totalSampleDataLength@
totalSampleDataLength :: IsAVAssetTrack avAssetTrack => avAssetTrack -> IO CLong
totalSampleDataLength avAssetTrack =
  sendMessage avAssetTrack totalSampleDataLengthSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVAssetTrack)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVAssetTrack)
newSelector = mkSelector "new"

-- | @Selector@ for @makeSampleCursorAtFirstSampleInDecodeOrder@
makeSampleCursorAtFirstSampleInDecodeOrderSelector :: Selector '[] (Id AVSampleCursor)
makeSampleCursorAtFirstSampleInDecodeOrderSelector = mkSelector "makeSampleCursorAtFirstSampleInDecodeOrder"

-- | @Selector@ for @makeSampleCursorAtLastSampleInDecodeOrder@
makeSampleCursorAtLastSampleInDecodeOrderSelector :: Selector '[] (Id AVSampleCursor)
makeSampleCursorAtLastSampleInDecodeOrderSelector = mkSelector "makeSampleCursorAtLastSampleInDecodeOrder"

-- | @Selector@ for @associatedTracksOfType:@
associatedTracksOfTypeSelector :: Selector '[Id NSString] (Id NSArray)
associatedTracksOfTypeSelector = mkSelector "associatedTracksOfType:"

-- | @Selector@ for @metadataForFormat:@
metadataForFormatSelector :: Selector '[Id NSString] (Id NSArray)
metadataForFormatSelector = mkSelector "metadataForFormat:"

-- | @Selector@ for @hasMediaCharacteristic:@
hasMediaCharacteristicSelector :: Selector '[Id NSString] Bool
hasMediaCharacteristicSelector = mkSelector "hasMediaCharacteristic:"

-- | @Selector@ for @asset@
assetSelector :: Selector '[] (Id AVAsset)
assetSelector = mkSelector "asset"

-- | @Selector@ for @trackID@
trackIDSelector :: Selector '[] CInt
trackIDSelector = mkSelector "trackID"

-- | @Selector@ for @canProvideSampleCursors@
canProvideSampleCursorsSelector :: Selector '[] Bool
canProvideSampleCursorsSelector = mkSelector "canProvideSampleCursors"

-- | @Selector@ for @availableTrackAssociationTypes@
availableTrackAssociationTypesSelector :: Selector '[] (Id NSArray)
availableTrackAssociationTypesSelector = mkSelector "availableTrackAssociationTypes"

-- | @Selector@ for @commonMetadata@
commonMetadataSelector :: Selector '[] (Id NSArray)
commonMetadataSelector = mkSelector "commonMetadata"

-- | @Selector@ for @metadata@
metadataSelector :: Selector '[] (Id NSArray)
metadataSelector = mkSelector "metadata"

-- | @Selector@ for @availableMetadataFormats@
availableMetadataFormatsSelector :: Selector '[] (Id NSArray)
availableMetadataFormatsSelector = mkSelector "availableMetadataFormats"

-- | @Selector@ for @segments@
segmentsSelector :: Selector '[] (Id NSArray)
segmentsSelector = mkSelector "segments"

-- | @Selector@ for @nominalFrameRate@
nominalFrameRateSelector :: Selector '[] CFloat
nominalFrameRateSelector = mkSelector "nominalFrameRate"

-- | @Selector@ for @requiresFrameReordering@
requiresFrameReorderingSelector :: Selector '[] Bool
requiresFrameReorderingSelector = mkSelector "requiresFrameReordering"

-- | @Selector@ for @preferredVolume@
preferredVolumeSelector :: Selector '[] CFloat
preferredVolumeSelector = mkSelector "preferredVolume"

-- | @Selector@ for @hasAudioSampleDependencies@
hasAudioSampleDependenciesSelector :: Selector '[] Bool
hasAudioSampleDependenciesSelector = mkSelector "hasAudioSampleDependencies"

-- | @Selector@ for @languageCode@
languageCodeSelector :: Selector '[] (Id NSString)
languageCodeSelector = mkSelector "languageCode"

-- | @Selector@ for @extendedLanguageTag@
extendedLanguageTagSelector :: Selector '[] (Id NSString)
extendedLanguageTagSelector = mkSelector "extendedLanguageTag"

-- | @Selector@ for @naturalTimeScale@
naturalTimeScaleSelector :: Selector '[] CInt
naturalTimeScaleSelector = mkSelector "naturalTimeScale"

-- | @Selector@ for @estimatedDataRate@
estimatedDataRateSelector :: Selector '[] CFloat
estimatedDataRateSelector = mkSelector "estimatedDataRate"

-- | @Selector@ for @mediaType@
mediaTypeSelector :: Selector '[] (Id NSString)
mediaTypeSelector = mkSelector "mediaType"

-- | @Selector@ for @formatDescriptions@
formatDescriptionsSelector :: Selector '[] (Id NSArray)
formatDescriptionsSelector = mkSelector "formatDescriptions"

-- | @Selector@ for @playable@
playableSelector :: Selector '[] Bool
playableSelector = mkSelector "playable"

-- | @Selector@ for @decodable@
decodableSelector :: Selector '[] Bool
decodableSelector = mkSelector "decodable"

-- | @Selector@ for @enabled@
enabledSelector :: Selector '[] Bool
enabledSelector = mkSelector "enabled"

-- | @Selector@ for @selfContained@
selfContainedSelector :: Selector '[] Bool
selfContainedSelector = mkSelector "selfContained"

-- | @Selector@ for @totalSampleDataLength@
totalSampleDataLengthSelector :: Selector '[] CLong
totalSampleDataLengthSelector = mkSelector "totalSampleDataLength"

