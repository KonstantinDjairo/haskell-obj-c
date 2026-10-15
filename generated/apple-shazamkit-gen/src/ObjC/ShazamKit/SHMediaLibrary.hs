{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | @SHMediaLibrary@ represents the user's synced Shazam library.
--
-- You can add new @SHMediaItem@ instances to the user's library. Before using any @SHMediaLibrary@ method, you must obtain permission from the user to use their Media Library by calling - [MPMediaLibrary requestAuthorization:].
--
-- Generated bindings for @SHMediaLibrary@.
module ObjC.ShazamKit.SHMediaLibrary
  ( SHMediaLibrary
  , IsSHMediaLibrary(..)
  , addMediaItems_completionHandler
  , init_
  , new
  , defaultLibrary
  , addMediaItems_completionHandlerSelector
  , defaultLibrarySelector
  , initSelector
  , newSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ShazamKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Adds an array of media items to the user's Shazam library.
--
-- For each @SHMediaItem@ instance passed in, the following @SHMediaItemProperty@ keys will be saved: @SHMediaItemShazamID,@ @SHMediaItemTitle,@ @SHMediaItemSubtitle.@ If @SHMediaItemSubtitle@ is not set it may fallback to use @SHMediaItemArtist@ if available.
--
-- Note: @SHMediaItemShazamID@ is required for each @SHMediaItem@ to be considered valid. @SHMediaItemShazamID@ must be a numeric only string
--
-- @mediaItems@ — An array containing the @SHMediaItem@ objects to be added to the library.
--
-- @completionHandler@ — A block called after all valid @SHMediaItem@ objects have been added to the library. If an error occurred, the error parameter will be populated.
--
-- ObjC selector: @- addMediaItems:completionHandler:@
addMediaItems_completionHandler :: (IsSHMediaLibrary shMediaLibrary, IsNSArray mediaItems) => shMediaLibrary -> mediaItems -> Ptr () -> IO ()
addMediaItems_completionHandler shMediaLibrary mediaItems completionHandler =
  sendMessage shMediaLibrary addMediaItems_completionHandlerSelector (toNSArray mediaItems) completionHandler

-- | @- init@
init_ :: IsSHMediaLibrary shMediaLibrary => shMediaLibrary -> IO (Id SHMediaLibrary)
init_ shMediaLibrary =
  sendOwnedMessage shMediaLibrary initSelector

-- | @+ new@
new :: IO (Id SHMediaLibrary)
new  =
  do
    cls' <- getRequiredClass "SHMediaLibrary"
    sendOwnedClassMessage cls' newSelector

-- | Returns an instance of the default Shazam library.
--
-- ObjC selector: @+ defaultLibrary@
defaultLibrary :: IO (Id SHMediaLibrary)
defaultLibrary  =
  do
    cls' <- getRequiredClass "SHMediaLibrary"
    sendClassMessage cls' defaultLibrarySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @addMediaItems:completionHandler:@
addMediaItems_completionHandlerSelector :: Selector '[Id NSArray, Ptr ()] ()
addMediaItems_completionHandlerSelector = mkSelector "addMediaItems:completionHandler:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SHMediaLibrary)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id SHMediaLibrary)
newSelector = mkSelector "new"

-- | @Selector@ for @defaultLibrary@
defaultLibrarySelector :: Selector '[] (Id SHMediaLibrary)
defaultLibrarySelector = mkSelector "defaultLibrary"

