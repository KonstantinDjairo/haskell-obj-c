{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | An LPLinkMetadata object contains metadata about a URL.
--
-- Generated bindings for @LPLinkMetadata@.
module ObjC.LinkPresentation.LPLinkMetadata
  ( LPLinkMetadata
  , IsLPLinkMetadata(..)
  , originalURL
  , setOriginalURL
  , url
  , setURL
  , title
  , setTitle
  , iconProvider
  , setIconProvider
  , imageProvider
  , setImageProvider
  , videoProvider
  , setVideoProvider
  , remoteVideoURL
  , setRemoteVideoURL
  , iconProviderSelector
  , imageProviderSelector
  , originalURLSelector
  , remoteVideoURLSelector
  , setIconProviderSelector
  , setImageProviderSelector
  , setOriginalURLSelector
  , setRemoteVideoURLSelector
  , setTitleSelector
  , setURLSelector
  , setVideoProviderSelector
  , titleSelector
  , urlSelector
  , videoProviderSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.LinkPresentation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | The original URL that metadata was requested from.
--
-- ObjC selector: @- originalURL@
originalURL :: IsLPLinkMetadata lpLinkMetadata => lpLinkMetadata -> IO (Id NSURL)
originalURL lpLinkMetadata =
  sendMessage lpLinkMetadata originalURLSelector

-- | The original URL that metadata was requested from.
--
-- ObjC selector: @- setOriginalURL:@
setOriginalURL :: (IsLPLinkMetadata lpLinkMetadata, IsNSURL value) => lpLinkMetadata -> value -> IO ()
setOriginalURL lpLinkMetadata value =
  sendMessage lpLinkMetadata setOriginalURLSelector (toNSURL value)

-- | The URL that metadata was retrieved from. This takes server-side redirects into account.
--
-- ObjC selector: @- URL@
url :: IsLPLinkMetadata lpLinkMetadata => lpLinkMetadata -> IO (Id NSURL)
url lpLinkMetadata =
  sendMessage lpLinkMetadata urlSelector

-- | The URL that metadata was retrieved from. This takes server-side redirects into account.
--
-- ObjC selector: @- setURL:@
setURL :: (IsLPLinkMetadata lpLinkMetadata, IsNSURL value) => lpLinkMetadata -> value -> IO ()
setURL lpLinkMetadata value =
  sendMessage lpLinkMetadata setURLSelector (toNSURL value)

-- | A title for the URL.
--
-- ObjC selector: @- title@
title :: IsLPLinkMetadata lpLinkMetadata => lpLinkMetadata -> IO (Id NSString)
title lpLinkMetadata =
  sendMessage lpLinkMetadata titleSelector

-- | A title for the URL.
--
-- ObjC selector: @- setTitle:@
setTitle :: (IsLPLinkMetadata lpLinkMetadata, IsNSString value) => lpLinkMetadata -> value -> IO ()
setTitle lpLinkMetadata value =
  sendMessage lpLinkMetadata setTitleSelector (toNSString value)

-- | An item provider which will return data corresponding to a representative icon for the URL.
--
-- ObjC selector: @- iconProvider@
iconProvider :: IsLPLinkMetadata lpLinkMetadata => lpLinkMetadata -> IO (Id NSItemProvider)
iconProvider lpLinkMetadata =
  sendMessage lpLinkMetadata iconProviderSelector

-- | An item provider which will return data corresponding to a representative icon for the URL.
--
-- ObjC selector: @- setIconProvider:@
setIconProvider :: (IsLPLinkMetadata lpLinkMetadata, IsNSItemProvider value) => lpLinkMetadata -> value -> IO ()
setIconProvider lpLinkMetadata value =
  sendMessage lpLinkMetadata setIconProviderSelector (toNSItemProvider value)

-- | An item provider which will return data corresponding to a representative image for the URL.
--
-- ObjC selector: @- imageProvider@
imageProvider :: IsLPLinkMetadata lpLinkMetadata => lpLinkMetadata -> IO (Id NSItemProvider)
imageProvider lpLinkMetadata =
  sendMessage lpLinkMetadata imageProviderSelector

-- | An item provider which will return data corresponding to a representative image for the URL.
--
-- ObjC selector: @- setImageProvider:@
setImageProvider :: (IsLPLinkMetadata lpLinkMetadata, IsNSItemProvider value) => lpLinkMetadata -> value -> IO ()
setImageProvider lpLinkMetadata value =
  sendMessage lpLinkMetadata setImageProviderSelector (toNSItemProvider value)

-- | An item provider which will return data corresponding to a representative video for the URL that AVFoundation can play.
--
-- ObjC selector: @- videoProvider@
videoProvider :: IsLPLinkMetadata lpLinkMetadata => lpLinkMetadata -> IO (Id NSItemProvider)
videoProvider lpLinkMetadata =
  sendMessage lpLinkMetadata videoProviderSelector

-- | An item provider which will return data corresponding to a representative video for the URL that AVFoundation can play.
--
-- ObjC selector: @- setVideoProvider:@
setVideoProvider :: (IsLPLinkMetadata lpLinkMetadata, IsNSItemProvider value) => lpLinkMetadata -> value -> IO ()
setVideoProvider lpLinkMetadata value =
  sendMessage lpLinkMetadata setVideoProviderSelector (toNSItemProvider value)

-- | A remote URL corresponding to a representative video for the URL.
--
-- This may point to to a remote video file that AVFoundation can stream, or to a YouTube video URL.
--
-- ObjC selector: @- remoteVideoURL@
remoteVideoURL :: IsLPLinkMetadata lpLinkMetadata => lpLinkMetadata -> IO (Id NSURL)
remoteVideoURL lpLinkMetadata =
  sendMessage lpLinkMetadata remoteVideoURLSelector

-- | A remote URL corresponding to a representative video for the URL.
--
-- This may point to to a remote video file that AVFoundation can stream, or to a YouTube video URL.
--
-- ObjC selector: @- setRemoteVideoURL:@
setRemoteVideoURL :: (IsLPLinkMetadata lpLinkMetadata, IsNSURL value) => lpLinkMetadata -> value -> IO ()
setRemoteVideoURL lpLinkMetadata value =
  sendMessage lpLinkMetadata setRemoteVideoURLSelector (toNSURL value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @originalURL@
originalURLSelector :: Selector '[] (Id NSURL)
originalURLSelector = mkSelector "originalURL"

-- | @Selector@ for @setOriginalURL:@
setOriginalURLSelector :: Selector '[Id NSURL] ()
setOriginalURLSelector = mkSelector "setOriginalURL:"

-- | @Selector@ for @URL@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "URL"

-- | @Selector@ for @setURL:@
setURLSelector :: Selector '[Id NSURL] ()
setURLSelector = mkSelector "setURL:"

-- | @Selector@ for @title@
titleSelector :: Selector '[] (Id NSString)
titleSelector = mkSelector "title"

-- | @Selector@ for @setTitle:@
setTitleSelector :: Selector '[Id NSString] ()
setTitleSelector = mkSelector "setTitle:"

-- | @Selector@ for @iconProvider@
iconProviderSelector :: Selector '[] (Id NSItemProvider)
iconProviderSelector = mkSelector "iconProvider"

-- | @Selector@ for @setIconProvider:@
setIconProviderSelector :: Selector '[Id NSItemProvider] ()
setIconProviderSelector = mkSelector "setIconProvider:"

-- | @Selector@ for @imageProvider@
imageProviderSelector :: Selector '[] (Id NSItemProvider)
imageProviderSelector = mkSelector "imageProvider"

-- | @Selector@ for @setImageProvider:@
setImageProviderSelector :: Selector '[Id NSItemProvider] ()
setImageProviderSelector = mkSelector "setImageProvider:"

-- | @Selector@ for @videoProvider@
videoProviderSelector :: Selector '[] (Id NSItemProvider)
videoProviderSelector = mkSelector "videoProvider"

-- | @Selector@ for @setVideoProvider:@
setVideoProviderSelector :: Selector '[Id NSItemProvider] ()
setVideoProviderSelector = mkSelector "setVideoProvider:"

-- | @Selector@ for @remoteVideoURL@
remoteVideoURLSelector :: Selector '[] (Id NSURL)
remoteVideoURLSelector = mkSelector "remoteVideoURL"

-- | @Selector@ for @setRemoteVideoURL:@
setRemoteVideoURLSelector :: Selector '[Id NSURL] ()
setRemoteVideoURLSelector = mkSelector "setRemoteVideoURL:"

