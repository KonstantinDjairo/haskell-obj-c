{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PKShareablePassMetadataPreview@.
module ObjC.PassKit.PKShareablePassMetadataPreview
  ( PKShareablePassMetadataPreview
  , IsPKShareablePassMetadataPreview(..)
  , init_
  , new
  , initWithPassThumbnail_localizedDescription
  , initWithTemplateIdentifier
  , previewWithPassThumbnail_localizedDescription
  , previewWithTemplateIdentifier
  , passThumbnailImage
  , localizedDescription
  , ownerDisplayName
  , setOwnerDisplayName
  , provisioningTemplateIdentifier
  , initSelector
  , initWithPassThumbnail_localizedDescriptionSelector
  , initWithTemplateIdentifierSelector
  , localizedDescriptionSelector
  , newSelector
  , ownerDisplayNameSelector
  , passThumbnailImageSelector
  , previewWithPassThumbnail_localizedDescriptionSelector
  , previewWithTemplateIdentifierSelector
  , provisioningTemplateIdentifierSelector
  , setOwnerDisplayNameSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PassKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsPKShareablePassMetadataPreview pkShareablePassMetadataPreview => pkShareablePassMetadataPreview -> IO (Id PKShareablePassMetadataPreview)
init_ pkShareablePassMetadataPreview =
  sendOwnedMessage pkShareablePassMetadataPreview initSelector

-- | @+ new@
new :: IO (Id PKShareablePassMetadataPreview)
new  =
  do
    cls' <- getRequiredClass "PKShareablePassMetadataPreview"
    sendOwnedClassMessage cls' newSelector

-- | @- initWithPassThumbnail:localizedDescription:@
initWithPassThumbnail_localizedDescription :: (IsPKShareablePassMetadataPreview pkShareablePassMetadataPreview, IsNSString description) => pkShareablePassMetadataPreview -> Ptr () -> description -> IO (Id PKShareablePassMetadataPreview)
initWithPassThumbnail_localizedDescription pkShareablePassMetadataPreview passThumbnail description =
  sendOwnedMessage pkShareablePassMetadataPreview initWithPassThumbnail_localizedDescriptionSelector passThumbnail (toNSString description)

-- | @- initWithTemplateIdentifier:@
initWithTemplateIdentifier :: (IsPKShareablePassMetadataPreview pkShareablePassMetadataPreview, IsNSString templateIdentifier) => pkShareablePassMetadataPreview -> templateIdentifier -> IO (Id PKShareablePassMetadataPreview)
initWithTemplateIdentifier pkShareablePassMetadataPreview templateIdentifier =
  sendOwnedMessage pkShareablePassMetadataPreview initWithTemplateIdentifierSelector (toNSString templateIdentifier)

-- | @+ previewWithPassThumbnail:localizedDescription:@
previewWithPassThumbnail_localizedDescription :: IsNSString description => Ptr () -> description -> IO (Id PKShareablePassMetadataPreview)
previewWithPassThumbnail_localizedDescription passThumbnail description =
  do
    cls' <- getRequiredClass "PKShareablePassMetadataPreview"
    sendClassMessage cls' previewWithPassThumbnail_localizedDescriptionSelector passThumbnail (toNSString description)

-- | @+ previewWithTemplateIdentifier:@
previewWithTemplateIdentifier :: IsNSString templateIdentifier => templateIdentifier -> IO (Id PKShareablePassMetadataPreview)
previewWithTemplateIdentifier templateIdentifier =
  do
    cls' <- getRequiredClass "PKShareablePassMetadataPreview"
    sendClassMessage cls' previewWithTemplateIdentifierSelector (toNSString templateIdentifier)

-- | @- passThumbnailImage@
passThumbnailImage :: IsPKShareablePassMetadataPreview pkShareablePassMetadataPreview => pkShareablePassMetadataPreview -> IO (Ptr ())
passThumbnailImage pkShareablePassMetadataPreview =
  sendMessage pkShareablePassMetadataPreview passThumbnailImageSelector

-- | @- localizedDescription@
localizedDescription :: IsPKShareablePassMetadataPreview pkShareablePassMetadataPreview => pkShareablePassMetadataPreview -> IO (Id NSString)
localizedDescription pkShareablePassMetadataPreview =
  sendMessage pkShareablePassMetadataPreview localizedDescriptionSelector

-- | @- ownerDisplayName@
ownerDisplayName :: IsPKShareablePassMetadataPreview pkShareablePassMetadataPreview => pkShareablePassMetadataPreview -> IO (Id NSString)
ownerDisplayName pkShareablePassMetadataPreview =
  sendMessage pkShareablePassMetadataPreview ownerDisplayNameSelector

-- | @- setOwnerDisplayName:@
setOwnerDisplayName :: (IsPKShareablePassMetadataPreview pkShareablePassMetadataPreview, IsNSString value) => pkShareablePassMetadataPreview -> value -> IO ()
setOwnerDisplayName pkShareablePassMetadataPreview value =
  sendMessage pkShareablePassMetadataPreview setOwnerDisplayNameSelector (toNSString value)

-- | @- provisioningTemplateIdentifier@
provisioningTemplateIdentifier :: IsPKShareablePassMetadataPreview pkShareablePassMetadataPreview => pkShareablePassMetadataPreview -> IO (Id NSString)
provisioningTemplateIdentifier pkShareablePassMetadataPreview =
  sendMessage pkShareablePassMetadataPreview provisioningTemplateIdentifierSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id PKShareablePassMetadataPreview)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id PKShareablePassMetadataPreview)
newSelector = mkSelector "new"

-- | @Selector@ for @initWithPassThumbnail:localizedDescription:@
initWithPassThumbnail_localizedDescriptionSelector :: Selector '[Ptr (), Id NSString] (Id PKShareablePassMetadataPreview)
initWithPassThumbnail_localizedDescriptionSelector = mkSelector "initWithPassThumbnail:localizedDescription:"

-- | @Selector@ for @initWithTemplateIdentifier:@
initWithTemplateIdentifierSelector :: Selector '[Id NSString] (Id PKShareablePassMetadataPreview)
initWithTemplateIdentifierSelector = mkSelector "initWithTemplateIdentifier:"

-- | @Selector@ for @previewWithPassThumbnail:localizedDescription:@
previewWithPassThumbnail_localizedDescriptionSelector :: Selector '[Ptr (), Id NSString] (Id PKShareablePassMetadataPreview)
previewWithPassThumbnail_localizedDescriptionSelector = mkSelector "previewWithPassThumbnail:localizedDescription:"

-- | @Selector@ for @previewWithTemplateIdentifier:@
previewWithTemplateIdentifierSelector :: Selector '[Id NSString] (Id PKShareablePassMetadataPreview)
previewWithTemplateIdentifierSelector = mkSelector "previewWithTemplateIdentifier:"

-- | @Selector@ for @passThumbnailImage@
passThumbnailImageSelector :: Selector '[] (Ptr ())
passThumbnailImageSelector = mkSelector "passThumbnailImage"

-- | @Selector@ for @localizedDescription@
localizedDescriptionSelector :: Selector '[] (Id NSString)
localizedDescriptionSelector = mkSelector "localizedDescription"

-- | @Selector@ for @ownerDisplayName@
ownerDisplayNameSelector :: Selector '[] (Id NSString)
ownerDisplayNameSelector = mkSelector "ownerDisplayName"

-- | @Selector@ for @setOwnerDisplayName:@
setOwnerDisplayNameSelector :: Selector '[Id NSString] ()
setOwnerDisplayNameSelector = mkSelector "setOwnerDisplayName:"

-- | @Selector@ for @provisioningTemplateIdentifier@
provisioningTemplateIdentifierSelector :: Selector '[] (Id NSString)
provisioningTemplateIdentifierSelector = mkSelector "provisioningTemplateIdentifier"

