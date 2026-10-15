{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Configure a custom catalog of @SHSignature@ objects to match against
--
-- Use a custom catalog if you intend to search against reference signatures that you have provided yourself. All matches will be performed locally on the device against the signatures added to this Catalog. @SHMediaItem@ can be built using custom data that will be returned when a match is made. Once this catalog has been built it can be written to disk and loaded again at a later date.
--
-- Generated bindings for @SHCustomCatalog@.
module ObjC.ShazamKit.SHCustomCatalog
  ( SHCustomCatalog
  , IsSHCustomCatalog(..)
  , addReferenceSignature_representingMediaItems_error
  , addCustomCatalogFromURL_error
  , writeToURL_error
  , new
  , init_
  , addCustomCatalogFromURL_errorSelector
  , addReferenceSignature_representingMediaItems_errorSelector
  , initSelector
  , newSelector
  , writeToURL_errorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ShazamKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Add a reference @SHSignature@ and its associated @SHMediaItem@ for matching
--
-- @signature@ — The reference to match against
--
-- @mediaItems@ — The metadata associated with the @SHSignature@
--
-- Once the @SHCatalog@ had been added to a @SHSession@ further calls to this method will be ignored
--
-- Returns: YES if the data was successfully added, NO on failure with a populated error parameter
--
-- ObjC selector: @- addReferenceSignature:representingMediaItems:error:@
addReferenceSignature_representingMediaItems_error :: (IsSHCustomCatalog shCustomCatalog, IsSHSignature signature, IsNSArray mediaItems, IsNSError error_) => shCustomCatalog -> signature -> mediaItems -> error_ -> IO Bool
addReferenceSignature_representingMediaItems_error shCustomCatalog signature mediaItems error_ =
  sendMessage shCustomCatalog addReferenceSignature_representingMediaItems_errorSelector (toSHSignature signature) (toNSArray mediaItems) (toNSError error_)

-- | Load a @shazamcatalog@ file from a file path URL
--
-- @customCatalogURL@ — The path to the @shazamcatalog@ file.
--
-- @error@ — An error if the catalog could not be loaded
--
-- Returns: YES if the data was successfully added, NO on failure with a populated error parameter
--
-- ObjC selector: @- addCustomCatalogFromURL:error:@
addCustomCatalogFromURL_error :: (IsSHCustomCatalog shCustomCatalog, IsNSURL customCatalogURL, IsNSError error_) => shCustomCatalog -> customCatalogURL -> error_ -> IO Bool
addCustomCatalogFromURL_error shCustomCatalog customCatalogURL error_ =
  sendMessage shCustomCatalog addCustomCatalogFromURL_errorSelector (toNSURL customCatalogURL) (toNSError error_)

-- | Write this Catalog to a URL
--
-- A Catalog can safely be shared among devices
--
-- Note: If the @destinationURL@ is a directory, a file named Signatures.shazamcatalog will be created
--
-- @destinationURL@ — The location to write to
--
-- @error@ — populated on error, otherwise nil
--
-- Returns: YES on success, NO on failure with a populated error parameter
--
-- ObjC selector: @- writeToURL:error:@
writeToURL_error :: (IsSHCustomCatalog shCustomCatalog, IsNSURL destinationURL, IsNSError error_) => shCustomCatalog -> destinationURL -> error_ -> IO Bool
writeToURL_error shCustomCatalog destinationURL error_ =
  sendMessage shCustomCatalog writeToURL_errorSelector (toNSURL destinationURL) (toNSError error_)

-- | @+ new@
new :: IO (Id SHCustomCatalog)
new  =
  do
    cls' <- getRequiredClass "SHCustomCatalog"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsSHCustomCatalog shCustomCatalog => shCustomCatalog -> IO (Id SHCustomCatalog)
init_ shCustomCatalog =
  sendOwnedMessage shCustomCatalog initSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @addReferenceSignature:representingMediaItems:error:@
addReferenceSignature_representingMediaItems_errorSelector :: Selector '[Id SHSignature, Id NSArray, Id NSError] Bool
addReferenceSignature_representingMediaItems_errorSelector = mkSelector "addReferenceSignature:representingMediaItems:error:"

-- | @Selector@ for @addCustomCatalogFromURL:error:@
addCustomCatalogFromURL_errorSelector :: Selector '[Id NSURL, Id NSError] Bool
addCustomCatalogFromURL_errorSelector = mkSelector "addCustomCatalogFromURL:error:"

-- | @Selector@ for @writeToURL:error:@
writeToURL_errorSelector :: Selector '[Id NSURL, Id NSError] Bool
writeToURL_errorSelector = mkSelector "writeToURL:error:"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id SHCustomCatalog)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SHCustomCatalog)
initSelector = mkSelector "init"

