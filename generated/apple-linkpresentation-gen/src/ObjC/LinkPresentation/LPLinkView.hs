{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @LPLinkView@.
module ObjC.LinkPresentation.LPLinkView
  ( LPLinkView
  , IsLPLinkView(..)
  , initWithCoder
  , encodeWithCoder
  , initWithURL
  , initWithMetadata
  , metadata
  , setMetadata
  , encodeWithCoderSelector
  , initWithCoderSelector
  , initWithMetadataSelector
  , initWithURLSelector
  , metadataSelector
  , setMetadataSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.LinkPresentation.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithCoder:@
initWithCoder :: (IsLPLinkView lpLinkView, IsNSCoder coder) => lpLinkView -> coder -> IO (Id LPLinkView)
initWithCoder lpLinkView coder =
  sendOwnedMessage lpLinkView initWithCoderSelector (toNSCoder coder)

-- | @- encodeWithCoder:@
encodeWithCoder :: (IsLPLinkView lpLinkView, IsNSCoder coder) => lpLinkView -> coder -> IO ()
encodeWithCoder lpLinkView coder =
  sendMessage lpLinkView encodeWithCoderSelector (toNSCoder coder)

-- | @- initWithURL:@
initWithURL :: (IsLPLinkView lpLinkView, IsNSURL url) => lpLinkView -> url -> IO (Id LPLinkView)
initWithURL lpLinkView url =
  sendOwnedMessage lpLinkView initWithURLSelector (toNSURL url)

-- | @- initWithMetadata:@
initWithMetadata :: (IsLPLinkView lpLinkView, IsLPLinkMetadata metadata) => lpLinkView -> metadata -> IO (Id LPLinkView)
initWithMetadata lpLinkView metadata =
  sendOwnedMessage lpLinkView initWithMetadataSelector (toLPLinkMetadata metadata)

-- | The LPLinkMetadata object with which to generate a rich presentation.
--
-- The metadata can either be generated automatically from a URL by LPMetadataProvider, or manually constructed with the desired data.
--
-- ObjC selector: @- metadata@
metadata :: IsLPLinkView lpLinkView => lpLinkView -> IO (Id LPLinkMetadata)
metadata lpLinkView =
  sendMessage lpLinkView metadataSelector

-- | The LPLinkMetadata object with which to generate a rich presentation.
--
-- The metadata can either be generated automatically from a URL by LPMetadataProvider, or manually constructed with the desired data.
--
-- ObjC selector: @- setMetadata:@
setMetadata :: (IsLPLinkView lpLinkView, IsLPLinkMetadata value) => lpLinkView -> value -> IO ()
setMetadata lpLinkView value =
  sendMessage lpLinkView setMetadataSelector (toLPLinkMetadata value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithCoder:@
initWithCoderSelector :: Selector '[Id NSCoder] (Id LPLinkView)
initWithCoderSelector = mkSelector "initWithCoder:"

-- | @Selector@ for @encodeWithCoder:@
encodeWithCoderSelector :: Selector '[Id NSCoder] ()
encodeWithCoderSelector = mkSelector "encodeWithCoder:"

-- | @Selector@ for @initWithURL:@
initWithURLSelector :: Selector '[Id NSURL] (Id LPLinkView)
initWithURLSelector = mkSelector "initWithURL:"

-- | @Selector@ for @initWithMetadata:@
initWithMetadataSelector :: Selector '[Id LPLinkMetadata] (Id LPLinkView)
initWithMetadataSelector = mkSelector "initWithMetadata:"

-- | @Selector@ for @metadata@
metadataSelector :: Selector '[] (Id LPLinkMetadata)
metadataSelector = mkSelector "metadata"

-- | @Selector@ for @setMetadata:@
setMetadataSelector :: Selector '[Id LPLinkMetadata] ()
setMetadataSelector = mkSelector "setMetadata:"

