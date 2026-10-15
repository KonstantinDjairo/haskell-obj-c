{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | An eraser tool for erasing parts of a drawing.
--
-- Generated bindings for @PKEraserTool@.
module ObjC.PencilKit.PKEraserTool
  ( PKEraserTool
  , IsPKEraserTool(..)
  , initWithEraserType
  , eraserType
  , eraserTypeSelector
  , initWithEraserTypeSelector

  -- * Enum types
  , PKEraserType(PKEraserType)
  , pattern PKEraserTypeVector
  , pattern PKEraserTypeBitmap

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PencilKit.Internal.Classes
import ObjC.PencilKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- initWithEraserType:@
initWithEraserType :: IsPKEraserTool pkEraserTool => pkEraserTool -> PKEraserType -> IO (Id PKEraserTool)
initWithEraserType pkEraserTool eraserType =
  sendOwnedMessage pkEraserTool initWithEraserTypeSelector eraserType

-- | The eraser type.
--
-- ObjC selector: @- eraserType@
eraserType :: IsPKEraserTool pkEraserTool => pkEraserTool -> IO PKEraserType
eraserType pkEraserTool =
  sendMessage pkEraserTool eraserTypeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithEraserType:@
initWithEraserTypeSelector :: Selector '[PKEraserType] (Id PKEraserTool)
initWithEraserTypeSelector = mkSelector "initWithEraserType:"

-- | @Selector@ for @eraserType@
eraserTypeSelector :: Selector '[] PKEraserType
eraserTypeSelector = mkSelector "eraserType"

