{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | @SHMediaItem@ represents metadata associated with a @SHSignature@
--
-- A @SHMediaItem@ is used in two distinct ways     1. As the base class of a @SHMatchedMediaItem,@ and therefore as the result of a match     2. As a way of associating metadata with reference signatures in a @SHCustomCatalog@
--
-- A SHMediaItem contains no required fields and may be entirely blank, they can also contain custom data set with custom keys when making a @SHCustomCatalog.@
--
-- Note: @SHMediaItem@  is not intended to be subclassed further.
--
-- Generated bindings for @SHMediaItem@.
module ObjC.ShazamKit.SHMediaItem
  ( SHMediaItem
  , IsSHMediaItem(..)
  , mediaItemWithProperties
  , fetchMediaItemWithShazamID_completionHandler
  , valueForProperty
  , objectForKeyedSubscript
  , new
  , init_
  , shazamID
  , title
  , subtitle
  , artist
  , genres
  , appleMusicID
  , appleMusicURL
  , webURL
  , artworkURL
  , videoURL
  , explicitContent
  , isrc
  , timeRanges
  , frequencySkewRanges
  , appleMusicIDSelector
  , appleMusicURLSelector
  , artistSelector
  , artworkURLSelector
  , explicitContentSelector
  , fetchMediaItemWithShazamID_completionHandlerSelector
  , frequencySkewRangesSelector
  , genresSelector
  , initSelector
  , isrcSelector
  , mediaItemWithPropertiesSelector
  , newSelector
  , objectForKeyedSubscriptSelector
  , shazamIDSelector
  , subtitleSelector
  , timeRangesSelector
  , titleSelector
  , valueForPropertySelector
  , videoURLSelector
  , webURLSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ShazamKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Construct a new instance with the provided dictionary
--
-- @properties@ — A dictionary of @SHMediaItemProperty@ and their values
--
-- You may add your own keys here to return custom data, custom data should conform to NSCoding
--
-- ObjC selector: @+ mediaItemWithProperties:@
mediaItemWithProperties :: IsNSDictionary properties => properties -> IO (Id SHMediaItem)
mediaItemWithProperties properties =
  do
    cls' <- getRequiredClass "SHMediaItem"
    sendClassMessage cls' mediaItemWithPropertiesSelector (toNSDictionary properties)

-- | Fetch a @SHMediaItem@ by Shazam ID
--
-- The completionHandler will contain a @SHMediaItem@ if the ShazamID is valid, otherwise nil and an error
--
-- ObjC selector: @+ fetchMediaItemWithShazamID:completionHandler:@
fetchMediaItemWithShazamID_completionHandler :: IsNSString shazamID => shazamID -> Ptr () -> IO ()
fetchMediaItemWithShazamID_completionHandler shazamID completionHandler =
  do
    cls' <- getRequiredClass "SHMediaItem"
    sendClassMessage cls' fetchMediaItemWithShazamID_completionHandlerSelector (toNSString shazamID) completionHandler

-- | Retrieve a value using a known key
--
-- @property@ — The @SHMediaItemProperty@ for a value
--
-- ObjC selector: @- valueForProperty:@
valueForProperty :: (IsSHMediaItem shMediaItem, IsNSString property) => shMediaItem -> property -> IO RawId
valueForProperty shMediaItem property =
  sendMessage shMediaItem valueForPropertySelector (toNSString property)

-- | Use subscripting to retrieve values
--
-- @key@ — The @SHMediaItemProperty@ or custom key for a value
--
-- ObjC selector: @- objectForKeyedSubscript:@
objectForKeyedSubscript :: (IsSHMediaItem shMediaItem, IsNSString key) => shMediaItem -> key -> IO RawId
objectForKeyedSubscript shMediaItem key =
  sendMessage shMediaItem objectForKeyedSubscriptSelector (toNSString key)

-- | @+ new@
new :: IO (Id SHMediaItem)
new  =
  do
    cls' <- getRequiredClass "SHMediaItem"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id SHMediaItem)
init_ shMediaItem =
  sendOwnedMessage shMediaItem initSelector

-- | The Shazam Media ID
--
-- Note: This may be fetched using the key @SHMediaItemShazamID@
--
-- ObjC selector: @- shazamID@
shazamID :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSString)
shazamID shMediaItem =
  sendMessage shMediaItem shazamIDSelector

-- | The Title
--
-- Note: This may be fetched using the key @SHMediaItemTitle@
--
-- ObjC selector: @- title@
title :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSString)
title shMediaItem =
  sendMessage shMediaItem titleSelector

-- | The Subtitle
--
-- Note: This may be fetched using the key @SHMediaItemSubtitle@
--
-- ObjC selector: @- subtitle@
subtitle :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSString)
subtitle shMediaItem =
  sendMessage shMediaItem subtitleSelector

-- | The Artist
--
-- Note: This may be fetched using the key @SHMediaItemArtist@
--
-- ObjC selector: @- artist@
artist :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSString)
artist shMediaItem =
  sendMessage shMediaItem artistSelector

-- | The Genre Names
--
-- Note: This may be fetched using the key @SHMediaItemGenres@
--
-- An array of strings representing the genres of the media item. Will return an empty array if there are no genres.
--
-- ObjC selector: @- genres@
genres :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSArray)
genres shMediaItem =
  sendMessage shMediaItem genresSelector

-- | The Apple Music ID
--
-- Note: This may be fetched using the key @SHMediaItemAppleMusicID@
--
-- ObjC selector: @- appleMusicID@
appleMusicID :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSString)
appleMusicID shMediaItem =
  sendMessage shMediaItem appleMusicIDSelector

-- | The Apple Music URL
--
-- Note: This may be fetched using the key @SHMediaItemAppleMusicURL@
--
-- ObjC selector: @- appleMusicURL@
appleMusicURL :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSURL)
appleMusicURL shMediaItem =
  sendMessage shMediaItem appleMusicURLSelector

-- | The Web URL
--
-- The URL will point to a page that displays the current object in its entirety
--
-- Note: This may be fetched using the key @SHMediaItemWebURL@
--
-- ObjC selector: @- webURL@
webURL :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSURL)
webURL shMediaItem =
  sendMessage shMediaItem webURLSelector

-- | The Artwork URL
--
-- Note: This may be fetched using the key @SHMediaItemArtworkURL@
--
-- ObjC selector: @- artworkURL@
artworkURL :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSURL)
artworkURL shMediaItem =
  sendMessage shMediaItem artworkURLSelector

-- | The VideoURL
--
-- Note: This may be fetched using the key @SHMediaItemVideoURL@
--
-- ObjC selector: @- videoURL@
videoURL :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSURL)
videoURL shMediaItem =
  sendMessage shMediaItem videoURLSelector

-- | Whether this object represents explicit material
--
-- Note: This may be fetched using the key @SHMediaItemExplicitContent@
--
-- ObjC selector: @- explicitContent@
explicitContent :: IsSHMediaItem shMediaItem => shMediaItem -> IO Bool
explicitContent shMediaItem =
  sendMessage shMediaItem explicitContentSelector

-- | The International Standard Recording Code
--
-- Note: This may be fetched using the key @SHMediaItemISRC@
--
-- ObjC selector: @- isrc@
isrc :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSString)
isrc shMediaItem =
  sendMessage shMediaItem isrcSelector

-- | An array of @SHRange@ that indicate the offsets within the reference signature that this media item describes
--
-- ObjC selector: @- timeRanges@
timeRanges :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSArray)
timeRanges shMediaItem =
  sendMessage shMediaItem timeRangesSelector

-- | An array of @SHRange@ that indicate the frequency skews in the reference signature that this media item describes
--
-- ObjC selector: @- frequencySkewRanges@
frequencySkewRanges :: IsSHMediaItem shMediaItem => shMediaItem -> IO (Id NSArray)
frequencySkewRanges shMediaItem =
  sendMessage shMediaItem frequencySkewRangesSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @mediaItemWithProperties:@
mediaItemWithPropertiesSelector :: Selector '[Id NSDictionary] (Id SHMediaItem)
mediaItemWithPropertiesSelector = mkSelector "mediaItemWithProperties:"

-- | @Selector@ for @fetchMediaItemWithShazamID:completionHandler:@
fetchMediaItemWithShazamID_completionHandlerSelector :: Selector '[Id NSString, Ptr ()] ()
fetchMediaItemWithShazamID_completionHandlerSelector = mkSelector "fetchMediaItemWithShazamID:completionHandler:"

-- | @Selector@ for @valueForProperty:@
valueForPropertySelector :: Selector '[Id NSString] RawId
valueForPropertySelector = mkSelector "valueForProperty:"

-- | @Selector@ for @objectForKeyedSubscript:@
objectForKeyedSubscriptSelector :: Selector '[Id NSString] RawId
objectForKeyedSubscriptSelector = mkSelector "objectForKeyedSubscript:"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id SHMediaItem)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SHMediaItem)
initSelector = mkSelector "init"

-- | @Selector@ for @shazamID@
shazamIDSelector :: Selector '[] (Id NSString)
shazamIDSelector = mkSelector "shazamID"

-- | @Selector@ for @title@
titleSelector :: Selector '[] (Id NSString)
titleSelector = mkSelector "title"

-- | @Selector@ for @subtitle@
subtitleSelector :: Selector '[] (Id NSString)
subtitleSelector = mkSelector "subtitle"

-- | @Selector@ for @artist@
artistSelector :: Selector '[] (Id NSString)
artistSelector = mkSelector "artist"

-- | @Selector@ for @genres@
genresSelector :: Selector '[] (Id NSArray)
genresSelector = mkSelector "genres"

-- | @Selector@ for @appleMusicID@
appleMusicIDSelector :: Selector '[] (Id NSString)
appleMusicIDSelector = mkSelector "appleMusicID"

-- | @Selector@ for @appleMusicURL@
appleMusicURLSelector :: Selector '[] (Id NSURL)
appleMusicURLSelector = mkSelector "appleMusicURL"

-- | @Selector@ for @webURL@
webURLSelector :: Selector '[] (Id NSURL)
webURLSelector = mkSelector "webURL"

-- | @Selector@ for @artworkURL@
artworkURLSelector :: Selector '[] (Id NSURL)
artworkURLSelector = mkSelector "artworkURL"

-- | @Selector@ for @videoURL@
videoURLSelector :: Selector '[] (Id NSURL)
videoURLSelector = mkSelector "videoURL"

-- | @Selector@ for @explicitContent@
explicitContentSelector :: Selector '[] Bool
explicitContentSelector = mkSelector "explicitContent"

-- | @Selector@ for @isrc@
isrcSelector :: Selector '[] (Id NSString)
isrcSelector = mkSelector "isrc"

-- | @Selector@ for @timeRanges@
timeRangesSelector :: Selector '[] (Id NSArray)
timeRangesSelector = mkSelector "timeRanges"

-- | @Selector@ for @frequencySkewRanges@
frequencySkewRangesSelector :: Selector '[] (Id NSArray)
frequencySkewRangesSelector = mkSelector "frequencySkewRanges"

