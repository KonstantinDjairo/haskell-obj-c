{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @BADownload@.
module ObjC.BackgroundAssets.BADownload
  ( BADownload
  , IsBADownload(..)
  , init_
  , new
  , state
  , identifier
  , uniqueIdentifier
  , priority
  , identifierSelector
  , initSelector
  , newSelector
  , prioritySelector
  , stateSelector
  , uniqueIdentifierSelector

  -- * Enum types
  , BADownloadState(BADownloadState)
  , pattern BADownloadStateFailed
  , pattern BADownloadStateCreated
  , pattern BADownloadStateWaiting
  , pattern BADownloadStateDownloading
  , pattern BADownloadStateFinished

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.BackgroundAssets.Internal.Classes
import ObjC.BackgroundAssets.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsBADownload baDownload => baDownload -> IO (Id BADownload)
init_ baDownload =
  sendOwnedMessage baDownload initSelector

-- | @+ new@
new :: IO (Id BADownload)
new  =
  do
    cls' <- getRequiredClass "BADownload"
    sendOwnedClassMessage cls' newSelector

-- | The current state of the respresented download.
--
-- ObjC selector: @- state@
state :: IsBADownload baDownload => baDownload -> IO BADownloadState
state baDownload =
  sendMessage baDownload stateSelector

-- | A client defined identifier that uniquely identifies this asset.
--
-- ObjC selector: @- identifier@
identifier :: IsBADownload baDownload => baDownload -> IO (Id NSString)
identifier baDownload =
  sendMessage baDownload identifierSelector

-- | A UUID that uniquely identifies the download object.
--
-- ObjC selector: @- uniqueIdentifier@
uniqueIdentifier :: IsBADownload baDownload => baDownload -> IO (Id NSString)
uniqueIdentifier baDownload =
  sendMessage baDownload uniqueIdentifierSelector

-- | A client set priority to try to order downloads in order of importance
--
-- ObjC selector: @- priority@
priority :: IsBADownload baDownload => baDownload -> IO CLong
priority baDownload =
  sendMessage baDownload prioritySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id BADownload)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id BADownload)
newSelector = mkSelector "new"

-- | @Selector@ for @state@
stateSelector :: Selector '[] BADownloadState
stateSelector = mkSelector "state"

-- | @Selector@ for @identifier@
identifierSelector :: Selector '[] (Id NSString)
identifierSelector = mkSelector "identifier"

-- | @Selector@ for @uniqueIdentifier@
uniqueIdentifierSelector :: Selector '[] (Id NSString)
uniqueIdentifierSelector = mkSelector "uniqueIdentifier"

-- | @Selector@ for @priority@
prioritySelector :: Selector '[] CLong
prioritySelector = mkSelector "priority"

