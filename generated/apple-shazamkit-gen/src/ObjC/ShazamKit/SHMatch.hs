{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A @SHMatch@ indicates that a Signature matched a reference Signature in the target @SHCatalog@
--
-- A @SHSignature@ can match many reference Signatures in a catalog and in turn a Signature can map to many @SHMediaItem.@ Therefore a match encapsulates the query signature and all of the various @SHMediaItem@ it matched
--
-- Note: @SHMatch@ is not intended to be subclassed
--
-- Generated bindings for @SHMatch@.
module ObjC.ShazamKit.SHMatch
  ( SHMatch
  , IsSHMatch(..)
  , new
  , init_
  , mediaItems
  , querySignature
  , initSelector
  , mediaItemsSelector
  , newSelector
  , querySignatureSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ShazamKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ new@
new :: IO (Id SHMatch)
new  =
  do
    cls' <- getRequiredClass "SHMatch"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsSHMatch shMatch => shMatch -> IO (Id SHMatch)
init_ shMatch =
  sendOwnedMessage shMatch initSelector

-- | The @SHMatchedMediaItem@ belonging to the instance of @SHSignature@ that we matched
--
-- One signature may match multiple @SHMediaItem,@ especially in the case of audio that uses samples. The @SHMatchedMediaItem@ are ordered by  the quality of the match. Use the first @SHMediaItem@ if you intend to only show one result
--
-- ObjC selector: @- mediaItems@
mediaItems :: IsSHMatch shMatch => shMatch -> IO (Id NSArray)
mediaItems shMatch =
  sendMessage shMatch mediaItemsSelector

-- | The @SHSignature@ used to search the @SHCatalog@
--
-- Note: This is Signature is the query Signature, not the reference signature contained in the @SHCatalog@
--
-- ObjC selector: @- querySignature@
querySignature :: IsSHMatch shMatch => shMatch -> IO (Id SHSignature)
querySignature shMatch =
  sendMessage shMatch querySignatureSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id SHMatch)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SHMatch)
initSelector = mkSelector "init"

-- | @Selector@ for @mediaItems@
mediaItemsSelector :: Selector '[] (Id NSArray)
mediaItemsSelector = mkSelector "mediaItems"

-- | @Selector@ for @querySignature@
querySignatureSelector :: Selector '[] (Id SHSignature)
querySignatureSelector = mkSelector "querySignature"

