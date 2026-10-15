{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @QLThumbnailGenerationRequest@.
module ObjC.QuickLookThumbnailing.QLThumbnailGenerationRequest
  ( QLThumbnailGenerationRequest
  , IsQLThumbnailGenerationRequest(..)
  , init_
  , new
  , minimumDimension
  , setMinimumDimension
  , iconMode
  , setIconMode
  , scale
  , representationTypes
  , iconModeSelector
  , initSelector
  , minimumDimensionSelector
  , newSelector
  , representationTypesSelector
  , scaleSelector
  , setIconModeSelector
  , setMinimumDimensionSelector

  -- * Enum types
  , QLThumbnailGenerationRequestRepresentationTypes(QLThumbnailGenerationRequestRepresentationTypes)
  , pattern QLThumbnailGenerationRequestRepresentationTypeIcon
  , pattern QLThumbnailGenerationRequestRepresentationTypeLowQualityThumbnail
  , pattern QLThumbnailGenerationRequestRepresentationTypeThumbnail
  , pattern QLThumbnailGenerationRequestRepresentationTypeAll

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.QuickLookThumbnailing.Internal.Classes
import ObjC.QuickLookThumbnailing.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsQLThumbnailGenerationRequest qlThumbnailGenerationRequest => qlThumbnailGenerationRequest -> IO (Id QLThumbnailGenerationRequest)
init_ qlThumbnailGenerationRequest =
  sendOwnedMessage qlThumbnailGenerationRequest initSelector

-- | @+ new@
new :: IO (Id QLThumbnailGenerationRequest)
new  =
  do
    cls' <- getRequiredClass "QLThumbnailGenerationRequest"
    sendOwnedClassMessage cls' newSelector

-- | Defaults to 0. If set, the thumbnail will have a width and height greater or equal to minimumDimension * scale. If set and it is not possible to generate thumbnails of minimumDimension for any of the requested QLThumbnailGenerationRequestRepresentationTypes, no thumbnail will be provided.
--
-- ObjC selector: @- minimumDimension@
minimumDimension :: IsQLThumbnailGenerationRequest qlThumbnailGenerationRequest => qlThumbnailGenerationRequest -> IO CDouble
minimumDimension qlThumbnailGenerationRequest =
  sendMessage qlThumbnailGenerationRequest minimumDimensionSelector

-- | Defaults to 0. If set, the thumbnail will have a width and height greater or equal to minimumDimension * scale. If set and it is not possible to generate thumbnails of minimumDimension for any of the requested QLThumbnailGenerationRequestRepresentationTypes, no thumbnail will be provided.
--
-- ObjC selector: @- setMinimumDimension:@
setMinimumDimension :: IsQLThumbnailGenerationRequest qlThumbnailGenerationRequest => qlThumbnailGenerationRequest -> CDouble -> IO ()
setMinimumDimension qlThumbnailGenerationRequest value =
  sendMessage qlThumbnailGenerationRequest setMinimumDimensionSelector value

-- | If set to YES, this will generate something appropriate for display as a file icon, meaning that the thumbnail might be embedded in a frame, show a curled corner, draw a background and/or a drop shadow, as appropriate for the platform. If set to NO, this will generate a raw undecorated thumbnail. Defaults to NO.
--
-- ObjC selector: @- iconMode@
iconMode :: IsQLThumbnailGenerationRequest qlThumbnailGenerationRequest => qlThumbnailGenerationRequest -> IO Bool
iconMode qlThumbnailGenerationRequest =
  sendMessage qlThumbnailGenerationRequest iconModeSelector

-- | If set to YES, this will generate something appropriate for display as a file icon, meaning that the thumbnail might be embedded in a frame, show a curled corner, draw a background and/or a drop shadow, as appropriate for the platform. If set to NO, this will generate a raw undecorated thumbnail. Defaults to NO.
--
-- ObjC selector: @- setIconMode:@
setIconMode :: IsQLThumbnailGenerationRequest qlThumbnailGenerationRequest => qlThumbnailGenerationRequest -> Bool -> IO ()
setIconMode qlThumbnailGenerationRequest value =
  sendMessage qlThumbnailGenerationRequest setIconModeSelector value

-- | @- scale@
scale :: IsQLThumbnailGenerationRequest qlThumbnailGenerationRequest => qlThumbnailGenerationRequest -> IO CDouble
scale qlThumbnailGenerationRequest =
  sendMessage qlThumbnailGenerationRequest scaleSelector

-- | @- representationTypes@
representationTypes :: IsQLThumbnailGenerationRequest qlThumbnailGenerationRequest => qlThumbnailGenerationRequest -> IO QLThumbnailGenerationRequestRepresentationTypes
representationTypes qlThumbnailGenerationRequest =
  sendMessage qlThumbnailGenerationRequest representationTypesSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id QLThumbnailGenerationRequest)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id QLThumbnailGenerationRequest)
newSelector = mkSelector "new"

-- | @Selector@ for @minimumDimension@
minimumDimensionSelector :: Selector '[] CDouble
minimumDimensionSelector = mkSelector "minimumDimension"

-- | @Selector@ for @setMinimumDimension:@
setMinimumDimensionSelector :: Selector '[CDouble] ()
setMinimumDimensionSelector = mkSelector "setMinimumDimension:"

-- | @Selector@ for @iconMode@
iconModeSelector :: Selector '[] Bool
iconModeSelector = mkSelector "iconMode"

-- | @Selector@ for @setIconMode:@
setIconModeSelector :: Selector '[Bool] ()
setIconModeSelector = mkSelector "setIconMode:"

-- | @Selector@ for @scale@
scaleSelector :: Selector '[] CDouble
scaleSelector = mkSelector "scale"

-- | @Selector@ for @representationTypes@
representationTypesSelector :: Selector '[] QLThumbnailGenerationRequestRepresentationTypes
representationTypesSelector = mkSelector "representationTypes"

