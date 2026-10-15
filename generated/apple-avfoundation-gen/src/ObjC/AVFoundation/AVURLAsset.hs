{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVURLAsset@.
module ObjC.AVFoundation.AVURLAsset
  ( AVURLAsset
  , IsAVURLAsset(..)
  , init_
  , new
  , audiovisualTypes
  , audiovisualMIMETypes
  , isPlayableExtendedMIMEType
  , urlAssetWithURL_options
  , initWithURL_options
  , compatibleTrackForCompositionTrack
  , findCompatibleTrackForCompositionTrack_completionHandler
  , url
  , httpSessionIdentifier
  , mayRequireContentKeysForMediaDataProcessing
  , variants
  , assetCache
  , resourceLoader
  , assetCacheSelector
  , audiovisualMIMETypesSelector
  , audiovisualTypesSelector
  , compatibleTrackForCompositionTrackSelector
  , findCompatibleTrackForCompositionTrack_completionHandlerSelector
  , httpSessionIdentifierSelector
  , initSelector
  , initWithURL_optionsSelector
  , isPlayableExtendedMIMETypeSelector
  , mayRequireContentKeysForMediaDataProcessingSelector
  , newSelector
  , resourceLoaderSelector
  , urlAssetWithURL_optionsSelector
  , urlSelector
  , variantsSelector


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
init_ :: IsAVURLAsset avurlAsset => avurlAsset -> IO (Id AVURLAsset)
init_ avurlAsset =
  sendOwnedMessage avurlAsset initSelector

-- | @+ new@
new :: IO (Id AVURLAsset)
new  =
  do
    cls' <- getRequiredClass "AVURLAsset"
    sendOwnedClassMessage cls' newSelector

-- | audiovisualTypes
--
-- Provides the file types the AVURLAsset class understands.
--
-- Returns: An NSArray of UTIs identifying the file types the AVURLAsset class understands.
--
-- ObjC selector: @+ audiovisualTypes@
audiovisualTypes :: IO (Id NSArray)
audiovisualTypes  =
  do
    cls' <- getRequiredClass "AVURLAsset"
    sendClassMessage cls' audiovisualTypesSelector

-- | audiovisualMIMETypes
--
-- Provides the MIME types the AVURLAsset class understands.
--
-- Returns: An NSArray of NSStrings containing MIME types the AVURLAsset class understands.
--
-- ObjC selector: @+ audiovisualMIMETypes@
audiovisualMIMETypes :: IO (Id NSArray)
audiovisualMIMETypes  =
  do
    cls' <- getRequiredClass "AVURLAsset"
    sendClassMessage cls' audiovisualMIMETypesSelector

-- | isPlayableExtendedMIMEType:
--
-- Returns YES if asset is playable with the codec(s) and container type specified in extendedMIMEType. Returns NO otherwise.
--
-- @extendedMIMEType@ —
--
-- Returns: YES or NO.
--
-- ObjC selector: @+ isPlayableExtendedMIMEType:@
isPlayableExtendedMIMEType :: IsNSString extendedMIMEType => extendedMIMEType -> IO Bool
isPlayableExtendedMIMEType extendedMIMEType =
  do
    cls' <- getRequiredClass "AVURLAsset"
    sendClassMessage cls' isPlayableExtendedMIMETypeSelector (toNSString extendedMIMEType)

-- | URLAssetWithURL:options:
--
-- Returns an instance of AVURLAsset for inspection of a media resource.
--
-- @URL@ — An instance of NSURL that references a media resource.
--
-- @options@ — An instance of NSDictionary that contains keys for specifying options for the initialization of the AVURLAsset. See AVURLAssetPreferPreciseDurationAndTimingKey and AVURLAssetReferenceRestrictionsKey above.
--
-- Returns: An instance of AVURLAsset.
--
-- ObjC selector: @+ URLAssetWithURL:options:@
urlAssetWithURL_options :: (IsNSURL url, IsNSDictionary options) => url -> options -> IO (Id AVURLAsset)
urlAssetWithURL_options url options =
  do
    cls' <- getRequiredClass "AVURLAsset"
    sendClassMessage cls' urlAssetWithURL_optionsSelector (toNSURL url) (toNSDictionary options)

-- | initWithURL:options:
--
-- Initializes an instance of AVURLAsset for inspection of a media resource.
--
-- @URL@ — An instance of NSURL that references a media resource.
--
-- @options@ — An instance of NSDictionary that contains keys for specifying options for the initialization of the AVURLAsset. See AVURLAssetPreferPreciseDurationAndTimingKey and AVURLAssetReferenceRestrictionsKey above.
--
-- Returns: An instance of AVURLAsset.
--
-- ObjC selector: @- initWithURL:options:@
initWithURL_options :: (IsAVURLAsset avurlAsset, IsNSURL url, IsNSDictionary options) => avurlAsset -> url -> options -> IO (Id AVURLAsset)
initWithURL_options avurlAsset url options =
  sendOwnedMessage avurlAsset initWithURL_optionsSelector (toNSURL url) (toNSDictionary options)

-- | compatibleTrackForCompositionTrack:
--
-- Provides a reference to an AVAssetTrack of the target from which any timeRange				can be inserted into a mutable composition track (via -[AVMutableCompositionTrack insertTimeRange:ofTrack:atTime:error:]).
--
-- @compositionTrack@ — The composition track for which a compatible AVAssetTrack is requested.
--
-- Returns: an instance of AVAssetTrack
--
-- Finds a track of the target with content that can be accommodated by the specified composition track.	The logical complement of -[AVMutableComposition mutableTrackCompatibleWithTrack:].
--
-- ObjC selector: @- compatibleTrackForCompositionTrack:@
compatibleTrackForCompositionTrack :: (IsAVURLAsset avurlAsset, IsAVCompositionTrack compositionTrack) => avurlAsset -> compositionTrack -> IO (Id AVAssetTrack)
compatibleTrackForCompositionTrack avurlAsset compositionTrack =
  sendMessage avurlAsset compatibleTrackForCompositionTrackSelector (toAVCompositionTrack compositionTrack)

-- | findCompatibleTrackForCompositionTrack:completionHandler:
--
-- Loads a reference to an AVAssetTrack of the target from which any timeRange				can be inserted into a mutable composition track (via -[AVMutableCompositionTrack insertTimeRange:ofTrack:atTime:error:]).
--
-- @compositionTrack@ — The composition track for which a compatible AVAssetTrack is requested.
--
-- @completionHandler@ — A block that is invoked when loading is complete, vending an instance of AVAssetTrack or an error.
--
-- Finds a track of the target with content that can be accommodated by the specified composition track.	The logical complement of -[AVMutableComposition mutableTrackCompatibleWithTrack:].
--
-- ObjC selector: @- findCompatibleTrackForCompositionTrack:completionHandler:@
findCompatibleTrackForCompositionTrack_completionHandler :: (IsAVURLAsset avurlAsset, IsAVCompositionTrack compositionTrack) => avurlAsset -> compositionTrack -> Ptr () -> IO ()
findCompatibleTrackForCompositionTrack_completionHandler avurlAsset compositionTrack completionHandler =
  sendMessage avurlAsset findCompatibleTrackForCompositionTrack_completionHandlerSelector (toAVCompositionTrack compositionTrack) completionHandler

-- | URL
--
-- Indicates the URL with which the instance of AVURLAsset was initialized.
--
-- ObjC selector: @- URL@
url :: IsAVURLAsset avurlAsset => avurlAsset -> IO (Id NSURL)
url avurlAsset =
  sendMessage avurlAsset urlSelector

-- | httpSessionIdentifier
--
-- Provides the identifier that's automatically included in any HTTP request issued on behalf of this asset in the HTTP header field "X-Playback-Session-Id".
--
-- The value is an NSUUID from which the UUID string can be obtained.    Note that copies of an AVURLAsset vend an equivalent httpSessionIdentifier.
--
-- ObjC selector: @- httpSessionIdentifier@
httpSessionIdentifier :: IsAVURLAsset avurlAsset => avurlAsset -> IO (Id NSUUID)
httpSessionIdentifier avurlAsset =
  sendMessage avurlAsset httpSessionIdentifierSelector

-- | mayRequireContentKeysForMediaDataProcessing
--
-- Allows AVURLAsset to be added as a content key recipient to an AVContentKeySession.
--
-- ObjC selector: @- mayRequireContentKeysForMediaDataProcessing@
mayRequireContentKeysForMediaDataProcessing :: IsAVURLAsset avurlAsset => avurlAsset -> IO Bool
mayRequireContentKeysForMediaDataProcessing avurlAsset =
  sendMessage avurlAsset mayRequireContentKeysForMediaDataProcessingSelector

-- | variants
--
-- Provides an array of AVAssetVariants contained in the asset
--
-- Some variants may not be playable according to the current device configuration.
--
-- ObjC selector: @- variants@
variants :: IsAVURLAsset avurlAsset => avurlAsset -> IO (Id NSArray)
variants avurlAsset =
  sendMessage avurlAsset variantsSelector

-- | assetCache
--
-- Provides access to an instance of AVAssetCache to use for inspection of locally cached media data. Will be nil if an asset has not been configured to store or access media data from disk.
--
-- ObjC selector: @- assetCache@
assetCache :: IsAVURLAsset avurlAsset => avurlAsset -> IO (Id AVAssetCache)
assetCache avurlAsset =
  sendMessage avurlAsset assetCacheSelector

-- | resourceLoader
--
-- Provides access to an instance of AVAssetResourceLoader, which offers limited control over the handling of URLs that may be loaded in the course of performing operations on the asset, such as playback.    The loading of file URLs cannot be mediated via use of AVAssetResourceLoader.    Note that copies of an AVAsset will vend the same instance of AVAssetResourceLoader.
--
-- ObjC selector: @- resourceLoader@
resourceLoader :: IsAVURLAsset avurlAsset => avurlAsset -> IO (Id AVAssetResourceLoader)
resourceLoader avurlAsset =
  sendMessage avurlAsset resourceLoaderSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVURLAsset)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVURLAsset)
newSelector = mkSelector "new"

-- | @Selector@ for @audiovisualTypes@
audiovisualTypesSelector :: Selector '[] (Id NSArray)
audiovisualTypesSelector = mkSelector "audiovisualTypes"

-- | @Selector@ for @audiovisualMIMETypes@
audiovisualMIMETypesSelector :: Selector '[] (Id NSArray)
audiovisualMIMETypesSelector = mkSelector "audiovisualMIMETypes"

-- | @Selector@ for @isPlayableExtendedMIMEType:@
isPlayableExtendedMIMETypeSelector :: Selector '[Id NSString] Bool
isPlayableExtendedMIMETypeSelector = mkSelector "isPlayableExtendedMIMEType:"

-- | @Selector@ for @URLAssetWithURL:options:@
urlAssetWithURL_optionsSelector :: Selector '[Id NSURL, Id NSDictionary] (Id AVURLAsset)
urlAssetWithURL_optionsSelector = mkSelector "URLAssetWithURL:options:"

-- | @Selector@ for @initWithURL:options:@
initWithURL_optionsSelector :: Selector '[Id NSURL, Id NSDictionary] (Id AVURLAsset)
initWithURL_optionsSelector = mkSelector "initWithURL:options:"

-- | @Selector@ for @compatibleTrackForCompositionTrack:@
compatibleTrackForCompositionTrackSelector :: Selector '[Id AVCompositionTrack] (Id AVAssetTrack)
compatibleTrackForCompositionTrackSelector = mkSelector "compatibleTrackForCompositionTrack:"

-- | @Selector@ for @findCompatibleTrackForCompositionTrack:completionHandler:@
findCompatibleTrackForCompositionTrack_completionHandlerSelector :: Selector '[Id AVCompositionTrack, Ptr ()] ()
findCompatibleTrackForCompositionTrack_completionHandlerSelector = mkSelector "findCompatibleTrackForCompositionTrack:completionHandler:"

-- | @Selector@ for @URL@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "URL"

-- | @Selector@ for @httpSessionIdentifier@
httpSessionIdentifierSelector :: Selector '[] (Id NSUUID)
httpSessionIdentifierSelector = mkSelector "httpSessionIdentifier"

-- | @Selector@ for @mayRequireContentKeysForMediaDataProcessing@
mayRequireContentKeysForMediaDataProcessingSelector :: Selector '[] Bool
mayRequireContentKeysForMediaDataProcessingSelector = mkSelector "mayRequireContentKeysForMediaDataProcessing"

-- | @Selector@ for @variants@
variantsSelector :: Selector '[] (Id NSArray)
variantsSelector = mkSelector "variants"

-- | @Selector@ for @assetCache@
assetCacheSelector :: Selector '[] (Id AVAssetCache)
assetCacheSelector = mkSelector "assetCache"

-- | @Selector@ for @resourceLoader@
resourceLoaderSelector :: Selector '[] (Id AVAssetResourceLoader)
resourceLoaderSelector = mkSelector "resourceLoader"

